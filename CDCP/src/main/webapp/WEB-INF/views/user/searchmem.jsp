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
	height: 1100px;
	width: 600px;
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
.middle1 {
	width: 80%;
	height: 80%;
	margin: 0 auto;
}
.middle_top {
	width: 100%;
	height: 50px;
	line-height: 50px;
	font-size: 13px;
	text-align: center;
	margin-top: 30px;
}
.searchId {
	width: 100%;
	height: 70x;
	line-height: 70px;
	font-size: 18px;
	font-weight: bold;
	color: #0047ab;
	margin-top: 40px;
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
    caret-color: #f7e317;
    text-decoration: none;
	color: #0047AB;
	font-size: 14px;
	letter-spacing: 3px;
}
#text_num {
	width: 200px;
	height: 45px;
	border-style: solid;
	border-width: 0 0 1px 0;
	border-color: #0047AB;
	padding: 11px 70px 8px 0;
	outline: 0;
	caret-color: #f7e317;
	color: #0047AB;
	box-sizing: border-box;
	font-size: 13px;
	letter-spacing: 4px;
}
#phone_num {
	width: 390px;
	height: 45px;
	border-style: solid;
	border-width: 0 0 1px 0;
	border-color: #0047AB;
	padding: 11px 70px 8px 0;
	outline: 0;
	caret-color: #f7e317;
	color: #0047AB;
	box-sizing: border-box;
	font-size: 13px;
	letter-spacing: 4px;
}
#text_num2 {
	width: 13px;
	height: 40px;
	border-style: solid;
	border-width: 0 0 1px 0;
	border-color: #0047AB;
    outline: 0;
	caret-color: #f7e317;
	color: #0047AB;
	box-sizing: border-box;
	font-size: 13px;
}
#select_num {
	width: 80px;
	height: 45px;
	border-style: solid;
	border-width: 0 0 1px 0;
	border-color: #0047AB;
	padding: 11px 70px 8px 0;
    outline: 0;
	caret-color: #f7e317;
	color: #0047AB;
}
#email {
	width: 200px;
	height: 45px;
	border-style: solid;
	border-width: 0 0 1px 0;
	border-color: #0047AB;
	padding: 11px 70px 8px 0;
	outline: 0;
	caret-color: #f7e317;
	color: #0047AB;
	box-sizing: border-box;
	font-size: 13px;
	letter-spacing: 4px;
}
#select_email {
	width: 200px;
	height: 45px;
	border-style: solid;
	border-width: 0 0 1px 0;
	border-color: #0047AB;
	padding: 11px 70px 8px 0;
    outline: 0;
	caret-color: #f7e317;
	color: #0047AB;
	letter-spacing: 3px;
    font-size: inherit;
}
#btn_next {
    display: block;
    width: 100%;
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
</style>
</head>
<body>
<form action="#" id="checkEmailForm">
	<input type="hidden" name="checkEmail" id="checkEmail" value="" />
</form>
<div class="back_main">
	<div class="back_top">C&nbsp;A&nbsp;R&nbsp;D&nbsp;&nbsp;&nbsp;C&nbsp;A&nbsp;P&nbsp;T&nbsp;A&nbsp;I&nbsp;N</div>
	<div class="back_middle">
		<div class="middle1">
		<div class="middle_top">ID/PW를 찾아주세요.</div>
		<div class="searchId">*아이디 찾기</div>
		<div class="title">전화번호</div>
		<select name="+82" id="select_num"> 
			<option value="+82   대한민국"></option>
		</select>
		<input type="text" id="phone_num" placeholder="전화번호" onkeyup="SetNum(this);"/>
		<div class="title">생일/성별</div>
		<div class="title">
         	<input type="text" id="text_num" placeholder="예) 19940507" maxlength="8" onkeyup="SetNum(this);"/>
			<input type="text" id="text_num2" maxlength="1" onkeyup="SetNum(this);"/>
			<span id="txt">*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*</span>
		</div>
		<div class="title">이메일</div>
		<div class="title">
			<input type="text" id="email" placeholder="이메일" />&nbsp;&nbsp;&nbsp;@&nbsp;&nbsp;&nbsp;
			<select name="+82" id="select_email"> 
				<option value="naver.com">naver.com</option>
				<option value="google">google</option>
			</select>
		</div>
		<div class="searchId">*비밀번호 찾기</div>
		<div class="title">아이디</div>
		<input type="text" class="text" placeholder="아이디 입력" id="mem_id" />
		<div class="title">이메일</div>
		<div class="title">
			<input type="text" id="email" placeholder="이메일" />&nbsp;&nbsp;&nbsp;@&nbsp;&nbsp;&nbsp;
			<select name="+82" id="select_email"> 
				<option value="naver.com">naver.com</option>
				<option value="google">google</option>
			</select>
			<input type="button" id="checkingEmail" value="이메일인증" />
		</div>
		<br/>
		<br/>
		<br/>
		<br/>
		<input type="button" value="다음" id="btn_next"></div>
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