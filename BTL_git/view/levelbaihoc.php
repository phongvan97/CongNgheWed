<!DOCTYPE html>
<html>
<head>
	<title>Level bai hoc</title>
	<link rel="stylesheet" href="../style/level.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.1.0/css/flag-icon.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
	<?php 
	include('../php/getDetailUser.php') ?>
	<div class="wraper">
		<div class="container">	
			<h1 ><strong>Hãy Chọn bài Học : <strong id="getuserforexam"><?php   echo $username; ?></strong></strong>  </h1>
			<div class="col-lg-6" id="left1">
				<?php
				include('../php/getItemLevel.php'); 
				?> 
			</div>
			<div class="col-lg-4" id="right1">
				<div class="row">
					<p>Your Score</p>
					<div class="score"><?php  echo $score ;?></div>
				</div>
				<div class="row" style="margin-top: 80px;">
					<p>Your Level</p>
					<div class="level"><?php  echo $level ;?></div>
				</div>
			</div>
		</div>

	</div>
	<script src="../java/database.js">
	</script>
</body>
</html>