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
#cardAddBtn {
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
#cardAddBtn:hover {
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
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
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
	
	$(".content_content").on("click", function() {
		$(this).css("background-color","#F2F2F2");
		$(this).siblings().css("background-color","#F5DF4D");
	});
	
	$(".addCardBtn").on("click", function() {
		var num = $(this).prop('id').split("_");
		num = num[1];
		
		$.ajax({
			url:"cardListGet",
			type:"post",
			dataType :"json",
			success : function (res) {
				makePopup("카드추가", res.list, num);
			},
			error: function (request, status, error) {
				console.log(error);
			}
		});
	});
});
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
		<div class="sub_menuBar">
			<!-- middne Ajax Start -->
			<div class="content_content">국민카드</div>
			<div class="content_content">삼성카드</div>
			<div class="content_content">롯데카드</div>
			<div class="content_content">신한카드</div>
			<div class="content_content">우리카드</div>
			<div class="content_content">현대카드</div>
			<div class="content_content">농협카드</div>
			<div class="content_content">하나카드</div>
			<div class="content_content">IBK카드</div>
			<!-- left Ajax End -->
		</div>
		<div class="real_content">
		<div class="left_content">
			<!-- left Ajax Start -->
			<div class="content_content">카드추가</div>
			<div class="content_content">카드삭제</div>
			<!-- left Ajax End -->
		</div>
		<!-- right Ajax Start -->
		<div class="right_content">
			<form action="#" id ="addCardForm" method="post"><br/>
				<table>
				<tr><th colspan="2">OO카드 등록</th></tr>
				<tr>
					<td>카드이름<input type="text" id="cardName" name="cardName" /></td>
					<td>카드사진<input type="text" id="cardImg" name="cardImg" /></td>
				</tr>
				<tr>
					<td>가입경로<input type="text" id="cardUrl" name="cardUrl" /></td>
					<td>간단혜택<input type="text" id="cardSummary" name="cardSummary" /></td>
				</tr>
				<tr>
					<td>카드종류
						<select id="cardKind" name="cardKind">
							<option value="0">체크카드</option>
							<option value="1">신용카드</option>
						</select>
					</td>
					<td>카드타입
						<select id="cardType" name="cardType">
							<option value="0">할인</option>
							<option value="1">적립</option>
							<option value="1">마일리지</option>
						</select>
				</tr>
				<tr>
					<td>메인혜택
						<select id="cardBenefitTop" name="cardBenefitTop">
							<option value="0">교통</option>
							<option value="1">쇼핑</option>
							<option value="2">네이버페이</option>
						</select>
					<td>서브설명<input type="text" id="cardUrlBenefitMid" name="cardBenefitMid" /></td>
				</tr>
				<tr>
					<td>상세혜택<textarea id="cardBenefitDetail" name="cardBenefitDetail"></textarea></td>
					<td>혜택매장<input type="text" id="cardShop" name="cardShop" /></td>
				</tr>
				</table>
			</form>
		<div>
			<input type="button" value="등록하기" id="cardAddBtn"/>
		</div>
		<!-- right Ajax End -->
		</div>
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