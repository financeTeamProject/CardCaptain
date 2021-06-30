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

body {
  padding-top: 100px;
  padding-left: 30px;
  background: #eee;
  font-size: 0;

  
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

header { /* 상단메뉴바 */
	height: 70px;
	background: #0047AB;
	border-radius: 5px;
	position: fixed;
	width: 98%;
	z-index: 9999;
	top: 10px;
	left: 1%;
	align-items: center;
	min-width: 1210px;
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


.wrapper{ /* header > 하위요소 적용 */
	width: 100%;
	margin: 0 auto;
	padding-left: 20px;
}

.menu{ /* 메뉴 정렬 위치 기준 */
	float: right;	
}

.menu li a:hover {
	color: #F5DF4D;
	cursor: pointer;
}

.menu li{
	text-align: center;	
	margin-right: 70px;
	width: auto;
	height: 70px;
	float: left;
	font-family: 'Cafe24Ohsquare';	
	display: inline-block;
    
}

.menu a{
	line-height: 70px;
	color: white;
	padding: 0 15px;
	display: block;
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
	background-image: url("../imageFolder/card_tip_4.jpg");
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
	height: 900px;
	width: 100%;
	background-color: white;
}

#logo{	/* 로고 설정 틀 */
	line-height: 70px;
	top: 15px;
	bottom: 10px;
	float: left;
	margin: 0 auto;
	background-image: url("../imageFolder/brand1.png");
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
	background-image: url("../imageFolder/brand1.png");
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
<header>
	<div class="wrapper">
		<div id="logo"></div>
			<ul class="menu">
				<li><a>카드검색/비교</a></li>
				<li><a href="">컨텐츠</a></li>
				<li><a>카드순위</a></li>
				<li><a>로그인</a></li>
			</ul>
	</div>
</header>
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