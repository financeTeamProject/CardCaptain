<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
img {
	display: block;
	margin: 0 auto;
}
input {
	width: 50%;
    height: 40px;
    margin: 1px 15px 1px;
    padding: 0px 20px;
    border: 1px solid lightgray;
    outline: none;
}
#logo_blue{
	margin: 120px auto;
}
	.login {
		height: 300px;
		width: 400px;
		background-color: #f5f6f7;
		border-radius: 70px;
		display: block;
		margin: 0 auto;
	}
	.login > .a1 {
		width: 400px;
		height: 100px;
		background-color: #f5f6f7;
		display: block;
		border-radius: 70px;
	    margin-top: 10px;
	}
	.login > .a2 {
		width: 400px;
		height: 100px;
		background-color: #f5f6f7;
		display: block;
		text-align: center;
	}
	.login > .a3 {
		width: 400px;
		height: 100px;
		background-color: #f5f6f7;
		display: block;
  		border-radius: 70px;
  		text-align: center;
	}
	.b1 {
		padding-top: 30px;
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
	.error {
		visibility: hidden;
	    font-size: 11px;
	    line-height: 14px;
	    color: red;
	}
	
</style>
</head>
<body>

<img src="logo_blue.png" id="logo_blue" width="400px" height="100px">	
	<div class="login">
		<div class="a1">
			<div class="b1"><img height="43px" src="login1.png"></div>
		</div>
		<div class="a2">
			<input type="email" placeholder="ID">
			<input type="password" placeholder="PW">
		</div>
		<div class="a3">
			<span class="error" id="masage" aria-live="assertive">아이디 또는 비밀번호가 일치하지 않습니다.</span>
			<input type="button" class="lbut" value="로그인" style="font-size: 12" /><br/>
			<div class="re"><a href="http://localhost:8090/TestWeb/project/main/login/id-pw.html" style="text-decoration:none" target="_blank">ID/PW 찾기  </a></div>
			<div class="new"><a href="http://localhost:8090/TestWeb/project/main/login/membership1.html" style="text-decoration:none" target="_blank">|&nbsp;&nbsp;회원 가입</a></div>
		</div>
	</div>
</body>
</html>



















