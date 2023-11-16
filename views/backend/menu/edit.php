<?php
use App\Models\Menu;
use App\Models\Category;
use App\Models\Brand;
use App\Models\Post;
use App\Models\Topic;
use App\Models\Page;

$id = $_REQUEST['id'];
$menu =  Menu::where([['status', '!=', 0], ['id', '=', $id]])->first();
if($menu==null){
    header("location:index.php?option=menu");
}
$list_category = Category::where('status', '!=', 0)->get();
$list_brand = Brand::where('status', '!=', 0)->get();

$str_option_cat = "";
$str_option_brand = "";

foreach ($list_category as $item) {
   if ($menu->category_id == $item->id) {
      $str_option_cat .= "<option selected value ='" . $item->id . "'>" . $item["name"] . "</option>";
   } else {
      $str_option_cat .= "<option value ='" . $item->id . "'>" . $item["name"] . "</option>";
   }
}
foreach ($list_brand as $item) {
   if ($menu->brand_id == $item->id) {
      $str_option_brand .= "<option selected value ='" . $item->id . "'>" . $item["name"] . "</option>";
   } else {
      $str_option_brand .= "<option value ='" . $item->id . "'>" . $item["name"] . "</option>";
   }
}
?>
<?php require_once '../views/backend/header.php';?>

<!-- CONTENT -->
<form action="index.php?option=menu&cat=process" method="post" >
      <div class="content-wrapper">
         <section class="content-header">
            <div class="container-fluid">
               <div class="row mb-2">
                  <div class="col-sm-12">
                     <h1 class="d-inline">Cập nhật Menu</h1>
                  </div>
               </div>
            </div>
         </section>
         <!-- Main content -->
         <section class="content">
         <div class="card">
            <div class="card-header">
               <div class="row">
                  <div class="col-md-6">
                     <a href="index.php?option=menu" class="btn btn-sm btn-info mr-3 text-left">
                        <i class="fa fa-arrow-left" aria-hidden="true"></i>
                        Về danh sách
                     </a>
                  </div>
                  <div class="col-md-6 text-right">
                     <button class="btn btn-sm btn-success" type="submit" name="CAPNHAT">
                        <i class="fa fa-save" aria-hidden="true"></i>
                        Cập nhật
                     </button>
                  </div>
               </div>
            </div>
               <div class="card-body">
                     <div class="row">
                     <div class="card-body">
                  <div class="row">
                     <div class="col-md-12">
                        <div class="mb-3">
                        <input type="hidden" name="id" value="<?= $menu->id; ?>" />
                           <label>Tên menu (*)</label>
                           <input type="text" value="<?= $menu->name; ?>" name="name" class="form-control">
                        </div>
                        <div class="mb-3">
                           <label>Liên kết</label>
                           <input type="text"  value="<?= $menu->link; ?>" name="link" class="form-control">
                        </div>
                        <div class="mb-3">
                           <label>Kiểu</label>
                           <input type="text"  value="<?= $menu->type; ?>" name="type" class="form-control">
                        </div>
                        <div class="mb-3">
                           <label>Vị trí</label>
                           <input type="text"  value="<?= $menu->position; ?>" name="position" class="form-control">
                        </div>
                        <div class="mb-3">
                           <label>Cha</label>
                           <input type="text"  value="<?= $menu->parent_id; ?>" name="parent_id" class="form-control">
                        </div>
                        <div class="mb-3">
                           <label>Trạng thái</label>
                           <select name="status" class="form-control">
                              <option value="1" <?= ($menu->status==1)?'selected':''; ?>>Xuất bản</option>
                              <option value="2" <?= ($menu->status==2)?'selected':''; ?> >Chưa xuất bản</option>
                           </select>
                        </div>
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