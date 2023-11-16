<?php
use App\Models\User;

//status=0--> Rac
//status=1--> Hiện thị lên trang người dùng
//
//SELECT * FROM user wher status!=0 and id=1 order by created_at desc

$id = $_REQUEST['id'];
$user =  User::find($id);
if($user==null){
    header("location:index.php?option=user");
}

$list = user::where('status','=',0)->orderBy('Created_at','DESC')->get();

?>

<?php require_once "../views/backend/header.php";?>
      <!-- CONTENT -->


      <div class="content-wrapper">
         <section class="content-header">
            <div class="container-fluid">
               <div class="row mb-2">
                  <div class="col-sm-12">
                     <h1 class="d-inline">Chi tiết thành viên</h1>
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
               
                  Noi dung
                  <div class="col-md-11 text-right">
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
                       
                           <th>Tên trường</th>
                           <th>Giá trị</th>
                          
                        </tr>
                     </thead>
                     <tbody>

                           <tr>
                              <td>ID</td>
                               <td><?= $user->id;?></td>
                           </tr>
                           <tr>
                              <td>name</td>
                               <td><?= $user->name;?></td>
                           </tr>
                           <tr>
                              <td>email</td>
                               <td><?= $user->email;?></td>
                           </tr>
                           <tr>
                              <td>phone</td>
                               <td><?= $user->phone;?></td>
                           </tr>
                           <tr>
                              <td>username</td>
                               <td><?= $user->username;?></td>
                           </tr>
                           <tr>
                              <td>password</td>
                               <td><?= $user->password;?></td>
                           </tr>
                           <tr>
                              <td>address</td>
                               <td><?= $user->address;?></td>
                           </tr>
                           <tr>
                           <tr>
                                 <td>image</td>
                                 <td><img class="img-fluid" src="../public/images/user/<?=$user->image;?>" alt="<?=$user->image;?>"></td>
                              </tr>
                           <tr>
                              <td>roles</td>
                               <td><?= $user->roles;?></td>
                           </tr>
                           <tr>
                              <td>created_at</td>
                               <td><?= $user->created_at;?></td>
                           </tr>
                           <tr>
                              <td>created_by</td>
                               <td><?= $user->created_by;?></td>
                           </tr>
                           <tr>
                              <td>updated_at</td>
                               <td><?= $user->updated_at;?></td>
                           </tr>
                           <tr>
                              <td>updated_by</td>
                               <td><?= $user->updated_by;?></td>
                           </tr>
                           <tr>
                              <td>status</td>
                               <td><?= $user->status;?></td>
                           </tr>

                    
                     </tbody>
                  </table>
               </div>
            </div>
         </section>
      </div>

      <!-- END CONTENT-->
      <?php require_once "../views/backend/footer.php";?>