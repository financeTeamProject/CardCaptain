<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>맞춤 카드 찾기</title>
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
.search_type {
	background-color: #F8F9FA;
	display: inline-block;
	padding: 40px 0px 20px 0px;
	border-radius: 10px;
	width: 250px;
	height: 250px;
	margin: auto;
	text-align: center;	
	box-shadow: 0px 0px 18px 6px rgba(107,84,84,0.75);
	-webkit-box-shadow: 0px 0px 18px 6px rgba(107,84,84,0.75);
	-moz-box-shadow: 0px 0px 18px 6px rgba(107,84,84,0.75);
}
.search_type div {
	display: inline-block;
}
.search_type:hover {
	margin-top: -5px;
}
.searchBtn {
    width: 150px;
    height: 40px;
    color: white;
    border-style: none;
    background-color: #0047AB;
    border-radius: 5px;
    font-size: 18px;
    font-family: 'GmarketSansMedium';
    font-weight: 1000;
}
.searchBtn:hover {
    color: black;
    background-color: #F5DF4D;
    cursor: pointer;
}
.search_txt {
	font-family: 'GmarketSansMedium';
	margin-top: 15px;
	margin-bottom: 15px;
}
.search_check_image {
	width: 150px;
	height: 150px;
	background-size: 100%;
	background-image: url("${pageContext.request.contextPath}/resources/images/search/cardCheck.png");
	background-repeat: no-repeat;
}
.search_keyword_image {
	width: 150px;
	height: 150px;
	background-size: 100%;
	background-image: url("${pageContext.request.contextPath}/resources/images/search/keyword.png");
	background-repeat: no-repeat;
}
.search_compare_image {
	width: 150px;
	height: 150px;
	background-size: 100%;
	background-image: url("${pageContext.request.contextPath}/resources/images/search/compareCard.png");
	background-repeat: no-repeat;
}
.search_type_area {
	display: flex;
	margin-left: 350px;
	margin-right: 350px;
	margin-top: 20px;
}
h1{
	font-size: 35px;
	margin-left: 420px;
	font-family: 'Cafe24Ohsquare';
	display:inline-block;
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
<div id="searchArea" class="search_area">
	<input type="text" id="searchBox" class="search_box" placeholder="Search Card.." />
	<input type="button" value="X" id="deleteSearchValue" class="delete_search_value" />
	<input type="button" value="GO" id="searchAreaBtn" class="search_area_btn" />
</div>
<div id="subTitle" class="sub_title">
	<h1>맞춤 카드 검색</h1>
</div>
<div id="searchTypeArea" class="search_type_area">
	<div id="checkSearch" class="search_type">
		<div class="search_check_image" id="searchCheckImage"></div>
		<div class="search_txt">나에게 맞는 카드 찾기</div><br/>
		<div><input type="button" value="이동하기" class="searchBtn" id="checkSearch" /></div>
	</div>
	<div id="keywordSearch" class="search_type">
		<div class="search_keyword_image" id="searchKeywordImage"></div>
		<div class="search_txt">키워드로 검색하기</div><br/>
		<div><input type="button" value="이동하기" class="searchBtn" id="keywordSearch" /></div>
	</div>
	<div id="compareSearch" class="search_type">
		<div class="search_compare_image" id="searchCompareImage"></div>
		<div class="search_txt">카드혜택 비교하기</div><br/>
		<div><input type="button" value="이동하기" class="searchBtn" id="compareSearch" /></div>
	</div>
</div>
</body>
</html>