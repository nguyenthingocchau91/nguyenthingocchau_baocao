<?php
use App\Models\Menu;
use App\Models\Category;
use App\Models\Brand;
use App\Models\Post;
use App\Models\Topic;
use App\Models\Page;
use App\Libraries\MyClass;

if (isset($_POST['THEMCATEGORY'])) {
    if(isset($_POST['categoryid'])) {
        $listid=$_POST['categoryid'];
        foreach($listid as $id){
            $category=Category::find($id);
            $menu = new Menu();
            //Lấy từ form
            $menu->name= $category->name;
            $menu->link = 'index.php?option=product&cat=' . $category->slug;
            $menu->type= 'category';
            $menu->table_id= $category->id;
            $menu->sort_order=1;
            $menu->status= 1;
            $menu->position= $_POST['position'];
            $menu->level = 2;
            $menu->parent_id= 0;
            $menu->created_at = date('Y-m-d H:i:s');
            $menu->created_by = 1;
            $menu->save();
        }
        MyClass::set_flash('message', ['type' => 'success', 'msg' => 'CAPNHAT thành công']);
            header("location:index.php?option=menu");
    }
    MyClass::set_flash('message', ['type' => 'danger', 'msg' => 'Chưa chọn danh mục']);
        header("location:index.php?option=menu");
    
}
if (isset($_POST['THEMBRAND'])) {
    if(isset($_POST['brandid'])) {
        $listid=$_POST['brandid'];
        foreach($listid as $id){
            $brand=Brand::find($id);
            $menu = new Menu();
            //Lấy từ form
            $menu->name= $brand->name;
            $menu->link = 'index.php?option=brand&cat=' . $brand->slug;
            $menu->type= 'brand';
            $menu->table_id= $brand->id;
            $menu->sort_order=1;
            $menu->status= 1;
            $menu->position= $_POST['position'];
            $menu->level = 2;
            $menu->parent_id= 0;
            $menu->created_at = date('Y-m-d H:i:s');
            $menu->created_by = 1;
            $menu->save();
        }
        MyClass::set_flash('message',['type'=>'success','msg'=>'CAPNHAT thành công']);
        header("location:index.php?option=menu");
    }   
    MyClass::set_flash('message',['type'=>'danger','msg'=>'Chưa chọn thương hiệu']);
    header("location:index.php?option=menu");
}

if (isset($_POST['THEMTOPIC'])) {
    if(isset($_POST['topicid'])) {
        $listid=$_POST['topicid'];
        foreach($listid as $id){
            $topic=Topic::find($id);
            $menu = new Menu();
            //Lấy từ form
            $menu->name= $topic->name;
            $menu->link = 'index.php?option=post&cat=' . $topic->slug;
            $menu->type= 'topic';
            $menu->table_id= $topic->id;
            $menu->sort_order=1;
            $menu->status= 1;
            $menu->position= $_POST['position'];
            $menu->level = 2;
            $menu->parent_id= 0;
            $menu->created_at = date('Y-m-d H:i:s');
            $menu->created_by = 1;
            $menu->save();
        }
        MyClass::set_flash('message', ['type' => 'success', 'msg' => 'Thêm thành công']);
        header("location:index.php?option=menu");
    }
    MyClass::set_flash('message',['type'=>'danger','msg'=>'Chưa chọn chủ đề']);
    header("location:index.php?option=menu");
}

if (isset($_POST['THEMPAGE'])) {
    if(isset($_POST['pageid'])) {
        $listid=$_POST['pageid'];
        foreach($listid as $id){
            $page=Post::find($id);
            $menu = new Menu();
            //Lấy từ form
            $menu->name= $page->title;
            $menu->link = 'index.php?option=page&cat=' . $page->slug;
            $menu->type= 'page';
            $menu->table_id= $page->id;
            $menu->sort_order=1;
            $menu->status= 1;
            $menu->position= $_POST['position'];
            $menu->level = 2;
            $menu->parent_id= 0;
            $menu->created_at = date('Y-m-d H:i:s');
            $menu->created_by = 1;
            $menu->save();
        }
        MyClass::set_flash('message',['type'=>'success','msg'=>'Thêm thành công']);
        header("location:index.php?option=menu");
    }
    MyClass::set_flash('message',['type'=>'danger','msg'=>'Chưa chọn trang đơn']);
    header("location:index.php?option=menu");
}
if (isset($_POST['THEMCUSTOM'])) {
    if(strlen($_POST['name'])>0 && strlen($_POST['link'])>0) {
        $menu = new Menu();
        //Lấy từ form
        $menu->name=  $_POST['name'];
        $menu->link =  $_POST['link'];
        $menu->type= 'custom';
        $menu->sort_order=1;
        $menu->status= 1;
        $menu->position= $_POST['position'];
        $menu->level = 2;
        $menu->parent_id= 0;
        $menu->created_at = date('Y-m-d H:i:s');
        $menu->created_by = 1;
        $menu->save();
        MyClass::set_flash('message',['type'=>'success','msg'=>'Thêm thành công']);
        header("location:index.php?option=menu");
    }
    else{
        MyClass::set_flash('message',['type'=>'danger','msg'=>'Chưa đủ thông tin']);
        header("location:index.php?option=menu");
    }
}
//////////////////////////////////////////////////////
if (isset($_POST['CAPNHAT'])) {
    $id=$_POST ['id'];
    $menu= Menu::find($id);
    if($menu==null){
        header("location:index.php?option=menu");
    }
            //Lấy từ form
            $menu->name=  $_POST['name'];
            $menu->link =  $_POST['link'];
            $menu->type=  $_POST['type'];
            $menu->status=$_POST['status'];
            $menu->position= $_POST['position'];
            $menu->level= $_POST['level'];
            $menu->parent_id= $_POST['parent_id'];
            $menu->updated_at = date('Y-m-d H:i:s');
            $menu->updated_by = (isset($_SESSION['user_id'])) ? $_SESSION['user_id'] : 1;
            $menu->save();
    
        MyClass::set_flash('message', ['type' => 'success', 'msg' => 'CAPNHAT thành công']);
            header("location:index.php?option=menu");
}

