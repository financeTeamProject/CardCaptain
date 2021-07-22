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
	
	padding-top: 30px;
	font-family: 'GmarketSansLight';
	font-size: 25px;
	color: black;
}

#header {
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


#headerWrap {
	width: 1400px;
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

.movie > div, img {
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
	background-image: url("/cdcp/resources/images/contentimg/logo.png");
	background-repeat: no-repeat;
	background-size: 120px;
	width: 120px;
	height: 40px;
	cursor: pointer;
	text-align: center;
	margin-top: 10px;
}
</style>
<script type="text/javascript"
				src="resources/script/jquery/jquery-1.12.4.min.js"></script>
		<script type="text/javascript">
		
		$(document).ready(function() {
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
			
		
		});	 // document ready end
		
		function reloadList() {
			var params = $("#content").serialize();
			
			$.ajax({
				url: "contents",
				type: "post", 
				dataType: "json",
				data: params,	
				success: function(res) {
					drawList(res.list);
				},
				error: function(request, status, error) {
					console.log(error);
				}
			});
		}
		
		function drawList(list){
			var html = "";
			
			for(var c of list){
			html += "<div class=\"content\">";
			html += "<div class=\"content_1\">";
			html += "<div class=\"img_rayout\">" + c.TIP_IMG_URL + "</div>";
			html += "<div class=\"content_content\">";
			html += "<h2>" + c.TIP_TITLE + "</h2>";
			html += "<div class=\"con\">";
			html += "<h1>" + c.TIP_CON + "</h1>";
			html += "</div>";
			html += "<div class=\"Cdate\">" + c.ADD_DATE + /"BY/" + c.TIP_WRITER "</div>";
			html += "</div>";
			html += "</div>";
			html += "</div>";
			}
			$(".list_wrap div").html(html);
		}
</script>		
</head>
<body>
<!-- 헤더영역(메뉴바) -->
<div id="header">
	<div id="headerWrap">
	<div id="headerLeft">
		<div id="headerLogo"></div>
		<div class="menu1" id="ranking">카드순위</div>
		<div class="menu1" id="search">카드검색/비교</div>
		<div class="menu1" id="contents">컨텐츠</div>
	</div>
	<div id="headerRight">
		<div id="imgSearch"></div>
		<div id="imgLogin"></div>
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
			<form action="#" id="content" method="post">   
						<input type="hidden" name="cNo" id="cNo" />
						<input type="hidden" id="page" name="page" value="${page}" />
					</form><br/>
			<div class="list_wrap">
				<div></div>
			</div>
			 <%-- <c:forEach var = "i" begin = "0" end = "2">			
				<div class="content"> <!-- tr -->
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
			</c:forEach>  --%>
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
</body>
</html>