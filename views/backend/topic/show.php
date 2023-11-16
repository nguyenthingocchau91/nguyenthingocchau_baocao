<?php
use App\Models\Topic;
use App\Libraries\MyClass;

$id = $_REQUEST['id'];
$topic =  Topic::find($id);
if($topic==null){
   MyClass::set_flash('message',['msg'=>'Lỗi trang 404','type'=>'danger']);
    header("location:index.php?option=topic");
}
?>
<?php require_once '../views/backend/header.php';?>
      <!-- CONTENT -->
      <div class="content-wrapper">
         <section class="content-header">
            <div class="container-fluid">
               <div class="row mb-2">
                  <div class="col-sm-12">
                     <h1 class="d-inline">Chi tiết chủ đề</h1>
                  </div>
               </div>
            </div>
         </section>
         <!-- Main content -->
         <section class="content">
            <div class="card">
               <div class="card-header ">
                 <div class="row">
                  <div class="col-md-12 text-right">
                  <a href="index.php?option=topic" class="btn btn-sm btn-info">
                     <i class="fa fa-arrow-left" aria-hidden="true"></i>
                     Về danh sách
                  </a>
                  </div>
                 </div>
               </div>
               <div class="card-body">
                  <div class="row">
                     <div class="col-md-12">
                        <table class="table table-bordered">
                           <thead>
                              <tr>
                                 <th>Tên trường</th>
                                 <th>Giá trị</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <td>ID</td>
                                 <td><?=$topic->id;?></td>
                              </tr>
                              <tr>
                                 <td>NAME</td>
                                 <td><?=$topic->name;?></td>
                              </tr>
                              <tr>
                                 <td>SLUG</td>
                                 <td><?=$topic->slug;?></td>
                              </tr>
                              <tr>
                                 <td>PARENT_ID</td>
                                 <td><?=$topic->parent_id;?></td>
                              </tr>
                              <tr>
                                 <td>SORT_ORDER</td>
                                 <td><?=$topic->sort_order;?></td>
                              </tr>
                              <tr>
                                 <td>METAKEY</td>
                                 <td><?=$topic->metakey;?></td>
                              </tr>
                              <tr>
                                 <td>METADESC</td>
                                 <td><?=$topic->metadesc;?></td>
                              </tr>
                              <tr>
                                 <td>CREATED_AT</td>
                                 <td><?=$topic->created_at;?></td>
                              </tr>
                              <tr>
                                 <td>CREATED_BY</td>
                                 <td><?=$topic->created_by;?></td>
                              </tr>
                              <tr>
                                 <td>UPDATED_AT</td>
                                 <td><?=$topic->updated_at;?></td>
                              </tr>
                              <tr>
                                 <td>UPDATED_BY</td>
                                 <td><?=$topic->update_by;?></td>
                              </tr>
                              <tr>
                                 <td>STATUS</td>
                                 <td><?=$topic->status;?></td>
                              </tr>
                           </tbody>
                        </table>
                     </div>
                  </div>
               </div>
            </div>
         </section>
      </div>
      <!-- END CONTENT-->
<?php require_once '../views/backend/footer.php';?>