<?php
require('config.php');
$link=mysqli_connect($host,$user,$pass,$db);
if(!$link){
	echo 'ket noi khong thanh cong';
} else{
	mysqli_set_charset($link,'UTF8');
	$sql="select * from level";
	$kq=mysqli_query($link,$sql);
	if(mysqli_num_rows($kq)>0){
		while ($row=mysqli_fetch_assoc($kq)) {
			$hienthi='<div class="item" value="'.$row['id'].'"><div class="img-item" style="background-image:'." url("."'".$row['image']."'".');'.'"></div><p>'.$row['namelevel'].'</p></div>'.'<br>';
			echo $hienthi;
		}
	}else{
		echo "khong co ban ghi nao";
	}


	
}

mysqli_close($link);
?>
