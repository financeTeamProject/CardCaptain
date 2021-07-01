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
#wrapper {
	max-width: 1500px;
	margin: 0 auto;
}
/*	헤더 영역	*/
/*	내용 영역	*/
#content {
	min-width: 1500px;
	width: 100%;
	height: 830px;
	/* 추후 인기순위 영역 범위 height: 830px; */
}
.side_area { /* 양 사이드 영역(공백) */
	display:inline-block;
	vertical-align: top;
	width: 140px;
	height: inherit;
}
#contentMenu {
	display:inline-block;
	vertical-align: top;
	width: 1200px;
	height: inherit;
	/* background-color: green; */
}
/*	풋터 영역	*/
/* SYOU */
.sub_title {
	margin-top: 80px;
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
#benefit_list{
	padding: 40px 70px 50px 70px;
	text-align:center;
}
#benefit_list span{
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
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$(".searchBtn").on("click",function() {
		var ival = $(this).prop('id');
		$(location).attr('href',ival);
	});
	
	$("#deleteSearchValue").on("click",function() {
		$("#searchBox").val("");
	});
	
	$("#searchAreaBtn").on("click",function() {
		if ( $.trim($("#searchBox").val()) == "" ) {
			alert("검색어를 입력해 주세요.");
			$("#searchBox").val("");
			$("#searchBox").focus();
		} else {
			return false;
		}
	});
});
</script>
</head>
<body>
<div id="wrapper">
<!-- 헤더영역 -->
<!-- content영역 -->
<div id="content">
<div class=side_area></div>
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
			<span id="benefit_list_1">#쇼핑</span>
			<span id="benefit_list_2">#마트/편의점</span>
			<span id="benefit_list_3">#외식</span>
			<span id="benefit_list_4">#영화</span><br/>
			<span id="benefit_list_5">#대중교통</span>
			<span id="benefit_list_6">#통신사</span>
			<span id="benefit_list_7">#카페/제과</span>
			<span id="benefit_list_8">#캐시백</span><br/>
			<span id="benefit_list_9">#주유</span>
			<span id="benefit_list_10">#여행</span>
			<span id="benefit_list_11">#포인트</span>
			<div id="btnArea" class="btn_area">
				<input type="button" value="카드보기" id="subBtn" class="sub_btn" />
			</div>
		</div>
	</div>
	</div>
</div>
<div class=side_area></div>
</div>
<!-- 풋터영역 -->
</div>
</body>
</html>