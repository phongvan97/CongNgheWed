<?php
$getname=$_GET['a'];
$getpass=$_GET['b'];
$link=mysqli_connect('localhost','phong2','trecongtu1234','duolingo');
if(!$link){
	echo 'that bai';
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