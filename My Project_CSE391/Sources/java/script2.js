

	$("#divto").hover(function() {
	$("#div1").css("opacity","0.2");
}, function() {
	$("#div1").css("opacity","0");
});

$("#but1").click(function() {

	if($('#nameuser').val()!='Tài Khoản'&&$('#nameuser').val()!='Account'){
	window.location = 'view/levelbaihoc.php?phong='+$('#nameuser').val();
}
else {
		$("#formlogin").animate({ "height": "toggle" }, { duration: 400 });
}
});
