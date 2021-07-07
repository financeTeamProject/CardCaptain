<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>카드 상세보기</title>
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

@font-face {
    font-family: 'GmarketSansLight';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansLight.woff') format('woff');
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
    height: 800px;/* content에 맞게 줄임 - SYOU */
    margin: 0 auto;
}		
/* SYOU */
#contentMenu {
	padding-top: 70px;
	width: 1200px;
    margin: 0 auto;
}
#main {
	width: 1000px;
	height: auto;
	margin: 0 auto;
}
.choiceList {
	font-family: 'GmarketSansLight';
	margin-top: 20px;
}
.choiceList:hover {
	color: #0047AB;
    cursor: pointer;
    text-decoration:underline;
}
.keyword {
	width:1050px;
	height:50px;
	margin-bottom: 70px;
}
.keyword ul {
	padding-inline-start: 0px;
}
.keyword ul li{
	float:left;
	margin-left: 40px;
	font-size: 30px;
	font-weight: 1000;
	font-style: italic;
	list-style: none;
}
.keyword ul li:hover{
	text-decoration:underline;
}
.card_list {
	width: 1050px;
	height: 170px;
	margin-bottom: 15px;	
	border-radius:12px;
	box-shadow: 1px 1px 3px 3px #868e96;
	background-color: white;
}
.card_list > * {
	display: inline-block;
}
.card_list img {
	height: 170px;
	width: 270px;
}
.card_list_txt {
	vertical-align: top;
	width: 650px;
	height: 170px;
}
.card_list_txt h3 {
	display: inline-block;
}
.srch_card_list {
	width: 1050px;
	height: auto;
}
.card_list h3 {
	width:780px;
	font-size: 20px;
	font-family: 'Cafe24Ohsquare';
	margin-left: 20px;
	margin-top: 50px;
}
.card_list_txt ul {
	padding-inline-start: 0px;
}
.card_list_txt ul li {
	float:left;
	margin-left: 30px;
	list-style: none;
}
.cardList_etc {
	width: 100px;
	height: 170px;
	vertical-align: top;
	display: inline-block;
}
.side_Btn {
	vertical-align:top;
	font-size: 14px;
	font-family: 'Cafe24Ohsquare';
	margin-block-start: 0em;
    margin-block-end: 0em;
}
.side_Btn:hover {
	color: #0047AB;
	cursor: pointer;
	text-decoration:underline;
}
.cardList_etc :nth-child(1) {
	padding-top: 10px;
}
.cardList_etc :nth-child(2) {
	padding-top: 80px;
}
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
});
</script>
</head>
<body>
<!-- Start Header by KJ -->
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
<!-- End Header by KJ -->
<!-- 내용 영역 -->	
<div id="content">
	<div id="contentMenu">
	<div id="main" class="main">
 		<div id="keyword" class="keyword">
 			<ul>
 				<c:forEach var="i" begin="0" end="${paramCnt}" step="1" varStatus="status">
					<li><c:out value="$"/><c:out value="{option_"/><c:out value="${status.index}"/><c:out value="}"/></li>
 				</c:forEach>
 			</ul>
		</div>
	<div id="srchCardList" class="srch_card_list">
		<div id="cardList_1" class="card_list">
			<img src="resources/images/ranking/card/check/we/we_joungsuck_card.png">
			<div id="cardList_1_txt"  class="card_list_txt">
				<h3>KB국민 청춘대로 톡톡카드</h3>
				<ul>
					<li class="choiceList">카페/베이커리</li>
					<li class="choiceList">외식</li>
					<li class="choiceList">연회비지원</li>
					<li class="choiceList">통신</li>
					<li class="choiceList">대중교통</li>
				</ul>
			</div>
			<div id="cardList_1_etc" class="cardList_etc">
				<h4 class="side_Btn"><i class='fa fa-plus'></i>&nbsp;비교함 담기</h4>
				<h4 class="side_Btn"><i class='fa fa-angle-double-right'></i>&nbsp;상세보기</h4>
			</div>
		</div>		
		<div id="cardList_2"  class="card_list">
			<img src="resources/images/ranking/card/check/hana/hana_1q_daily+_card.png">
			<div id="cardList_1_txt"  class="card_list_txt">
				<h3>삼성카드 4</h3>
				<ul>
					<li class="choiceList">쇼핑</li>
					<li class="choiceList">영화</li>
					<li class="choiceList">언제나할인</li>
					<li class="choiceList">연회비지원</li>
					<li class="choiceList">카페/베이커리</li>
				</ul>
			</div>
			<div id="cardList_1_etc" class="cardList_etc">
				<h4 class="side_Btn"><i class='fa fa-plus'></i>&nbsp;비교함 담기</h4>
				<h4 class="side_Btn"><i class='fa fa-angle-double-right'></i>&nbsp;상세보기</h4>
			</div>
		</div>
		<div id="cardList_3"  class="card_list">
			<img src="resources/images/ranking/card/check/kb/kb_bonus_checkcard.png">
			<div id="cardList_1_txt"  class="card_list_txt">
				<h3>삼성카드 taptap O</h3>
				<ul>
					<li class="choiceList">포인트/캐시백</li>
					<li class="choiceList">통신</li>
					<li class="choiceList">대중교통</li>
					<li class="choiceList">카페/베이커리</li>
					<li class="choiceList">쇼핑</li>
				</ul>
			</div>
			<div id="cardList_1_etc" class="cardList_etc">
				<h4 class="side_Btn"><i class='fa fa-plus'></i>&nbsp;비교함 담기</h4>
				<h4 class="side_Btn"><i class='fa fa-angle-double-right'></i>&nbsp;상세보기</h4>
			</div>
		</div>
	</div>
	</div>
	</div>
</div>
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