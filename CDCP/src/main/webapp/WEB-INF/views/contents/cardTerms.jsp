<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카드용어</title>
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
	
	padding-top: 30px;
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

.top {
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

.menu_left {
   display: inline-block;
   width: 50%;
   height: 100%;
    font-size: 18px;
   vertical-align: top;
}
.menu_right {
   display: inline-block;
   width: 48%;
   height: 100%;
   font-size: 18px;
   vertical-align: top;
   text-align: right;
}
.logo {
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
    margin-left: 70px;
}
.login {
    display: inline-block;
    background-image: url("/cdcp/resources/images/contentimg/login1.png");
    background-repeat: no-repeat;
    background-size: 30px;
    width: 30px;
    height: 25px;
    cursor: pointer;
    margin-top: 15px;
}
.search {
    display: inline-block;
    background-image: url("/cdcp/resources/images/contentimg/search.png");
    background-repeat: no-repeat;
    background-size: 30px;
    width: 30px;
    height: 25px;
    cursor: pointer;
    text-align: center;
}
.menu1 {
   display: inline-block;
   width: 140px;
   height: 100%;
   line-height: 65px;
   color: #0047AB;
   text-align: center;
   letter-spacing: 2px;
   vertical-align: top;
   cursor: pointer;
}
.menu2 {
   display: inline-block;
   width: 100px;
   height: 100%;
   line-height: 65px;
   color: #0047AB;
   text-align: center;
   letter-spacing: 2px;
   vertical-align: top;
   margin-left: 10px;
   cursor: pointer;
}
.text_search {
   width: 180px;
    height: 30px;
   line-height: 45px;
    border-style: solid;
    border-width: 0 0 1px 0;
    border-color: #0047AB;
    padding: 11px 10px 3px 10px;
    outline: 0;
    border-radius: 0;
    box-sizing: border-box;
    caret-color: #f7e317;
    text-decoration: none;
   color: #0047AB;
   font-size: 14px;
   letter-spacing: 3px;
   margin-left: 500px;
    background-color: #f0f8ff00;
}



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

#termes {
	border: 5px 5px 5px 5px;
	margin: 0px auto;
	height: 1350px;
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

#guideimg {
	width: 950px;
	height: 200px;
	background-image: url("/cdcp/resources/images/contentimg/guide.jpg");
	background-repeat: no-repeat;
	margin: 0px auto;
}

#termes > #guide_title {
	float: left;
	font-size: 20px;
	font-weight: bold;
}

span {
	background-color: rgb(255, 255, 255);
	color: rgb(75, 75, 75);
	font-family: ;
}
#logo{	/* 로고 설정 틀 */
	line-height: 70px;
	top: 15px;
	bottom: 10px;
	float: left;
	margin: 0 auto;
	background-image: url("/cdcp/resources/images/contentimg/brand1.png");
	background-position: left;
	background-repeat: no-repeat;
	background-size: 180px auto;
	width: 250px;
	height: 70px;
	cursor: pointer;
}

#footer{
	width: 100%;
	height: 100px;
	float: left;
	background: gray;	
}

#footerMenu{
	width: 80%;
	height:inherit;
	margin: 0 auto;
	color: white;
	text-align: center;
	font-family: GmarketSansMedium;
	font-size: 12px;
}

#footerLogo{
	display: inline-block;
	vertical-align: top;
	background-image: url("/cdcp/resources/images/contentimg/brand1.png");
	background-repeat: no-repeat;
	background-size: 180px;
	width: 180px;
	height: 55px;
	cursor: pointer;
	text-align: center;
}
</style>
</head>
<body>
<!-- 헤더영역(메뉴바) -->
<div class="top">
   <div class="menu_left">
      <div class="logo"></div>
      <div class="menu1">카드순위</div>
      <div class="menu1">카드검색/비교</div>
      <div class="menu1">컨텐츠</div>
   </div>
   <div class="menu_right">
      <input type="text" class="text_search">   
      <div class="search"></div>
      <div class="menu2">로그인</div>
      <div class="login"></div>
   </div>
</div>
<!-- 메인영역(소비심리테스트) -->
<div class="rayout">
	<div id="s_left"></div>
	<div id="main">
		<div class="title">카드간단용어</div>
			<div id="title_termes">
			<h1><strong>신용카드 기본 개념, 용어</strong></h1>
			<h2>신용카드가 처음이라면, 종류부터 알고보자</h2>
			</div>
			<div id="termes">
				<div id="guideimg"></div>
					<div>*금융감독원에서 발행한 ‘신용카드 소비자 가이드’를 바탕으로 하였습니다.</div>
					<div><strong>용어(10)</strong></div>
					<div>
					<span>■</span>신용카드 </div>
					<div>
					상품이나 서비스의 대금 지급을 은행이 보증하여 일정 기간 뒤에 지급할 수 있도록 하는,
					신용 판매 제도에 이용되는 카드. 신용카드를 이용한 결제는 신용 거래로서,
					고객이 상품이나 서비스를 먼저 받고 그 값은 고객의 예금계좌(통장)에서 나중에 자동으로 지불한다.
					</div>
					<div>
					<span>■</span>개인카드와 법인카드 </div>
					<div>
					개인카드는 개인이 발급하는 카드로,
					본인카드와 가족카드로 나뉜다. 
					법인카드는 기업, 기관, 협회, 기타 사업자 등이 발급하는 카드다.
		 			법인으로부터 법인카드를 교부 받은 법인 소속 임직원이 사용할 수 있다. 
					</div>
					<div>
					<span>■</span>본인카드와 가족카드</div>
					<div>
					신용카드를 발급한 본인이 사용하는 카드가 본인카드다. 
					본인 회원의 신용을 기준으로 동일한 신용카드를 가족이 발급받아 사용하는 카드가 가족카드다.
					대금 지급 및 카드 이용에 관한 책임을 본인 회원이 부담한다. 
					</div>
					<div>
					<span>■</span>VVIP 카드, 플래티늄 카드, 일반 카드</div>
					<div>
					VVIP 카드는 CEO, 대학학장, 장관급 공무원 등 가입 자격 제한이 존재하며, 별도 심사위원회를 구성해 발급 대상을 선정한다. 연회비가 5~200만 원으로 비싸고, 기프트 바우처/스마트폰/특급호텔 멤버십 등 수준 높은 서비스가 제공된다. 

					<div>플래티늄 카드는 VVIP 카드와 일반 카드의 중간 등급이다. 연회비는 10~20만 원 선. 국내선 동반자 1인 무료 왕복 항공권, 특급호텔 무료 식사권 등 일정 수준 이상인 서비스를 제공한다. </div>

					<div>일반 카드는 VVIP 카드와 플래티늄 카드를 제외한 카드로, 일반적으로 많이 사용하는 카드를 포함한다. </div>
					</div>
					<div> 
					<span>■</span>복지카드</div>
					<div>
					소속 직원의 복리후생 증진을 위해 법인에서 소속 직원에게 발급하는 카드다. 개인에게 결제 의무가 있다. 
					</div>
					<div> 
					<span>■</span> 정부 보조금 카드</div>
					<div>
					정부에서 추진하는 바우처 사업 시행 방안으로 발급하는 카드.
					결제 건 중 정부에서 지원하는 항목의 이용금액은 결제 대금에서 자동으로 차감 청구된다.
					아이사랑 카드(보건복지부, 보육료 지원), 유류 구매 전용카드(국토해양부, 유가보조금 지급), 고운맘 카드(보건복지부, 임신·출산 진료비) 등이 있다.
					</div>
					<div> 
					<span>■</span>국내 전용 카드와 해외 겸용 카드</div>
					<div> 
					신용카드는 사용 가능 지역에 따라 국내 전용 카드와 해외 겸용 카드로 구분한다. 
					VISA, Master, Amex, JCB 등 국제 신용카드 브랜드로 발급한 카드가 해외 겸용 카드다.
					국내 전용카드와 달리 해외에서도 사용할 수 있다. 단, 해외 겸용 카드는 국내 전용 카드에 비해 연회비가 비싸다.
  					</div>
  					<div> 
					<span>■</span>전업 카드사? 겸영은행계 카드사?</div>
					<div>
					신용카드 회사는 크게 세 분류가 있다. 전업 카드사, 겸영은행계 카드사, 유통계 카드사. 
					말그대로 신용카드업을 전업으로 하는 곳이 전업 카드사이며,
					은행으로 인가를 받은 금융회사에서 신용카드까지 발급하면 겸영은행계 카드사라고 부른다.
					마지막으로 경영하고 있는 사업 성격상 신용카드업을 겸하는 것이 바람직하다고 인정되어 신용카드업을 하는 유통계 카드사(예: 현대백화점)가 있다.
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