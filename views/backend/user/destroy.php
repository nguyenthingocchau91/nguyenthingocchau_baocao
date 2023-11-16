<?php

use App\Models\User;

$id = $_REQUEST['id'];
$user =  User::find($id);
if($user==null){
    header("location:index.php?option=user");
}
//
$user->delete();// xóa vv
header("location:index.php?option=user&cat=trash");