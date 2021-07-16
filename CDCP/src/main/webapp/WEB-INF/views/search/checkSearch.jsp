<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>맞춤카드 찾기</title>
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
    font-family: 'GmarketSansLight';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansLight.woff') format('woff');
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
#contentMenu {
	padding-top: 50px;
	width: 1200px;
    margin: 0 auto;
}
.sub_title {
	margin-top: 40px;
}
#main {
	width: 1000px;
	height: auto;
	margin: 0 auto;
}
h1 {
	font-size: 38px;
	margin-left: 40px;
	font-family: 'Cafe24Ohsquare';
	display:inline-block;
}
h3 {
	font-size: 18px;
	margin-left: 10px;
	font-family: 'Cafe24Ohsquare';
	display:inline-block;
}
img {
	padding: 35px 55px;
	width: 50px;
	height: 50px;
}
.check_list {
	margin-left: 20px;
	width: 950px;
	height: inherit;
}
.check_opt {
	margin-top: 20px;
	width: 950px;
	height: 120px;
	box-shadow: 3px 3px 3px 3px #868e96;
	display: inline-block;
	background-color: white;
}
.opt_icon {
	display: inline-block;
	width: 160px;
	height: 120px;
}
.sub_check_list {
	display: inline-block;
	vertical-align: 40px;
	width: 750px;
	height: 60px;
}
.sub_check_list > * {
	display: inline-block;
}
.sub_check_list ul {
	padding-inline-start: 0px;
}
.sub_check_list ul li{
	float:left;
	width:auto;
	margin-top: 0px;
	margin-left: 10px;
	list-style: none;
	vertical-align: top;
}
.sub_check_list h3{
	font-size: 18px;
	margin-left: 10px;
	font-family: 'GmarketSansMedium';
}
.btn_area {
	position: relative;
	top: 40px;
	text-align: center;
}
.sub_btn {
	width:120px;
	height:40px;
	color:white;
	border-style:none;
	background-color:#868e96;
	border-radius:5px;
	font-size:18px;
	font-family: 'GmarketSansMedium';
	font-weight: 700;
}
.sub_btn:hover {
    color: black;
    background-color: #F5DF4D;
    cursor: pointer;
}
.choiceList {
	font-family: 'GmarketSansLight';
}
.choiceList:hover {
	color: #0047AB;
    cursor: pointer;
    text-decoration: underline;
}
.choiceListClick {
	color: #0047AB;
    text-decoration: underline;
    font-family: 'GmarketSansLight';
    font-weight: 700;
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
	
	$("#subBtn").on("click", function() {
		var actionVal = "";
		var tags = document.getElementsByClassName("choiceListClick");
		var taglength = tags.length;
		
		for(var i=0; i<taglength; i++) {
			actionVal += "<input type=\"hidden\" name=\"option\" value=\"" + tags[i].innerHTML + "\" /><br/>";
		}
		actionVal += "<input type=\"hidden\" id=\"page\" name=\"page\" value=\"1\" />";
		
		$("#goForm").html(actionVal);
		$("#goForm").attr("action","searchingCardList");
		$("#goForm").submit();
	});
	
	$(".choiceList").on("click", function() {
		$(this).attr("class","choiceListClick");
	});
});
</script>
</head>
<body>
<form action="#" id ="goForm" method="post">
</form>
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
			<h1>맞춤 카드 검색</h1>
		</div>
		<div id="checkList" class="check_list">
				<div id="gndAge_opt" class="check_opt">
					<div id="gndage_icon" class="opt_icon">
						<img src="https://cdn4.iconfinder.com/data/icons/essential-app-2/16/user-avatar-human-admin-login-512.png" />
					</div>
					<div id="gndage_list" class="sub_check_list">
						<h3>성별/나이</h3><br />
						<ul>
							<li class="choiceList">여자</li>
							<li class="choiceList">남자</li>
							<li class="choiceList">20대</li>
							<li class="choiceList">30대</li>
							<li class="choiceList">40대이상</li>
						</ul>
					</div>
				</div>
				<div id="gndAge_opt" class="check_opt">
					<div id="gndage_icon" class="opt_icon">
						<img src="https://cdn1.iconfinder.com/data/icons/material-core/20/credit-card-512.png" />
					</div>
					<div id="gndage_list" class="sub_check_list">
						<h3>카드종류</h3><br />
						<ul>
							<li class="choiceList">신용카드</li>
							<li class="choiceList">체크카드</li>
						</ul>
					</div>
				</div>
				<div id="gndAge_opt" class="check_opt">
					<div id="gndage_icon" class="opt_icon">
						<img src="https://cdn1.iconfinder.com/data/icons/material-core/21/star-512.png" />
					</div>
					<div id="gndage_list" class="sub_check_list">
						<h3>카드타입</h3><br />
						<ul>
							<li class="choiceList">할인</li>
							<li class="choiceList">적립</li>
							<li class="choiceList">마일리지</li>
						</ul>
					</div>
				</div>
				<div id="gndAge_opt" class="check_opt">
					<div id="gndage_icon" class="opt_icon">
						<img src="https://cdn2.iconfinder.com/data/icons/ios-7-icons/50/gift-512.png" />
					</div>
					<div id="gndage_list" class="sub_check_list">
						<h3>카드혜택</h3><br />
						<ul>
							<li class="choiceList">교통</li>
							<li class="choiceList">네이버페이</li>
							<li class="choiceList">배달앱</li>
							<li class="choiceList">백화점</li>
							<li class="choiceList">소셜커머스</li>
							<li class="choiceList">쇼핑</li>
							<li class="choiceList">영화</li><br/>
							<li class="choiceList">자동차/하이패스</li>
							<li class="choiceList">적립</li>
							<li class="choiceList">카카오페이</li>
							<li class="choiceList">카페</li>
							<li class="choiceList">통신</li>
							<li class="choiceList">편의점</li>
							<li class="choiceList">푸드</li>
						</ul>
					</div>
				</div>
		</div>
		<div id="btnArea" class="btn_area">
			<input type="button" value="카드보기" id="subBtn" class="sub_btn" />
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