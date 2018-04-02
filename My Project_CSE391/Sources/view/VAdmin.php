<!DOCTYPE html>
<html>
<head>
	<title>Admin</title>
	
	<meta name="name" content="content" charset="UTF8">
	<link rel="stylesheet" href="../style/admincss.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.1.0/css/flag-icon.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
	<div class="container">
		<div style="font-weight: bold;font-size: 50px;margin-top: 100px;">Welcome Admin ^.^!</div>
		<div class="Vlevel">

			<!-- phần  Lấy các LV đã có Trong DB -->
		</div>
		<button id="btn-themlv" style="width: 500px;">THêm Level Cao Hơn</button>

		<!-- phần form để thêm LV -->

		<div class="them">
			<div class="item-ques txtlv">
				Tên Level:
				<input id="1" class="mytext" type="text"  placeholder="Name Level" >
				Đường dẫn ảnh :
				<input id="2" class="mytext" type="text" placeholder="Image Path" >
			</div>
			<div class="item-ques txtqueslevel">
				Câu 1:
				<input id="1" class="mytext" type="text"  placeholder="Question" >
				<input id="2" class="mytext" type="text" placeholder="Answer" v>
			</div>
			<div class="item-ques txtqueslevel">
				Câu 2:
				<input id="1" class="mytext" type="text"  placeholder="Question">
				<input id="2" class="mytext" type="text" placeholder="Answer">
			</div>
			<div class="item-ques txtqueslevel">
				Câu 3:
				<input id="1" class="mytext" type="text" placeholder="Question">
				<input id="2" class="mytext" type="text" placeholder="Answer">
			</div>
			<div class="item-ques txtqueslevel">
				Câu 4:
				<input id="1" class="mytext" type="text" placeholder="Question">
				<input id="2" class="mytext" type="text" placeholder="Answer">
			</div>
			<div class="item-ques txtqueslevel">
				Câu 5:
				<input id="1" class="mytext" type="text" placeholder="Question">
				<input id="2" class="mytext" type="text" placeholder="Answer">
			</div>
			<div class="item-ques txtqueslevel">
				Câu 6:
				<input id="1" type="text" placeholder="Question">
				<input id="2" type="text" placeholder="Answer">
			</div>
			<div class="item-ques txtqueslevel">
				Câu 7:
				<input id="1" type="text" placeholder="Question">
				<input id="2" type="text" placeholder="Answer">
			</div>
			<div class="item-ques txtqueslevel">
				Câu 8:
				<input id="1" type="text" placeholder="Question">
				<input id="2" type="text" placeholder="Answer">
			</div>
			<div class="item-ques txtqueslevel">
				Câu 9:
				<input id="1" type="text" placeholder="Question">
				<input id="2" type="text" placeholder="Answer">
			</div>
			<div class="item-ques txtqueslevel">
				Câu 10:
				<input id="1" type="text" placeholder="Question">
				<input id="2" type="text" placeholder="Answer">
			</div>
			<button id="btn-them">Thêm</button>
		</div>
	</div>
	<!-- file js Để xử lý tác vụ admin -->
	<script src="../java/admin.js"></script>
</body>
</html>
