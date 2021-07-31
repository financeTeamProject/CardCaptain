<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<style type="text/css">
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
body {
	margin: 0;
}
/*	헤더 영역	*/
#header {
	width: 100%;
	height: 55px;
    font-family: 'GmarketSansMedium';
    min-width: 1830px;
    background-color: white;
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
#headerLeft .menu1 { 
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
}
#imgSearch {
 	display: inline-block;
    background-image: url("/cdcp/resources/images/main/search.png");
    background-repeat: no-repeat;
    background-size: 30px;
    width: 30px;
    height: 25px;
    cursor: pointer;
    text-align: center;
    margin-left: 85%;
}
#imgLogin {
 	display: inline-block;
    background-image: url("/cdcp/resources/images/main/login1.png");
    background-repeat: no-repeat;
    background-size: 30px;
    width: 30px;
    height: 25px;
    cursor: pointer;
    margin-top: 15px;
}
/* header_right 종료 */
/* 메뉴바영역 */
* {
	box-sizing: border-box;
	}
/* 네비메뉴바 영역 */
nav {
	width:100%;
	height: 60px;
	background: #0047ab;
	min-width: 1830px;
}
#smallMeunName {
	width: 130px;
	font-family: 'GmarketSansMedium';
	font-size: 20px;
	color: white;
}
nav ul {
	width: 1600px;
	margin: 0px auto;
	list-style-type: none;
	padding: 0px;
}
nav ul li {
	display: inline-block;
	height: 60px;
	font-family: '맑은고딕';
}            
.home {
	background-color: darkorange;
	width: 100px;
	text-align: center;
	font-weight: bold;
	float: right;
}
.home a {
	display: block;
	text-decoration: none;
	color: white;
	padding: 16px 16px;
}
.dropdown {
	position: relative;
}
.dropdown-menu {
	color: white;
	padding: 20px;
	font-size: 16px;
	cursor: pointer;
	font-family: 'GmarketSansMedium';
}
.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}
.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}
.dropdown:hover .dropdown-content {
display: block;
}
.dropdown-content a:hover {
	background-color: #f1f1f1
}
.dropdown-menu:hover:not(.home){
	background-color: darkorange;
	color: white;
}
/* 내용 영역 */          
.content_area {
	width: 100%;
	min-width: 1830px;
	margin-top: 50px;
	margin-bottom: 50px;
}	
.contents {
	width: 1600px;
	height: 500px;
	margin: 0px auto;
}
.sub_menuBar {
	margin-left: 180px;
	width: 1150px;
	float: left;
}
.sub_menuBar .content_content {
	width: auto;
	height: 40px;
	display: inline-block;
	margin-left: 10px;
	padding-left: 7px;
	padding-right: 7px;
	border-radius: 10px 10px 0px 0px;
}
.left_content {
	margin-top: 10px;
	width: 130px;
	height: inherit;
	display: inline-block;
	float: left;
}
.left_content .content_content {
	margin-top: 10px;
	width: 130px;
	height: 48px;
	float: left;
	border-radius: 10px 0px 0px 10px;
}
.real_content {
	float: left;
	width: 1330px;
	height: 500px;
}
.right_content {
	display: inline-block;
	padding: 50px;
	width: 1200px;
	height: inherit;
	background-color: #F2F2F2;
	overflow: scroll;
}
.content_content {
	padding-top: 10px;
	padding-bottom: 10px;
	background: #F5DF4D;
	font-size: 24px;
	color: black;
	font-family: 'Cafe24Ohsquare';
	text-align: center;
}
.content_content:hover {
	cursor: pointer;
	background-color: #F2F2F2;
	color: black;
}
#image_preview img{
	border-radius: 20px;
}
#cardAddBtn,.cardDeleteBtn,.cardUpdateBtn {
    width: 120px;
    height: 40px;
    color: white;
    border-style: none;
    background-color: #0047AB;
    border-radius: 7px;
    font-size: 18px;
    font-family: 'GmarketSansMedium';
    font-weight: bold;
}
#cardAddBtn:hover,.cardDeleteBtn:hover,.cardUpdateBtn:hover {
	cursor: pointer;
	/* background-color: #F5DF4D;
	color: black; */
}
/* 풋터영역 */
#footer{
	width: 100%;
	height: 100px;
	float:left;
	background: gray;
	border-radius: 5px;
	border-style: solid;
	border-width: 2px 0 0 0;
	border-color: #0047AB;
	font-family: 'Cafe24Ohsquare';
	min-width: 600px;
	background-color: white;
}
#footerMenu{
	height: inherit;
	margin: 0 auto;
	color: #0047AB;
	text-align: center;
	font-family: GmarketSansMedium;
	font-size: 12px;
}
#footerLogo{
	display: inline-block;
	vertical-align: top;
	background-image: url("/cdcp/resources/images/contentimg/logo.png");
	background-repeat: no-repeat;
	background-size: 120px;
	width: 120px;
	height: 40px;
	cursor: pointer;
	text-align: center;
	margin-top: 10px;
}
/* 팝업 */
.bg_div {
	width: 100%;
	height: 100%;
	position: absolute;
	background-color: #000000;
	opacity:0.3;
	z-index: 100;
}
.popup_div {
	display: inline-block;
	width: 1000px;
	height: 300px;
	position: absolute;
	top: 50%;
	left: 50%;
	margin-top: -200px;
	margin-left: -450px;
	background-color: #FFFFFF;
	border: 2px solid #0047AB;
	z-index: 1000;
}
.popup_title {
	line-height:40px;
	height: 40px;
	background-color: #0047AB;
}
.popup_title_text {
	padding-left: 5px;
	color: #FFFFFF;
	vertical-align: middle;
	font-weight: bold;
	font-family: 'GmarketSansMedium';
	font-size: 20px;
}
.popup_contents {
	height: 300px;
}
.popup_text {
	height: 300px;
	text-align: center;
	white-space: pre-line;
	overflow-y: auto;
	padding: 10px 10px 10px 10px;
	text-align: left;
	font-family: 'GmarketSansMedium';
}
.popup_text div:hover {
	background-color: #F2F2F2;
	cursor: pointer;
}
.popup_btn {
	height: 30px;
	text-align: center;
}
.popupImgUrl {
	margin-top: -110px;
	width:350px;
	height:200px;
}
#updateCardPopName,#updateCardPopApply,#updateCardPopImg,#updateCardPopSummary {
	border: none;
	font-family: 'Gmarket Sans L';
	width: 500px;
}
#updateCardPopKind,#updateCardPopType {
	font-family: 'Gmarket Sans L';
	/* width: 300px; */
}
[id^='updateCardPopBeneTop_'],[id^='updateCardPopShop_'] {
	border: none;
	font-family: 'Gmarket Sans L';
	width: 150px;
}
[id^='updateCardPopBene_mid_'] {
	border: none;
	font-family: 'Gmarket Sans L';
	width: 900px;
}
[id^='updateCardPopDetail_'] {
	border: none;
	font-family: 'Gmarket Sans L';
	width: 900px;
	height: 100px;
}
.popup_div input[type='button'] {
	background-color: #F5DF4D;
	color: black;
	border: none;
	border-radius: 5px;
	font-family: 'GmarketSansMedium';
	margin-left: 10px;
}
.popup_div input[type='button']:hover {
	background-color: #0047AB;
	color: white;
	cursor: pointer;
}
table {
	text-align: center;
	width: 1100px;
	font-family: 'GmarketSansMedium';
}
th, td {
	border-bottom: 1px solid #444444;
	padding-top: 5px;
}
h1 {
	margin-top: 0px;
	margin-bottom: 5px;
	font-family: 'GmarketSansMedium';
}
.cardAddBtnDiv {
	text-align: center;
}
#cardBenefitTop {
	margin-right: 5px;
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
    background: white;
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
  height:2px;
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
   font-size: 12px;
    margin: 10px 0 10px 130px;
}
.new {
   display: inline-block;
   vertical-align: top;
   font-size: 12px;
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
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
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
       location.href = "/mypage";
    });
    
    $("#logNick").on("click", function(){
       $("#memNo").attr("action");
       $("#memNo").submit();
    });
    
/* 	SELECT * FROM CARDS;
	SELECT * FROM CARDTYPES;
	SELECT * FROM CARDBENEFITS;
	SELECT * FROM CARDCOMPANYS;
	SELECT * FROM CARDMEMTARGETS;

	SELECT DISTINCT BENEFIT_TOP FROM CARDBENEFITS; */
	/* 카드순위 페이지 이동 */
	$("#ranking").on("click", function(){
		location.href = "card_rank";
	}); // ranking click end
	/* 카드검색/비교 페이지 이동 */
	 $("#search").on("click", function(){
		location.href = "search";
	});// search click end
	/* 컨텐츠 페이지 이동 */
	$("#contents").on("click", function(){
		location.href = "content";
	});// contents click end
	/* 메인페이지 이동 */
	$("#headerLogo").on("click", function(){
		location.href = "/cdcp";
	}); // headerLogo click end
	$("#headerLogo").on("click", function(){
		location.href = "/cdcp";
	}); // headerLogo click end
	
	$("#addCard").on("click", function() {
		getCardRead();
	});
	$("#deleteCard").on("click", function() {
		updateCardRead();
	});
	
	$(".left_content .content_content").on("click", function() {
		if($(this).html() == "추가") {
			getCardRead();
		} else if($(this).html() == "삭제/수정") {
			updateCardRead();
		}
	});
	
	$(".sub_menuBar .content_content").on("click", function() {
		var ival = $(this).prop('id').split("_");
		getCardRead();
	});
});

function updateCardRead() {
	$.ajax({
		url:"cardListGet",
		type:"post",
		dataType :"json",
		success : function (res) {
			var html ="";
			
			html +="<form action=\"#\" id =\"UpdateCardForm\" method=\"post\">";
			html +="<div>";
			html +="<table><h1>카드목록</h1>";
			html +="<colgroup>";
			html +="<col width=\"110px\"/>";
			html +="<col width=\"390px\"/>";
			html +="<col width=\"250px\"/>";
			html +="<col width=\"250px\"/>";
			html +="</colgroup>";
			for(var i=0; i<res.list.length; i++) {
				html +="<tr>";
				html +="<td><img src=" + res.list[i].CARD_IMG_URL + " style=\"width:100px;height:60px;\"></td>";
				html +="<td>" + res.list[i].CARD_NAME + "</td>";
				html +="<td><input type=\"button\" value=\"수정\" class=\"cardUpdateBtn\"/><input type=\"hidden\" name=\"cardUpNo\" value=\"" + res.list[i].CARD_NO + "\"></td>";
				html +="<td><input type=\"button\" value=\"삭제\" class=\"cardDeleteBtn\"/><input type=\"hidden\" name=\"cardDelNo\" value=\"" + res.list[i].CARD_NO + "\"></td>";
				html +="</tr>";	
			}
			html +="</table>";
			html +="</div>";
			html +="</form>";
			$(".right_content").html(html);

			$(".cardDeleteBtn").on("click", function() {
				$("#goForm").append("<input type='\hidden'\ value=" + $(this).siblings().val() + " name=\"delNo\"/>");
				var params = $("#goForm").serialize();
				
				if(confirm("정말 삭제하시겠습니까?")) {
					$.ajax({
						url:"cardDelete",
						type:"post",
						dataType :"json",
						data: params,
						success : function (res) {
							updateCardRead();
							alert("삭제가 완료되었습니다");
						},
						error: function (request, status, error) {
							console.log(error);
						}
					});
				}
			});
			
			$(".cardUpdateBtn").on("click", function() {
				$("#goForm").append("<input type='\hidden'\ value=" + $(this).siblings().val() + " name=\"cardUpNo\"/>");
				var params = $("#goForm").serialize();
				
				makeUpdatePopUp($(this).siblings().val());
			});
		},
		error: function (request, status, error) {
			console.log(error);
		}
	});
}

function getCardRead() {
	var html = "";
	
	html += "<form action=\"#\" id =\"addCardForm\" method=\"post\" enctype=\"multipart/form-data\">";
	html += "<input type=\"hidden\" name=\"addCardImg\" id=\"addCardImg\">";
	html += "<table><h1>카드추가</h1>";
	html += "<colgroup>";
	html += "<col width=\"1100px\"/>";
	html += "<col width=\"1100px\"/>";
	html += "</colgroup>";
	html += "<tr>";
	html += "<td class=\"img\" colspan=\"3\">";
	html += "<div id=\"image_preview\">";
	html += "<img src=\"resources/images/detail/Main3.jpg\" style=\"width:220px;height:150px;\">";
	html += "</div>";
	html += "<div class=\"f_box\">";
	html += "<input type=\"file\" id=\"cardImg\" name=\"bf_file[]\">";
	html += "<label for=\"img\"></label><br/>";
	html += "</div>";
	html += "</td>";
	html += "</tr>";
	html += "<tr>";
	html += "<td style=\"width:33%;\"><input type=\"text\" id=\"cardName\" name=\"cardName\" placeholder=\"카드이름\" style=\"width:90%;\" /></td>";
	html += "<td style=\"width:33%;\"><input type=\"text\" id=\"cardUrl\" name=\"cardUrl\" placeholder=\"가입Url\" style=\"width:90%;\" /></td>";
	html += "<td style=\"width:33%;\"><input type=\"text\" id=\"cardSummary\" name=\"cardSummary\" placeholder=\"간단혜택\" style=\"width:90%;\" /></td>";
	html += "</tr>";
	html += "<td>카드종류<br/>";
	html += "<select id=\"cardKind\" name=\"cardKind\">";
	html += "<option value=\"0\">체크카드</option>";
	html += "<option value=\"1\">신용카드</option>";
	html += "</select>";
	html += "</td>";
	html += "<td>카드타입<br/>";
	html += "<select id=\"cardType\" name=\"cardType\">";
	html += "<option value=\"0\">할인</option>";
	html += "<option value=\"1\">적립</option>";
	html += "<option value=\"2\">마일리지</option>";
	html += "</select></td>";
	html += "<br/><td>카드사<br/>";
	html += "<select id=\"cardCompany\" name=\"cardCompany\">";
	html += "<option value=\"1\">국민</option>";
	html += "<option value=\"2\">삼성</option>";
	html += "<option value=\"3\">롯데</option>";
	html += "<option value=\"4\">신한</option>";
	html += "<option value=\"5\">우리</option>";
	html += "<option value=\"6\">현대</option>";
	html += "<option value=\"7\">농협</option>";
	html += "<option value=\"8\">하나</option>";
	html += "<option value=\"9\">IBK</option>";
	html += "</select></td><br/>";
	html += "</tr>";
	html += "<tr>";
	html += "</table>";
	html += "</form>";
	html += "<br/>";
	html += "<div class=\"cardAddBtnDiv\">";
	html += "<input type=\"button\" value=\"등록하기\" id=\"cardAddBtn\"/>";
	html += "</div>";
	
	$(".right_content").html(html);
	
	$("#cardAddBtn").on("click", function() {
		if ($("#addCardImg").val() != "" && $("#cardName").val() != "" && $("#cardUrl").val() != "" && $("#cardSummary").val() != "") {
			var params = $("#addCardForm").serialize();
			
			$.ajax({
				url:"addCard",
				type:"post",
				dataType :"json",
				data: params,
				success : function (res) {
					if (res.message == 'success') {
						alert("추가가 완료되었습니다.");
					}
				},
				error: function (request, status, error) {
					console.log(error);
				}
			});	
		} else {
			alert("내용을 모두 입력해 주세요");
		}
	});
	// 이미지 업로드
    $('#cardImg').on('change', function() {
	    ext = $(this).val().split('.').pop().toLowerCase(); //확장자
	    ival = $(this).val().substring($(this).val().lastIndexOf("\\")+1);
	    //배열에 추출한 확장자가 존재하는지 체크
	    if($.inArray(ext, ['gif', 'png', 'jpg', 'jpeg']) == -1) {
	        resetFormElement($(this)); //폼 초기화
	        window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능)');
	    } else {
	        file = $('#cardImg').prop("files")[0];
	        blobURL = window.URL.createObjectURL(file);
	        $("#addCardImg").val(ival);
	        $('#image_preview img').attr('src', blobURL);
	        $('#image_preview').show(); //업로드한 이미지 미리보기
	        $(this).hide(); //파일 양식 감춤
	    }
    });
}

function makeUpdatePopUp(no) {
	$("#goForm").append("<input type='\hidden'\ value='" + no + "' name=\"cardUpNo\"/>");
	var params = $("#goForm").serialize();
	
	$.ajax({
		url:"cardUpdatePop",
		type:"post",
		dataType :"json",
		data: params,
		success : function (res) {
			console.log(res.popup[0])
			var html = "";
			html += "<div class=\"bg_div\"></div>";
			html += "<div class=\"popup_div\">";
			html += "<div class=\"popup_title\">";
			html += "<div class=\"popup_title_text\">" + res.popup[0].CARD_NAME + "변경</div>";
			html += "</div>";
			html += "<div class=\"popup_contents\">";
			html += "<div class=\"popup_text\">"
			html += "<form action=\"#\" id =\"updateCardPopForm\" method=\"post\">";
			html += "<input type=\"hidden\" id=\"updateCardPopNo\" name=\"cardNo\" value='" + res.popup[0].CARD_NO + "'\><br/>";
			html += "카드이름 [ <input type=\"text\" id=\"updateCardPopName\" name=\"cardName\" value='" + res.popup[0].CARD_NAME + "'\> ]<br/>";
			html += "가입경로 [ <input type=\"text\" id=\"updateCardPopApply\" name=\"cardApplyUrl\" value='" + res.popup[0].CARD_APPLY_URL + "'\> ]<br/>";
			html += "카드사진 [ <input type=\"text\" id=\"updateCardPopImg\" name=\"cardImg\" value='" + res.popup[0].CARD_IMG_URL + "'\> ]<br/>";
			html += "혜택요약 [ <input type=\"text\" id=\"updateCardPopSummary\" name=\"cardSummary\" value='" + res.popup[0].CARD_SUMMARY + "'\> ]<br/>";
			
			html += "카드종류";
			if(res.popup[0].C_TYPE == 0) {
				html += " [ <select id=\"updateCardPopKind\" name=\"cardKind\">";
				html += "<option value=\"0\" selected>신용카드";
				html += "<option value=\"1\">체크카드";
				html += "</select> ]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
			} else if(res.popup[0].C_TYPE == 1) {
				html += " [ <select name=\"cardKind\">";
				html += "<option value=\"0\">신용카드";
				html += "<option value=\"1\" selected>체크카드";
				html += "</select> ]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";	
			}
			
			html += "카드타입";
			if(res.popup[0].T_TYPE == 0) {
				html += " [ <select id=\"updateCardPopType\" name=\"cardType\">";
				html += "<option value=\"0\" selected>할인";
				html += "<option value=\"1\">적립";
				html += "<option value=\"2\">마일리지";
				html += "</select> ]";
			} else if(res.popup[0].T_TYPE == 1) {
				html += " [ <select id=\"updateCardPopType\" name=\"cardType\">";
				html += "<option value=\"0\">할인";
				html += "<option value=\"1\" selected>적립";
				html += "<option value=\"2\">마일리지";
				html += "</select> ]";
			} else if(res.popup[0].T_TYPE == 2) {
				html += " [ <select id=\"updateCardPopType\" name=\"cardType\">";
				html += "<option value=\"0\">할인";
				html += "<option value=\"1\">적립";
				html += "<option value=\"2\" selected>마일리지";
				html += "</select> ]";	
			}
			/* <input type=\"button\" class=\"PopBtn\" value=\"추가\"/>
			html += "<div id=\"main_div_main\"><hr/>[메인혜택]<br/>";
			for(var i=0; i<res.popup.length; i++) {
				if(res.popup[i].BENEFIT_TOP != undefined && res.popup[i].BENEFIT_NO != undefined) {
					html += "<input type=\"hidden\" id=\"updateCardPopBeneNo_" + i + "\" name=\"updateCardPopBeneNo_" + i + "\" value='" + res.popup[i].BENEFIT_NO + "'\>";
					html += "<input type=\"text\" id=\"updateCardPopBeneTop_" + i + "\" name=\"updateCardPopBeneTop_" + i + "\" value='" + res.popup[i].BENEFIT_TOP + "'\>";
				} else {					
					html += "<input type=\"hidden\" id=\"updateCardPopBeneNo_" + i + "\" name=\"updateCardPopBeneNo_" + i + "\" value='" + res.popup[i].BENEFIT_NO + "'\>";
					html += "<input type=\"text\" id=\"updateCardPopBeneTop_" + i + "\" name=\"updateCardPopBeneTop_\" value='null'\>";
				}
			}
			html += "</div>";/* <input type=\"button\" class=\"PopBtn\" value=\"추가\"/> 
			html += "<hr/><div id=\"main_div_sub\">[서브혜택]<br/>";
			for(var i=0; i<res.popup.length; i++) {
				if(res.popup[i].BENEFIT_MID != undefined) {
					html += "<input type=\"hidden\" id=\"updateCardPopBeneNoSub_" + i + "\" name=\"updateCardPopBeneNoSub_" + i + "\" value='" + res.popup[i].BENEFIT_NO + "'\>";
					html += "<input type=\"text\" id=\"updateCardPopBene_mid_" + i + "\" name=\"updateCardPopBene_mid_" + i + "\" value='" + res.popup[i].BENEFIT_MID + "'\><br/>";
				} else {
					html += "<input type=\"hidden\" id=\"updateCardPopBeneNoSub_" + i + "\" name=\"updateCardPopBeneNoSub_" + i + "\" value='" + res.popup[i].BENEFIT_NO + "'\>";
					html += "<input type=\"text\" id=\"updateCardPopBene_mid_" + i + "\" name=\"updateCardPopBene_mid_" + i + "\" value='null'\><br/>";
				}
			}
			html += "</div>";*/
			/* <input type=\"button\" class=\"PopBtn\" value=\"추가\"/>
			html += "<hr/><div id=\"main_div_detail\">[상세혜택]";
			for(var i=0; i<res.popup.length; i++) {
				if(res.popup[i].DETAIL_INFO != undefined) {
					html += "<br/><input type=\"hidden\" id=\"updateCardPopDetail_" + i + "\" name=\"updateCardPopDetail_" + i + "\">";
					html += "<br/><textarea id=\"updateCardPopDetail_" + i + "\" name=\"updateCardPopDetail_" + i + "\">";
					html += res.popup[i].DETAIL_INFO;
					html += "</textarea>";
				}
			}
			html += "</div>"; */
			/* <input type=\"button\" class=\"PopBtn\" value=\"추가\"/>
			html += "<hr/><div id=\"main_div_shop\">[혜택매장]<br/>";
			for(var i=0; i<res.popup.length; i++) {
				if(res.popup[i].SHOP_INFO != undefined) {
					html += "<input type=\"hidden\" id=\"updateCardPopShopNo_" + i + "\" name=\"updateCardPopShopNo_" + i + "\" value='" + res.popup[i].SHOP_INFO + "'\><br/>";
					html += "<input type=\"text\" id=\"updateCardPopShop_" + i + "\" name=\"updateCardPopShop_" + i + "\" value='" + res.popup[i].SHOP_INFO + "'\><br/>";
				}
			}
			html += "</div>"; */
			html += "<div class=\"popup_btn\">";
			html += "<input type=\"button\" class=\"btn_ok\" value=\"닫기\"/>";
			html += "<input type=\"button\" class=\"update_ok\" value=\"수정\"/>";
			html += "</div>";
			html += "</div>";
			html += "<br/><br/></form></div>";
			html += "</div>";
			
			$("body").prepend(html);
			
			$(".btn_ok").focus();
			
			$(".bg_div").hide();
			$(".popup_div").hide();
			
			$(".bg_div").fadeIn();
			$(".popup_div").fadeIn();
			
			
			$(".btn_ok").off("click");
			$(".btn_ok").on("click", function(){
				closePopup();
			});
			
			$(".bg_div").off("click");
			$(".bg_div").on("click", function(){
				closePopup();
			});
			
			$(".PopBtn").on("click", function() {
				var ival = $(this).parent().prop('id').split("_");

				if(ival[2] == 'main') {
					if ($(this).siblings('input').last().length > 0) {
						var ival = $(this).siblings('input').last().attr('id').split("_");
						$(this).parent().append("<input type=\"text\" placeholder=\"내용을 입력하세요\" id=\"putCardPopBeneTop_" + ival[1]+1 + "\" name=\"putCardPopBeneTop_" + ival[1]+1 + "\" />");
					} else {
						$(this).parent().append("<input type=\"text\" placeholder=\"내용을 입력하세요\" id=\"putCardPopBeneTop_1\" name=\"putCardPopBeneTop_1\" />");
					}
				} else if(ival[2] == 'sub') {
					if ($(this).siblings('input').last().length > 0) {
						var ival = $(this).siblings('input').last().attr('id').split("_");
						$(this).parent().append("<input type=\"text\" placeholder=\"내용을 입력하세요\" id=\"putCardPopBene_mid_" + ival[2]+1 + "\" name=\"putCardPopBene_mid_" + ival[2]+1 + "\" />");
					} else {
						$(this).parent().append("<input type=\"text\" placeholder=\"내용을 입력하세요\" id=\"putCardPopBene_mid_\" name=\"putCardPopBene_mid_1\" />");
					}
				} else if(ival[2] == 'detail') {
					if ($(this).siblings('textarea').last().length > 0) {
						var ival = $(this).siblings('textarea').last().attr('id').split("_");
						$(this).parent().append("<br/><textarea style=\"width:900px;height:100px;\" placeholder=\"내용을 입력하세요\" id=\"putCardPopDetail_" + ival[1]+1 + "\" name=\"putCardPopDetail_" + ival[1]+1 + "\" ></textarea>");
					} else {
						$(this).parent().append("<br/><textarea style=\"width:900px;height:100px;\" placeholder=\"내용을 입력하세요\" id=\"putCardPopDetail_1\" name=\"putCardPopDetail_1\" ></textarea>");
					}
				} else if(ival[2] == 'shop') {
					if ($(this).siblings('input').last().length > 0) {
						var ival = $(this).siblings('input').last().attr('id').split("_");
						$(this).parent().append("<input type=\"text\" placeholder=\"내용을 입력하세요\" id=\"putCardPopShop_" + parseInt(ival[1])+1 + "\" name=\"putCardPopShop_" + ival[1]+1 + "\" />");
					} else {
						$(this).parent().append("<input type=\"text\" placeholder=\"내용을 입력하세요\" id=\"putCardPopShop_1\" name=\"putCardPopShop_1\" />");
					}
				}
			});
			
			function closePopup() {
				$(".bg_div").fadeOut(function(){
					$(".bg_div").remove();
				});
				
				$(".popup_div").fadeOut(function(){
					$(".popup_div").remove();
				});
			}
			
			$(".update_ok").on("click", function() {
				var params = $("#updateCardPopForm").serialize();
				
				$.ajax({
					url:"cardUpdate",
					type:"post",
					dataType :"json",
					data: params,
					success : function (res) {
						if (res.message == 'success') {
							alert("수정이 완료되었습니다");
							closePopup()
							updateCardRead();							
						}
					},
					error: function (request, status, error) {
						console.log(error);
					}
				});
			});
		},
		error: function (request, status, error) {
			console.log(error);
		}
	});
}
</script>
</head>
<body>
<!-- 로그인팝업 -->
<div id="popup">
   <div class="cardcaptain">&nbsp;&nbsp;&nbsp;&nbsp;Card Captain&nbsp;&nbsp;&nbsp;&nbsp;X</div>
   <form action="testLogins" id="loginForm" method="post">
         <input type="email" class="popinput" placeholder="ID" id="mId" name="mId">
         <input type="password" class="popinput" placeholder="PW" id="mPw" name="mPw"><br/>
      <span class="errorMsg" id="masage" aria-live="assertive"></span>
      <input type="button" class="popinput" id="loginBtn" value="로그인"/><br/>
   </form>
   <div class="re" id="searchmem">ID/PW 찾기</div>
   <div class="new" id="join">|&nbsp;&nbsp;회원 가입</div>
</div>
<!-- 로그인팝업 종료 -->
<!-- 로그인팝업 -->
<div id="popup">
   <div class="cardcaptain">&nbsp;&nbsp;&nbsp;&nbsp;Card Captain&nbsp;&nbsp;&nbsp;&nbsp;X</div>
   <form action="testLogins" id="loginForm" method="post">
         <input type="email" class="popinput" placeholder="ID" id="mId" name="mId">
         <input type="password" class="popinput" placeholder="PW" id="mPw" name="mPw"><br/>
      <span class="errorMsg" id="masage" aria-live="assertive"></span>
      <input type="button" class="popinput" id="loginBtn" value="로그인"/><br/>
   </form>
   <div class="re" id="searchmem">ID/PW 찾기</div>
   <div class="new" id="join">|&nbsp;&nbsp;회원 가입</div>
</div>
<!-- 로그인팝업 종료 -->
<div class="body">
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
                  <div id="logNick">${sMNm}&nbsp;&nbsp;님</div><input type="button" value="로그아웃" id="logoutBtn" />
               </c:otherwise>
            </c:choose>
         </div>
      </div>
   </div>
</div>
<!-- 메뉴바영역 -->
	<nav>
        <ul>
        	<li class="dropdown">
                <div id="smallMeunName">관리자페이지</div>
            </li>
            <li class="dropdown">
                <div class="dropdown-menu">카드</div>
                <div class="dropdown-content">
                    <a href="#" id="addCard">카드등록</a>
                    <a href="#" id="deleteCard">카드삭제</a>
                </div>
            </li>
            <li class="dropdown">
                <div class="dropdown-menu">리뷰</div>
                <div class="dropdown-content">
                    <a href="#">리뷰관리</a>
                    <a href="#">리뷰신고관리</a>
                    <a href="#">리뷰별점관리</a>
                    <a href="#">Menu2-4</a>
                </div>
                <!--  -->
            </li>
            <li class="dropdown">
                <div class="dropdown-menu">회원관리</div>
                <div class="dropdown-content">
                    <a href="#">회원정보수정</a>
                    <a href="#">회원가입목록</a>
                    <a href="#">회원보유카드</a>
                    <a href="#">Menu3-4</a>
                </div>
            </li>
            <li class="dropdown">
                <div class="dropdown-menu">컨텐츠관리</div>
                <div class="dropdown-content">
                    <a href="#">소비심리테스트</a>
                    <a href="#">영상관리</a>
                    <a href="#">등록기사관리</a>
                    <a href="#">카드랭킹관리(?)</a>
                </div>
            </li>
            <li class="home"><a href="#">Home</a></li>
        </ul>
    </nav>
<!-- 컨텐츠 영역 -->
<form action="#" id ="goForm" method="post"></form>
<div class="content_area">
	<div class="contents">
		<div class="sub_menuBar" style="visibility:hidden;">
			<div class="content_content" id="cardNo_1">국민카드</div>
			<div class="content_content" id="cardNo_2">삼성카드</div>
			<div class="content_content" id="cardNo_3">롯데카드</div>
			<div class="content_content" id="cardNo_4">신한카드</div>
			<div class="content_content" id="cardNo_5">우리카드</div>
			<div class="content_content" id="cardNo_6">현대카드</div>
			<div class="content_content" id="cardNo_7">농협카드</div>
			<div class="content_content" id="cardNo_8">하나카드</div>
			<div class="content_content" id="cardNo_9">IBK카드</div>
		</div>
		<div class="real_content">
		<div class="left_content">
			<div class="content_content">추가</div>
			<div class="content_content">삭제/수정</div>
		</div>
		<div class="right_content"></div>
		</div>
	</div>
</div><br/><br/><br/>
<!-- 풋터영역 (하단 마무리) -->
<div class="rayout">
	<div id="footer">
		<div id="footerMenu">
			<div id="footerLogo"></div>
			<div>서울시 금천구 가산디지털2로 115,509호,811호,1109-1호(가산동,대륭테크노타운3차) 금융조 조장 : 주건정</div>
			<div>Copyright © 2021-2031 CardCaptain All Rights Reserved.</div>
		</div>
	</div>
</div>
</body>
</html>