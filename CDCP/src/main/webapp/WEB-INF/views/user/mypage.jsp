<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, 
							   maximum-scale=1.0, user-scalable=no"/>
<title>My Page</title>
<style type="text/css">
body{
   margin: 0;
   overflow-x: hidden;/* SYOU */
   background-color: #F5F6F7;
}
@font-face {
   font-family: 'GmarketSansMedium';
   src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
   font-weight: normal;
   font-style: normal;
}
@font-face {
   font-family: 'Cafe24Ohsquare';
   src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/Cafe24Ohsquare.woff') format('woff');
   font-weight: normal;
   font-style: normal;
}
#wrapper {
   max-width: 1500px;
   margin: 0 auto;
}
	/* 헤더 */
#header {
	width: 100%;
	height: 55px;
	border-style: solid;
    border-width: 0 0 2px 0;
    border-color: #0047AB;
    font-family: 'GmarketSansMedium';
    min-width: 1830px;
}
#headerWrap {
	width: 1600px;
	height: 100%;
	margin: 0 auto;
	display: flex;
}
#headerLeft {
	display: inline-block;
	width: 50%;
	height: 100%;
    font-size: 16px;
	vertical-align: top;
}
#headerLogo {
    display: inline-block;
    vertical-align: top;
    background-image: url("/cdcp/resources/images/main/logo.png");
    background-repeat: no-repeat;
    background-size: 120px;
    width: 120px;
    height: 40px;
    cursor: pointer;
    text-align: center;
    margin-top: 10px;
}
.menu1 { 
	display: inline-block;
	width: 130px;
	height: 100%;
	line-height: 65px;
	color: #0047AB;
	text-align: center;
	letter-spacing: 2px;
	vertical-align: top;
	cursor: pointer;
}	

	/* header_left 종료 */

#headerRight {
	display: inline-block;
	width: 50%;
	height: 100%;
    font-size: 18px;
	vertical-align: top;
	text-align: right;
}
#imgLogin {
 	display: inline-block;
    background-image: url("/cdcp/resources/images/main/login1.png");
    background-repeat: no-repeat;
    background-size: 30px;
    width: 30px;
    height: 25px;
    cursor: pointer;
    text-align: center;
	margin-top: 15px;
}
#Nickname {
    width: auto;
    height: auto;
    color: #0047AB;
    box-sizing: border-box;
    font-size: 13px;
    letter-spacing: 2px;
    display: none;
}
#logNick:hover{
	color: #1AAB8A;
}
#logNick {
	display: inline-block;
	color:#0047AB;
	border:none;
	position:relative;
	width: auto;
	cursor:pointer;
	transition:800ms ease all;
	outline:none;
	margin-top: 18px;
	letter-spacing: 2px;
}
#logNick:before, #logNick:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:1px;
  width:0;
  background: #1AAB8A;
  transition:400ms ease all;
}
#logNick:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}
#logNick:hover:before, #logNick:hover:after{
  width:100%;
  transition:800ms ease all;
}
#logoutBtn {
	background:#fff;
	color:#1AAB8A;
	border:none;
	position:relative;
	height:30px;
	width: 70px;
	cursor:pointer;
	transition:800ms ease all;
	outline:none;
	margin-left: 20px;
}
/* 로그인팝업 */
.popinput {
	width: 50%;
    height: 40px;
    padding: 0px 20px;
    border: 1px solid lightgray;
    outline: none;
    font-size: 13px;
    border-style: solid;
    border-width: 0 0 1px 0;
    border-color: #0047AB;
    outline: 0;
    text-decoration: none;
    letter-spacing: 2px;
    margin: 5px 50px 10px 70px;
}
.cardcaptain {
	width: 100%;
	height: 95px;
	line-height: 110px;
	text-align: center;
	font-size: 25px;
	color: #0047AB;
	letter-spacing: 5px;
	cursor: pointer;
}
#popup {
	height: 320px;
	width: 400px;
	background-color: white;
	border-radius: 70px;
	display: none;
	margin: 300px auto;
	z-index: 50;
}
#loginBtn {
	margin-bottom: 10px;
	margin-top: 5px;
	background: linear-gradient(125deg,#81ecec,#6c5ce7,#81ecec);
	background-size: 200%;
	color: white;
 	font-weight: bold;
	border: none;
	cursor: pointer;
	display: inline;
	margin: 20px 10px 15px 90px;
}
.re {
	display: inline-block;
	vertical-align: top;
	font-size: 11px;
    margin: 10px 0 10px 130px;
}
.new {
	display: inline-block;
	vertical-align: top;
	font-size: 11px;
	margin: 10px 0 10px 0;
}
.re:hover, .new:hover {
	cursor: pointer;
}
.error {
    font-size: 11px;
    color: red;
    visibility: hidden;
}
.errorMsg {
	height: 100%;
    display: none;
    color: #e65f3e;
    font-size: 13px;
    margin-left: 65px;
} 
	/* 로그인팝업종료 */
	/* header_right 종료 */
	/* 헤더 종료 */
	
/*   내용 영역   */   
#content {
	width: 100%;
    margin: 0 auto;
}
#contentMenu {
   display:inline-block;
   vertical-align: top;
   width: 1200px;/* 컨텐츠 길이에 따라 변경할 것 */
   height: inherit;
   margin: 0 auto;
}
/*   풋터 영역   */         
#footer {
	min-width: 600px;	
    width: 100%;
  	height: 100px;
	border-radius: 5px;
	border-style: solid;
    border-width: 2px 0 0 0;
    border-color: #0047AB;
    font-family: 'Cafe24Ohsquare';
}
#footerMenu {
    height: inherit;
    margin: 0 auto;
    color: #0047AB;
    text-align: center;
    font-family: GmarketSansMedium;
    font-size: 12px;
}	
#footerLogo {
    display: inline-block;
    vertical-align: top;
    background-image: url("/cdcp/resources/images/main/logo.png");
    background-repeat: no-repeat;
    background-size: 120px;
    width: 120px;
    height: 40px;
    cursor: pointer;
    text-align: center;
    margin-top: 10px;
}
/* SYOU */
.my_page {
   background-color: #F2F2F2;
   width: 100%;
   height: 570px;
   margin: 120px auto;
   box-shadow: 0px 0px 18px 6px rgba(107,84,84,0.75);
}
.member_button {
    width: 100%;
    padding-top: 50px;
    display: inline-block;
    text-align: center; 
}
.member_button input[type='button'] {
width: 150px;
    height: 50px;
    line-height: 40px;
    color: white;
    border-style: none;
    background-color: #868e96;
    border-radius: 8px;
    font-weight: 700;
    font-size: 20px;
    font-family: GmarketSansMedium;
    margin: 0 auto;
}
.member_button input[type='button']:hover {
   background-color:#FFD400;
   color:#282C37;
   cursor: pointer;
}
.member_name {
   display: inline-block;
   position: relative;
   font-size: 50px;
   font-family: GmarketSansMedium;
   float: right;
   margin-top: auto;
}
.member_table {
	width: 100%;
	height: 350px;
	margin: bottom;
	display: flex;
	letter-spacing: 2px;
}
.member_tablee {
	width: 100%;
	height: 100px;
}
.table_left {
	display:inline-block;
	vertical-align:top;
	width: 60%;
	height: 100%;
	margin-left: 80px;
} 
.table_right {
	display:inline-block;
	vertical-align:top;
	width: 40%;
	height: 100%;
	margin-left: 150px;
}
.table {
	width: 100%;
	height: 33%;
	display: block;
	font-size: 20px;
	font-family: 'GmarketSansMedium';
}
.table_name{
	color: #0047ab;
	font-size: 20px;
    height: 55px;
    line-height: 55px;
}
#mPw, #mRPw, #mNn {
	height: 30px;
	width: 160px;
	border-style: solid;
    border-width: 0 0 1px 0;
    border-color: #0047AB;
    outline: 0;
    caret-color: red;
    color: #0047AB;
    box-sizing: border-box;
    background-color: #F2F2F2;
	font-size: 30px;
}
.member_sub_title {
   font-size: 45px;
   font-family: Cafe24Ohsquare;
   margin-top: 0px;
   margin-left: 150px;
}
.member_phone {
   margin-left: 7px;
}
.errorMsgZone {
	width: 100%;
	hight: auto;
}

 /* 카드추가리스트 */
.back_top {
   width: 100%;
   height: 130px;
   text-align: center;
   line-height: 130px;
   font-size: 30px;
   color: #0047AB;
   font-family: 'Cafe24Ohsquare';
   text-shadow: 2px 3px 4px gray;
   letter-spacing: 8px;
}
.back_middle {
	font-family: 'GmarketSansMedium';
	background-color: #F2F2F2;
    width: 100%;
    height: 700px;
    margin: 30px auto;
    box-shadow: 0px 0px 18px 6px rgb(107 84 84 / 75%);
	letter-spacing: 3px;
}
.back_middle2 {
	width: 1300px;
    height: 700px;
    margin: 0 auto;
}
.contents {
	width: 95%;
	height: 90%;
	margin: 10px auto;
	display: flex;
}
.contents_top {
	width: 100%;
	height: 50px;
	line-height: 50px;
	text-align: center;
	font-size: 30px;
}
.contents_left {
	width: 50%;
	height: 100%;
	display: inline-block;
	display: flex;
}
.contents_right {
	width: 50%;
	height: 100%;
	display: inline-block;
}
.line {
	width: 33%;
	height: 100%;
	display: block;
}
.card_blank {
	width: 100%;
	height: 30%;
	display: block;
}
.blank {
	width: 85%;
	height: 70%;
	margin: 10px auto;
    border-style: solid;
    border-width: thin;
    border-color: #0047AB;
    border-radius: 7px;
	background-color: #F5F6F7;
	padding: 10px 10px;
	cursor: pointer;
	text-align: center;
}
img  {
	margin-top: 15px;
}
.card_name {
	width: 50%;
    height: 20%;
    font-size: 12px;
    margin: 0 auto;
}
.title {
	width: 100%;
	height: 50px;
	line-height: 50px;
	font-size: 16px;
}
.text {
	width: 100%;
    height: 55px;
	line-height: 55px;
    border-style: solid;
    border-width: 0 0 1px 0;
    border-color: #0047AB;
    padding: 11px 70px 8px 0;
    outline: 0;
    border-radius: 0;
    box-sizing: border-box;
    caret-color: red;
    text-decoration: none;
	color: #0047AB;
	font-size: 14px;
	letter-spacing: 3px;
}
#btn_next {
    display: block;
    width: 20%;
    height: 50px;
    padding: 0;
    border: 0;
    border-radius: 4px;
    font-size: 15px;
    color: white;
    background-color: #0047ab;
    cursor: pointer;
}
#txt {
	height: 45px;
	line-height: 45px;
	letter-spacing: 5px;
	color: #0047AB;
}
#footer {
	min-width: 600px;	
    width: 100%;
  	height: 100px;
	border-radius: 5px;
}
#footerMenu {
    height: inherit;
    margin: 0 auto;
    color: #0047AB;
    text-align: center;
    font-family: GmarketSansMedium;
    font-size: 12px;
}
#select_tel {
    width: 170px;
    height: 43px;
    border-style: solid;
    border-width: 0 0 1px 0;
    border-color: #0047AB;
    outline: 0;
    caret-color: red;
    color: #0047AB;
    letter-spacing: 3px;
}
#paging_wrap #on {
	background-color: skyblue;
	color: white;
	font-size: 12px;
}
.list_wrap thead tr, .add_wrap thead tr { 
 	border-top: 1px solid #000; 
 	border-bottom: 1px solid #000; 
 	background-color: #0047AB; 
 	hieght: 30px;
 	color: white;
}
.list_wrap table, .add_wrap table{
	border-collapse: collapse;
}
.list_wrap tbody tr, .add_wrap tbody tr {
	border-bottom: 1px solid #000;
	height: 35px;
	text-align: center;
}
#paging_wrap span {
	display: inline-block;
	padding: 5px;
	margin-left: 3px;
	margin-right: 3px;
	border-width: none;
	border-radius: 3px;
	cursor: pointer;
	width: 50px;
	text-align: center;
	font-size: 12px;
	height: 20px;
	line-height: 20px;
}
.addbtn {
	width: 45px;
	height: 25px;
	float: right;
}
#paging_wrap {
	text-align: center;
}
#abc {
	color: #ff6e61;
	font-size: 20px;
	text-align: center;
	margin-top: 60px;
}
.have_card {
    color: #ff6e61;
    font-size: 20px;
    text-align: center;
    margin-top: 10px;
}
.errorMsg {
	width: auto;
	height: 100%;
	display:none;
	vertical-align:top;
    color: #e65f3e;
    font-size: 15px;
    float: right;
}
</style>
<script type="text/javascript" src = "resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	/* 카드순위 페이지 이동 */
	$("#headerLogo").on("click", function(){
		location.href = "/cdcp";
	});
	
	/* 카드순위 페이지 이동 */
	$("#ranking").on("click", function(){
		location.href = "card_rank";
	});
	/* 카드검색/비교 페이지 이동 */
	 $("#search").on("click", function(){
		location.href = "search";
	});
	/* 컨텐츠 페이지 이동 */
	$("#contents").on("click", function(){
		location.href = "content";
	});
	
	/* 로그인팝업 실행 */
	$("#imgLogin").on("click", function(){
		$("#popup").css("display","block");
		$(".body").css("display","none");
	});
	/* 로그인팝업 실행 */
	$("#imgSearch").on("click", function(){
		$("#searchTxt").css("display","inline");
	});
	
	$("#searchmem, #join").on("click", function() {
		var ival = $(this).prop("id");
		$(location).attr('href',ival);
	});
	
	$(".cardcaptain").on("click", function(){
		location.href = "/cdcp";
	});
	
	/* 로그인 */
	$("#loginBtn").on("click", function () {
		if($.trim($("#mId").val()) == "") {
			alert("아이디를 입력해 주세요.");
			$("#mId").focus();
		} else if($.trim($("#mPw").val()) == "") {
			alert("비밀번호를 입력해 주세요.");
			$("#mPw").focus();
		} else {
			var params = $("#loginForm").serialize();
			
			$.ajax({
				url: "logins",
				type: "post",
				dataType: "json",
				data: params,
				success: function (res) {
					if(res.resMsg == "success"){
						location.href = "/cdcp";
						$("#nickName").css("display","inline");
						$("#imgSearch").css("margin-left","70%");
						$("#imgLogin").css("display","none");
						$("#logoutBtn").css("display","inline");
					} else {
						$(".errorMsg").css("display","inline");
						$("#masage").html("아이디 또는 비밀번호가 일치하지 않습니다.")
					}
				},
				error: function (request, status, error) {
					console.log(error);
				}
			}); //ajax end
		}
	}); //로그인 end
	
	/* 로그아웃  */
	$("#logoutBtn").on("click", function () {
		location.href = "testALogout";
	}); //로그아웃 end
	
	/* 마이페이지이동 */
	$("#logNick").on("click", function(){
		alert($("#sMNm").val());
		$("#memNo").attr("action");
		$("#memNo").submit();
	});
});

//회원정보수정
$(document).ready(function() {

	/* 비밀번호 */
	$("#mPw").blur(function(){
		var mPw = $.trim($("#mPw").val());
		var chk_num = mPw.search(/[0-9]/g);
		var chk_eng = mPw.search(/[a-z]/ig);
		var chk_spe = mPw.search(/[~!@#$%^&*()_+|<>?:{}]/ig);
		
		if(mPw == "") {
			$("#mPw").val() = "${sMPw}";
	   	} else if (mPw.length < 10 || mPw.length > 25) {
	 	  	$("#mPw").focus();
	       	$(".errorMsg").css("display","inline");
	       	$("#errorMsgPw").html("10~24자리로 만들어 주세요.");
	   	} else if(chk_num < 0 || chk_eng < 0 || chk_spe <  0) {
	 	  	$("#mPw").focus();
	       	$(".errorMsg").css("display","inline");
			$("#errorMsgPw").html("영문,숫자,특수문자 조합으로 만들어 주세요.");
	   	} else {
	 		$("#errorMsgPw").html("");
		}
	});
	
	/* 비밀번호 확인 */
	$("#mRPw").blur(function(){
		var mPw = $.trim($("#mPw").val());
		var mRPw = $.trim($("#mRPw").val());
		
		if (mPw != mRPw) {
	 	  	$("#mRPw").focus();
	       	$(".errorMsg").css("display","inline");
	       	$("#errorMsgPw").html("비밀번호가 일치하지 않습니다.");
		} else {
	 		$("#errorMsgPw").html("");
		}
	});
	
	/* 닉네임 */
	$("#mNn").blur(function(){
		var mNn = $.trim($("#mNn").val());
		var regex_spe = (/[~!@#$%^&*()_+|<>?:{}]/);

	   	if (mNn == "") {
	      	$(".errorMsg").css("display","inline");
	      	$("#errorMsgNick").html("닉네임을 입력해 주세요.");
	   	} else if (mNn.length < 3 || mNn.length > 10) {
	 	  	$("#mNn").focus();
	       	$(".errorMsg").css("display","inline");
	       	$("#errorMsgNick").html("3~10자리로 만들어 주세요.");
	   	} else if (regex_spe.test(mNn)) {
	 	  	$("#mNn").focus();
	 	  	$("#mNn").val("");
	       	$(".errorMsg").css("display","inline");
	       	$("#errorMsgNick").html("특수문자는 사용할 수 없습니다.");
	   	} else {
			$("#errorMsgNick").html("");
		}
	});
	
	//정보수정 버튼
	$("#update").on("click", function () {
		var mRPw = $.trim($("#mRPw").val());
		var mNn = $.trim($("#mNn").val());
		if(mRPw == "" || mNn == "") {
			alert("모든 텍스트를 입력해 주세요.");
		}
		update();
	});

	//회원탈퇴버튼
	$("#leaveBtn").on("click", function () {
		var mPw = $.trim($("#mPw").val());
		var mRPw = $.trim($("#mRPw").val());
		var sMPw2 = "${sMPw2}";
		
		if(mRPw == "") {
			alert("비밀번호를 입력해 주세요.");
			$("#mPw").focus();
		} else if(mPw != mRPw){
			alert("비밀번호를 재입력 해주세요.");
		} else if(mRPw == sMPw2) {
			leave();
			$("#logoutBtn").on("click", function () {
				location.href = "testALogout";
			}); //로그아웃 end
		}
	});
	
	
	//회원정보 수정
	function update() {
		var params = $("#updateForm").serialize();
		
		$.ajax({
			url: "memUpdates",
			type: "post",
			dataType: "json",
			data: params,
			success: function (res) {
				if(res.resMsg == "success") {
					alert("정보가 수정 되었습니다.");
					alert("다시 로그인 해주세요.")
					location.href = "testALogout";
				}
			},
			error: function (request, status, error) {
				console.log(error);
			}
		});
	}
	
	//회원 탈퇴
	function leave() {
		var params = $("#updateForm").serialize();
		
		$.ajax({
			url: "memLeave",
			type: "post",
			dataType: "json",
			data: params,
			success: function (res) {
				if(res.resMsg == "success") {
					alert("회원탈퇴 되었습니다.");
					location.href = "testALogout3";
				}
			},
			error: function (request, status, error) {
				console.log(error);
			}
		});
	}
});

//보유카드 추가,삭제
$(document).ready(function() {	
	$("#joinCard").on("keypress", "input", function (event) {
		if(event.keyCode == 13) {
			return false; 
		}
	});
	
	// 카드사선택
	$(".blank").on("click", function () {
		$("#abc").hide();
		$("#page").val(1);
		$("#cmpNo").val($(this).prop("id")); //1~9카드사
		
		reloadList();
	});
	
	// 페이징
	$("#paging_wrap").on("click", "span", function () {
		$("#page").val($(this).attr("page"));
		
		reloadList();
	});
	
	
	function addcard() {
		var params = $("#addcardlist").serialize();
		
		$.ajax({
			url: "addcards",
			type: "post",
			dataType: "json",
			data: params,
			success: function (res) {
				addLists();
			},
			error: function (request, status, error) {
				console.log(error);
			}
		});
	}
	
	// 카드리스트
	function reloadList() {
		var params = $("#joinCard").serialize();
		
		$.ajax({
			url: "joincards",
			type: "post",
			dataType: "json",
			data: params,
			success: function (res) {
				drawList(res.list);
				drawPaging(res.pb);
			},
			error: function (request, status, error) {
				console.log(error);
			}
		});
	}
	
	// 목록 그리기
	function drawList(list) {
		var html = "";
		// 	" +  + " : 만들어놓고 붙여넣어도 됨.
		for(var d of list) {
			html += "<tr cNo=\"" + d.CARD_NO + "\">";
			html += "<td>" + "" + "</td>";
			html += "<td class=\"a\">" + d.CARD_TYPE + "</td>";
			html += "<td class=\"b\">" + d.CARD_NAME + "</td>";
			html += "<td>" + "<button value=\"추가\" class=\"addbtn\" id=addbtn>추가</button>" + "</td>";
			html += "</tr>";
			
		}
		$(".list_wrap tbody").html(html);
		
		var lists = "";
		
		$(".list_wrap tr td button").on("click", function() {
			lists = $(this).parents().parents().attr("cno");
			console.log(lists);
			$("#addcardlist #lists").val(lists);
			
			addcard();
		});
	}
	
	// 보유카드리스트
	function addLists() {
		var params = $("#joinCard").serialize();
		
		$.ajax({
			url: "addLists",
			type: "post",
			dataType: "json",
			data: params,
			success: function (res) {
				drawAddList(res.addlist);
			},
			error: function (request, status, error) {
				console.log(error);
			}
		});
	}
	
	// 리스트 삭제
	function deletelist() {
		var params = $("#cardDelete").serialize();
		 $.ajax({
			url: "cardDeletes",
			type: "post",
			dataType: "json",
			data: params,
			success: function (res) {
				addLists();
			},
			error: function (request, status, error) {
				console.log(error);
			}
		}); 
	}
	
	addLists();
	
	// 보유카드 리스트
	function drawAddList(addlist) {
		var add = "";
		console.log(addlist);
		
		for(var i = 0; i < addlist.length; i++){
			add += "<tr cNo=\"" + addlist[i].CARD_NO + "\">";
			add += "<td>" + "" + "</td>";
			add += "<td class=\"a\">" + addlist[i].CARD_TYPE + "</td>";
			add += "<td class=\"b\">" + addlist[i].CARD_NAME + "</td>";
			add += "<td>" + "<button value=\"추가\" class=\"deletebtn\" id=\"deletebtn\">삭제</button>" + "</td>";
			add += "</tr>";
			
		}
		$(".add_wrap tbody").html(add);
			
		// 20210725
		$(".add_wrap tr td button").on("click", function () {
			var html = "";
			var lists = $(this).parents().parents().attr("cno");
			$("#cardDelete #lists").val(lists);
			
			deletelist();
			//addLists();
		});
	}
	
	//페이징 그리기
	function drawPaging(pb) {
		var html = "";
		
		html += "<span page=\"1\">|&lt;</span>";
		
		if($("#page").val() == "1") {
			html += "<span page=\"1\">&lt;</span>";
		} else {
			html += "<span page=\"" + ($("#page").val() - 1) + "\">&lt;</span>";
		}
		
		for(var i = pb.startPcount ; i <= pb.endPcount ; i++) {
			if($("#page").val() == i) {
				html += "<span id=\"on\" page=\"" + i + "\">" + i + "</span>";
			} else {
				html += "<span page=\"" + i + "\">" + i + "</span>";
			}
		}
		
		if($("#page").val() == pb.maxPcount) {
			html += "<span page=\"" + pb.maxPcount + "\">&gt;</span>";
		} else {
			html += "<span page=\"" + ($("#page").val() * 1 + 1) + "\">&gt;</span>";
		}
			html += "<span page=\"" + pb.maxPcount + "\">&gt;|</span>";
		
		$("#paging_wrap").html(html);
	}
});
</script>
</head>
<body>
<!-- 헤더영역 -->
<div id="header">
	<div id="headerWrap">
		<div id="headerLeft">
			<div id="headerLogo"></div>
			<div class="menu1" id="ranking">카드순위</div>
			<div class="menu1" id="search">카드검색/비교</div>
			<div class="menu1" id="contents">컨텐츠</div>
		</div>
		<form action="mypage" id="memNo" method="post">
			<input type="hidden" name="memNo" value="${sMNo}" id="sMNo"/>
			<input type="hidden" name="memId" value="${sMId}" id="sMId"/>
			<input type="hidden" name="memPW" value="${sMPw}" id="sMPw"/>
			<input type="hidden" name="memPW2" value="${sMPw2}" id="sMPw2"/>
			<input type="hidden" name="memBi" value="${sMBi}" id="sMBi"/>
			<input type="hidden" name="memGe" value="${sMGe}" id="sMGe"/>
			<input type="hidden" name="memCo" value="${sMCo}" id="sMCo"/>
			<input type="hidden" name="memNm" value="${sMNm}" id="sMNm"/>
			<input type="hidden" name="memNa" value="${sMNa}" id="sMNa"/>
			<input type="hidden" name="memAd" value="${sMAd}" id="sMAd"/>
		</form>
		<div id="headerRight">
			<c:choose>
				<c:when test="${empty sMNm}">
					<div id="imgLogin"></div>
				</c:when>
				<c:otherwise>
					<div id="logNick">${sMNm} 님 </div><input type="button" value="로그아웃" id="logoutBtn" />
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</div>
<!-- 내용 영역 -->   
<div id="content">
	<div id="myPage" class="my_page">
		<div class="back_middle2">
			<div class="member_tablee">
	         	<h1 id="memberName" class="member_name">${sMNm}&nbsp;님&nbsp;&nbsp;</h1>
         	</div>
			<form action="" id="updateForm" method="post">
				<input type="hidden" name="memNo" value="${sMNo}" id="sMNo"/>
			<div id="memberTable" class="member_table">
				<div class="table_left">
					<div class="table" id="">⇒&nbsp;&nbsp;아이디<br/>
						<div class="table_name">${sMId}</div>
					</div>
					<div class="table" id="">비밀번호&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
						<input type="password" id="mPw" value="">
						<div class="" id="">비밀번호 확인&nbsp;&nbsp; &nbsp;: 
						<input type="password" id="mRPw" value="" name="mPw">
						<div class="errorMsgZone">
							<div class="errorMsg" id="errorMsgPw"></div>
							<div class="errorMsg" id="errorMsgRPw"></div>
						</div>
					</div>
					</div>
					<div class="table" id="nick">⇒&nbsp;&nbsp;닉네임<br/>
					        <div class="table_name"> 현재 : ${sMNm}<br/>
						변경 : <input type="text" id="mNn" value="" name="mNn"></div>
						<div class="errorMsg" id="errorMsgNick"></div>
					</div>
				</div>
				<div class="table_right">
					<div class="table" id="">⇒&nbsp;&nbsp;전화번호<br/>
						<div class="table_name">${sMCo}</div>
					</div>
					<div class="table" id="">⇒&nbsp;&nbsp;생년월일<br/>
						<div class="table_name">${sMBi}</div>
					</div>
					<div class="table" id="">⇒&nbsp;&nbsp;이메일<br/>
						<div class="table_name">${sMNa}${sMAd}</div>
					</div>
				</div>
			</div>
			</form>
		      	<div id="memberButton" class="member_button">
		        	<input type="button" value="정보수정" id="update" class="update"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		        	<input type="button" value="회원탈퇴" id="leaveBtn" class="leaveBtn"/>
		      	</div>
			</div>
	      	</div>
		</div>
      	<div class="back_middle">
	      	<div class="back_middle2">
				<br/><div class="contents_top">보유중인 카드를 등록하세요.</div>
			<div class="contents">
				<div class="contents_left">
					<div class="line">
						<div class="card_blank">
							<div class="blank" id="1">
								<div class="card_logo"><img src="resources/images/user/cardLogo/kb_logo.png" height=65px></div>
								<div class="card_name">국민카드</div>
							</div>
						</div>
						<div class="card_blank">
							<div class="blank" id="2">
								<div class="card_logo"><img src="resources/images/user/cardLogo/samsung_logo.png" height=65px></div>
								<div class="card_name">삼성카드</div>
							</div>
						</div>
						<div class="card_blank">
							<div class="blank" id="3">
								<div class="card_logo"><img src="resources/images/user/cardLogo/loca_logo.png" height=65px></div>
								<div class="card_name">롯데카드</div>
							</div>
						</div>
					</div>
					<div class="line">
						<div class="card_blank">
							<div class="blank" id="4">
								<div class="card_logo"><img src="resources/images/user/cardLogo/shinhan_logo.png" height=65px></div>
								<div class="card_name">신한카드</div>
							</div>
						</div>
						<div class="card_blank">
							<div class="blank" id="5">
								<div class="card_logo"><img src="resources/images/user/cardLogo/wr_logo.png" height=65px></div>
								<div class="card_name">우리카드</div>
							</div>
						</div>
						<div class="card_blank">
							<div class="blank" id="6">
								<div class="card_logo"><img src="resources/images/user/cardLogo/hyundai_logo.png" height=65px></div>
								<div class="card_name">현대카드</div>
							</div>
						</div>
					</div>
					<div class="line">
						<div class="card_blank">
							<div class="blank" id="7">
								<div class="card_logo"><img src="resources/images/user/cardLogo/nh_logo.png" height=65px></div>
								<div class="card_name">농협카드</div>
							</div>
						</div>
						<div class="card_blank">
							<div class="blank" id="8">
								<div class="card_logo"><img src="resources/images/user/cardLogo/hn_logo.png" height=65px></div>
								<div class="card_name">하나카드</div>
							</div>
						</div>
						<div class="card_blank">
							<div class="blank" id="9">
								<div class="card_logo"><img src="resources/images/user/cardLogo/ibk_logo.png" height=65px></div>
								<div class="card_name">기업카드</div>
							</div>
						</div>
					</div>
				</div>
				<div class="contents_right">
					<div class="search">
	<!-- Form -->
						<form action="#" id="joinCard" method="post">   
							<input type="hidden" name="memNo" value="${sMNo}" id="sMNo"/>
							<input type="hidden" name="cmpNo" id="cmpNo" value="1" />
							<input type="hidden" id="page" name="page" value="${page}" />
						</form><br/>
	<!-- Form end -->
						<div class="list_wrap">
						<table>
							<colgroup width="3000px">
								<col width="5%" />
								<col width="15%" />
								<col width="70%" />
								<col width="10%" />
							</colgroup>
							<thead>
								<tr>
									<th></th>
									<th>카드타입</th>
									<th>카드명</th>
									<th></th>
								</tr>
							</thead>
							<tbody></tbody>
						</table>
						</div>
						<div id="abc">왼쪽의 카드사를 눌러 추가해 주세요.</div>
						<br/>
						<div id="paging_wrap"></div><br/>
						<div class="add_wrap">
	<!-- Form -->
							<form action="#" id="addcardlist" method="post">
								<input type="hidden" id="lists" name="lists" />
								<input type="hidden" id="mNo" name="mNo" value="${sMNo}"/>
							</form>
	<!-- Form end -->
	<!-- Form -->
							<form action="#" id="cardDelete" method="post">
								<input type="hidden" id="lists" name="lists" />
								<input type="hidden" id="mNo" name="mNo" value="${sMNo}"/>
							</form>
	<!-- Form end -->
						<div class="have_card">보유중인 카드 목록(최대 5개)</div>
						<table id="cardlists">
							<colgroup width="3000px">
								<col width="5%" />
								<col width="15%" />
								<col width="70%" />
								<col width="10%" />
							</colgroup>
							<thead>
								<tr>
									<th></th>
									<th>카드타입</th>
									<th>카드명</th>
									<th></th>
								</tr>
							</thead>
							<tbody></tbody>
						</table>
						</div>
						<br/>
						<br/>
					</div>
				</div>
			</div>
		</div>
	<!-- 풋터영역 -->
	</div>   
	<div id="footer">
	   <div id="footerMenu">
	      <div id="footerLogo"></div>
	      <div>서울시 금천구 가산디지털2로 115,509호,811호,1109-1호(가산동,대륭테크노타운3차) 금융조 조장 : 주건정</div>
	      <div>Copyright © 2021-2031 CardCaptain All Rights Reserved.</div>
	   </div>
	</div>   
</body>
</html>