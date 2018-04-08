<?php 
require('conect.php');
$name=$_POST['user'];
// $name='phong2';
class History{
	function History($type,$date,$namecard1,$namecard2){
		$this->type=$type;
		$this->date=$date;
		$this->card1=$namecard1;
		$this->card2=$namecard2;
	}
}
mysqli_set_charset($con,"UTF8");
$manghis=array();
if(strlen($name)>0){
	$sql="select * from user where username ='$name'";
	$kq=mysqli_query($con,$sql);
	if(mysqli_num_rows($kq)>0){
		while ($row=mysqli_fetch_assoc($kq)) {
			$iduser=$row['iduser'];
		}
	}
	$sql="select * from log where user='$iduser'";
	$kq=mysqli_query($con,$sql);
	if(mysqli_num_rows($kq)>0){
		while ($row=mysqli_fetch_assoc($kq)) {
			$sql="select * from card where id=".$row['card1'];
			$kq2=mysqli_query($con,$sql);
			if(mysqli_num_rows($kq2)>0){
				while ($row2=mysqli_fetch_assoc($kq2)){
					$ten1=$row2['namecard'];
				}
			}



			$sql="select * from card where id=".$row['card2'];
			$kq2=mysqli_query($con,$sql);
			if(mysqli_num_rows($kq2)>0){
				while ($row2=mysqli_fetch_assoc($kq2)){
					$ten2=$row2['namecard'];
				}
			}

			array_push($manghis,new History($row['type'],$row['date'],$ten1,$ten2));

		}
		if(count($manghis)>0){
			echo json_encode($manghis,JSON_UNESCAPED_UNICODE);
		}else{
			echo "Fail";
		}


		
	}

}else{
	echo "NULL";
}


?>