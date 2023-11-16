<?php
use App\Models\Menu;

$id = $_REQUEST['id'];
$menu = Menu::find($id);
if($menu==null){
    header("location:index.php?option=menu");
}

?>
<?php require_once '../views/backend/header.php';?>
     <!-- CONTENT -->
      <div class="content-wrapper">
         <section class="content-header">
            <div class="container-fluid">
               <div class="row mb-2">
                  <div class="col-sm-12">
                     <h1 class="d-inline">Chi tiết Menu</h1>
                  </div>
               </div>
            </div>
         </section>
         <!-- Main content -->
         <section class="content">
            <div class="card">
            <div class="card-header">
               <div class="row">
               
               <div class="col-md-12 text-right">
               <a href="index.php?option=menu" class="btn btn-sm btn-info">
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
                                 <td><?= $menu->id;?></td>
                              </tr>
                              <tr>
                                 <td>Tên menu</td>
                                 <td><?= $menu->	name;?></td>
                              </tr>
                              <tr>
                                 <td>Liên kết</td>
                                 <td><?= $menu->link;?></td>
                              </tr>
                              <tr>
                                 <td>Kiểu</td>
                                 <td><?= $menu->type;?></td>
                              </tr>
                              <tr>
                                 <td>Vị trí</td>
                                 <td><?= $menu->position;?></td>
                              </tr>
                              <tr>
                                 <td>parent_id</td>
                                 <td><?= $menu->parent_id;?></td>
                              </tr>
                              <tr>
                              <tr>
                                 <td>created_at</td>
                                 <td><?= $menu->created_at;?></td>
                              </tr>
                              <tr>
                                 <td>created_by</td>
                                 <td><?= $menu->created_by;?></td>
                              </tr>
                              <tr>
                                 <td>updated_at</td>
                                 <td><?= $menu->updated_at;?></td>
                              </tr>
                              <tr>
                                 <td>updated_by</td>
                                 <td><?= $menu->updated_by;?></td>
                              </tr>
                              <tr>
                                 <td>status</td>
                                 <td><?= $menu->status;?></td>
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
      
