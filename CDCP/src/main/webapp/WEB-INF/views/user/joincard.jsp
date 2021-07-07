<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카드캡틴계정</title>
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
	background-color: #F5F6F7;
	margin: 0;
}
.back_main {
	height: 600px;
	width: 1600px;
	display: block;
	margin: 0 auto;
}
.back_top {
	width: 100%;
	height: 130px;
	text-align: center;
	line-height: 130px;
	font-size: 30px;
	color: #0047AB;
	font-family: 'Cafe24Ohsquare';
	text-shadow: 2px 3px 4px gray;
}
.back_middle {
	font-family: 'GmarketSansMedium';
	width: 100%;
	height: 90%;
	background-color: white;
	border: 1px solid #0047ab24;
	letter-spacing: 3px;
}
.contents {
	width: 95%;
	height: 90%;
	margin: 30px auto;
	display: flex;
}
.contents_left {
	width: 50%;
	height: 100%;
	display: inline-block;
	display: flex;
}
.contents_right {
	width: 50%;
	height: 100%;
	display: inline-block;
}
.line {
	width: 33%;
	height: 100%;
	display: block;
}
.card_blank {
	width: 100%;
	height: 33%;
	display: block;
}
.card_logo {
	width: 30%;
	height: 20%;
}
.card_name {
	width: 40%;
	height:20%;
	font-size: 20px;
}
.title {
	width: 100%;
	height: 50px;
	line-height: 50px;
	font-size: 16px;
}
.text {
	width: 100%;
    height: 55px;
	line-height: 55px;
    border-style: solid;
    border-width: 0 0 1px 0;
    border-color: #0047AB;
    padding: 11px 70px 8px 0;
    outline: 0;
    border-radius: 0;
    box-sizing: border-box;
    caret-color: red;
    text-decoration: none;
	color: #0047AB;
	font-size: 14px;
	letter-spacing: 3px;
}
#btn_next {
    display: block;
    width: 20%;
    height: 50px;
    padding: 0;
    border: 0;
    border-radius: 4px;
    font-size: 15px;
    color: white;
    background-color: #0047ab;
    cursor: pointer;
}
#txt {
	height: 45px;
	line-height: 45px;
	letter-spacing: 5px;
	color: #0047AB;
}
#footer {
	min-width: 600px;	
    width: 100%;
  	height: 100px;
	border-radius: 5px;
}
#footerMenu {
    height: inherit;
    margin: 0 auto;
    color: #0047AB;
    text-align: center;
    font-family: GmarketSansMedium;
    font-size: 12px;
}
#select_tel {
    width: 170px;
    height: 43px;
    border-style: solid;
    border-width: 0 0 1px 0;
    border-color: #0047AB;
    outline: 0;
    caret-color: red;
    color: #0047AB;
    letter-spacing: 3px;
}

</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
<div class="back_main">
	<div class="back_top">C&nbsp;A&nbsp;R&nbsp;D&nbsp;&nbsp;&nbsp;C&nbsp;A&nbsp;P&nbsp;T&nbsp;A&nbsp;I&nbsp;N</div>
	<div class="back_middle">
		<div class="contents">
			<div class="contents_left">
				<div class="line">
					<div class="card_blank">
						<div class="card_logo"><img src="/main/webapp/resources/images/user/cardLogo/kb_logo.png" width="100" height="100"></div>
						<div class="card_name">국민카드</div>
					</div>
					<div class="card_blank">
						<div class="card_logo"></div>
						<div class="card_name">삼성카드</div>
					</div>
					<div class="card_blank">
						<div class="card_logo"></div>
						<div class="card_name">롯데카드</div>
					</div>
				</div>
				<div class="line">
					<div class="card_blank">
						<div class="card_logo"></div>
						<div class="card_name">신한카드</div>
					</div>
					<div class="card_blank">
						<div class="card_logo"></div>
						<div class="card_name">우리카드</div>
					</div>
					<div class="card_blank">
						<div class="card_logo"></div>
						<div class="card_name">현대카드</div>
					</div>
				</div>
				<div class="line">
					<div class="card_blank">
						<div class="card_logo"></div>
						<div class="card_name">농협카드</div>
					</div>
					<div class="card_blank">
						<div class="card_logo"></div>
						<div class="card_name">하나카드</div>
					</div>
					<div class="card_blank">
						<div class="card_logo"></div>
						<div class="card_name">기업카드</div>
					</div>
				</div>
			</div>
			<div class="contents_right"></div>
		</div>
	</div>
	<br/>
	<br/>
	<div id="footer">
		<div id="footerMenu">
			<div>서울시 금천구 가산디지털2로 115,509호,811호,1109-1호(가산동,대륭테크노타운3차) 금융조 조장 : 주건정</div>
			<div>Copyright © 2021-2031 CardCaptain All Rights Reserved.</div>
		</div>
	</div>
</div>
</html>