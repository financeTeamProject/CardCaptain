<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	top: 0;
}
	/* 헤더  ~82번째줄*/
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
}	/* header_left 종료 */

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
	/* 헤더 종료 */
	
	/* 풋터  ~127번째줄*/
#footer {
    width: 100%;
  	height: 100px;
	border-style: solid;
    border-width: 2px 0 0 0;
    border-color: #0047AB;
    font-family: 'Cafe24Ohsquare';
	min-width: 1830px;	
}
#footerMenu {
	width: 80%;
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
	/* 풋터 종료 */

	/*슬라이드 화면부분 ~165번째줄 */
*{margin:0;padding:0;}
#content {
	width: 1830px;
    height: 980px;
    margin: 0 auto;
    min-width: 1830px;
}
ul,li{
	list-style:none;
}
.slide{
	height:70%;
	overflow:hidden;
	position:relative;
}
.slide ul{
	width:calc(100% * 4);
	display:flex;transition:1s;
}
.slide li{
	width:calc(100% / 4);
	height:1000px;
}
.slide li:nth-child(1){background:#f5f6f7;}
.slide li:nth-child(2){background:#9565ab3b;}
.slide li:nth-child(3){background:#81ab653b;}
.slide li:nth-child(4){background:#6589ab3b;}
input#pos1,#pos2,#pos3,#pos4 {
	display: none;
}
	/* 라벨 부분 ~184번째줄 */
.slide .bullet{
	position:absolute;
	bottom:20px;
	left:0;
	right:0;
	text-align:center;
	z-index:10;
}
.slide .bullet label{
	width:10px;
	height:10px;
	border-radius:10px;
	border:2px solid #666;
	display:inline-block;
	background:#fff;
	font-size:0;
	transition:0.5s;
	cursor:pointer;
}
/* 메인 1페이지 부분 */
.top {
	height:5%;
	width: 100%;
}
.bottom {
	height: 59%;
	width: 85%;
	background-color: lightgray;
	margin: 0 auto;
	display: flex;
}
.bottom_Left {
	display:inline-block;
	vertical-align: top;
	height: 100%;
	width: 50%;
}
.bottom_right {
	display:inline-block;
	vertical-align: top;
	height: 100%;
	width: 50%
}

/* 슬라이드 조작 */
#pos1:checked ~ ul{margin-left:0;}
#pos2:checked ~ ul{margin-left:-100%;}
#pos3:checked ~ ul{margin-left:-200%;}
#pos4:checked ~ ul{margin-left:-300%;}
/* bullet 조작 */
#pos1:checked ~ .bullet label:nth-child(1),
#pos2:checked ~ .bullet label:nth-child(2),
#pos3:checked ~ .bullet label:nth-child(3),
#pos4:checked ~ .bullet label:nth-child(4){background:#666;}

</style>
</head>
<body>
<div id="header">
	<div id="headerWrap">
	<div id="headerLeft">
		<div id="headerLogo"></div>
		<div class="menu1">카드순위</div>
		<div class="menu1">카드검색/비교</div>
		<div class="menu1">컨텐츠</div>
	</div>
	<div id="headerRight">
		<div id="imgSearch"></div>
		<div id="imgLogin"></div>
		</div>
	</div>
</div>
<div id="content">
	<div class="slide">
	<input type="radio" name="pos" id="pos1" checked>
	<input type="radio" name="pos" id="pos2">
	<input type="radio" name="pos" id="pos3">
	<input type="radio" name="pos" id="pos4">
	<ul>
		<li>
			<div class="top"></div>
			<div class="bottom">
		 		<div class="bottom_Left"></div>
		 		<div class="bottom_right"></div>
			</div>
		</li>
		<li></li>
		<li></li>
		<li></li>
    </ul>
    <p class="bullet">
      <label for="pos1">1</label>
      <label for="pos2">2</label>
      <label for="pos3">3</label>
      <label for="pos4">4</label>
    </p>
  </div>
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