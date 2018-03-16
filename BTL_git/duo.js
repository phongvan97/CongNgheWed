var ios=document.getElementById('btnIOS');
ios.onmouseover=function change(){
	var img=document.getElementById('imgIOS');
	img.src="image/apple2.png";
	ios.style.backgroundColor = "#1CAFF6";
	var txt=document.getElementById('txtIOS');
	txt.style.color = '#F1F1F1';
};
ios.onmouseleave=function chang2() {
	var img=document.getElementById('imgIOS');
	img.src="image/apple1.png";
	ios.style.backgroundColor = "#F1F1F1";
	var txt=document.getElementById('txtIOS');
	txt.style.color = '#1CAFF6';
};
ios.onmousedown=function function_name () {
	ios.style.backgroundColor = "#1C8DFF";
};


$("#btnANDROID").hover(function(){
    $(this).css("background-color", "#1CAFF6");
    $("#imgAndroid").attr("src","image/android2.png");
    $("#txtAndroid").css("color", "#F1F1F1");
    }, function(){
    $(this).css("background-color", "#F1F1F1");
    $("#imgAndroid").attr("src","image/android1.png");
    $("#txtAndroid").css("color", "#1CAFF6");

});
$("#btnANDROID").mousedown(function() {
	$(this).css("background-color", "#1C8DFF");
});

$('.divhover').hover(function() {
	$("#listtest").show();
}, function() {
	/* Stuff to do when the mouse leaves the element */
	$("#listtest").hide();
});

$('#listtest').hover(function() {
	$(this).show();
}, function() {
	$(this).hide();
});



