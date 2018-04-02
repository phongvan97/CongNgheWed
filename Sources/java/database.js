
$(function(){
	//hiện và ẩn form login
	$("#btn-form-login").click(function() {
		checkuser($("#txt-form-username").val(),$("#txt-form-pass").val());
	});
	// thực hiện khi ấn nút đăng ký
	$("#btn-form-sign-up").click(function() {
		if($("#txt-signup-username").val()==""||$("#txt-signup-pass").val()==""||$("#txt-signup-repass").val()==""){
			alert("Hãy Nhập Đủ Thông Tin");
		}else if($("#txt-signup-pass").val()!=$("#txt-signup-repass").val()) {
			alert("Pass Không Giống nhau")
			
		}else{
			createAccount($("#txt-signup-username").val(),$("#txt-signup-repass").val())
		}
	});



	// kiểm tra lv hiện tại so với lv vừa chọn . nếu k đủ điều kiện thì thông báo
	$('.item').click(function() {
		if($(this).attr('value')>$('.level').text()){
			alert("Level Quá Thấp , Hãy Hoàn Thành Mức Thấp Hơn");
		}
		else{
			window.location = 'exam.php?idlevel='+$(this).attr('value')+'&nameuser='+$("#getuserforexam").text();
		}
	});
});
// hàm tạo Tài Khoản Sử dụng Ajax nhận vào name pass rồi gửi cho file pho xử lý
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
	var x='a='+name+"&b="+passw;
	http.open('POST', 'php/creat.php', true);
	http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	http.send(x);
}
//Hàm Kiểm Tra Đăng nhập dùng Ajax nhận vào name pass rồi gửi cho file pho xử lý
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
					// Nếu Đăng nhập thành công băng admin thì chuyển sang trang ad min
					window.location='view/VAdmin.php';
				}
			}
		}
	}
	var x='q='+name+'&w='+pass;
	http.open('POST', 'php/checkuser.php', true);
	http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	http.send(x);
}
