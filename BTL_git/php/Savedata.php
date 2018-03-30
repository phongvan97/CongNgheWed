<?php 
require('config.php');

$name=$_GET['a'];
$level=$_GET['b'];
$score=$_GET['c'];
// echo $name.$level.$score;
$link=mysqli_connect($host,$user,$pass,$db);
if(!$link){
	echo 'ket noi that bai';
}else{
	mysqli_set_charset($link,'UTF8');
	$sql="UPDATE user SET level = '$level', score = '$score' WHERE user.username = '$name'";
		$kq=mysqli_query($link,$sql);
		if($kq===true){
			echo 'thanh cong';
		}else{
			echo "That bai";
		}
}
 ?>
