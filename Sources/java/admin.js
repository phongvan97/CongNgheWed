


$(function(){

//hiện và ần form Thêm lv
$('#btn-themlv').click(function() {
	$('.them').animate({ "height": "toggle" }, { duration: 500 });
	$("html, body").animate({scrollTop: document.body.scrollHeight}, 800);
});


$("#btn-them").click(function() {// khi nút thêm đc bấm.
	//kiểm tra xem có phần nào bị bỏ trống
	var empty = $(".item-ques").find("input").filter(function() {
		return this.value === "";
	});
	if(empty.length) {
        //At least one input is empty
        alert('Chưa Nhập Đủ Thông Tin');
    }else {
    	// nếu không bỏ trống thực hiện thêm lv và các câu hỏi của lv đó
    	// thêm lv
    	addlevel($('.txtlv').find('#1').val(),$('.txtlv').find('#2').val());


    	// thêm câu hỏi
    	$(".txtqueslevel").each(function(){
    		addquestion($(this).find('#1').val(),$(this).find('#2').val());
    	});

    	// reload
    	window.location.reload();
    }		
});


// show những lv đã có
showlevel();
});
// hàm thêm câu hỏi nhận vào question answer 
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


// hàm thêm lv nhận vào tên và đường dẫn ảnh
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

// hàm hiện các lv đã có dựa vào csdl
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