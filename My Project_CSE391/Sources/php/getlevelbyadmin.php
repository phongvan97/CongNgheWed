<?php
require('config.php');
$link=mysqli_connect($host,$user,$pass,$db);
if(!$link){
	echo 'ket noi that bai';
}else{
	//lấy các item level cho trang admin
	mysqli_set_charset($link,'UTF8');
	$sql="select * from  level";
		$kq=mysqli_query($link,$sql);
		if(mysqli_num_rows($kq)>0){
			while ($row=mysqli_fetch_assoc($kq)){
				$hienthi='<div class="item">
				<div class="img" style="background-image: url('."'".$row['image']."'".');"></div>
				<div class="lv">Lv.'.$row['id'].'</div>
				<div class="name">'.$row['namelevel'].'</div>
				<button class="button"><span>Edit</span></button>
				<button class="button"><span>Delete</span></button>
			</div>';
				echo $hienthi;
			}
		}else{
			echo "không có";
		}

}
 ?>