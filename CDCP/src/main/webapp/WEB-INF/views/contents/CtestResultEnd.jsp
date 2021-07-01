<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소비심리테스트 결과</title>
<style type="text/css">

@font-face {
  font-family: 'Cafe24Ohsquare';	
  src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/TmoneyRoundWindExtraBold.woff') format('woff');  
}
@font-face {
    font-family: 'GmarketSansLight';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansLight.woff') format('woff');
}

html, body {

    margin: 0;

    height: 100%;

}


*{
	margin: 0;
	padding: 0;
	
}


p {
 margin: 0;
 text-align: center;
 font-family: 'GmarketSansLight'; 
 font-size: 25px;
 margin-top: 50px;
}


.rayout{
    width: 100%;
    height: 100%;
    margin: 0 auto;
    
}

.title {
	
	width: 700px;
	display: block;
	background-color: #eee;
	vertical-align: top;
	text-align: center;
	font-size: 50px;
	color: blueblack;
	font-family: 'Cafe24Ohsquare';
	margin: 40px auto;
    	
}

#s_left { /* 왼쪽 사이드바 공백 레이아웃 틀 */
	width: 15%;
	height: 100%;
	float:left;
	background-color: #eee;
	min-height: 1200px;
}

#main { /* 가운데 메인 내용 틀 */
	width: 70%;
	height: 100%;
	float:left;
	background: #eee;
	min-height: 1200px;
}

#s_right { /* 오른쪽 사이드 바 공백 레이아웃 틀 */
	width: 15%;
	height: 100%;
	float:left;
	background-color: #eee;
	min-height: 1200px;
}



.content { /* main > 하위 요소 내용 틀 */

	width: 100%;
	height: 500px;
	margin: 30px auto;
	min-width: 900px;
		
}

#content_1 {
	
	padding-top: 60px;
	width: 70%;
	height: 500px;
	margin: 0 auto;
	min-width: 900px;
	max-width: 1100px;
	border-radius: 15px 15px 15px 15px;
}



input[type="radio"] {
	margin-left: 110px;
	margin-top: 40px;
 
  
}

#sobiButton {
	width: 100%;
    text-align: center;
    padding-top: 45px;	
    min-width: 900px;
}

#sobiButton input[type='button'] {
	width: 80%;
    height: 80px;
    color: white;
    border-style: none;
    background-color: #868e96;
    border-radius: 8px;
    font-weight: 700;
    font-size: 18px;
    font-family: GmarketSansMedium;
    margin: 0 auto;
}

#sobiButton input[type='button']:hover {
	background-color:#FFD400;
	color:#282C37;
	cursor: pointer;
}

#resultimg {

	vertical-align: top;
	background-image: url("/cdcp/resources/images/contentimg/test_food.png");
	background-repeat: no-repeat;
	background-size: 180px;
	width: 180px;
	height: 180px;
	text-align: center;
	margin: 0px auto;
}


.card_wrap {
	
	width: 400px;
	height: 310px;
	margin: 0px auto;
	
}

#card_img_1, #card_img_2 {
	
	display: inline-block;
	background-repeat: no-repeat;
	background-size: 180px;
	width: 180px;
	height: 300px;
	
}

#card_img_1 {
	background-image: url("/cdcp/resources/images/contentimg/moomincard.png");
}
#card_img_2 {
	background-image: url("/cdcp/resources/images/contentimg/moomincard2.png");
}

</style>
</head>
<body>

<!-- 메인영역(소비심리테스트) -->
<div class="rayout">
	<div id="s_left"></div>
	<div id="main">
	<div class="title">소비심리테스트 결과</div>
		<div class="content">
			<div id="content_1">
				<div id="resultimg"></div>
				<p>음식 앞에선 진심인 당신 !</p>
				<p>외식 / 배달 위주의 카드를 추천드립니다 !!</p>
			</div>
		</div>
		<div class="card_wrap">
		<div id="card_img_1"></div>
		<div id="card_img_2"></div>
		</div>
	<div id="sobiButton">
		<input type="button" value="카드 확인하러 가기" id="resultend" />
	</div>	
	</div>	
	<div id="s_right"></div>						
</div>
	
</body>
</html>