<?php
use App\Models\User;

//status=0--> Rac
//status=1--> Hiện thị lên trang người dùng
//
//SELECT * FROM brand wher status!=0 and id=1 order by created_at desc

$list = user::where('status','=',0)->orderBy('Created_at','DESC')->get();

?>

<?php require_once "../views/backend/header.php";?>
      <!-- CONTENT -->


      <div class="content-wrapper">
         <section class="content-header">
            <div class="container-fluid">
               <div class="row mb-2">
                  <div class="col-sm-12">
                     <h1 class="d-inline">Thùng rác thành viên</h1>
                     <a href="index.php?option=user&cat=create" class="btn btn-sm btn-primary">Thêm thành viên</a>
                  </div>
               </div>
            </div>
         </section>
         <!-- Main content -->
         <section class="content">
            <div class="card">
               <div class="card-header">
               <div class="row">
               <div class="col-md-5">
                  <a href="index.php?option=user">Tất cả</a> |
                  <a href="index.php?option=user&cat=trash"> Thùng rác</a>
                  </div>
                  Noi dung
                  <div class="col-md-6 text-right">
                  <a href="index.php?option=user" class="btn btn-sm btn-info">
                     <i class="fa fa-arrow-left" aria-hidden="true"></i>
                     Về thương hiệu
                  </a>
                  </div>
               </div>
               <div class="card-body">
                  <table class="table table-bordered" id="mytable">
                     <thead>
                        <tr>
                        <th class="text-center" style="width:30px;">
                                    <input type="checkbox">
                                 </th>
                                 <th class="text-center" style="width:100px;">Hình ảnh</th>
                           <th style="width: 90px;">Họ tên</th>
                           <th>Điện thoại</th>
                           <th>Email</th>
                           <th>Tên Đăng Nhập</th>
                           <th>Địa Chỉ </th>
                          
                        </tr>
                     </thead>
                     <tbody>
                     <?php if(count($list) > 0) : ?>
                              <?php foreach($list as $item   ):?>
                        <tr class="datarow">
                           <td>
                              <input type="checkbox">
                           </td>
                           <td>
                           <img class="img-fluid" src="../public/images/user/<?=$item->image;?>" alt="<?=$item->image;?>">
                           </td>
                           <td>
                              <div class="name">
                              <?= $item->name ; ?> 

                              </div>
                              <div class="function_style">                                                                       
                                       <a href="index.php?option=user&cat=restore&id=<?=$item->id; ?>" class="btn btn-info btn-xs">
                                       <i class="fas fa-undo"></i> Khôi Phục 
                                       </a>
                                       <a href="index.php?option=user&cat=destroy&id=<?=$item->id; ?>" class="btn btn-danger btn-xs">
                                       <i class="fas fa-trash"></i> Xóa VV
                                       </a>
                                    </div>
                           </td>
                           <td> <?= $item->phone ; ?>
                           </td>
                           <td> <?= $item->email ; ?> 
                              </td>
                              <td> <?= $item->username ; ?> 
                              </td>
                              
                              </td>
                              <td> <?= $item->address ; ?> 
                                 </td>
                             
                           
                        </tr>
                        <?php endforeach;?>
                              <?php endif;?>
                     </tbody>
                  </table>
               </div>
            </div>
         </section>
      </div>

      <!-- END CONTENT-->
      <?php require_once "../views/backend/footer.php";?>