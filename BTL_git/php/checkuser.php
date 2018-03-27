<?php
$getuser=$_GET['q'];
$getpass=$_GET['w'];
require_once('config.php');
$link=mysqli_connect($host,$user,$pass,$db);
if(!$link){
	echo "Ket Noi That Bai";
}else{
	$sql="select * from user where username='$getuser'and password='$getpass'";
	$kq=mysqli_query($link,$sql);
	if(mysqli_num_rows($kq)>0){
		echo "Đăng nhập Thành Công";
	}else{
		echo "Tên Đăng Nhập Hoặc Mật Khẩu Không Đúng";
	}
}
mysqli_close($link);
?>