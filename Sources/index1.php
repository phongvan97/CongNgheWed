<!DOCTYPE >
<html>
<head>
	<title>BTLLLLLLLLLL</title>
	<meta name="name" content="content" charset="UTF8">
	<link rel="stylesheet" href="style/btl2.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.1.0/css/flag-icon.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="http://code.jquery.com/jquery-latest.js"></script>

</head>
<body>
	<div class="wrapper">
		<!-- 2 thẻ sử dụng cho phần hiện video -->
		<div id="test10" ></div>
		<video id="video1" src="video/clip.mp4" controls loop autoplay preload="auto" ></video> 

		<!-- lấy phần thanh đăng nhập trong thư mục php -->
		<?php include('php/line0.php'); ?> 
		<!-- lấy phần thanh header trong thư mục php -->
		<?php include('php/header.php'); ?> 
		<!-- lấy phần Thân trong thư mục php -->
		<?php include('php/container.php'); ?> 
		<!-- lấy phần footer trong thư mục php -->
		<?php include('php/footer.php'); ?> 

	</div>
	<!-- file js cho các chức năng khác -->
	<script src="java/script.js"></script>
	<!-- file js có các chức năng liên quan đến DB -->
	<script src="java/database.js"></script>
</body>
</html>