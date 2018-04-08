<?php 
require('conect.php');
$card1=$_POST['card1'];
$card2=$_POST['card2'];
$name=$_POST['name'];
$type=$_POST['type'];

if(strlen($card1)>0&&strlen($card2)>0&&strlen($name)>0&&strlen($type)>0){
	
	$sql="SELECT * FROM user WHERE username ='$name'";
	$data=mysqli_query($con,$sql);
	if(mysqli_num_rows($data)>0){
		while ($row=mysqli_fetch_assoc($data)) {
			$id=$row['iduser'];
		}
	}
	mysqli_set_charset($con,"UTF8");
	$sql="INSERT INTO log (user, type, card1, card2) VALUES ('$id', '$type', '$card1', '$card2')";
	$data=mysqli_query($con,$sql);
	if($data){
		echo "thanhcong";
	}else{
		echo "ThatBai";
	}

}else{
	echo "NULL";
}



?>