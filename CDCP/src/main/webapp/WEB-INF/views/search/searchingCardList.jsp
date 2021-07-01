<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
#wrapper {
	max-width: 1500px;
	margin: 0 auto;
}
/* --- SYOU --- */	
#content {
	min-width: 1500px;
	width: 100%;
	height: 750px;
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
}
#main {
	width: 1000px;
	height: auto;
	margin: 0 auto;
}
/* SYOU */
.keyword {
	width:1050px;
	height:50px;
	margin-bottom: 20px;
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
.cardList_etc h4 {
	vertical-align:top;
	font-size: 14px;
	font-family: 'Cafe24Ohsquare';
	margin-block-start: 0em;
    margin-block-end: 0em;
}
.cardList_etc :nth-child(1) {
	padding-top: 10px;
}
.cardList_etc :nth-child(2) {
	padding-top: 80px;
}
/*	풋터 영역	*/
</style>
</head>
<body>
<div id="wrapper">
<!-- 헤더영역 -->
<!-- 내용영역 -->
<div id="content">
	<div class=side_area></div>
	<div id="contentMenu">
	<div id="main" class="main">
 		<div id="keyword" class="keyword">
			<ul><li>#여자</li><li>#20대</li><li>#체크카드</li><li>#할인</li><li>#마트/편의점</li><li>#외식</li></ul>
		</div>
	<div id="srchCardList"  class="srch_card_list">
		<div id="cardList_1"  class="card_list">
			<img src="https://card-search.naver.com/resource/images/card/KB/1692/KB_1692_hor.png">
			<div id="cardList_1_txt"  class="card_list_txt">
				<h3>KB국민 청춘대로 톡톡카드</h3>
				<ul>
					<li>카페/베이커리</li>
					<li>외식</li>
					<li>연회비지원</li>
					<li>통신</li>
					<li>대중교통</li>
				</ul>
			</div>
			<div id="cardList_1_etc" class="cardList_etc">
				<h4><i class='fa fa-plus'></i>&nbsp;비교함 담기</h4>
				<h4><i class='fa fa-angle-double-right'></i>&nbsp;상세보기</h4>
			</div>
		</div>		
		<div id="cardList_2"  class="card_list">
			<img src="https://card-search.naver.com/resource/images/card/SS/223/SS_223_hor.png">
			<div id="cardList_1_txt"  class="card_list_txt">
				<h3>삼성카드 4</h3>
				<ul>
					<li>쇼핑</li>
					<li>영화</li>
					<li>언제나할인</li>
					<li>연회비지원</li>
					<li>카페/베이커리</li>
				</ul>
			</div>
			<div id="cardList_1_etc" class="cardList_etc">
				<h4><i class='fa fa-plus'></i>&nbsp;비교함 담기</h4>
				<h4><i class='fa fa-angle-double-right'></i>&nbsp;상세보기</h4>
			</div>
		</div>
		<div id="cardList_3"  class="card_list">
			<img src="https://card-search.naver.com/resource/images/card/SS/1530/SS_1530_hor.png">
			<div id="cardList_1_txt"  class="card_list_txt">
				<h3>삼성카드 taptap O</h3>
				<ul>
					<li>포인트/캐시백</li>
					<li>통신</li>
					<li>대중교통</li>
					<li>카페/베이커리</li>
					<li>쇼핑</li>
				</ul>
			</div>
			<div id="cardList_1_etc" class="cardList_etc">
				<h4><i class='fa fa-plus'></i>&nbsp;비교함 담기</h4>
				<h4><i class='fa fa-angle-double-right'></i>&nbsp;상세보기</h4>
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