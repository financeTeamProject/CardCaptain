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

#sobiButton input[type='submit'] {
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

#sobiButton input[type='submit']:hover {
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
				location.href = "Ctest2";
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
				<div class= "h2_w"><h2>[1번 문항]</h2></div>
				<p>기억에 남는 여행을 하는것이 명품을 사는 것보다 좋다.</p>
				<input type="radio" name="hobby1" id="hobby1_1" value="1" checked><label for="hobb1_1">상당히 아니다</label>
				<input type="radio" name="hobby1" id="hobby1_2" value="2"><label for="hobb1_2">아니다</label>
				<input type="radio" name="hobby1" id="hobby1_3" value="3"><label for="hobb1_3">보통이다</label>
				<input type="radio" name="hobby1" id="hobby1_4" value="4"><label for="hobb1_4">그렇다</label>
				<input type="radio" name="hobby1" id="hobby1_5" value="5"><label for="hobb1_5">상당히 그렇다</label>
			</div>
		</div>
		<div class="content">
			<div class="content_1">
				<div class= "h2_w"><h2>[2번 문항]</h2></div>
				<p>쇼핑을 하는 것이 무엇보다 더 즐겁다.</p>
				<input type="radio" name="hobby2" id="hobby2_1" value="1" checked><label for="hobb2_1">상당히 아니다</label>
				<input type="radio" name="hobby2" id="hobby2_2" value="2"><label for="hobb2_2">아니다</label>
				<input type="radio" name="hobby2" id="hobby2_3" value="3"><label for="hobb2_3">보통이다</label>
				<input type="radio" name="hobby2" id="hobby2_4" value="4"><label for="hobb2_4">그렇다</label>
				<input type="radio" name="hobby2" id="hobby2_5" value="5"><label for="hobb2_5">상당히 그렇다</label>
			</div>
		</div>
		<div class="content">
			<div class="content_1">
				<div class= "h2_w"><h2>[3번 문항]</h2></div>
				<p>소득이 줄어들면 문화생활을 줄일 것이다.</p>
				<input type="radio" name="hobby3" id="hobby3_1" value="1" checked><label for="hobb3_1">상당히 아니다</label>
				<input type="radio" name="hobby3" id="hobby3_2" value="2"><label for="hobb3_2">아니다</label>
				<input type="radio" name="hobby3" id="hobby3_3" value="3"><label for="hobb3_3">보통이다</label>
				<input type="radio" name="hobby3" id="hobby3_4" value="4"><label for="hobb3_4">그렇다</label>
				<input type="radio" name="hobby3" id="hobby3_5" value="5"><label for="hobb3_5">상당히 그렇다</label>
			</div>
		</div>
		<div class="content">
			<div class="content_1">
				<div class= "h2_w"><h2>[4번 문항]</h2></div>
				<p>커피의 가격보다는 카페의 분위기가 더 중요하다.</p>
				<input type="radio" name="hobby4" id="hobby4_1" value="1" checked><label for="hobb4_1">상당히 아니다</label>
				<input type="radio" name="hobby4" id="hobby4_2" value="2"><label for="hobb4_2">아니다</label>
				<input type="radio" name="hobby4" id="hobby4_3" value="3"><label for="hobb4_3">보통이다</label>
				<input type="radio" name="hobby4" id="hobby4_4" value="4"><label for="hobb4_4">그렇다</label>
				<input type="radio" name="hobby4" id="hobby4_5" value="5"><label for="hobb4_5">상당히 그렇다</label>
			</div>
		</div>
		<div class="content">
			<div class="content_1">
				<div class= "h2_w"><h2>[5번 문항]</h2></div>
				<p>한정판은 비싸더라도 사볼만 하다.</p>
				<input type="radio" name="hobby5" id="hobby5_1" value="1" checked><label for="hobb5_1">상당히 아니다</label>
				<input type="radio" name="hobby5" id="hobby5_2" value="2"><label for="hobb5_2">아니다</label>
				<input type="radio" name="hobby5" id="hobby5_3" value="3"><label for="hobb5_3">보통이다</label>
				<input type="radio" name="hobby5" id="hobby5_4" value="4"><label for="hobb5_4">그렇다</label>
				<input type="radio" name="hobby5" id="hobby5_5" value="5"><label for="hobb5_5">상당히 그렇다</label>
			</div>
		</div>
	<div id="sobiButton">
		<input type="submit" value="다음" id="next" />
	</div>	
	</div>
	<div id="s_right"></div>						
</div>
	
</body>
</html>