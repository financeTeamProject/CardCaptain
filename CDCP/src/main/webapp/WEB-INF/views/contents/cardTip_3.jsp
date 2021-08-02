<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카드활용꿀팁</title>
<style type="text/css">

@font-face {
    font-family: 'GmarketSansMedium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

@font-face {
	font-family: 'Cafe24Ohsquare';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/TmoneyRoundWindExtraBold.woff')
		format('woff');
}

@font-face {
	font-family: 'GmarketSansLight';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansLight.woff')
		format('woff');
}

* {
	margin: 0;
	padding: 0;
}

p {
	margin: 0;
	text-align: center;
	font-family: 'GmarketSansLight';
}

li {
	list-style: none;
	color: FFFFFF;
	font-weight: 1000;
	font-size: 20px;
}

a {
	text-decoration: none;
}

html, body {
	margin: 0;
	background-color: #eee;
}

.body {
	width: 100%;
	heigth: 100%;
}

h2 {
	font-family: 'Cafe24Ohsquare';
	padding-top: 30px;
	padding-left: 30px;
	font-size: 20px;
	color: black;
}

h1 {
	padding-top: 30px;
	padding-left: 30px;
	font-family: 'GmarketSansLight';
	font-size: 40px;
	color: black;
}

h3 {
	font-family: 'GmarketSansLight';
	font-size: 30px;
	padding-top: 30px;
}

	/* 헤더 */
#header {
	width: 100%;
	height: 55px;
	border-style: solid;
    border-width: 0 0 2px 0;
    border-color: #0047AB;
    font-family: 'GmarketSansMedium';
    min-width: 1830px;
    background: white;
}
#headerWrap {
	width: 1600px;
	height: 100%;
	margin: 0 auto;
	display: flex;
}
#headerLeft {
	display: inline-block;
	width: 50%;
	height: 100%;
    font-size: 16px;
	vertical-align: top;
}
#headerLogo {
    display: inline-block;
    vertical-align: top;
    background-image: url("/cdcp/resources/images/main/logo.png");
    background-repeat: no-repeat;
    background-size: 120px;
    width: 120px;
    height: 40px;
    cursor: pointer;
    text-align: center;
    margin-top: 10px;
}
.menu1 { 
	display: inline-block;
	width: 130px;
	height: 100%;
	line-height: 65px;
	color: #0047AB;
	text-align: center;
	letter-spacing: 2px;
	vertical-align: top;
	cursor: pointer;
}	

	/* header_left 종료 */

#headerRight {
	display: inline-block;
	width: 50%;
	height: 100%;
    font-size: 18px;
	vertical-align: top;
	text-align: right;
}
#imgLogin {
 	display: inline-block;
    background-image: url("/cdcp/resources/images/main/login1.png");
    background-repeat: no-repeat;
    background-size: 30px;
    width: 30px;
    height: 25px;
    cursor: pointer;
    text-align: center;
	margin-top: 15px;
}
#Nickname {
    width: auto;
    height: auto;
    color: #0047AB;
    box-sizing: border-box;
    font-size: 13px;
    letter-spacing: 2px;
    display: none;
}
#logNick:hover{
	color: #1AAB8A;
}
#logNick {
	display: inline-block;
	color:#0047AB;
	border:none;
	position:relative;
	width: auto;
	cursor:pointer;
	transition:800ms ease all;
	outline:none;
	margin-top: 18px;
	letter-spacing: 2px;
}
#logNick:before, #logNick:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
  background: #1AAB8A;
  transition:400ms ease all;
}
#logNick:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}
#logNick:hover:before, #logNick:hover:after{
  width:100%;
  transition:800ms ease all;
}
#logoutBtn {
	background:#fff;
	color:#1AAB8A;
	border:none;
	position:relative;
	height:30px;
	width: 70px;
	cursor:pointer;
	transition:800ms ease all;
	outline:none;
	margin-left: 20px;
}
/* 로그인팝업 */
.popinput {
	width: 50%;
    height: 40px;
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
    margin: 5px 50px 10px 70px;
}
.cardcaptain {
	width: 100%;
	height: 95px;
	line-height: 110px;
	text-align: center;
	font-size: 25px;
	color: #0047AB;
	letter-spacing: 5px;
	cursor: pointer;
}
#popup {
	height: 320px;
	width: 400px;
	background-color: white;
	border-radius: 70px;
	display: none;
	margin: 300px auto;
	z-index: 50;
}
#loginBtn {
	margin-bottom: 10px;
	margin-top: 5px;
	background: linear-gradient(125deg,#81ecec,#6c5ce7,#81ecec);
	background-size: 200%;
	color: white;
 	font-weight: bold;
	border: none;
	cursor: pointer;
	display: inline;
	margin: 20px 10px 15px 90px;
}
.re {
	display: inline-block;
	vertical-align: top;
	font-size: 12px;
    margin: 10px 0 10px 130px;
}
.new {
	display: inline-block;
	vertical-align: top;
	font-size: 12px;
	margin: 10px 0 10px 0;
}
.re:hover, .new:hover {
	cursor: pointer;
}
.error {
    font-size: 11px;
    color: red;
    visibility: hidden;
}
.errorMsg {
	height: 100%;
    display: none;
    color: #e65f3e;
    font-size: 13px;
    margin-left: 65px;
} 
	/* 로그인팝업종료 */
	/* header_right 종료 */
	/* 헤더 종료 */
.title {
	width: 700px;
	display: block;
	background-color: #eee;
	vertical-align: top;
	text-align: center;
	font-size: 60px;
	color: blueblack;
	font-family: 'Cafe24Ohsquare';
	margin: 60px auto;
}

.rayout {
	width: 100%;
	height: 100%;
	margin: 0 auto;
	max-height: 1800px;
	min-width: 1625px;
}

#s_left { /* 왼쪽 사이드바 공백 레이아웃 틀 */
	width: 15%;
	height: 100%;
	float: left;
	background-color: #eee;
	min-height: 1800px;
}

#main { /* 가운데 메인 내용 틀 */
	width: 70%;
	height: 100%;
	float: left;
	background: #eee;
	min-height: 1800px;
}

#s_right { /* 오른쪽 사이드 바 공백 레이아웃 틀 */
	width: 15%;
	height: 100%;
	float: left;
	background-color: #eee;
	min-height: 1800px;
}

#title_termes {
	background-image:
		url("/cdcp/resources/images/contentimg/card_bgimg.jpg");
	background-repeat: no-repeat;
	background-position: center;
	border: 5px 5px 5px 5px;
	margin: 0px auto;
	background-size: cover;
	background-color: #eef;
	padding-bottom: 20px;
	max-width: 1045px;
	min-width: 1045px;
}

#title_termes>.contentDate, .uploder {
	padding-left: 30px;
}

#termes {
	border: 5px 5px 5px 5px;
	margin: 0px auto;
	height: 5700px;
	width: 100%;
	background-color: white;
	padding: 30px 40px 40px;
	max-width: 960px;
	min-width: 960px;
}

#termes>div {
	font-size: 16px;
	line-height: 32px;
	padding-top: 10px;
}

#termes>#guide_title {
	float: left;
	font-size: 20px;
	font-weight: bold;
}

#tipimg_5 {
	background-image:
		url("/cdcp/resources/images/contentimg/tipBackground/card_tip5.jpg");
	background-size: cover;
	width: 750px;
	height: 1000px;
	margin: 0px auto;
}

#tipimg_6 {
	background-image:
		url("/cdcp/resources/images/contentimg/tipBackground/card_tip6.jpg");
	width: 800px;
	height: 890px;
	margin: 0px auto;
	background-repeat: no-repeat;
}

#tipimg_7 {
	background-image:
		url("/cdcp/resources/images/contentimg/tipBackground/card_tip7.jpg");
	width: 800px;
	height: 890px;
	margin: 0px auto;
	background-repeat: no-repeat;
}

#tipimg_8 {
	background-image:
		url("/cdcp/resources/images/contentimg/tipBackground/card_tip8.jpg");
	width: 800px;
	height: 890px;
	margin: 0px auto;
	background-repeat: no-repeat;
}

#footer { /* 하단영역 */
	width: 100%;
	height: 100px;
	float: left;
	background: gray;
	border-radius: 5px;
	border-style: solid;
	border-width: 2px 0 0 0;
	border-color: #0047AB;
	font-family: 'Cafe24Ohsquare';
	min-width: 600px;
	background-color: white;
}

#footerMenu {
	height: inherit;
	margin: 0 auto;
	color: #0047AB;
	text-align: center;
	font-family: GmarketSansMedium;
	font-size: 12px;
}

#footerLogo {
	display: inline-block;
	vertical-align: top;
	background-image: url("/cdcp/resources/images/contentimg/logo.png");
	background-repeat: no-repeat;
	background-size: 120px;
	width: 120px;
	height: 40px;
	cursor: pointer;
	text-align: center;
	margin-top: 10px;
}

.table { /* Tip 테이블 스타일 */
	border-bottom: 1px solid #000;
	font-weight: bold;
	height: 30px;
	width: 100%;
	padding-top: 50px;
}

.table td {
	width: 50%;
	text-align: center;
	background-color: white;
	border: 1px solid;
}
</style>
<script type="text/javascript"
	src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		/* 카드순위 페이지 이동 */
		$("#ranking").on("click", function() {
			location.href = "card_rank";
		}); // ranking click end
		/* 카드검색/비교 페이지 이동 */
		$("#search").on("click", function() {
			location.href = "search";
		});// search click end
		/* 컨텐츠 페이지 이동 */
		$("#contents").on("click", function() {
			location.href = "content";
		});// contents click end

		/* 메인페이지 이동 */
		$("#headerLogo").on("click", function() {
			location.href = "/cdcp";
		}); // headerLogo click end
	
		/* 로그인팝업 실행 */
		$("#imgLogin").on("click", function(){
			$("#popup").css("display","block");
			$(".body").css("display","none");
		});
		/* 로그인팝업 실행 */
		$("#imgSearch").on("click", function(){
			$("#searchTxt").css("display","inline");
		});
		
		$("#searchmem, #join").on("click", function() {
			var ival = $(this).prop("id");
			$(location).attr('href',ival);
		});
		
		$(".cardcaptain").on("click", function(){
			$("#popup").css("display","none");
			$(".body").css("display","inline");

		});
		
		/* 로그인 */
		$("#loginBtn").on("click", function () {
			if($.trim($("#mId").val()) == "") {
				alert("아이디를 입력해 주세요.");
				$("#mId").focus();
			} else if($.trim($("#mPw").val()) == "") {
				alert("비밀번호를 입력해 주세요.");
				$("#mPw").focus();
			} else {
				var params = $("#loginForm").serialize();
				
				$.ajax({
					url: "logins",
					type: "post",
					dataType: "json",
					data: params,
					success: function (res) {
						if(res.resMsg == "success"){
							location.href = "content";
							$("#nickName").css("display","inline");
							$("#imgSearch").css("margin-left","70%");
							$("#imgLogin").css("display","none");
							$("#logoutBtn").css("display","inline");
						} else {
							$(".errorMsg").css("display","inline");
							$("#masage").html("아이디 또는 비밀번호가 일치하지 않습니다.")
						}
					},
					error: function (request, status, error) {
						console.log(error);
					}
				}); //ajax end
			}
		}); //로그인 end
		
		/* 로그아웃  */
		$("#logoutBtn").on("click", function () {
			location.href = "testALogout";
		}); //로그아웃 end
		
		/* 마이페이지이동 */
		$("#logNick").on("click", function(){
			location.href = "/mypage";
		});
		
		$("#logNick").on("click", function(){
			$("#memNo").attr("action");
			$("#memNo").submit();
		});
		
		
	}); // document ready end
</script>
</head>
<body>
<!-- 로그인팝업 -->
<div id="popup">
	<div class="cardcaptain">&nbsp;&nbsp;&nbsp;&nbsp;Card Captain&nbsp;&nbsp;&nbsp;&nbsp;X</div>
	<form action="testLogins" id="loginForm" method="post">
			<input type="email" class="popinput" placeholder="ID" id="mId" name="mId">
			<input type="password" class="popinput" placeholder="PW" id="mPw" name="mPw"><br/>
		<span class="errorMsg" id="masage" aria-live="assertive"></span>
		<input type="button" class="popinput" id="loginBtn" value="로그인"/><br/>
	</form>
	<div class="re" id="searchmem">ID/PW 찾기</div>
	<div class="new" id="join">|&nbsp;&nbsp;회원 가입</div>
</div>
<!-- 로그인팝업 종료 -->
<!-- 로그인팝업 -->
<div id="popup">
	<div class="cardcaptain">&nbsp;&nbsp;&nbsp;&nbsp;Card Captain&nbsp;&nbsp;&nbsp;&nbsp;X</div>
	<form action="testLogins" id="loginForm" method="post">
			<input type="email" class="popinput" placeholder="ID" id="mId" name="mId">
			<input type="password" class="popinput" placeholder="PW" id="mPw" name="mPw"><br/>
		<span class="errorMsg" id="masage" aria-live="assertive"></span>
		<input type="button" class="popinput" id="loginBtn" value="로그인"/><br/>
	</form>
	<div class="re" id="searchmem">ID/PW 찾기</div>
	<div class="new" id="join">|&nbsp;&nbsp;회원 가입</div>
</div>
<!-- 로그인팝업 종료 -->
<div class="body">
	<div id="header">
		<div id="headerWrap">
			<div id="headerLeft">
				<div id="headerLogo"></div>
				<div class="menu1" id="ranking">카드순위</div>
				<div class="menu1" id="search">카드검색/비교</div>
				<div class="menu1" id="contents">컨텐츠</div>
			</div>
			<form action="mypage" id="memNo" method="post">
				<input type="hidden" name="memNo" value="${sMNo}" id="sMNo"/>
				<input type="hidden" name="memId" value="${sMId}" id="sMId"/>
				<input type="hidden" name="memPW" value="${sMPw}" id="sMPw"/>
				<input type="hidden" name="memBi" value="${sMBi}" id="sMBi"/>
				<input type="hidden" name="memGe" value="${sMGe}" id="sMGe"/>
				<input type="hidden" name="memCo" value="${sMCo}" id="sMCo"/>
				<input type="hidden" name="memNm" value="${sMNm}" id="sMNm"/>
				<input type="hidden" name="memNa" value="${sMNa}" id="sMNa"/>
				<input type="hidden" name="memAd" value="${sMAd}" id="sMAd"/>
			</form>
			<div id="headerRight">
				<c:choose>
					<c:when test="${empty sMNm}">
						<div id="imgLogin"></div>
					</c:when>
					<c:otherwise>
						<div id="logNick">${sMNm}&nbsp;&nbsp;님</div><input type="button" value="로그아웃" id="logoutBtn" />
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
	<div class="rayout">
		<div id="s_left"></div>
		<div id="main">
			<div class="title">카드활용꿀팁</div>
			<div id="title_termes">
				<h1>
					<strong>카드 활용 꿀팁</strong>
				</h1>
				<h2>올해엔 신용카드를 발급받아야 하는 3가지 이유 (feat. 에디터의 뼈저리는 사건)</h2>
				<div class="contentDate">2021.07.19</div>
				<div class="uploder">이혁준</div>
			</div>
			<div id="termes">
				<div>“나는 아직 신용카드를 사용할 생각이 없어!체크카드만 써도 괜찮은 걸……?”</div>
				<div>이와 같은 생각으로 지금까지 신용카드를 발급받지 않고 있는가? 어쩌면, 딱히 신용카드의 필요성을 느끼지
					못했을 수도. 사회초년생인 에디터 본인 역시 체크카드만 사용하는 사람이었다. 사회초년생인 나에게 ‘신용카드 사용은 아직
					시기상조’란 생각할 뿐이었다. 그런데 작년 12월 초에 신용카드에 대한 생각이 바뀌게 된 사건을 겪게 되었다.</div>
				<br>
				<div id="tipimg_5"></div>
				<br>
				<div>이러한 경험은 비단 에디터뿐만 아니라 살면서 누구나 겪을 수 있다. 갑자기 수술을 받거나, 자동차
					사고가 나거나, 아니면 장례식을 치러야 하는 경우처럼 갑자기 목돈이 필요한 경우가 생기기 마련이다.</div>
				<br>
				<div>문제는 우리가 현금을 꼭 손에 쥐고 있다는 보장이 없다는 점이다. 그렇다고 매번 적금을 깨서 결제할
					수만은 없는 노릇이다. 그.래.서! 이럴 땐 할부가 가능한 ‘신용카드’가 필요한 법이다.</div>
				<br>
				<div>아직도 신용카드가 왜 필요한지 모르겠다고 생각하는 사람들을 위해, 신용카드의 필요성을 뼈저리게 느낀
					에디터와 함께 신용카드를 발급받아야 하는 이유 3가지를 파헤쳐보자.</div>
				<br>
				<div id="tipimg_6"></div>
				<h3>신용카드를 발급받아야 하는 이유 1</h3>
				<h4>신용카드의 장점은 할부결제!</h4>
				<div>위 에디터의 경험처럼, 우리는 살면서 목돈을 결제하는 순간을 맞이한다. 그럴 땐 정해진 기간동안 나눠서
					납부하는 신용카드의 ‘할부 결제’ 기능이 유용하다. 반면 대부분의 체크카드는 할부 결제가 불가하다.</div>
				<br>
				<div>할부결제는 2개월에서 36개월까지 카드 대금을 나눠서 낼 수 있다. 이 때 할부 개월 수에 따라 할부
					수수료가 붙게 되는데, 무이자할부가 되는 곳에서 결제한다면 할부수수료가 부과되지 않는다.</div>
				<br>
				<div>그럼 에디터의 사례에서 할부결제를 대입해보자. 160만원을 6개월 할부결제로 했다면 약 26만원을
					6개월간 납부하면 된다. 이렇게 되면 한 번에 160만원을 결제해서 다음달 월급날까지 힘들게 생활하는 것보다, 매월
					월급날에 맞춰 26만원씩 납부하는 게 일상에서 소비계획을 관리하는 데 유리하다.</div>
				<br>
				<div id="tipimg_7"></div>
				<h3>신용카드를 발급받아야 하는 이유 2</h3>
				<h4>신용카드는 신용평가의 시작점!</h4>
				<div>살다보면 은행에서 대출을 받는 순간이 온다. 이럴 때 과연 은행은 개인에게서 어떤 걸 평가해서 돈을
					빌려줄까? 그것은 돈을 빌려줬을 때, 성실히 갚을 수 있는 사람인가를 확인하는 척도. 즉 ‘신용’이다. 신용점수는 신용을
					평가해 점수로 매긴 것이다. 신용점수를 책정할 때 여러가지를 종합적으로 심사하지만, 그 중에 대표적인 평가사항이 바로
					‘신용카드를 연체없이 적절하게 이용하는가’이다.</div>
				<br>
				<div>‘신용카드와 은행 대출이 무슨 상관이냐고?’ 신용카드를 쓴다는 건, 카드사가 미리 결제하고 이용자로부터
					카드대금을 받는 걸 의미한다. 은행에서는 신용카드를 사용하면서 미리 결제한 금액을 잘 갚아왔다는 내역이 중요하다.</div>
				<br>
				<div>왜냐면 ‘카드대금을 연체하지 않은 사람 = 성실하게 대출금을 갚을 수 있는 믿음직한 사람’이란 걸
					의미하기 때문이다. 이러한 이유로 신용카드를 연체하지 않고 적절하게 사용하면 높은 신용점수를 받으며, 은행에서 대출을
					신청할 때 수월하다.</div>
				<br>
				<div id="tipimg_8"></div>
				<h3>신용카드를 발급받아야 하는 이유 3</h3>
				<h4>체크카드보다 높은 수준의 혜택</h4>
				<br>
				<div>
					최근에 신용카드 못지않은 혜택을 지닌 알짜 체크카드가 많이 출시되었지만, 일반적으로 신용카드가 체크카드보다 혜택의 범위와
					수준이 높은 편이다. 대표적인 예로
					<신한카드 Deep Dream>과 <신한카드 Deep Dream 체크>를 비교해보자. 
				</div>
				<table class="table" style="width: 100%;">
					<tbody>
						<tr>
							<td
								style="width: 19.9783%; text-align: center; background-color: rgb(247, 218, 100);">
								<div style="text-align: center;">
									<strong>구분</strong>
								</div>
							</td>
							<td
								style="width: 42.5624%; text-align: center; background-color: rgb(247, 218, 100);">
								<div style="text-align: center;">
									<strong>신한카드 Deep Dream</strong>
								</div>
							</td>
							<td
								style="width: 37.4593%; text-align: center; background-color: rgb(247, 218, 100);">
								<div style="text-align: center;">
									<strong>신한카드 Deep Dream 체크</strong>
								</div>
							</td>
						</tr>
						<tr>
							<td style="width: 19.9783%; text-align: center;">
								<div style="text-align: center;">
									<strong>카드</strong>
								</div>
							</td>
							<td style="width: 42.5624%; text-align: center;">
								<div style="text-align: center;">신용카드</div>
							</td>
							<td style="width: 37.4593%; text-align: center;">
								<div style="text-align: center;">체크카드</div>
							</td>
						</tr>
						<tr>
							<td style="width: 19.9783%; text-align: center;">
								<div style="text-align: center;">
									<strong>연회비</strong>
								</div>
							</td>
							<td style="width: 42.5624%; text-align: center;">
								<div style="text-align: center;">8천원</div>
							</td>
							<td style="width: 37.4593%; text-align: center;">
								<div style="text-align: center;">없음</div>
							</td>
						</tr>
						<tr>
							<td rowspan="3" style="width: 19.9783%; text-align: center;">
								<div style="text-align: center;">
									<strong>포인트 적립혜택</strong>
								</div>
							</td>
							<td style="width: 42.5624%; text-align: center;">
								<div style="text-align: center;">모든 가맹점 0.7% 포인트 적립</div>
							</td>
							<td style="width: 37.4593%; text-align: center;">
								<div style="text-align: center;">모든 가맹점 0.2% 포인트 적립</div>
							</td>
						</tr>
						<tr>
							<td style="width: 42.5624%; text-align: center;">
								<div style="text-align: center;">자주 가는 DREAM영역 2.1% 포인트 적립</div>
							</td>
							<td style="width: 37.4593%; text-align: center;">
								<div style="text-align: center;">자주 가는 DREAM영역 0.6% 포인트 적립</div>
							</td>
						</tr>
						<tr>
							<td style="width: 42.5624%; text-align: center;">
								<div style="text-align: center;">가장 많이 이용한 DREAM 3.5% 포인트
									적립</div>
							</td>
							<td style="width: 37.4593%; text-align: center;">
								<div style="text-align: center;">가장 많이 이용한 DREAM 1.0% 포인트
									적립</div>
							</td>
						</tr>
						<tr>
							<td style="width: 19.9783%; text-align: center;">
								<div style="text-align: center;">
									<strong>택시 혜택</strong>
								</div>
							</td>
							<td style="width: 42.5624%; text-align: center;">
								<div style="text-align: center;">택시 3,6,9번째 2천원 할인</div>
							</td>
							<td style="width: 37.4593%; text-align: center;">
								<div style="text-align: center;">택시 3,6,9번째 2천원 할인</div>
							</td>
						</tr>
						<tr>
							<td style="width: 19.9783%; text-align: center;">
								<div style="text-align: center;">
									<strong>전월실적</strong>
								</div>
							</td>
							<td style="width: 42.5624%; text-align: center;">
								<div style="text-align: center;">*전월실적 30만원 이상 시 추가 포인트 적립</div>
							</td>
							<td style="width: 37.4593%; text-align: center;">
								<div style="text-align: center;">*전월실적 20만원 이상 시 추가 포인트 적립</div>
							</td>
						</tr>
					</tbody>
				</table>
				<div>
				*DREAM영역: 할인점, 편의점/잡화, 영화/카페, 해외, 이동통신요금 결제 영역
				</div>
				<br>
				<div>
				위 표를 보면 신용카드와 체크카드의 주요혜택은 같지만, 적립혜택의 비율은 신용카드가 월등히 앞선다. 물론 <신한카드 Deep Dream>의 전월실적이 10만원 이상 더 높다. 
				하지만, <신한카드 Deep Dream 체크>를 30만원 이상 쓴다면, 오히려 신용카드를 써서 포인트 적립혜택을 더 많이 받아가는 게 이득이다.
				</div>
				<br>
				<div>
				체크카드로 나의 소비패턴을 확인한 뒤, 내가 자주 이용하는 영역에서 할인/적립혜택을 제공하는 신용카드를 사용해보자. 소비패턴을 유지하면서 카드혜택을 더 받아내는 카드생활을 영위할 수 있다.
				</div>
			</div>
		</div>
		<div id="s_right"></div>
		<!-- 풋터영역 (하단 마무리) -->
		<div id="footer">
			<div id="footerMenu">
				<div id="footerLogo"></div>
				<div>서울시 금천구 가산디지털2로 115,509호,811호,1109-1호(가산동,대륭테크노타운3차) 금융조조장 : 주건정</div>
				<div>Copyright © 2021-2031 CardCaptain All Rights Reserved.</div>
			</div>
		</div>
	</div>
</div>	
</body>
</html>