<?php 
$user= $_GET['phong'];
require('config.php');

$link=mysqli_connect($host,$user,$pass,$db);
if(!$link){
	echo 'ket noi khong thanh cong';
}else{
	mysqli_set_charset($link,'UTF8');
	$sql="select * from user where username='$user'";
	$kq=mysqli_query($link,$sql);
	if(mysqli_num_rows($kq)>0){
		while ($row=mysqli_fetch_assoc($kq)){
			$level=$row['level'];
			$score=$row['score'];
		}
	}
}
?>
