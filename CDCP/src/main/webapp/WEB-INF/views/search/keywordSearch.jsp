<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>키워드로 검색</title>
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
    height: 670px;/* content에 맞게 줄임 - SYOU */
    margin: 0 auto;
}
/* SYOU */
.sub_title {
	margin-top: 100px;
	margin-bottom: 30px;
}
#main {
	width: 1200px;
	margin: 0 auto;
}
h1{
	font-size: 38px;
	margin-left: 50px;
	font-family: 'Cafe24Ohsquare';
	display:inline-block;
}
h3{
	font-size: 18px;
	margin-left: 10px;
	font-family: 'GmarketSansLight';
	display:inline-block;
}
.choiceList {
	font-family: 'GmarketSansLight';
}
#bene {
	width:100%;
	height:400px;
	margin:0px auto;
	background-color:white;
	box-shadow:3px 3px 3px 3px #868e96;
	margin-bottom:20px;
	padding-top:40px;
	background-color: white;
}
#bene_list{
	margin-left:calc(50% - 130px);
}
#search_box {
	width:300px;
	height:30px;
}
#search_btn {
	width:35px;
	height:35px;
	border-style:none;
	background-image: url('https://image.flaticon.com/icons/png/128/622/622669.png');
	background-repeat:no-repeat;
	background-size:30px;
	vertical-align:top;
	padding:10px;
}
#benefit_list {
	padding: 40px 70px 50px 70px;
	text-align:center;
}
.choiceList {
	font-size:25px;
	width:auto;
	height:auto;
	padding:7px 20px 7px 20px;
	text-decoration:inherit;
	line-height:70px;
	background-color:#F2C3A6;
	margin-right:15px;
	border-radius:45px;
	color:white;
	font-family: 'GmarketSansMedium';
}
#benefit_list span:hover, #subBtn:hover {
	background-color:#FFD400;
	color:#282c37;
	cursor: pointer;
}
.btn_area {
	position: relative;
	top: 50px;
	text-align: center;
}
.sub_btn {
	width:120px;
	height:40px;
	color:#202020;
	border-style:none;
	background-color:#C3C3C3;
	border-radius:5px;
	font-size:20px;
	font-family: 'GmarketSansMedium';
	font-weight: 1000;
}
.search_area {
	text-align: center;
	font-family: 'GmarketSansMedium';
	line-height: 25px;
}
.search_box {
	background-color: #F2F2F2;
	height: 40px;
	width: 550px;
	border: none;
	font-family: 'GmarketSansMedium';
	border-radius: 2px;
	box-shadow: 2px 2px 2px 0px #CCC;
}
.delete_search_value {
	height: 40px;
	width: 40px;
	border: none;
	font-family: 'GmarketSansBold';
	font-weight: 1000;
	font-size: 15px;
	cursor: pointer;
	border-radius: 2px;
	margin-right: -5px;
}
.search_area_btn {
	height: 40px;
	width: 40px;
	border: none;
	font-family: 'GmarketSansBold';
	font-weight: 1000;
	font-size: 15px;
	border-radius: 2px;
	cursor: pointer;
}
.search_area input[type=button]:hover {
	background-color: #0047AB;
	color: white;
}
.choiceListClick {
	font-size:25px;
	width:auto;
	height:auto;
	padding:7px 20px 7px 20px;
	text-decoration:inherit;
	line-height:70px;
	background-color:#0047AB;
	margin-right:15px;
	border-radius:45px;
	color:white;
	font-family: 'GmarketSansMedium';
}
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	//옵션클릭 시 클래스 변경
	$(".choiceList").on("click", function() {
		$("#searchType").val("keywordSearch");
		$(this).attr("class","choiceListClick");
	});
	
	//옵션 선택 - Controller
	$("#subBtn").on("click", function() {
		var actionVal = "";
		var tags = document.getElementsByClassName("choiceListClick");
		var taglength = tags.length;
		
		if(taglength <= 0) {
			alert("옵션을 선택해 주세요");
		} else {
			for(var i=0; i<taglength; i++) {
				actionVal += "<input type=\"hidden\" name=\"option\" value=\"" + tags[i].innerHTML + "\" /><br/>";
			}
			actionVal += "<input type=\"hidden\" name=\"searchType\" value=\"optionClick\" /><br/>";
			
			$("#goForm").html(actionVal);
			$("#goForm").attr("action","searchingCardList");
			$("#goForm").submit();
		}
	});
	
	//값 초기화
	$("#deleteSearchValue").on("click",function() {
		$("#searchBox").val("");
	});
	
	//직접 검색 - Controller
	$("#searchAreaBtn").on("click",function() {
		if ($.trim($("#searchBox").val()) == "") {
			alert("검색어를 입력해 주세요.");
			$("#searchBox").val("");
			$("#searchBox").focus();
		} else {
			var actionVal = "<input type=\"hidden\" name=\"searchType\" value=\"keyword\" /><br/>";
			actionVal += "<input type=\"hidden\" name=\"option\" value=\"" + $.trim($("#searchBox").val()) + "\" /><br/>";
			
			$("#goForm").html(actionVal);
			$("#goForm").attr("action","searchingCardList");
			$("#goForm").submit();
		}
	});
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
<!-- content영역 -->
<form action="#" id ="goForm" method="post">
</form>
<div id="content">
<div id="contentMenu">
	<div id="main">
		<div id="subTitle" class="sub_title">
			<h1>키워드로 검색</h1>
		</div>
	<div id="bene">
		<div id="searchArea" class="search_area">
			<input type="text" id="searchBox" class="search_box" placeholder="Search Card.." />
			<input type="button" value="X" id="deleteSearchValue" class="delete_search_value" />
			<input type="button" value="GO" id="searchAreaBtn" class="search_area_btn" />
		</div>
		<div id="benefit_list">
			<span id="benefit_list_1" class="choiceList">교통</span>
			<span id="benefit_list_2" class="choiceList">네이버페이</span>
			<span id="benefit_list_3" class="choiceList">배달앱</span>
			<span id="benefit_list_4" class="choiceList">백화점</span><br/>
			<span id="benefit_list_5" class="choiceList">소셜커머스</span>
			<span id="benefit_list_6" class="choiceList">쇼핑</span>
			<span id="benefit_list_7" class="choiceList">영화</span>
			<span id="benefit_list_8" class="choiceList">자동차/하이패스</span>
			<span id="benefit_list_9" class="choiceList">적립</span><br/>
			<span id="benefit_list_10" class="choiceList">카카오페이</span>
			<span id="benefit_list_11" class="choiceList">카페</span>
			<span id="benefit_list_12" class="choiceList">통신</span>
			<span id="benefit_list_13" class="choiceList">편의점</span>
			<span id="benefit_list_14" class="choiceList">푸드</span>
			<div id="btnArea" class="btn_area">
				<input type="button" value="카드보기" id="subBtn" class="sub_btn" />
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