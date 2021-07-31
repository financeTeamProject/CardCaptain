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
  src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/TmoneyRoundWindExtraBold.woff') format('woff');  
}
@font-face {
    font-family: 'GmarketSansLight';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansLight.woff') format('woff');
}

*{
	margin: 0;
	padding: 0;
}

p {
 margin: 0;
 text-align: center;
 font-family: 'GmarketSansLight'; 
}

li{
	list-style: none;
	color: FFFFFF;
	font-weight: 1000;
	font-size: 20px;
}
a{
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


.rayout{
	
    width: 100%;
    height: 100%;
    margin: 0 auto;
    max-height: 1800px;
    min-width: 1625px;
}

#s_left { /* 왼쪽 사이드바 공백 레이아웃 틀 */
	width: 15%;
	height: 100%;
	float:left;
	background-color: #eee;
	min-height: 1800px;
}

#main { /* 가운데 메인 내용 틀 */
	width: 70%;
	height: 100%;
	float:left;
	background: #eee;
	min-height: 1800px;
}

#s_right { /* 오른쪽 사이드 바 공백 레이아웃 틀 */
	width: 15%;
	height: 100%;
	float:left;
	background-color: #eee;
	min-height: 1800px;
}

#title_termes {
	background-image: url("/cdcp/resources/images/contentimg/card_bgimg.jpg");
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

#title_termes > .contentDate, .uploder {
	padding-left: 30px;
}

#termes {
	border: 5px 5px 5px 5px;
	margin: 0px auto;
	height: 3500px;
	width: 100%;
	background-color: white;
	padding: 30px 40px 40px;
	max-width: 960px;
	min-width: 960px;
}

#termes > div {
	font-size: 16px;
 	line-height: 32px;
 	padding-top: 10px;
}

#termes > #guide_title {
	float: left;
	font-size: 20px;
	font-weight: bold;
}



#footer{ /* 하단영역 */
	width: 100%;
	height: 100px;
	float:left;
	background: gray;
	border-radius: 5px;
	border-style: solid;
    border-width: 2px 0 0 0;
    border-color: #0047AB;
    font-family: 'Cafe24Ohsquare';
    min-width: 600px;
    background-color: white;	
			
}

#footerMenu{

	height: inherit;
    margin: 0 auto;
    color: #0047AB;
	text-align: center;
	font-family: GmarketSansMedium;
	font-size: 12px;
}
#footerLogo{
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

.tipimg {
	background-position: center;
	margin: 0px auto;
	width: 700px;
	height: 420px;
}

#tipimg_2 {
	background-image: url("/cdcp/resources/images/contentimg/tipBackground/card_tip2.jpg");
	background-size: cover;
	width: 680px;
	height: 400px;
	margin: 0px auto;
}

#tipimg_3 {
	background-image: url("/cdcp/resources/images/contentimg/tipBackground/card_tip3.jpg");
	background-size: cover;
	width: 750px;
	height: 700px;
	margin: 0px auto;
}

#tipimg_4 {
	background-image: url("/cdcp/resources/images/contentimg/tipBackground/card_tip4.png");
	width: 800px;
	height: 450px;
	margin: 0px auto;
	background-repeat: no-repeat;
}

span {
	background-color: rgb(255, 255, 255);
	color: red;
	font-family: ;
}

</style>
<script type="text/javascript"
			src = "resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		/* 카드순위 페이지 이동 */
		$("#ranking").on("click", function(){
			location.href = "card_rank";
		}); // ranking click end
		/* 카드검색/비교 페이지 이동 */
		 $("#search").on("click", function(){
			location.href = "search";
		});// search click end
		/* 컨텐츠 페이지 이동 */
		$("#contents").on("click", function(){
			location.href = "content";
		});// contents click end
		
		
		/* 메인페이지 이동 */
		$("#headerLogo").on("click", function(){
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
<!-- 헤더영역(메뉴바) -->
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
			<h1><strong>카드 활용 꿀팁</strong></h1>
			<h2>새롭게, 또 다시 정리하는 카드론의 모든 것!</h2>
			<div class="contentDate">날짜</div>
			<div class="uploder">등록한 사람</div>
			</div>
			<div id="termes">
				<div>
				영끌, 빚투... 2020년 핫 키워드를 생각해보면 빠질 수 없는 단어일 것이다. 
				작년만큼은 아니지만 이 단어들은 아직도 유효하다고 할 수 있다. 
				이 추세와 비슷하게 증가한 것이 있다. 바로 '카드론'이다. 
				작년 9월 기준 카드론 이용금액은 4조를 넘어섰고 1년만에 1조이상 증가했다. 
				하지만 모든 금융상품들이 그러하듯 이 서비스도 양날의 검이라고 할 수 있다. 그것도 아주 잘~ 벼려진 검.
				</div>
				<div class="tipimg">
					<div id="tipimg_2"></div>
				</div>
				<h3>1. 카드론… 도대체 뭔가요? </h3>
				<div>
				카드론은 정식명칭 '장기카드대출'로 불리는 상품으로 기간과 한도금액을 약정하는 카드 신용 대출 상품이다. 
				장기라는 말이 붙어 있듯이 대출을 받을 때 상환기간을 지정할 수 있으며 최대 36개월까지 나눠서 갚으면 된다. 
				원래는 급하게 돈이 필요한 사람들의 소액 생활비 정도로 활용되었지만 최근 빚투족들의 투자자금으로 쓰이기도 한다. 
				게다가, 금융당국이 시중은행들의 가계대출 문턱을 높이면서 수많은 대출수요가 카드론으로 몰렸다.
				</div>
				<div>
				신용대출은 신용점수, 소득 등을 통해서 한도와 금리를 결정하지만 카드론은 카드 이용실적과 신용점수를 바탕으로 결정된다.
				 즉, 은행권 대출이 어려운 사람들이어도 카드론은 가능한 경우가 많아 조금 더 쉽게 이용할 수 있는 장기대출 상품이다.
				</div>
				<br>
				<h3>2. 뭐가 좋길래 그렇게 많은 사람들이 이용하는거죠?</h3>
				<div>
				그렇다면 왜 많은 사람들이 카드론을 이용하는 것일까? 어떠한 장점들이 있길래?
				</div>
				<br>
				<h4>1) 간편함</h4>
				<div>
				아까 살펴봤듯 카드 사용실적과 신용점수를 바탕으로 결정되기 때문에 카드 이용실적만 양호해도 대출이 가능하며 다른 대출이 있어도 가능하다.
				<div>
				또한, 방문, 보증, 그리고 서류 없이 인터넷, 전화, CD, 그리고 ATM을 통하여 보다 쉽게 현금을 대출받을 수 있는 서비스이다.
				통상적으로 카드론은 대출심사가 까다롭지 않기 때문에 비교적 쉽게 필요한 금액을 수령할 수 있다.
				</div>
				</div>
				<br>
				<h4>2) 중도상환수수료 0원</h4>
				<div>
				일반 신용대출의 경우 중도상환 수수료가 존재하기 때문에 갚아 나가면서도 조금씩 내 돈도 같이 빠져나간다.
				하지만 카드론의 경우 중도상환수수료가 없으므로 여유가 있을 때마다 차츰 갚아 나가는 것이 가능하다. 
				이렇게 상환하는 방식을 통해 연체까지 줄일 수 있으며 신용점수 관리도 가능하다.
				</div>
				<h3>3. 카드론... 위험한 건 없나요?</h3>
					<div id="tipimg_3"></div>
				<br>
				<h4>1) 신용점수의 하락</h4>
				<div>
				카드론(장기 카드대출)은 제2금융권 대출로 구분되기 때문에 1금융권에서 대출을 받을 때보다 큰 폭으로 신용점수가 하락한다. 
				물론 2019년 6월 이후 금리가 낮은 제2 금융권 대출의 경우 대출금리나 대출유형 등을 신용평가에 반영하면서 변동폭이 줄어들긴 했지만 그래도 신용점수의 하락을 피할 순 없다. 
				</div>
				<br>
				<div>
				특히, 카드론과 현금서비스 자주 혹은 오랫동안 이용하는 경우에는 하락폭이 더욱 커질 수 있다. 
				올크레딧이 제공하는 개인신용평가 지표를 보면 대출이 발생할 수록, 부채수준이 커질 수록 그리고 연체가 진행될 수록 신용도는 크게 떨어질 수 있다.
				</div>
				<br>
				<div id="tipimg_4"></div>
				<br>
				<h4>2) 높은 이자</h4>
				<div>
				주요 카드사들의 신용점수별 카드론 이자율이다. 시중은행의 대출보다 2~3배의 금리를 가지고 있다. 
				신용등급 1등급인 경우 10% 밑으로도 이용이 가능하지만 대부분의 경우 그렇지 못하다.
				</div>
				<h3>4. 그렇다면 어떻게 이용하는 게 좋나요?</h3>
				<div>
				현재 카드론(장기카드대출)을 이용중이라면 중도상환수수료가 없기 때문에 대출금액을 최대한 조기에 상환하는 것을 추천한다. 
				게다가, 카드론 신청 시 카드사에서 제공하는 금리할인 프로그램을 이용하는 것도 방법이다.
				</div>
				<br>
				<div>
				또한 이자부담을 줄일 수 있는 방법으로 ‘장기카드대출 할인 예약서비스’가 있다. 
				카드사를 통해 예약하면 당월 말까지 20% 수준의 이자율 할인 혜택을 받을 수 있다.
				</div>
				<br>
				<div>
				이용할 계획이 있다면 카드론 이용 시 TIP 도 확인하자!
				</div>
				<br>
				<div>
				한편, 2021년 3월 25일부터 금융소비자보호법이 시행되는데 카드론은 신용카드 가입과는 별개의 계약으로 금소법상 금융상품에 해당한다. 
				그렇기 때문에 6대 판매규제(적합성,적정성원칙, 설명의무, 불공정영업행위 금지, 부당권유행위 금지, 광고규제) 또한 적용된다.
				</div>
			</div>	
	</div>	
	<div id="s_right"></div>						
	<!-- 풋터영역 (하단 마무리) -->
	<div id="footer">
		<div id="footerMenu">
			<div id="footerLogo"></div>
			<div>서울시 금천구 가산디지털2로 115,509호,811호,1109-1호(가산동,대륭테크노타운3차) 금융조 조장 : 주건정</div>
			<div>Copyright © 2021-2031 CardCaptain All Rights Reserved.</div>
		</div>
	</div>
</div>
</div>
</body>
</html>