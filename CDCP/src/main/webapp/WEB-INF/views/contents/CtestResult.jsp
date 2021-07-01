<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소비심리테스트 결과확인</title>
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
	background-color: #eee;

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
	font-size: 60px;
	color: blueblack;
	font-family: 'Cafe24Ohsquare';
	margin: 40px auto;
    	
}

#s_left { /* 왼쪽 사이드바 공백 레이아웃 틀 */
	width: 15%;
	height: 100%;
	float:left;
	background-color: #eee;
}

#main { /* 가운데 메인 내용 틀 */
	width: 70%;
	height: 100%;
	float:left;
	background: #eee;
}

#s_right { /* 오른쪽 사이드 바 공백 레이아웃 틀 */
	width: 15%;
	height: 100%;
	float:left;
	background-color: #eee;
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

#resulimg {

	vertical-align: top;
	background-image: url("/cdcp/resources/images/contentimg/icon_complete.png");
	background-repeat: no-repeat;
	background-size: 180px;
	width: 180px;
	height: 180px;
	text-align: center;
	margin: 0px auto;
}
</style>
<script type="text/javascript"
				src="resources/script/jquery/jquery-1.12.4.min.js"></script>
		<script type="text/javascript">
		
		$(document).ready(function() {
			
			$("#sobiButton").on("click", function() {
				location.href = "CtestResultEnd";
			});
		});	
		
		
</script>
</head>
<body>

<!-- 메인영역(소비심리테스트) -->
<div class="rayout">
	<div id="s_left"></div>
	<div id="main">
	<div class="title">소비심리테스트</div>
		<div class="content">
			<div id="content_1">
				<div id="resulimg"></div>
				<p>테스트가 완료되었습니다</p>
				<p>결과를 확인하세요!!!!</p>
			</div>
		</div>
	<div id="sobiButton">
		<input type="button" value="결과" id="result" />
	</div>	
	</div>	
	<div id="s_right"></div>						
</div>
	
</body>
</html>