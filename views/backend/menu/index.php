<?php
use App\Models\Menu;
use App\Models\Category;
use App\Models\Brand;
use App\Models\Post;
use App\Models\Topic;
use App\Models\Page;
$list =Menu::where('status','!=',0)->orderBy('created_at','DESC')->get();

$list_category =Category::where('status','!=',0)->get();
$list_brand =Brand::where('status','!=',0)->get();
$list_topic =Topic::where('status','!=',0)->get();
$list_page =Post::where([['status','!=',0],['type','=','page']])->get();




?>
<?php require_once '../views/backend/header.php';?>

<!-- CONTENT -->
<form action="index.php?option=menu&cat=process" method="post" >
      <div class="content-wrapper">
         <section class="content-header">
            <div class="container-fluid">
               <div class="row mb-2">
                  <div class="col-sm-12">
                     <h1 class="d-inline">Tất cả Menu</h1>
                  </div>
               </div>
            </div>
         </section>
         <!-- Main content -->
         <section class="content">
            <div class="card">
            <div class="row">
                  <div div class="col-md-6">
                     <a href="index.php?option=menu" class="btn btn-sm btn-primary">Tất cả</a>
                     <a href="index.php?option=menu&cat=trash" class="btn btn-sm btn-danger"><i class="fas fa-trash"></i> Thùng rác</a>
                  </div>
                  <div div class="col-md-6 text-right">
                     <a href="index.php?option=menu&cat=create" class="btn btn-sm btn-success">Thêm sản phẩm</a>
                  </div>
               </div>
               <div class="card-body">
                     <div class="row">
                       <div class="col-md-3">
                       <div class="accordion" id="accordionExample">
                        <div class="card position">
                           <div class="card-body">
                              <label>Vị trí Menu</label>
                              <select name="position" class="form-control">
                                 <option value="mainmenu">Main Menu</option>
                                 <option value="footermenu">Footer Menu</option>
                              </select>
                           </div>
                        </div>
                        <div class="card">
                           <div class="card-header" id="headingcategory">
                              <h2 class="mb-0">
                              <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapsecategory" aria-expanded="true" aria-controls="collapsecategory">
                                 Danh mục sản phẩm
                              </button>
                              </h2>
                           </div>

                           <div id="collapsecategory" class="collapse" aria-labelledby="headingcategory" data-parent="#accordionExample">
                              <div class="card-body">
                               <?php foreach($list_category as $category):?>
                                 <div class="form-check">
                                    <input name="categoryid[]"  class="form-check-input" type="checkbox" value="<?=$category->id;?>" id="categoryCheck <?=$category->id;?>">
                                    <label class="form-check-label" for="categoryCheck <?=$category->id;?>">
                                       <?=$category->name;?>
                                    </label>
                                 </div>
                              <?php endforeach;?>
                                 <div class="mb-3">
                                   <input name="THEMCATEGORY" type="submit" value="Thêm Menu" class="btn tbn-sm btn-success form-control">
                                 </div>
                              </div>
                           </div>
                        </div>
                        <!--end card category-->
                        <div class="card">
                           <div class="card-header" id="headingBrand">
                              <h2 class="mb-0">
                              <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseBrand" aria-expanded="false" aria-controls="collapseBrand">
                                 Thương hiệu
                              </button>
                              </h2>
                           </div>
                           <div id="collapseBrand" class="collapse" aria-labelledby="headingBrand" data-parent="#accordionExample">
                              <div class="card-body">
                              <?php foreach($list_brand as $brand):?>
                                 <div class="form-check">
                                    <input name="brandid[]"  class="form-check-input" type="checkbox" value="<?=$brand->id;?>" id="brandCheck <?=$brand->id;?>">
                                    <label class="form-check-label" for="brandCheck <?=$brand->id;?>">
                                       <?=$brand->name;?>
                                    </label>
                                 </div>
                              <?php endforeach;?>
                                 <div class="mb-3">
                                   <input name="THEMBRAND" type="submit" value="Thêm Menu" class="btn tbn-sm btn-success form-control">
                                 </div>
                              </div>
                           </div>
                        </div>
                         <!--end card Brand-->
                        <div class="card">
                           <div class="card-header" id="headingTopic">
                              <h2 class="mb-0">
                              <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseTopic" aria-expanded="false" aria-controls="collapseTopic">
                                 Chủ đề bài viết
                              </button>
                              </h2>
                           </div>
                           <div id="collapseTopic" class="collapse" aria-labelledby="headingTopic" data-parent="#accordionExample">
                              <div class="card-body">
                              <?php foreach($list_topic as $topic):?>
                                 <div class="form-check">
                                    <input name="topicid[]"  class="form-check-input" type="checkbox" value="<?=$topic->id;?>" id="topicCheck <?=$topic->id;?>">
                                    <label class="form-check-label" for="topicCheck <?=$topic->id;?>">
                                       <?=$topic->name;?>
                                    </label>
                                 </div>
                              <?php endforeach;?>
                                 <div class="mb-3">
                                   <input name="THEMTOPIC" type="submit" value="Thêm Menu" class="btn tbn-sm btn-success form-control">
                                 </div>
                              </div>
                           </div>
                        </div>
                        <!--end card topic-->
                        <div class="card">
                           <div class="card-header" id="headingPage">
                              <h2 class="mb-0">
                              <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapsePage" aria-expanded="false" aria-controls="collapsePage">
                                 Trang đơn
                              </button>
                              </h2>
                           </div>
                           <div id="collapsePage" class="collapse" aria-labelledby="headingPage" data-parent="#accordionExample">
                              <div class="card-body">
                              <?php foreach($list_page as $page):?>
                                 <div class="form-check">
                                    <input name="pageid[]"  class="form-check-input" type="checkbox" value="<?=$page->id;?>" id="pageCheck <?=$page->id;?>">
                                    <label class="form-check-label" for="pageCheck <?=$page->id;?>">
                                       <?=$page->title;?>
                                    </label>
                                 </div>
                              <?php endforeach;?>
                                 <div class="mb-3">
                                   <input name="THEMPAGE" type="submit" value="Thêm Menu" class="btn tbn-sm btn-success form-control">
                                 </div>
                              </div>
                           </div>
                        </div>
                        <!--end card Page-->
                        <div class="card">
                           <div class="card-header" id="headingCustom">
                              <h2 class="mb-0">
                              <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseCustom" aria-expanded="false" aria-controls="collapseCustom">
                                 Tùy liên kết
                              </button>
                              </h2>
                           </div>
                           <div id="collapseCustom" class="collapse" aria-labelledby="headingCustom" data-parent="#accordionExample">
                              <div class="card-body">
                                 <div class="mb-3">
                                    <label>Tên menu</label>
                                    <input type="text" name="name" class="form-control">
                                 </div>
                                 <div class="mb-3">
                                    <label>Liên kết</label>
                                    <input type="text" name="link" class="form-control">
                                 </div>
                                 <div class="mb-3">
                                   <input name="THEMCUSTOM" type="submit" value="Thêm Menu" class="btn tbn-sm btn-success form-control">
                                 </div>
                              </div>
                           </div>
                        </div>
                        <!--end card custom-->
                        </div>
                       </div>
                       <div class="col-md-9">
                       <table class="table table-bordered">
                           <thead>
                              <tr>
                                 <th class="text-center" style="width:30px;">
                                 <input type="checkbox">
                                 </th>
                                 <th class="text-center" >Tên Menu</th>
                                 <th>Liên kết</th>
                                 <th class="text-center" style="width: 160px;">Ngày tạo</th>
                                 <th class="text-center" style="width: 20px;">ID</th>
                              </tr>
                           </thead>
                           <tbody>
                              <?php if(count($list)>0): ?>
                                 <?php foreach ($list as $item) : ?>
                                    <tr class="datarow">
                                       <td>
                                          <input type="checkbox">
                                       </td>
                                    
                                       <td>
                                          <div class="name">
                                             <?= $item ->name; ?>
                                          </div>
                                          <div class="function_style">
                                       <?php if ($item->status == 1) : ?>
                                       <a href="index.php?option=menu&cat=status&id=<?=$item->id; ?>" class="btn 
                                       btn-success btn-xs">
                                          <i class="fas fa-toggle-on"></i> Hiện
                                       </a>
                                       <?php else : ?>
                                       <a href="index.php?option=menu&cat=status&id=<?= $item->id; ?>" class="btn 
                                       btn-danger btn-xs">
                                          <i class="fas fa-toggle-off"></i> Ẩn
                                       </a>
                                       <?php endif; ?>
                                          <a href="index.php?option=menu&cat=edit&id=<?=$item->id; ?>" class="btn btn-primary btn-xs">
                                       <i class="fas fa-edit"></i> Chỉnh sửa

                                       </a>
                                       <a href="index.php?option=menu&cat=show&id=<?=$item->id; ?>" class="btn btn-info btn-xs">
                                       <i class="fas fa-eye"></i> Chi tiết
                                       </a>
                                       <a href="index.php?option=menu&cat=delete&id=<?=$item->id; ?>" class="btn btn-danger btn-xs">
                                       <i class="fas fa-trash"></i> Xoá
                                          
                                       </a>
                                          </div>
                                       </td>
                                       <td><?= $item -> link;?></td>
                                       <td><?= $item -> created_at;?></td>
                                       <td><?= $item -> id;?></td>
                                    </tr>

                                 <?php endforeach; ?>
                              <?php endif;?>
                           </tbody>
                        </table>
                       </div>
                     </div>
                  </div>
               </div>
            </div>
         </section>
      </div>
</form>
      <!-- END CONTENT-->
      <?php require_once '../views/backend/footer.php';?>