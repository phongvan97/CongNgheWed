<?php 
require('conect.php');
$card1=$_POST['card1'];
$card2=$_POST['card2'];
class Card{
	function Card($id,$namecard,$img,$mean){
		$this->id=$id;
		$this->namecard=$namecard;
		$this->img=$img;
		$this->mean=$mean;
	}
}
if(strlen($card1)>0&&strlen($card2)>0){
	mysqli_set_charset($con,"UTF8");
	$mangCard=array();
	$sql="SELECT * FROM card WHERE id='$card1' or id='$card2'";
	$kq=mysqli_query($con,$sql);
	if(mysqli_num_rows($kq)>0){
		while ($row=mysqli_fetch_assoc($kq)) {
			array_push($mangCard, new Card($row['id']
				,$row['namecard']
				,$row['img']
				,$row['mean2']));
		}
		if(count($mangCard)>0){
			echo json_encode($mangCard,JSON_UNESCAPED_UNICODE);
		}
		else{
			echo "Fail";
		}
	}else{
		echo "khong thay";
	}
}else{
	echo "NULL";
}
mysqli_close($con);
?>