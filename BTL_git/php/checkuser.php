<?php
$getuser=$_GET['q'];

$link=mysqli_connect('localhost','phong2','trecongtu1234','duolingo');
if(!$link){
	echo "thatbai";
}else{
	$sql="select * from user where username='$getuser'";
	$kq=mysqli_query($link,$sql);
	if(mysqli_num_rows($kq)>0){
		echo "co user";
		// while($row=mysqli_fetch_assoc($kq)){
		// 	echo $row['username']."-".$row['password'];
	}else{
		echo "user k ton tai";
	}
}
?>