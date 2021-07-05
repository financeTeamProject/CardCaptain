<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테스트문항(1)</title>
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
 font-size: 25px;
 margin-top: 20px;
}

html, body {

    margin: 0;
    height: 100%;
	background-color: #eee;

}

h2 {
	margin-left: 40px;	
}

.h2_w {
	padding-top: 20px;
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
}

#main { /* 가운데 메인 내용 틀 */
	width: 70%;
	height: 100;
	float:left;
	background: #eee;
}

#s_right { /* 오른쪽 사이드 바 공백 레이아웃 틀 */
	width: 15%;
	height: 100;
	float:left;
	background-color: #eee;
}



.content { /* main > 하위 요소 내용 틀 */
	width: 100%;
	height: inherit;
	margin: 30px auto;	
}

.content_1 {
	width: 70%;
	height: 220px;
	margin: 0 auto;
	min-width: 1100px;
	max-width: 1100px;
	border-radius: 15px 15px 15px 15px;
	background-color: white;
}



input[type="radio"] {
	height: 25px;
	width: 25px;
	margin: 30px 10px 0 70px;
}

#sobiButton {
	width: 100%;
    display: inline-block;
    text-align: center	
}

#sobiButton input[type='button'] {
	width: 1100px;
    height: 80px;
    color: white;
    border-style: none;
    background-color: #868e96;
    border-radius: 8px;
    font-weight: 700;
    font-size: 30px;
    font-family: GmarketSansMedium;
    margin: 0 auto;
}

#sobiButton input[type='button']:hover {
	background-color:#FFD400;
	color:#282C37;
	cursor: pointer;
}

label  {
	font-size: 20px;
	position: relative;
	top: -4.5px;
}
</style>
<script type="text/javascript"
				src="resources/script/jquery/jquery-1.12.4.min.js"></script>
		<script type="text/javascript">
		
		$(document).ready(function() {
			
			$("#sobiButton").on("click", function() {
				location.href = "Ctest3";
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
			<div class="content_1">
				<div class= "h2_w"><h2>[6번 문항]</h2></div>
				<p>친구들과 놀러 갈 때 자기 돈은 최대한 쓰지 않으려 한다.</p>
				<input type="radio" name="hobby6" id="hobby6_1"><label for="hobb6_1">상당히 아니다</label>
				<input type="radio" name="hobby6" id="hobby6_2"><label for="hobb6_2">아니다</label>
				<input type="radio" name="hobby6" id="hobby6_3"><label for="hobb6_3">보통이다</label>
				<input type="radio" name="hobby6" id="hobby6_4"><label for="hobb6_4">그렇다</label>
				<input type="radio" name="hobby6" id="hobby6_5"><label for="hobb6_5">상당히 그렇다</label>
			</div>
		</div>
		<div class="content">
			<div class="content_1">
				<div class= "h2_w"><h2>[7번 문항]</h2></div>
				<p>친구나 가족에 대한 책임감이 강한 편이다.</p>
				<input type="radio" name="hobby7" id="hobby7_1"><label for="hobb7_1">상당히 아니다</label>
				<input type="radio" name="hobby7" id="hobby7_2"><label for="hobb7_2">아니다</label>
				<input type="radio" name="hobby7" id="hobby7_3"><label for="hobb7_3">보통이다</label>
				<input type="radio" name="hobby7" id="hobby7_4"><label for="hobb7_4">그렇다</label>
				<input type="radio" name="hobby7" id="hobby7_5"><label for="hobb7_5">상당히 그렇다</label>
			</div>
		</div>
		<div class="content">
			<div class="content_1">
				<div class= "h2_w"><h2>[8번 문항]</h2></div>
				<p>가끔은 나를 위한 선물을 한다.</p>
				<input type="radio" name="hobby8" id="hobby8_1"><label for="hobb8_1">상당히 아니다</label>
				<input type="radio" name="hobby8" id="hobby8_2"><label for="hobb8_2">아니다</label>
				<input type="radio" name="hobby8" id="hobby8_3"><label for="hobb8_3">보통이다</label>
				<input type="radio" name="hobby8" id="hobby8_4"><label for="hobb8_4">그렇다</label>
				<input type="radio" name="hobby8" id="hobby8_5"><label for="hobb8_5">상당히 그렇다</label>
			</div>
		</div>
		<div class="content">
			<div class="content_1">
				<div class= "h2_w"><h2>[9번 문항]</h2></div>
				<p>생일 때 지인들에게 선물을 많이 받는 편이다.</p>
				<input type="radio" name="hobby9" id="hobby9_1"><label for="hobb9_1">상당히 아니다</label>
				<input type="radio" name="hobby9" id="hobby9_2"><label for="hobb9_2">아니다</label>
				<input type="radio" name="hobby9" id="hobby9_3"><label for="hobb9_3">보통이다</label>
				<input type="radio" name="hobby9" id="hobby9_4"><label for="hobb9_4">그렇다</label>
				<input type="radio" name="hobby9" id="hobby9_5"><label for="hobb9_5">상당히 그렇다</label>
			</div>
		</div>
		<div class="content">
			<div class="content_1">
				<div class= "h2_w"><h2>[10번 문항]</h2></div>
				<p>지인과의 식사나 술자리를 갖을 때 먼저 계산하는 편이다.</p>
				<input type="radio" name="hobby10" id="hobby10_1"><label for="hobb10_1">상당히 아니다</label>
				<input type="radio" name="hobby10" id="hobby10_2"><label for="hobb10_2">아니다</label>
				<input type="radio" name="hobby10" id="hobby10_3"><label for="hobb10_3">보통이다</label>
				<input type="radio" name="hobby10" id="hobby10_4"><label for="hobb10_4">그렇다</label>
				<input type="radio" name="hobby10" id="hobby10_5"><label for="hobb10_5">상당히 그렇다</label>
			</div>
		</div>
	<div id="sobiButton">
		<input type="button" value="다음" id="next" />
	</div>	
	</div>
	
	<div id="s_right"></div>						
</div>
	
</body>
</html>