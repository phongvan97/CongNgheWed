<?php
require('config.php');
$id=$_GET['hi'];
$link=mysqli_connect($host,$user,$pass,$db);
if(!$link){
	echo "ket noi that bai";
} else{
	mysqli_set_charset($link,'UTF8');
	$sql="select * from question where id='$id'";
		$kq=mysqli_query($link,$sql);
		if(mysqli_num_rows($kq)>0){
		while ($row=mysqli_fetch_assoc($kq)){
			$hienthi=$row['myquestion'].'-'.$row['myanswer'];
			echo $hienthi;
		}
	}else{
		echo "Khong ton tai";
	}
}
mysqli_close($link);
 ?>
