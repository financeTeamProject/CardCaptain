<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contents</title>
<style type="text/css">

@font-face {
    font-family: 'GmarketSansMedium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

@font-face {
  font-family: 'Cafe24Ohsquare';	
  src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/TmoneyRoundWindExtraBold.woff') format('woff');  
}
@font-face {
    font-family: 'GmarketSansLight';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansLight.woff') format('woff');
}

*{
	margin: 0;
	padding: 0;
}

p {	
 margin: 0;
 text-align: center;
 font-family: 'GmarketSansLight'; 
}



body {
  background: #eee;
  font-size: 0;
}


.body {
	width: 100%;
	heigth: 100%;
}

h2 {
	
	font-family: 'Cafe24Ohsquare';
	padding-top: 30px;
	font-size: 20px;
	color: orange;
}

h1 {
	
	padding-top: 30px;
	font-family: 'GmarketSansLight';
	font-size: 25px;
	color: black;
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
    background-image: url("resources/images/main/logo.png");
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
    background-image: url("resources/images/main/login1.png");
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
.title {
	
	width: 700px;
	display: block;
	background-color: #eee;
	vertical-align: top;
	text-align: center;
	font-size: 60px;
	color: blueblack;
	font-family: 'Cafe24Ohsquare';
	margin: 60px auto;
    	
}

.img1 {  /* 소비심리테스트 이미지 */
	background-image: url("resources/images/contentimg/shop.png");
	margin: 0px auto;
	background-position: center;
	background-repeat: no-repeat;
	background-size: 200px auto;
	width: 300px;
	height: 400px;
	font-size: 20px;
	padding-top: 10px;
}

.test_button { /* 소비심리테스트 시작버튼 */
	margin: 0px auto;
	width: 460px;
	height: 53px;
	color: #fff;
    border: solid 1px rgba(0,0,0,.08);
    background-color: gray;
    font-family: 'Cafe24Ohsquare';
    border-radius: 5px 5px 5px 5px;
}

.test_button > div {
	display: table;
	width: 100%;
	height: 100%;
}

.test_button > div > div {
	display: table-cell;
	vertical-align: middle;
	text-align: center;
	font-size: 20px;
    font-weight: 700;
    cursor: pointer;
}

.test_button:hover {
	background-color:#FFD400;
	color:#282C37;
	cursor: pointer;
}


.rayout{	/* 전체 레이아웃 기준잡기 */
    width: 100%;
    margin: 0 auto;
    position: relative;
    min-width: 1625px;
    padding-top: 100px;
}

#s_left { /* 왼쪽 사이드바 공백 레이아웃 틀 */
	width: 15%;
	height: 800px;
	float:left;
	
}

#main { /* 가운데 메인 내용 틀 */
	width: 70%;
	height: 800px;
	float:left;
	background: #eee;	
}

#s_right { /* 오른쪽 사이드 바 공백 레이아웃 틀 */
	width: 15%;
	height: 800px;
	float:left;
	
}

#s_left_sub { 
	width: 15%;
	height: 2200px;
	float:left;
	
}

#main_sub { 
	width: 70%;
	height: 2200px;
	float:left;
	background: #eee;	
}

#s_right_sub { 
	width: 15%;
	height: 2200px;
	float:left;
	
}

.content { /* main > 하위 요소 내용 틀 */
	width: 100%;
	height: 300px;
	margin: 30px auto;	
}

.content_1 {
	width: 70%;
	height: 300px;
	margin: 0 auto;
	min-width: 1000px;
	max-width: 1000px;
}

.content_content {	   
    background-color: white;
    height: 300px;
    width: 75%; 
    margin: 0px auto;
    text-align: center;
    color: white;
    font-size: 10px;
    font-family: 'GmarketSansLight';
    border-radius: 15px 15px 15px 15px;         
}

.img_rayout, .content_content {
   display: inline-block;
   vertical-align: top;
   
}

.img_rayout {
    background-color: #eee;
    cursor: pointer;
    height: 300px;
    width: 25%;
    margin: 0px auto;
}

.img_rayout > div, img {
	width: 240px;
	height: 300px;
	background-repeat: no-repeat;
	background-position: center;
	margin: 0px auto;
}

.img_rayout a > img{
	width: 240px;
	height: 300px;
	background-repeat: no-repeat;
	background-position: center;
	margin: 0px auto;
}

#img_rayout_1 {
	background-image: url("resources/images/contentimg/card_tip_1.jpg");
}

#img_rayout_2 {
	background-image: url("resources/images/contentimg/card_tip_2.jpg");
}

#img_rayout_3 {
	background-image: url("resources/images/contentimg/card_tip_3.jpg");
}

#img_rayout_4 {
	background-image: url("resources/images/contentimg/card_tip_4.jpg");
}


.con {
	height: 60%;
	width: 80%;
	font-size: 13px;
	font-family: 'Cafe24Ohsquare';
	color: black;
	margin: 0px auto;
	
}

.writer, .Cdate {
	height: 10%;
	width: 90%;
	font-size: 15px;
	font-family: 'GmarketSansLight';
	color: black;
	float: left;
}

.box-wrapper{ /* 카드간단용어 전체틀 */
	width: 650px;
	margin: 0 auto;
}

.box {	/* 카드간단용어 상세 */
	height: 50px;
	line-height: 50px;
	background-color: #f2c3a6;
	color: white;
	font-size: 40px;
	text-align: center;
	float: left;
	margin: 0 10px;
	margin-top: 10px;
	cursor: pointer;
	font-family: 'Cafe24Ohsquare';
}

.movie { /* 동영상 */
	width: 300px;
	height: 300px;
	background-position: center;
	display: inline-block;
	margin: 0px 16.5px;
}

.movie img {
	width: 300px;
	height: 300px;
	background-repeat: no-repeat;
	background-position: center;
	margin: 0px auto;
	cursor: pointer;
}

.movie > .movie_name {
	width: 300px;
	height: 50px;
	margin: 0px auto;
	font-size: 20px;
	line-height: 50px;
	font-family: 'Cafe24Ohsquare';
	color: black;
	text-align: center;
}

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
	background-image: url("resources/images/contentimg/logo.png");
	background-repeat: no-repeat;
	background-size: 120px;
	width: 120px;
	height: 40px;
	cursor: pointer;
	text-align: center;
	margin-top: 10px;
}

/* 페이징 */

.paging_wrap {
	margin-top: 10px;
	margin: 0px auto;
	text-align: center;
}


.paging_wrap div {
	display: inline-block;
	padding: 5px;
	margin-left: 3px;
	margin-right: 3px;
	background-color: #DFDFDF;
	border: 1px solid #444;
	border-radius: 3px;
	cursor: pointer;
	width: 60px;
	text-align: center;
	font-size: 5px;
}

.paging_wrap div:active{
 background-color: #AAAAAA; 
}

.paging_wrap .on {
	background-color: #AAAAAA; 
}


</style>
<script type="text/javascript"
				src="resources/script/jquery/jquery-1.12.4.min.js"></script>
		<script type="text/javascript">
		
		$(document).ready(function() {
			
			reloadList();
			
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
			
			/* 컨텐츠 페이지내 이동 이벤트 */
			$(".test_button").on("click", function() { // 테스트 시작하기를 눌렀을 때, 소비심리 첫번째 페이지로 이동
				location.href = "Ctest1";
			});
			/* 카드간단용어 이동 */
			$(".box").on("click", function() { // 카드간단용어 중 하나의 박스를 클릭할 시에 카드기사내용 페이지로 이동.
				location.href = "cardTerms";
			}); 
			
			$("#img_rayout_4").on("click", function() { // 카드간단용어 중 하나의 박스를 클릭할 시에 카드기사내용 페이지로 이동.
				location.href = "cardTerms";
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
				$("#popup").css("display","none");
				$(".body").css("display","inline");

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
								location.href = "content";
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
			
		});	 // document ready end

		/* 목록  */
		 function reloadList() {
			var params = $("#actionForm").serialize();
			console.log(params);
			$.ajax({
				url: "contentAjax",
				type: "post", 
				dataType: "json",
				data: params,	
				success: function(res){
					console.log(res);
					drawList(res.tipcon);
					drawPaging(res.pb);
				},
				error: function(request, status, error) {
					console.log(request);
					console.log(status);
					console.log(error);
				}
			});
		}
		
		// 목록 그리기
		function drawList(tipcon){
			
			var html = "";
			for(var i = 0; i < tipcon.length; i++){
			html += "<div class=\"content\">";
			html += "<div class=\"content_1\">";
			html += "<div class=\"img_rayout\">" + "<a href=\"cardTip_" + tipcon[i].TIP_NO + "\">" + "<img src=\" "+ tipcon[i].TIP_IMG_URL + "\">" + "</a>" + "</div>";
			html += "<div class=\"content_content\">";
			html += "<h2>" + tipcon[i].TIP_TITLE + "</h2>";
			html += "<div class=\"con\">";
			html += "<h1>" + tipcon[i].TIP_CON + "...</h1>";
			html += "</div>";
			html += "<div class=\"Cdate\">" + tipcon[i].ADD_DATE + " BY " + tipcon[i].TIP_WRITER + "</div>";
			html += "</div>";
			html += "</div>";
			html += "</div>";  
			
			}
			
			$(".tipcon_list_wrap").html(html);
			
			$(".img_rayout").on("click", function(){
				location.href = "cardTip_1";
			});
			
		}
		
		// 페이징 그리기
		function drawPaging(pb) {
			var html = "";
			html += "<div page=\"1\">|<</div>";
			
			if($("#page").val() == "1") {
				html += "<div page=\"1\"><</div>";	
			} else {
				html += "<div page=\"" + ($("#page").val() -1) + "\"><</div>";	
			}
			
			for(var i = pb.startPcount ; i <= pb.endPcount ; i++) {
				if($("#page").val() == i) {
					html += "<div class=\"on\" page=\"" + i + "\">" + i + "</div>";
				} else {
					html += "<div page=\"" + i + "\">" + i + "</div>";
				}
				
			}
			if($("#page").val() == pb.maxPcount) {
				html += "<div page=\"" + pb.maxPcount + "\">></div>";
			} else {
				html += "<div page=\"" + ($("#page").val() * 1 + 1) + "\">></div>";
			}
			
			html += "<div page=\"" + pb.maxPcount + "\">>|</div>";
			
			$(".paging_wrap").html(html);
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
<!-- 메인영역(소비심리테스트) -->
<div class="rayout">
	<div id="s_left"></div>
	<div id="main">
	<div class="title">소비심리테스트</div>
		<div class="img1">
		<p>간단한 설문으로 알아보는
		<br>
		  재미있는 유형검사
		</p>
	</div>
	<div class="test_button">
		<div>
		<div>테스트 시작하기</div>
		</div>
	 </div>			
		</div>	
	<div id="s_right"></div>						
</div>
	<!-- 서브영역(활용, 용어, 간단) -->
	<div class="rayout">
		<div id="s_left_sub"></div>
		<div id="main_sub">	
			<div class="title">카드활용꿀팁</div>
<!-- Form -->
					<form action="#" id="actionForm" method="post">   
						<input type="hidden" name="tipNo" id="tipNo"/>
						<input type="hidden" id="page" name="page" value="${page}" />
					</form><br/>
<!-- Form end --> 

			<div class="tipcon_list_wrap"></div>
			<div class="paging_wrap"></div>
			
			<%-- <c:forEach var = "i" begin = "0" end = "2">			
				<div class="content">
					<div class="content_1">
						<div class="img_rayout">
							<a href="cardTip_${list[i].TIP_NO}">
								<img src="${list[i].TIP_IMG_URL}">
							</a>
						</div>
						<div class="content_content">
						<h2>${list[i].TIP_TITLE}</h2>
						<div class ="con">
							<h1>${list[i].TIP_CON}...</h1>
						</div>
						<div class="Cdate">${list[i].ADD_DATE} BY ${list[i].TIP_WRITER}</div>
						</div>
					</div>				
				</div>
			</c:forEach> --%>
			
				<div class="content">
					<div class="content_1">
					<c:forEach var = "i" begin = "0" end = "2">
						<div class="movie">
							<img src="${data[i].VIDEO_IMG}" onclick = "window.open('${data[i].VIDEO_LINK}')">
						<div class = movie_name><${data[i].VIDEO_NAME}></div>
						</div>
					</c:forEach>
					</div>
				</div>
				<div class="title">카드용어정리</div>
					<div class="content">
						<div class="content_1">
							<div class="img_rayout"><div id="img_rayout_4"></div></div>
							<div class="content_content">
							<h2>신용카드가 처음이라면, 종류부터 알고보자</h2>
							<div></div>
							<h1>신용카드 기본 개념, 용어</h1>
								<div class="box-wrapper">		
									<div class="box">#연회비</div>
									<div class="box">#비자카드</div>
									<div class="box">#마스터카드</div>
									<div class="box">#전월실적</div>
									<div class="box">#신용</div>	
									<div class="box">#체크</div>	
									<div class="box">#할부</div>			
								</div>	
							</div>
						</div>				
					</div>
				</div>
		<div id="s_right_sub"></div>						
	</div>
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
</div>
</body>
</html>