<?php
require('config.php');
$ques=$_GET['a'];
$ans=$_GET['b'];
$link=mysqli_connect($host,$user,$pass,$db);
if(!$link){
	echo 'KET noi that bai';
}else{
	mysqli_set_charset($link,'UTF8');
	$sql='SELECT * FROM level ORDER by id DESC LIMIT 1';
	$kq=mysqli_query($link,$sql);
	if(mysqli_num_rows($kq)>0){
		while ($row=mysqli_fetch_assoc($kq)) {
			$id=$row['id'];
		}
	}
	$sql="INSERT INTO question (level,myquestion,myanswer) VALUES ('$id', '$ques', '$ans')";
	$kq=mysqli_query($link,$sql);
	if($kq===true){
		echo "thêm thành công";
	}
}
mysqli_close($link);
?>
