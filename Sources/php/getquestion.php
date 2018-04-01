<?php 
require('config.php');

$idlevel=$_GET["idlevel"];

$link=mysqli_connect($host,$user,$pass,$db);
if(!$link){
	echo 'ket noi khong thanh cong';
}else{
	mysqli_set_charset($link,'UTF8');
	$sql="select * from question where level='$idlevel'";
	$kq=mysqli_query($link,$sql);
	if(mysqli_num_rows($kq)>0){
		$dem=1;
		while ($row=mysqli_fetch_assoc($kq)){
			$hienthi='<div class="but-item" value="'.$row['id'].'">Câu Hỏi '.$dem.'</div>';
			echo $hienthi;
			$dem++;
		}
	}else{
		echo "Khong ton tai".$idlevel;
	}
}
mysqli_close($link);
?>
