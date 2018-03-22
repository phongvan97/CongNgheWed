	
	$("#divto").hover(function() {
		// alert("âsa");
	$("#div1").css("opacity","0.2");
}, function() {
	$("#div1").css("opacity","0");
});

$("#but1").click(function() {
	$("#formlogin").animate({ "height": "toggle" }, { duration: 400 });
});
