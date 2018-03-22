$(function(){
	// alert("ád");
	$("#btn-form-login").click(function() {
		checkuser($("#txt-form-username").val());
	});
	$("#btn-form-sign-up").click(function() {
		if($("#txt-signup-username").val()==""||$("#txt-signup-pass").val()==""||$("#txt-signup-repass").val()==""){
			alert("Hãy Nhập Đủ Thông Tin");
		}else if($("#txt-signup-pass").val()==$("#txt-signup-repass").val()) {
			createAccount($("#txt-signup-pass").val(),$("#txt-signup-repass").val())
		}
	});

});


function createAccount (user,pass) {
	var name =user;
	var pass =pass;
	var http=new XMLHttpRequest();
	if(http.readyState==4 && http.status==200){
		alert("Thanh cong");
	}
	http.open('GET',)
}
function checkuser (username1) {
	var name=username1;
	var http=new XMLHttpRequest();
	http.onreadystatechange=function() {
		if(http.readyState==4 && http.status==200){
			var kq=http.responseText;
			alert(kq);
		}
	}
	http.open('GET', 'checkuser.php?q='+name, true);
	http.send();
}