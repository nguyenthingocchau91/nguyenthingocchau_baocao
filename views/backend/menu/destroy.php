<?php
use App\Models\Menu;

$id = $_REQUEST['id'];
$menu = Menu::find($id);
if($menu==null){
    header("location:index.php?option=menu&cat=trash");
}
$menu->delete();
header("location:index.php?option=menu&cat=trash");