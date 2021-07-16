<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>카드 비교하기</title>
<style type="text/css">
body{
	margin: 0;
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
/* 헤더 시작 by KJ */
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
/* 헤더 종료 by KJ */
/* 풋터 시작 by KJ */
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
/* 풋터 종료 by KJ */
/* 내용 시작 by KJ */
* {
	margin:0;
	padding:0;
}
#content {
	width: 1600px;
    height: 900px;/* content에 맞게 줄임 - SYOU */
    margin: 0 auto;
}		
/* SYOU */
.sub_title h1 {
	font-family: Cafe24Ohsquare;
	font-size: 35px;
	margin-top: 70px;
	margin-bottom: 30px;
}
#main {
	width: 1000px;
	height: auto;
	margin: 0 auto;
}
#div_1 {
	width: 1200px;
	margin:0px auto;
}
.card_image_list {
	position: relative;
}
.card_list_img img{
	display: inline-block;
	width: 300px;
	height: 170px;
}
.card_list_img {
	display: inline-block;
	position: relative;
	width: 30%;
	margin-left: 20px;
}
.card_list_img h4 {
	font-size:16px;
	font-family: GmarketSansMedium;
	margin-top: 20px;
	text-align: center;
}
.btn_list {
	text-align: center;
	margin-top: 20px;
}
.sub_btn {
	width: 70px;
	height: 25px;
	color: white;
	border-style: none;
	background-color: #868e96;
	border-radius: 5px;
	font-size: 12px;
	font-family: GmarketSansMedium;
}
.sub_btn:hover {
	background-color: #FFD400;
	color: #282c37;
	cursor: pointer;
}
#benefit_table {
	width: 1000px;
	height: 700px;
	margin: 0px auto;
}
#benefit_table td {
	font-family: GmarketSansMedium;
}
table {
	margin-top:50px;
	border-left: #F5F6F7;
	border-right: #F5F6F7;
}
td {
	font-size:16px;
	height: 50px;
}
table tr:nth-child(1) {
	background-color: #CCC;
	color: black;
}
table tr:nth-child(even) {
	background-color: #FFFFFF;
}
#card_list_img_1,#card_list_img_2,#card_list_img_3 {
	display: inline-block;
    vertical-align: top;
    background-image: url("resources/images/search/delete_icon.PNG");
    background-repeat: no-repeat;
    background-size: 25px;
    width: 30px;
    height: 30px;
    margin-left: 260px;
}
#card_list_img_1:hover,#card_list_img_2:hover,#card_list_img_3:hover {
	cursor: pointer;
}
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery/jquery-1.12.4.min.js"></script>
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
});
</script>
</head>
<body>
<!-- Start Header by KJ -->
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
<!-- End Header by KJ -->
<!-- 내용 영역 -->	
<div id="content">
<div id="contentMenu">
	<div id="main">
		<div id="subTitle" class="sub_title">
			<h1>카드 상세 비교</h1>
		</div>
		<div class="card_image_list">
		<div class="card_list_img" id="card_list_area_1">
			<div id="card_list_img_1"></div>
			<img src="https://card-search.naver.com/resource/images/card/KB/1692/KB_1692_hor.png">
			<h4 id="card_list_name_1">KB국민 청춘대로 톡톡카드</h4>
			<div class="btn_list" id="card_list_btn_1">
				<input type="button" value="카드변경" class="sub_btn" style="margin-right:5px;" />
				<input type="button" value="상세보기" class="sub_btn" />
			</div>
		</div>
		<div class="card_list_img" id="card_list_area_2">
			<div id="card_list_img_2"></div>
			<img src="https://card-search.naver.com/resource/images/card/SS/1530/SS_1530_hor.png">
			<h4 id="card_list_name_2">삼성카드 taptap O</h4>
			<div class="btn_list" id="card_list_btn_2">
				<input type="button" value="카드변경" class="sub_btn" style="margin-right:5px;" />
				<input type="button" value="상세보기" class="sub_btn" />
			</div>
		</div>
		<div class="card_list_img" id="card_list_area_3">
			<div id="card_list_img_3"></div>
			<img src="https://card-search.naver.com/resource/images/card/SS/223/SS_223_hor.png">
			<h4 id="card_list_name_3">삼성카드 4</h4>
			<div class="btn_list" id="card_list_btn_3">
				<input type="button" value="카드변경" class="sub_btn" style="margin-right:5px;" />
				<input type="button" value="상세보기" class="sub_btn" />
			</div>
		</div>
		</div>
	<div id="benefit_table">
		<table border="1" style="border-style:solid;width:100%;height:500px;border-collapse:collapse;text-align:center;">
			<colgroup>
				<col width="30%;"/>
				<col width="30%;"/>
				<col width="30%;"/>
			</colgroup>
			<tr>
				<td colspan="3" style="font-size:35px;font-weight:700;height:70px;">상세혜택비교</td>
			</tr>
			<tr>
				<td colspan="3" style="font-size:25px;">카드 종류</td>
			</tr>
			<tr>
				<td>신용카드</td>
				<td>체크카드</td>
				<td>체크카드</td>
			</tr>
			<tr>
				<td colspan="3" style="font-size:25px;">카드 타입</td>
			</tr>
			<tr>
				<td>할인전용</td>
				<td>적립전용</td>
				<td>할인전용</td>
			</tr>
			<tr>
				<td colspan="3" style="font-size:25px;">카드 혜택</td>
			</tr>
			<tr>
				<td>마트/편의점, 통신사, 쇼핑</td>
				<td>통신사, 쇼핑</td>
				<td>마일리지, 외식, 카페/베이커리</td>
			</tr>
		</table>
	</div>
</div>
</div>
</div>
<br/>
<br/>
<br/>
<br/>
<br/>
<!-- Start Footer by KJ -->
<div id="footer">
	<div id="footerMenu">
		<div id="footerLogo"></div>
		<div>서울시 금천구 가산디지털2로 115,509호,811호,1109-1호(가산동,대륭테크노타운3차) 금융조 조장 : 주건정</div>
		<div>Copyright © 2021-2031 CardCaptain All Rights Reserved.</div>
	</div>
</div>
<!-- End Footer by KJ -->
</body>
</html>