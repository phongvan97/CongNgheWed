<?php
require('conect.php');
$taikhoan=$_POST['taikhoan'];
$matkhau=$_POST['matkhau'];


if(strlen($taikhoan)>0&&strlen($matkhau)>0){
	$sql="SELECT * FROM user WHERE username ='$taikhoan'";
	$data=mysqli_query($con,$sql);
	if(mysqli_num_rows($data)>0){
		echo "datontai";
	}
	else{
		$sql="INSERT INTO user ( username, password) VALUES ('$taikhoan', '$matkhau')" ;
		$data=mysqli_query($con,$sql);
		if($data){
			echo "ThanhCong";
		}else{
			echo "ThatBai";
		}
	}
}else{
	echo "NULL";
}
mysqli_close($con);
?>