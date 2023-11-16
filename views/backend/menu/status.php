<?php

use App\Models\Menu;

$id = $_REQUEST['id'];
$menu =  Menu::find($id);
if($menu==null){
    header("location:index.php?option=menu");
}
//
$menu->status =($menu->status == 1) ? 2 : 1;
$menu->updated_at = date('Y-m-d H:i:s');
$menu->updated_by = (isset($_SESSION['user_id'])) ? $_SESSION['user_id'] : 1;
$menu->save();
header("location:index.php?option=menu");