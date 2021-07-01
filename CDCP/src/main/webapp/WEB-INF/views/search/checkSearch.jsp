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
	vertical-align: top;
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
	font-family: 'GmarketSansLight';
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
	font-family: 'GmarketSansLight';
	font-weight: 700;
}
.sub_check_list ul li, .sub_check_list h3 {
	font-family: 'GmarketSansLight';
}
</style>
</head>
<body>
<div id="wrapper">
<!-- 헤더영역 -->
<!-- 내용 영역 -->	
<div id="content">
<div class=side_area></div>	
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
							<li>여자</li>
							<li>남자</li>
							<li>20대</li>
							<li>30대</li>
							<li>40대이상</li>
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
							<li>신용카드</li>
							<li>체크카드</li>
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
							<li>할인</li>
							<li>적립</li>
							<li>마일리지</li>
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
							<li>쇼핑</li>
							<li>마트/편의점</li>
							<li>외식</li>
							<li>영화</li>
							<li>대중교통</li>
							<li>통신사</li>
							<li>카페/제과</li>
							<li>캐시백</li>
							<li>주유</li>
							<li>여행</li>
							<li>포인트</li>
						</ul>
					</div>
				</div>
		</div>
		<div id="btnArea" class="btn_area">
			<input type="button" value="카드보기" id="subBtn" class="sub_btn" />
		</div>
	</div>
</div>
<div class=side_area></div>
</div>
<!-- 풋터영역 -->
</div>
</body>
</html>