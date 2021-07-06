<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@font-face {
    font-family: 'GmarketSansMedium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
body {
	background-color: #f5f6f7;
	font-family: 'GmarketSansMedium';
}
input {
	width: 50%;
    height: 40px;
    margin: 1px 15px 1px;
    padding: 0px 20px;
    border: 1px solid lightgray;
    outline: none;
    font-size: 13px;
    border-style: solid;
    border-width: 0 0 1px 0;
    border-color: #0047AB;
    outline: 0;
    text-decoration: none;
    letter-spacing: 2px;
}
.logo_blue {
    width: 400px;
    height: 100px;
	margin: 120px auto;
}
.imgLogo { 
	width: 400px;
    height: 100px;
	background-image: url("/cdcp/resources/images/user/logo_blue.png");
    background-repeat: no-repeat;
    background-size: 230px;
    cursor: pointer;
    margin: auto 20%;
}
.login {
	height: 300px;
	width: 400px;
	background-color: white;
	border-radius: 70px;
	display: block;
	margin: 0 auto;
}
.a1 {
	width: 100%;
	height: 100px;
	display: block;
	border-radius: 70px;
}
.a2 {
	width: 100%;
	height: 100px;
	display: block;
	text-align: center;
}
.a3 {
	width: 100%;
	height: 100px;
	display: block;
	border-radius: 70px;
	text-align: center;
}
.b1 {
	width: 400px;
	height: 43px;
	padding: 30px;
	margin: auto 36%;
}
.imgLogin {
	width: 40px;
	height: 40px;
	background-image: url("/cdcp/resources/images/user/login1.png");
	background-repeat: no-repeat;
	background-size: 50px;
}
.lbut {
	text-align: center;
	position: relative;
	margin-bottom: 10px;
	margin-top: 5px;
	width: 50%;
	height: 40px;
	background: linear-gradient(125deg,#81ecec,#6c5ce7,#81ecec);
	background-position: left;
	background-size: 200%;
	color: white;
 	font-weight: bold;
	border: none;
	cursor: pointer;
	display: inline;
}
.re {
	display: inline-block;
	vertical-align: top;
	font-size: 11px;
}
.new {
	display: inline-block;
	vertical-align: top;
	font-size: 11px;
}
.re:hover, .new:hover {
	cursor: pointer;
}
.error {
    font-size: 11px;
    color: red;
    visibility: hidden;
}
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#searchmem, #join").on("click", function() {
		var ival = $(this).prop("id");
		$(location).attr('href',ival);
	});
});
</script>
</head>
<body>
<div class="logo_blue">
	<div class="imgLogo"></div>
</div>
	<div class="login">
		<div class="a1">
			<div class="b1">
				<div class="imgLogin"></div>
			</div>
		</div>
		<div class="a2">
			<input type="email" placeholder="ID">
			<input type="password" placeholder="PW">
		</div>
		<div class="a3">
			<span class="error" id="masage" aria-live="assertive">아이디 또는 비밀번호가 일치하지 않습니다.</span>
			<input type="button" class="lbut" value="로그인"/><br/>
			<div class="re" id="searchmem">ID/PW 찾기</div>
			<div class="new" id="join">|&nbsp;&nbsp;회원 가입</div>
		</div>
	</div>
</body>
</html>