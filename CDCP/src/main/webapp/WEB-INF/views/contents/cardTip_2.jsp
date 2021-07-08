<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카드활용꿀팁</title>
<style type="text/css">

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
#header {
	width: 100%;
	height: 55px;
	border-style: solid;
    border-width: 0 0 2px 0;
    border-color: #0047AB;
    font-family: 'GmarketSansMedium';
    min-width: 1830px;
    position: fixed;
    z-index: 9999;
    background-color: white;
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
#headerLeft .menu1 { 
	display: inline-block;
	width: 130px;
	height: 100%;
	line-height: 65px;
	color: #0047AB;
	text-align: center;
	letter-spacing: 2px;
	vertical-align: top;
	cursor: pointer;
}	/* header_left 종료 */

#headerRight {
	display: inline-block;
	width: 50%;
	height: 100%;
    font-size: 18px;
	vertical-align: top;
}
#imgSearch {
 	display: inline-block;
    background-image: url("/cdcp/resources/images/main/search.png");
    background-repeat: no-repeat;
    background-size: 30px;
    width: 30px;
    height: 25px;
    cursor: pointer;
    text-align: center;
    margin-left: 85%;
}
#imgLogin {
 	display: inline-block;
    background-image: url("/cdcp/resources/images/main/login1.png");
    background-repeat: no-repeat;
    background-size: 30px;
    width: 30px;
    height: 25px;
    cursor: pointer;
    margin-top: 15px;
}
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
	height: 2800px;
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
		
		
	}); // document ready end
</script>
</head>
<body>
<!-- 헤더영역(메뉴바) -->
<body>
<!-- 헤더영역(메뉴바) -->
<div id="header">
	<div id="headerWrap">
	<div id="headerLeft">
		<div id="headerLogo"></div>
		<div class="menu1" id="ranking">카드순위</div>
		<div class="menu1" id="search">카드검색/비교</div>
		<div class="menu1" id="contents">컨텐츠</div>
	</div>
	<div id="headerRight">
		<div id="imgSearch"></div>
		<div id="imgLogin"></div>
		</div>
	</div>
</div>
<!-- 메인영역(소비심리테스트) -->
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
				<h4>1) 간편함</h4>
				<div>
				아까 살펴봤듯 카드 사용실적과 신용점수를 바탕으로 결정되기 때문에 카드 이용실적만 양호해도 대출이 가능하며 다른 대출이 있어도 가능하다.
				<div>
				또한, 방문, 보증, 그리고 서류 없이 인터넷, 전화, CD, 그리고 ATM을 통하여 보다 쉽게 현금을 대출받을 수 있는 서비스이다.
				통상적으로 카드론은 대출심사가 까다롭지 않기 때문에 비교적 쉽게 필요한 금액을 수령할 수 있다.
				</div>
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
</body>
</html>