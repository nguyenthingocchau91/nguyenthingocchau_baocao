<?php 
use App\Models\Topic;
use App\Libraries\MyClass;
$id = $_REQUEST['id'];
$topic =  Topic::find($id);
if($topic==null){
    MyClass::set_flash('message',['msg'=>'Lỗi trang 404','type'=>'danger']);
    header("location:index.php?option=topic&cat=trash");
}
$topic->delete();  // xóa khỏi database
MyClass::set_flash('message',['msg'=>'Xóa CSDL thành công','type'=>'success']);
header("location:index.php?option=topic&cat=trash");