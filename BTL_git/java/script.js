ToVnese();
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

$('.divhover').click(function() {
	$("#listtest").animate({ "height": "toggle" }, { duration: 400 });
});

$('#listtest').hover(function() {
	$(this).show();
}, function() {
});
$("#btn-dangnhap").click(function() {
	$("#formlogin").animate({ "height": "toggle" }, { duration: 400 });
	$("#formsignup").css("display","none");
});

$("#btn-form-create-account").click(function() {
	$("#formsignup").animate({ "height": "toggle" }, { duration: 400 });
	$("#formlogin").animate({ "height": "toggle" }, { duration: 400 });
});
function TOEnglish () {
	$("#btn-form-sign-up").val("Sign Up");
	$("#btn-form-create-account").val("Create an account");
	$("#btn-form-login").val("Login");
	$("#nameuser").val("Account");
	$("#0").text("Site Language: English");
	$("#0").append("<i class='fa fa-angle-down'style='font-size: 25px; margin-left: 10px;'/i>");
	$("#btn-dangnhap").val('Login');
	$('#1').text("Learn English For Free.");
	$('.2').val("Get Start !");
	$('#p1').text("The Best Way To Learn New Language");
	$('#p2').text("Studying with Duolingo, you will find it very fun and attractive. Spend a lot of points from right answers, quick answers before time runs out or level up. Our compact lessons were very effective, and there was one");
	$('#p2').append("<a id='3' href='view/VNghiencuu.html' style='margin-left: 10px; color: #000;'></a>");
	$("#3").text("study demonstrates this.");
	$("#4").text("See how we do it.");
	$("#4").append("<i class='fa fa-youtube-play'style='font-size: 30px; margin-left: 10px ;'/i>");
	$("#5").text("Gamification poured into every lesson.");
	$("#6").text("Read, Listen, Speak ");
	$("#7").text("Each lesson includes a variety of speaking, listening, translation, and multiple choice challenges. ");
	$("#8").text("In-Lesson Grading ");
	$("#9").text("Instantly see which answers you get correct. When you miss a challenge, we'll quickly show you how to improve.");
	$("#10").text("Streak Count");
	$("#11").text("Duolingo motivates you to stay on track by recording how many days in a row you spend learning a language.");
	$("#12").text("Hearts");
	$("#13").text("Hearts keep your lessons alive! You lose them when you answer incorrectly. When you're out of hearts, start over and try again.");
	$("#line3-big").text("Learn anytime, anywhere.");
	$("#line3-small").text("Make your breaks and commutes more productive with our iPhone and Android apps. Download them and see why Apple and Google gave us their highest accolades.");
	$("#line4-big").text("Duolingo for Schools");
	$("#line4-small").text("The world's most popular language learning platform is now available for the classroom. Thousands of teachers are already using it to enhance their lessons.");
	$("#14").text("Bring Duolingo to your classroom");
	$("#15").text("Learn English with Duolingo.");
}

function ToVnese () {
	$("#btn-form-sign-up").val("Đăng Ký");
	$("#btn-form-create-account").val("Tạo Tài Khoản");
	$("#btn-form-login").val("Đăng Nhập");
	$("#nameuser").val("Tài Khoản");
	$("#0").text("Ngôn Ngữ Hiển Thị : Tiếng Việt");
	$("#0").append("<i class='fa fa-angle-down'style='font-size: 25px; margin-left: 10px;'/i>");
	$("#btn-dangnhap").val('Đăng Nhập');
	$('#1').text("Học Tiếng Anh Miễn Phí.");
	$('.2').val("Bắt Đầu !");
	$('#p1').text("Cách tốt nhất để học một ngôn ngữ");
	$('#p2').text("Học cùng Duolingo, bạn sẽ thấy rất vui và cuốn hút. Dành nhiều điểm từ các câu trả lời đúng, trả lời nhanh trước khi hết thời gian hay lên cấp. Những bài học nhỏ gọn của chúng tôi rất hiệu quả, và đã có một");
	$('#p2').append("<a id='3' href='view/VNghiencuu.html' style='margin-left: 10px; color: #000;'></a>");
	$("#3").text("nghiên cứu chứng minh điều này.");
	$("#4").text("Xem cách chúng tôi làm.");
	$("#4").append("<i class='fa fa-youtube-play'style='font-size: 30px; margin-left: 10px ;'/i>");
	$("#5").text("Mỗi Bài Học Đều Được Trò Chơi Hóa.");
	$("#6").text("Đọc, Nghe, Nói ");
	$("#7").text("Mỗi bài học sẽ bao gồm nhiều loại câu hỏi, thử thách về nghe, nói, dịch và trắc nghiệm. ");
	$("#8").text("Chấm điểm trong bài đọc ");
	$("#9").text("Ngay lập tức biết được câu trả lời nào bạn làm đúng. Khi bạn bỏ lỡ một thử thách, chúng tôi sẽ nhanh chóng chỉ cho bạn cách cải thiện.");
	$("#10").text("Ngày Streak");
	$("#11").text("Số ngày mà bạn đã học liên tục trên Duolingo. Đây là cách Duolingo khuyến khích người dùng luyện tập mỗi ngày.");
	$("#12").text("Trái tim");
	$("#13").text("Với mỗi câu trả lời sai, bạn sẽ mất một trái tim trong quá trình làm bài. Nếu mất hết số trái tim, bạn sẽ phải bắt đầu lại từ đầu.");
	$("#line3-big").text("Học Mọi Lúc Mọi Nơi.");
	$("#line3-small").text("Thử giao diện mới với ứng dụng cho iPhone và Android của chúng tôi. Tải về và bạn sẽ biết vì sao Apple và Google trao cho Duolingo danh hiệu xuất sắc nhất.");
	$("#line4-big").text("Duolingo dành cho Học đường");
	$("#line4-small").text("Nền tảng học tập ngôn ngữ phổ biến nhất thế giới nay đã sử dụng được cho các lớp học. Hàng nghìn giáo viên đã sử dụng nó để tăng cường cho các bài học của mình.");
	$("#14").text("Mang Duolingo vào lớp học của bạn");
	$("#15").text("Học Tiếng Anh với Duolingo.");
}
$("#btnE").click(function() {
	TOEnglish();
});

$("#btnV").click(function() {
	ToVnese();
});

disapear();
function disapear () {
	$("#test10").css({display: 'none'});
	$("#video1").trigger('pause');
	$("#video1").css('display', 'none');
}
$("#test10").click(function() {
	disapear();
});
$("#4").click(function() {
	$("#test10").css({display: 'block'});
	$("#video1").css('display', 'block');
});

$(document).ready(function() {

	$(".2").click(function() {
		$("#image").load("view/vBaiHoc.html");
		$("html, body").animate({scrollTop: 0}, 800);
		return false;
	});

});
$("#logo1").click(function() {
	location.reload();
});
// $(function() {  alert("asdsad");    })





