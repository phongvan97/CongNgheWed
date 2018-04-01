
$(function(){
	$("#btn-form-login").click(function() {
		checkuser($("#txt-form-username").val(),$("#txt-form-pass").val());
	});
	$("#btn-form-sign-up").click(function() {
		if($("#txt-signup-username").val()==""||$("#txt-signup-pass").val()==""||$("#txt-signup-repass").val()==""){
			alert("Hãy Nhập Đủ Thông Tin");
		}else if($("#txt-signup-pass").val()!=$("#txt-signup-repass").val()) {
			alert("Pass Không Giống nhau")
			
		}else{
			createAccount($("#txt-signup-username").val(),$("#txt-signup-repass").val())
		}
	});
	$('.item').click(function() {
		if($(this).attr('value')>$('.level').text()){
			alert("Level Quá Thấp , Hãy Hoàn Thành Mức Thấp Hơn");
		}
		else{
			window.location = 'exam.php?idlevel='+$(this).attr('value')+'&nameuser='+$("#getuserforexam").text();
		}
	});
});

// function getscore_level () {
// 	var username='anh';
// 	var http=new XMLHttpRequest();
// 	http.onreadystatechange=function () {
// 		if(http.readyState==4 && http.status==200){
// 			var kq=http.responseText.split(' ');
// 			alert(kq[0]+'b'+kq[1]);
// 			$('.score').text(kq[1]);
// 			$('.level').text(kq[0]);
// 		}
// 	}
// 	http.open('GET','php/getDetailUser.php?m='+username,true);
// 	http.send();
// }

function createAccount (user,pass) {
	var name =user;
	var passw =pass;
	var http=new XMLHttpRequest();
	http.onreadystatechange=function() {
		if(http.readyState==4 && http.status==200){
			var kq=http.responseText;
			if(kq=="Đăng Ký Thành Công"){
				$("#txt-signup-username").val("");
				$("#txt-signup-pass").val("");
				$("#txt-signup-repass").val("");
			}
			alert(kq);
		}
	}
	http.open('GET', 'php/creat.php?a='+name+"&b="+passw, true);
	http.send();
}
function checkuser (username1,passw1) {
	var name=username1;
	var pass=passw1;
	var http=new XMLHttpRequest();
	http.onreadystatechange=function() {
		if(http.readyState==4 && http.status==200){
			var kq=http.responseText;
			alert(kq);

			if(kq!="Tên Đăng Nhập Hoặc Mật Khẩu Không Đúng"){
				$("#nameuser").val(name);
				$("#txt-form-username").val('');
				$("#txt-form-pass").val('');
				$("#formlogin").animate({ "height": "toggle" }, { duration: 400 });
				if(name==='Admin')
				{
					window.location='view/VAdmin.php';
				}
			}
		}
	}
	http.open('GET', 'php/checkuser.php?q='+name+'&w='+pass, true);
	http.send();
}
