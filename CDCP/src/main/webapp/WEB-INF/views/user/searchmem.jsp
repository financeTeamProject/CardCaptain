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
	height: 150px;
	line-height: 150px;
	font-size: 22px;
}
.title {
	width: 100%;
	height: 45px;
	line-height: 45px;
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
/* #footerLogo {
    display: inline-block;
    vertical-align: top;
    background-image: url("logo.png");
    background-repeat: no-repeat;
    background-size: 120px;
    width: 120px;
    height: 40px;
    cursor: pointer;
    text-align: center;
    margin-top: 5px;
} */
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	var regex_kor = (/[^가-힣]$/);
	var regex_spe = (/[~!@#$%^&*()_+|<>?:{}]/);
	var regex_num = (/[^0-9]/g);
	var regex_eng = (/^[a-zA-Z]*$/);
	
	//숫자만 입력
	$("#phone_num").keydown(function() {
		if (!regex_num.test($(this).val())) {
			alert("숫자만 입력가능합니다.");
		}
	});
	
	//회원가입 필터링	
	$("#btn_next").on("click",function() {
		var memId = $.trim($("#mem_id").val());
		var memPw = $.trim($("#mem_password").val());
		var memRePw = $.trim($("#mem_rePassword").val());
		var memNick = $.trim($("#mem_nickname").val());
		var memPhone1 = $("select_num option:selected").val();
		var memPhone2 = $.trim($("#phone_num").val());
		var memRRN = $.trim($("#text_num").val());
		var memGender = $.trim($("#text_num2").val());
		var memEmail = $.trim($("#email").val());
		var memEmailOpt = $("#select_email option:selected").val();
		var chk_num = memPw.search(/[0-9]/g);
	    var chk_eng = memPw.search(/[a-z]/ig);
		
		if(memId == "") {
			alert("아이디를 입력하세요");
			$("#mem_id").focus();
		} else if (!regex_kor.test(memId)) {
			alert("아이디는 한글로 만들 수 없습니다.");
			$("#mem_id").val('');
			$("#mem_id").focus();
		} else if(memPw == "") {
			alert("비밀번호를 입력하세요");
			$("#mem_password").focus();
		} else if(chk_num < 0 || chk_eng < 0) {
			alert("비밀번호는 영문과 숫자를 혼용해 주세요");
			$("#mem_password").focus();
		} else if (memRePw == "") {
			alert("비밀번호를 확인해 주세요");
			$("#mem_rePassword").focus();
		} else if (memPw.length < 8 || memPw.length > 32) {
			alert("비밀번호는 8자리 이상 32자리 이하만 가능합니다.");
			$("#mem_password").val('');
			$("#mem_rePassword").val('');
			$("#mem_password").focus();
		} else if (memPw != memRePw) {
			alert("비밀번호를 다시 확인해 주세요");
			$("#mem_password").focus();
		} else if (memNick == "") {
			alert("닉네임을 입력해 주세요");
			$("#mem_nickname").focus();
		} else if (memPhone2.length < 8) {
			alert("핸드폰번호 8자리를 입력해 주세요");
			$("#phone_num").focus();
		} else if (memRRN.length < 6) {
			alert("주민번호 앞의 6자리를 입력해 주세요");
			$("#text_num").focus();
		} else if (memGender == "") {
			alert("주민번호 뒤의 1자리를 입력해 주세요");
			$("#text_num2").focus();
		} else if (memEmail == "" && memEmailOpt == "") {
			alert("이메일을 입력해 주세요.");
		}
	});
});

function SetNum(obj) {
	var keyVal = event.keyCode;
	
	if((keyVal >= 48) && (keyVal <= 57)) {
		return true;
	} else {
		alert("숫자만 입력가능합니다.");
		return false;
	}
}
</script>
</head>
<body>
<form action="#" id="checkEmailForm">
	<input type="hidden" name="checkEmail" id="checkEmail" value="" />
</form>
<div class="back_main">
	<div class="back_top">C&nbsp;A&nbsp;R&nbsp;D&nbsp;&nbsp;&nbsp;C&nbsp;A&nbsp;P&nbsp;T&nbsp;A&nbsp;I&nbsp;N</div>
	<div class="back_middle">
		<div class="middle1">
		<div class="middle_top">회원가입 정보를 입력해주세요.</div>
		<div class="title">아이디</div>
		<input type="text" class="text" placeholder="아이디 입력" id="mem_id" />
		<div class="title">비밀번호</div>
		<strong><input type="password" class="text" placeholder="비밀번호(8~32자리)" id="mem_password" /></strong>
		<input type="password" class="text" placeholder="비밀번호 재입력" id="mem_rePassword" />
		<div class="title">닉네임</div>
		<input type="text" class="text" placeholder="닉네임을 입력해 주세요." id="mem_nickname" />
		<div class="title">전화번호</div>
		<select name="+82" id="select_num"> 
			<option value="+82   대한민국"></option>
		</select>
		<input type="text" id="phone_num" placeholder="전화번호" onkeyup="SetNum(this);"/>
		<div class="title">생일/성별</div>
		<div class="title">
			<input type="text" id="text_num" placeholder="주민번호 앞자리" maxlength="6" onkeyup="SetNum(this);"/>&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;
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
			<input type="button" id="checkingEmail" value="이메일인증" />
		</div>
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