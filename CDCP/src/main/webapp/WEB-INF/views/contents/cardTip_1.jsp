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

.termes {
	border: 5px 5px 5px 5px;
	margin: 0px auto;
	height: 2800px;
	width: 100%;
	background-color: white;
	padding: 30px 40px 40px;
	max-width: 960px;
	min-width: 960px;
}

.termes > div {
	font-size: 16px;
 	line-height: 32px;
 	padding-top: 10px;
}

.termes > #guide_title {
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
	width: 940px;
	height: 700px;
}

#tipimg_1 {
	background-image: url("/cdcp/resources/images/contentimg/tipBackground/card_tip1.png");
	background-size: cover;
	width: 900px;
	height: 740px;
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
			<h2>올해부터 시행되는 신용점수제! 신용점수 올리기 꿀TIP</h2>
			<div class="Cdate">날짜 BY 등록한 사람</div>
			</div>
			<div class="termes">
					<div>
					2021년 모든 금융소비자들에게 적용되는 가장 중요한 이슈를 뽑으라면 당연히 '신용점수제' 일 것이다.
					기존의 1~10 신용등급에서 1~1000점의 신용점수제로 변화되면서 그동안 등급의 문턱에 가로막혀서 금융서비스를 받지 못했던 사람들의 불만이 어느정도 해소될 것으로 보인다.
					>>2021년 변경된 금융정책은 또 뭐가 있지?
					</div>
					<div>
					그렇다면 신용점수제에서 신용카드 발급 및 금융상품 지원 기준은 어떻게 변화했을까?
					</div>
					<table class="table">
						<tbody>
							<tr>
								<td colspan="2" style="width: 99.9459%; text-align: center; background-color: rgb(247, 218, 100);">
									<strong>신용카드 발급 기준</strong>
								</td>
							</tr>
							<tr>
								<td>
									<strong>나이스신용평가(NICE)</strong>
								</td>
								<td>680점 이상</td>
							</tr>
							<tr>
								<td>
									<strong>코리아크레딧뷰로(KCB)</strong>
								</td>
								<td>576점 이상</td>
							</tr>
							</tbody>
						</table>
						<table class="table">
						<tbody>
							<tr>
								<td colspan="2" style="width: 99.9459%; text-align: center; background-color: rgb(247, 218, 100);">
									<strong>금융상품별 신용점수제 기준</strong>
								</td>
							</tr>
							<tr>
								<td>
									<strong>금융상품</strong>
								</td>
								<td>기준점수</td>
							</tr>
							<tr>
								<td>
									<strong>서민금융상품 지원대상<br>(햇살론)</strong>
								</td>
								<td>NICE 744점 이하<br>KCB 700점 이하</td>
							</tr>
							<tr>
								<td>
									<strong>신용공여 한도 우대 기준<br>(중금리대출)</strong>
								</td>
								<td>NICE 859이하<br>KCB 820점 이하</td>
							</tr>
							<tr>
								<td>
									<strong>구속성 영업행위 해당 기준</strong>
								</td>
								<td style="width: 50%; text-align: center;">NICE 724점 이하<br>KCB 655점 이하</td>
							</tr>
							</tbody>
						</table>
						<div>
						이번 변화에 따라 신용평점 점수를 관리하는 것이 더욱 중요해졌다고 할 수 있다.
						그렇다면! 개인신용평가 점수에 반영되는 요소부터 무엇이 있는지 확인해보자.
						</div>
						<h3>1. 금융감독원 오피셜! 개인신용평가 요소</h3>
						<div class="tipimg">
							<div id="tipimg_1"></div>
						</div>
						<div>
						어떻게 보면 당연한 말이지만 '연체없이 사용한 기간이 길수록 긍정적인 평가를 받는다.'
						특히나 공공요금 납부 실적은 아직 금융거래이력이 많이 없어 정보가 부족한 사회초년생 및 대학생에게 추천한다. 
						</div>
						<div>
						대출금연체의 경우 5 영업일 이상/ 10만원 이상의 금액이 연체 되었을 시 하락할 수 있다.
						 게다가 연체기간이 길어질수록 신용평가에 장기간 반영된다. 
						 여기서 중요한 점은 연체금을 상환한다고 바로 이전의 신용점수를 회복하지 않는다.
						 즉, 연체가 여러 건일 경우 연체금액이 큰 것부터 상환하기보단 오래된 대출을 먼저 정리하는 것을 추천한다.
						</div>
						<h3>2.가점부여 항목</h3>
						<div>
						위에서 살펴본 +/- 요소에서 조금 더 세부적으로 살펴봤을 때 별도의 가점이 적용되는 항목에 대해서 짚고 넘어가보겠다.
						 개인 신용평가 시 가점을 받을 수 있는 항목은 무엇이며 얼마까지 받을 수 있을까?
						</div>
						<br>
						<h4>1) 휴대폰 요금 등 공공요금 성실 납부실적 제출</h4>
						<div>
						통신요금, 국민연금, 건강보험료, 도시가스 등 6개월이상 납부실적을 신용조회회사에 제출하게 되면 가점을 받을 수 있다.
						신용평점 가점 (5~17점)이 부여되며 6개월부터 24개월까지 기간이 길어질수록 가점폭이 확대된다.
						 대학생이나 사회초년생 등 아직 금융거래실적이 많지 않아 신용정보가 부족한 사람들에게 유익하며 신용정보가 풍부한 사람의 경우 가점폭이 축소될 수 있다고 한다.
						</div>
						<br>
						<span>Check Point</span>
						<div>
						신용조회회사 홈페이지 접속->비금융정보 반영 신청 혹은 우편,방문,팩스 등으로 제출가능
						</div>
						<br>
						<h4>2) 햇살론 등 서민금융 대출금 성실상환</h4>
						<div>
							햇살론, 미소금융 등 서민금융상품에 대해 연체없이 1년이상 성실히 상환하거나 대출원금의 50%이상 상환하는 경우 신용평점 가점(5~13)이 부여된다.
							 금융회사로부터 성실상환기록을 통보받기 때문에 별도로 상환실적을 제출할 필요는 없다.
						</div>
						<br>
						<span>Check Point</span>
						<div>
						현재 연체중인자/연체경험자/다중채무자(2개 이상 금융회사에서 대출을 받는 자) 등은 가점부여대상 제외 혹은 가점 폭이 제한될 수 있다.
						</div>
						<br>
						<h4>3) 대학/대학원 재학 시 받은 학자금대출 성실상환</h4>
						<div>
						한국장학재단 학자금 대출을 1년 이상 성실상환 시 신용평점 가점 5~45점이 부여된다.
						코리아크레딧뷰로(KCB)의 경우 대출현황 및 상환수준에 따라 가점을 부여하며 일반대출없이 '학자금대출만' 있는 경우 최대 45점까지 가점을 받을 수 있다.
						이 또한 한국장학재단 등으로부터 성실상환 명단을 통보받기 대문에 별도 상환실적을 제출할 필요는 없다.
						</div>
						<br>
						<span>Check Point</span>
						<div>
						현재 연체중인자/다중채무자(3개 이상 금융회사에서 대출을 받는 자) 등은 가점부여대상 제외 혹은 가점 폭이 제한될 수 있다.
						</div>
						<br>
						<h4>4) 체크카드를 꾸준히 사용</h4>
						<div>
						체크카드를 연체없이 월 30만원 이상 6개월 사용하거나 6~12개월을 지속적으로 사용했다면 신용평점 가점 4~40점을 받을 수 있다.
						나이스평가정보(NICE)는 체크카드 월 30만원 이상 6개월 동안 사용 시 최대 40점 가점을 부여한다. 
						금융회사 등에서 체크카드 사용실적을 신용조회회사에 통보하기 때문에 사용실적을 따로 제출할 필요는 없다.
						</div>
						<br>
						<span>Check Point</span>
						<div>
						현재 연체중인자/연체경험자/다중채무자(3개 이상 금융회사에서 대출을 받는 자) 등은 가점부여대상 제외 혹은 가점 폭이 제한될 수 있다.
						</div>
						<br>
						<h4>5) 재기 중소기업인으로 선정</h4>
						<div>
						사업실패 이후 중소기업진흥공단 등에서 재창업자금 지원 등을 받은 중소기업인의 경우 신용평점 가점 10~20점을 받을 수 있다. 
						중소기업진흥공단에서 신용조회회사에 재기기업인으로 통보하는 경우 반영된다. 
						즉, 따로 증빙자료를 제출할 필요는 없다. 그러나 현재 연체주인 자 등은 가점부여 대상에서 제외되거나 가점폭이 제한될 수 있다.
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