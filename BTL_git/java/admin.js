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
    	addlevel($('.txtlv').find('#1').val(),$('.txtlv').find('#2').val());
    	$(".txtqueslevel").each(function(){
    		addquestion($(this).find('#1').val(),$(this).find('#2').val());
    	});
    	window.location.reload();
    }		
});
	showlevel();
});

function addquestion(ques,ans){
	var http=new XMLHttpRequest();
	http.onreadystatechange=function(){
		if(http.readyState==4&&http.status==200){
			// var kq=http.responseText;
			// alert(kq);
		}
	}
	http.open('GET',"../php/createQues.php?a="+ques+"&b="+ans,true);
	http.send();
}



function addlevel(name,img){
	var http=new XMLHttpRequest();
	http.onreadystatechange=function(){
		if(http.readyState==4&&http.status==200){
			var kq=http.responseText;
			alert(kq);
		}
	}
	http.open('GET',"../php/createlevel.php?a="+name+"&b="+img,true);
	http.send();
}
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