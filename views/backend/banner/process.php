<?php

use App\Models\Banner;
use App\Libraries\MyClass;

if(isset($_POST['THEM'])){
    $banner= new Banner();
    //lấy từ form
    $banner->name= $_POST ['name'];
    $banner->slug= (strlen($_POST['slug'])>0)? $_POST['slug']:MyClass :: str_slug($_POST['name']);
    $banner->description= $_POST ['description'];
    $banner->status= $_POST ['status'];

//xử lý upload file
if(strlen($_FILES['image']['name'])>0)
{
    $target_dir ="../public/images/banner/";
    $target_file =$target_dir . basename($_FILES["image"]["name"]);
    $extension=strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
    if(in_array($extension,['jpg','jpeg','png','gif','webp'])){
        $filename= $banner->slug .'.' . $extension;
        move_uploaded_file($_FILES['image']['tmp_name'],$target_dir . $filename);
        $banner->image=$filename;
    }
}
//tự sinh ra
    $banner->created_at= date('Y-m-d H:i:s');
    $banner->created_by= (isset($_SESSION['user_id'])) ? $_SESSION['user_id'] : 1;
    
    var_dump($banner);
    //lưu vào csdl
    //insert into banner ...
    $banner->save();
    //chuyên hướng về index
    header("location:index.php?option=banner");
}

if(isset($_POST['CAPNHAT']))
{
    $id=$_POST['name'];
    $banner= banner::find($id);
    if($brand==null){
        header("location:index.php?option=banner");
    }

    //lấy từ form
    $banner->name= $_POST ['name'];
    $banner->slug= (strlen($_POST['slug'])>0)? $_POST['slug']:MyClass :: str_slug($_POST['name']);
    $banner->description= $_POST ['description'];
    $banner->status= $_POST ['status'];

//xử lý upload file
if(strlen($_FILES['image']['name'])>0)
{
    $target_dir ="../public/images/banner/";
    $target_file =$target_dir . basename($_FILES["image"]["name"]);
    $extension=strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
    if(in_array($extension,['jpg','jpeg','png','gif','webp'])){
        $filename= $banner->slug .'.' . $extension;
        move_uploaded_file($_FILES['image']['tmp_name'],$target_dir . $filename);
        $banner->image=$filename;
    }
}
//tự sinh ra
    $banner->updated_at= date('Y-m-d H:i:s');
    $banner->updated_by= (isset($_SESSION['user_id'])) ? $_SESSION['user_id'] : 1;
    
    var_dump($banner);
    //lưu vào csdl
    //insert into banner ...
    $banner->save();
    //chuyên hướng về index
    header("location:index.php?option=banner");
}
