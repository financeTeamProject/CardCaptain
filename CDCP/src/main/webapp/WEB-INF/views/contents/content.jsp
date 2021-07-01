<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contents</title>
<style type="text/css">

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

h2 {
	
	font-family: 'Cafe24Ohsquare';
	padding-top: 30px;
	font-size: 20px;
	color: orange;
}

h1 {
	
	font-family: 'GmarketSansLight';
	font-size: 40px;
	color: black;
}

.top { /* 헤더(메뉴바) */
   width: 100%;
   height: 55px;
   border-style: solid;
   border-width: 0 0 2px 0;
   border-color: #0047AB;
   font-family: 'GmarketSansMedium';
   min-width: 1830px;
   position: fixed;
   z-index: 9999;
   background-color: white;
}

.menu_left {
   display: inline-block;
   width: 50%;
   height: 100%;
    font-size: 18px;
   vertical-align: top;
}
.menu_right {
   display: inline-block;
   width: 48%;
   height: 100%;
    font-size: 18px;
   vertical-align: top;
   text-align: right;
}
.logo {
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
    margin-left: 70px;
}
.login {
    display: inline-block;
    background-image: url("/cdcp/resources/images/contentimg/login1.png");
    background-repeat: no-repeat;
    background-size: 30px;
    width: 30px;
    height: 25px;
    cursor: pointer;
    margin-top: 15px;
}
.search {
    display: inline-block;
    background-image: url("/cdcp/resources/images/contentimg/search.png");
    background-repeat: no-repeat;
    background-size: 30px;
    width: 30px;
    height: 25px;
    cursor: pointer;
    text-align: center;
}
.menu1 {
   display: inline-block;
   width: 140px;
   height: 100%;
   line-height: 65px;
   color: #0047AB;
   text-align: center;
   letter-spacing: 2px;
   vertical-align: top;
   cursor: pointer;
}
.menu2 {
   display: inline-block;
   width: 100px;
   height: 100%;
   line-height: 65px;
   color: #0047AB;
   text-align: center;
   letter-spacing: 2px;
   vertical-align: top;
   margin-left: 10px;
   cursor: pointer;
}
.text_search {
   width: 180px;
    height: 30px;
   line-height: 45px;
    border-style: solid;
    border-width: 0 0 1px 0;
    border-color: #0047AB;
    padding: 11px 10px 3px 10px;
    outline: 0;
    border-radius: 0;
    box-sizing: border-box;
    caret-color: #f7e317;
    text-decoration: none;
   color: #0047AB;
   font-size: 14px;
   letter-spacing: 3px;
   margin-left: 500px;
    background-color: #f0f8ff00;
}

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
	background-image: url("/cdcp/resources/images/contentimg/shop.png");
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

#content_1 {
	width: 70%;
	height: 300px;
	margin: 0 auto;
	min-width: 1000px;
	max-width: 1000px;
}

#content_content {	   
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

#img_rayout, #content_content {
   display: inline-block;
   vertical-align: top;
   
}

#img_rayout {
    background-color: #eee;
    cursor: pointer;
    height: 300px;
    width: 25%;
    margin: 0px auto;
}

#img_rayout > div {
    
	width: 240px;
	height: 300px;
	background-repeat: no-repeat;
	background-position: center;
	margin: 0px auto;
}

#img_rayout_1 {
	background-image: url("/cdcp/resources/images/contentimg/card_tip_1.jpg");
}

#img_rayout_2 {
	background-image: url("/cdcp/resources/images/contentimg/card_tip_2.jpg");
}

#img_rayout_3 {
	background-image: url("/cdcp/resources/images/contentimg/card_tip_3.jpg");
}

#img_rayout_4 {
	background-image: url("/cdcp/resources/images/contentimg/card_tip_4.jpg");
}



.box-wrapper{ /* 카드간단용어 전체틀 */
	width: 650px;
	margin: 0 auto;
}

#box {	/* 카드간단용어 상세 */
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

#movie { /* 동영상 */
	width: 300px;
	height: 300px;
	background-position: center;
	display: inline-block;
	margin: 0px 16.5px;
}

#movie > div {
	width: 300px;
	height: 300px;
	background-repeat: no-repeat;
	background-position: center;
	margin: 0px auto;
	cursor: pointer;
}

#video_rayout_1{
	background-image: url("/cdcp/resources/images/contentimg/video_1.jpg");
}

#video_rayout_2{
	background-image: url("/cdcp/resources/images/contentimg/video_2.jpg");
}

#video_rayout_3{
	background-image: url("/cdcp/resources/images/contentimg/video_3.jpg");
}

#footer{
	width: 100%;
	height: 100px;
	float:left;
	background: gray;
			
}

#footerMenu{
	width: 80%;
	height:inherit;
	margin: 0 auto;
	color: white;
	text-align: center;
	font-family: GmarketSansMedium;
	font-size: 12px;
}
#footerLogo{
	display: inline-block;
	vertical-align: top;
	background-image: url("/cdcp/resources/images/contentimg/brand1.png");
	background-repeat: no-repeat;
	background-size: 180px;
	width: 180px;
	height: 55px;
	cursor: pointer;
	text-align: center;
}
</style>
<script type="text/javascript"
				src="resources/script/jquery/jquery-1.12.4.min.js"></script>
		<script type="text/javascript">
		
		$(document).ready(function() {
			
			$(".test_button").on("click", function() { // 테스트 시작하기를 눌렀을 때, 소비심리 첫번째 페이지로 이동
				location.href = "Ctest1";
			});
			
			$("#box").on("click", function() {
				location.href = "cardTerms";
			});
		});	
		
		
</script>
</head>
<body>
<!-- 헤더영역(메뉴바) -->
<div class="top">
   <div class="menu_left">
      <div class="logo"></div>
      <div class="menu1">카드순위</div>
      <div class="menu1">카드검색/비교</div>
      <div class="menu1">컨텐츠</div>
   </div>
   <div class="menu_right">
      <input type="text" class="text_search">   
      <div class="search"></div>
      <div class="menu2">로그인</div>
      <div class="login"></div>
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
				<div class="content">
					<div id="content_1">
						<div id="img_rayout"><div id="img_rayout_1"></div></div>
						<div id="content_content">
						<h2>올해부터 시행되는 신용점수제! 신용점수 올리기 꿀TIP</h2>
						<h1>기사내용</h1>
						</div>
					</div>				
				</div>
				<div class="content">
					<div id="content_1">
						<div id="img_rayout"><div id="img_rayout_2"></div></div>
						<div id="content_content">
						<h2>새롭게, 또 다시 정리하는 카드론의 모든 것!</h2>
						<h1>기사내용</h1>
						</div>
					</div>				
				</div>
				<div class="content">
					<div id="content_1">
						<div id="img_rayout"><div id="img_rayout_3"></div></div>
						<div id="content_content">
						<h2>올해엔 신용카드를 발급받아야 하는 3가지 이유 (feat. 에디터의 뼈저리는 사건)</h2>
						<h1>기사내용</h1>
						</div>
					</div>				
				</div>
				<div class="content">
					<div id="content_1">
						<div id="movie"><div id="video_rayout_1"></div></div>
						<div id="movie"><div id="video_rayout_2"></div></div>
						<div id="movie"><div id="video_rayout_3"></div></div>
					</div>
				</div>
				<div class="title">카드용어정리</div>
					<div class="content">
						<div id="content_1">
							<div id="img_rayout"><div id="img_rayout_4"></div></div>
							<div id="content_content">
							<h2>신용카드가 처음이라면, 종류부터 알고보자</h2>
							<div></div>
							<h1>신용카드 기본 개념, 용어</h1>
								<div class="box-wrapper">		
									<div id="box">#연회비</div>
									<div id="box">#비자카드</div>
									<div id="box">#마스터카드</div>
									<div id="box">#전월실적</div>
									<div id="box">#신용</div>	
									<div id="box">#체크</div>	
									<div id="box">#할부</div>			
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
</body>
</html>