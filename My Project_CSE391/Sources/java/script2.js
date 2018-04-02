
//hiệu ứng
$("#divto").hover(function() {
	$("#div1").css("opacity","0.2");
}, function() {
	$("#div1").css("opacity","0");
});

$("#but1").click(function() {
	// chuyển trang sang phần level
	if($('#nameuser').val()!='Tài Khoản'&&$('#nameuser').val()!='Account'){
		// chuyển hướng sang trang levelbaihoc.php
		window.location = 'view/levelbaihoc.php?phong='+$('#nameuser').val();
	}
	else {
		$("#formlogin").animate({ "height": "toggle" }, { duration: 400 });
	}
});
