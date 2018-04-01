<?php
require('config.php');
$name=$_GET['a'];
$img=$_GET['b'];
$link=mysqli_connect($host,$user,$pass,$db);
if(!$link){
	echo 'KET noi that bai';
}else{
	mysqli_set_charset($link,'UTF8');
	$sql="INSERT INTO level (namelevel, image) VALUES ('$name',"."'$img'".")";
	$kq=mysqli_query($link,$sql);
	if($kq===true){
		echo "Thành Công";
	}else{
		echo $sql;
	}
}
mysqli_close($link);
?>
