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
#wrapper {
	max-width: 1500px;
	margin: 0 auto;
}
/*	헤더 영역	*/
/*	내용 영역	*/
#content {
	min-width: 1500px;
	width: 100%;
	height: 1100px;
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
}
.btn_list {
	text-align: center;
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
#detail_btn {
	text-align:center;
	display:inline-block;
}
.detail_submit {
	display:inline-block;
	margin:0px 100px 0px 100px;
}
.detail_submit input {
	display:inline-block;
	width:115px;
	height:30px;
	border-style:none;
	background-color:#868e96;
	border-radius:5px;
	font-family: GmarketSansMedium;
}
.detail_submit input:hover {
	background-color:#FFD400;
	color:#282c37;
}
.sub_title h1 {
	font-family: Cafe24Ohsquare;
	font-size: 35px;
	margin-top: 70px;
	margin-bottom: -10px;
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
			<h1>카드 상세 비교</h1>
		</div>
		<div class="card_image_list">
		<div class="card_list_img">
			<i style='font-size:24px;position:relative;margin-left:260px;margin-bottom:5px;' class='fa'>&#xf2ed;</i>
			<img src="https://card-search.naver.com/resource/images/card/KB/1692/KB_1692_hor.png">
			<h4>KB국민 청춘대로 톡톡카드</h4>
			<div class="btn_list">
				<input type="button" value="카드변경" class="sub_btn" style="margin-right:5px;" />
				<input type="button" value="상세보기" class="sub_btn" />
			</div>
		</div>
		<div class="card_list_img">
			<i style='font-size:24px;position:relative;margin-left:260px;margin-bottom:5px;' class='fa'>&#xf2ed;</i>
			<img src="https://card-search.naver.com/resource/images/card/SS/1530/SS_1530_hor.png">
			<h4>삼성카드 taptap O</h4>
			<div class="btn_list">
				<input type="button" value="카드변경" class="sub_btn" style="margin-right:5px;" />
				<input type="button" value="상세보기" class="sub_btn" />
			</div>
		</div>
		<div class="card_list_img">
			<i style='font-size:24px;position:relative;margin-left:260px;margin-bottom:5px;' class='fa'>&#xf2ed;</i>
			<img src="https://card-search.naver.com/resource/images/card/SS/223/SS_223_hor.png">
			<h4>삼성카드 4</h4>
			<div class="btn_list">
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
			<tr style="border-bottom:hidden;background-color:#F5F6F7;">
				<td>
					<div class="detail_submit">
						<input type="button" value="상세혜택보기" />
					</div>
				</td>
				<td>
					<div class="detail_submit">
						<input type="button" value="상세혜택보기" />
					</div>
				</td>
				<td>
					<div class="detail_submit">
						<input type="button" value="상세혜택보기" />
					</div>
				</td>
			</tr>
		</table>
	</div>
</div>
</div>
<div class=side_area></div>
</div>
<!-- 풋터영역 -->
</div>
</body>
</html>