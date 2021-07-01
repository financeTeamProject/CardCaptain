<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카드용어</title>
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

li{
	list-style: none;
	color: FFFFFF;
	font-weight: 1000;
	font-size: 20px;
}
a{
	text-decoration: none;
}

html, body {

    margin: 0;
    height: 100%;
	background-color: #eee;
	

}

h2 {
	
	padding-top: 30px;
	font-family: 'Cafe24Ohsquare';
	padding-top: 30px;
	padding-left: 30px;
	font-size: 20px;
	color: orange;
}

h1 {
	
	padding-top: 30px;
	padding-left: 30px;
	font-family: 'GmarketSansLight';
	font-size: 40px;
	color: black;
}

.top {
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
	font-size: 80px;
	color: blueblack;
	font-family: 'Cafe24Ohsquare';
	margin: 60px auto;
    	
}


.rayout{
	
    width: 100%;
    height: 100%;
    margin: 0 auto;
}

#s_left { /* 왼쪽 사이드바 공백 레이아웃 틀 */
	width: 15%;
	height: 100%;
	float:left;
	background-color: #eee;
	min-height: 1200px;
}

#main { /* 가운데 메인 내용 틀 */
	width: 70%;
	height: 100%;
	float:left;
	background: #eee;
	min-height: 1200px;
}

#s_right { /* 오른쪽 사이드 바 공백 레이아웃 틀 */
	width: 15%;
	height: 100%;
	float:left;
	background-color: #eee;
	min-height: 1200px;
}

#title_termes {
	background-image: url("/cdcp/resources/images/contentimg/card_tip_4.jpg");
	background-repeat: no-repeat;
	background-position: right;
	background-size:contain;
	border: 5px 5px 5px 5px;
	margin: 0px auto;
	height: 200px;
	width: 100%;
	background-color: #eef;
	padding-bottom: 20px;
}

#termes {
	border: 5px 5px 5px 5px;
	margin: 0px auto;
	height: 750px;
	width: 100%;
	background-color: white;
}

#logo{	/* 로고 설정 틀 */
	line-height: 70px;
	top: 15px;
	bottom: 10px;
	float: left;
	margin: 0 auto;
	background-image: url("/cdcp/resources/images/contentimg/brand1.png");
	background-position: left;
	background-repeat: no-repeat;
	background-size: 180px auto;
	width: 250px;
	height: 70px;
	cursor: pointer;
}

#footer{
	width: 100%;
	height: 100px;
	float: left;
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
		<div class="title">카드간단용어</div>
			<div id="title_termes">
			<h1>신용카드 기본 개념, 용어</h1>
			<h2>신용카드가 처음이라면, 종류부터 알고보자</h2>
			</div>
			<div id="termes">
				<p>
					1234
				</p>
			</div>	
	</div>	
	<div id="s_right"></div>						
	<!-- 풋터영역 (하단 마무리) -->
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