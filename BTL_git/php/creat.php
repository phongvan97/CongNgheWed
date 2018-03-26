<?php
$getname=$_GET['a'];
$getpass=$_GET['b'];
require_once('config.php');
$link=mysqli_connect($host,$user,$pass,$db);
if(!$link){
	echo 'Kết Nối DB Thất Bại';
}else{
	$sql="INSERT INTO user (username, password) VALUES ('$getname','$getpass')";
	$kq=mysqli_query($link,$sql);
	if($kq===true){
		echo "Đăng Ký Thành Công";
	}else{
		echo "Tên Đăng Nhập Đã Tồn Tại";
	}
}
mysqli_close($link);
?>