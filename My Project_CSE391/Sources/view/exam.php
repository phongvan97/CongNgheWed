<!DOCTYPE html>
<html>
<head>
	<title>My Exams</title>
	<meta name="name" content="content" charset="UTF8">
	<link rel="stylesheet" href="../style/Exam.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.1.0/css/flag-icon.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
	<div class="wraper">
		<div class="container">
			<div id="title">
				Hãy Điền Câu Trả Lời Chính xác !!
			</div>
			<div class="menu-button" value='<?php echo $_GET['nameuser']; ?>'>
				<!-- lấy các câu hỏi từ DB -->
				<?php include('../php/getquestion.php') ?>
			</div>
			<div id="question">My Question Is ....</div>
			<textarea name="" id="answer" cols="35" placeholder="My Answer Is...." rows="8"></textarea>
			<div style="clear: both;"></div>
			<input type="button" id="result" value="">
			<input type="button" id="check" value="Kiểm Tra">
		</div>
	</div>
	<!-- file js xử lý phần bài tập -->
	<script src="../java/myexam.js"></script>
</body>
</html>