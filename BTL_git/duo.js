var ios=document.getElementById('btnIOS');
ios.onmouseover=function change(){
	var img=document.getElementById('imgIOS');
	img.src="apple2.png";
	ios.style.backgroundColor = "#1CAFF6";
	var txt=document.getElementById('txtIOS');
	txt.style.color = '#F1F1F1';
};
ios.onmouseout=function chang2 () {
	var img=document.getElementById('imgIOS');
	img.src="apple1.png";
	ios.style.backgroundColor = "#F1F1F1";
	var txt=document.getElementById('txtIOS');
	txt.style.color = '#1CAFF6';
}

$("#btnANDROID").hover(function(){
    $(this).css("background-color", "#1CAFF6");
    $("#imgAndroid").attr("src","android2.png");
    $("#txtAndroid").css("color", "#F1F1F1");
    }, function(){
    $(this).css("background-color", "#F1F1F1");
    $("#imgAndroid").attr("src","android1.png");
    $("#txtAndroid").css("color", "#1CAFF6");

});




