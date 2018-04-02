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
		SaveAndOut($('.menu-button').attr('value'),diemcong);
	}
	$('#answer').val('');

});

function SaveAndOut (name,score) {
	// alert(name+score);
	var http=new XMLHttpRequest();
	http.onreadystatechange=function(){
		if(http.readyState==4 && http.status==200){
			var kq=http.responseText.split(' ');
			var lv=kq[0];
			var sc=kq[1];
			sc=parseInt(sc)+parseInt(diemcong);
			if(diemcong>=9&&sc>0){
				lv++;
			}else if (diemcong<0&&lv>1) {
				lv--;
			}	

			SaveDataUser(name,lv,sc);
		}
	}
	http.open('GET','../php/getCurrentLevelScore.php?ha='+name,true);
	http.send();
}
function SaveDataUser (name,lv,sc) {
	var http=new XMLHttpRequest();
	http.onreadystatechange=function(){
		if(http.readyState==4 && http.status==200){
			var kq=http.responseText;
			alert(kq+"\nBạn Đạt Được "+diemcong+" Điểm");
			window.location = '../view/levelbaihoc.php?phong='+name;
		}
	}
	http.open('GET','../php/Savedata.php?a='+name+'&b='+lv+'&c='+sc,true);
	http.send();
}
function CheckAnswer () {
	if($('#answer').val().toLowerCase()==answer){
		$("#result").val("Đúng , Xin Chúc Mừng");
		diemcong++;
	}else{
		$("#result").val('Sai, Đáp Án : '+answer);
		diemcong--;
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