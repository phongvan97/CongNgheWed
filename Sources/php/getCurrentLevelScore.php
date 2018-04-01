<?php
require('config.php');
$name=$_GET['ha'];
$link=mysqli_connect($host,$user,$pass,$db);
if(!$link){
	echo 'ket noi that bai';
}else{
	mysqli_set_charset($link,'UTF8');
	$sql="select * from user where username='$name'";
	$kq=mysqli_query($link,$sql);
	if(mysqli_num_rows($kq)>0){
		while ($row=mysqli_fetch_assoc($kq)){
			$hienthi=$row['level'].' '.$row['score'];
			echo $hienthi;
		}
	}else{
		echo "khong ton tai";
	}
}

?>