$('#btn-themlv').click(function() {
	$('.them').animate({ "height": "toggle" }, { duration: 500 });
	$("html, body").animate({scrollTop: document.body.scrollHeight}, 800);
});
$(function(){
	$("#btn-them").click(function() {
		var empty = $(".item-ques").find("input").filter(function() {
			return this.value === "";
		});
		if(empty.length) {
        //At least one input is empty
        alert('Chưa Nhập Đủ Thông Tin');
    }else {
    	alert("đủ");
    }




    $(".txtqueslevel").each(function(){
    	alert($(this).find('#1').val()+$(this).find('#2').val());
    });



});
	showlevel();
});



function showlevel () {
	var http=new XMLHttpRequest();
	http.onreadystatechange=function() {
		if(http.readyState==4 && http.status==200){
			var kq=http.responseText;
			$('.Vlevel').html(kq);
		}
	}
	http.open('GET', '../php/getlevelbyadmin.php', true);
	http.send();
}