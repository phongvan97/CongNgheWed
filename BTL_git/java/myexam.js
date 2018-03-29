var question;
var answer;
var diemcong=0;
$('.but-item').click(function() {
	// alert($(this).attr('value'));
	$("#result").val('');
	$(this).hide();
	$(".menu-button").hide();
	
	getQuestion($(this).attr('value'));

});
$('#check').click(function() {
	// alert($('.menu-button').attr('value'));
	$(".menu-button").show();

	if($(".but-item").is(':visible')){
		if($("#question").text()=='My Question Is ....'){
			alert("chưa chọn câu hỏi")
		}
		else{
			CheckAnswer ();
			$("#question").text('My Question Is ....');
		}
		
	}else {
		//tra loi xong
		CheckAnswer ();
		//Lưu và thoát
		

	}
			$('#answer').val('');

});
function CheckAnswer () {
				if($('#answer').val()==answer){
				$("#result").val("Đúng CMNR");
				diemcong++;
			}else{
				$("#result").val('Sai, Đáp Án : '+answer);
				diemcong--;
				alert(diemcong);
			}
}
function getQuestion (id) {
	// alert(id);
	var Qid=id;
	var http=new XMLHttpRequest();
	http.onreadystatechange=function(){
		if(http.readyState==4 && http.status==200){
		var kq=http.responseText.split('-');
		question=kq[0];
		answer=kq[1];
		$("#question").text(question);
	}
}
http.open('GET','../php/getQuesDetail.php?hi='+Qid,true);
http.send();
}