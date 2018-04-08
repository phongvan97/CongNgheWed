<?php 
require('conect.php');
$taikhoan=$_POST['taikhoan'];
$matkhau=$_POST['matkhau'];
if(strlen($taikhoan)>0&&strlen($matkhau)>0){
	$sql="SELECT * FROM user WHERE username ='$taikhoan'and password='$matkhau'";
	$kq=mysqli_query($con,$sql);
	if(mysqli_num_rows($kq)>0){

			echo "thanhcong";
		
	}else{
		echo "thatbai";
	}
}else{
	echo "NULL";
}
mysqli_close($con);

?>