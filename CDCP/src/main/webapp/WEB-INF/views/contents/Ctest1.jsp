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

#h2_w {
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
	height: 300px;
	margin: 30px auto;	
}

#content_1 {
	width: 70%;
	height: 220px;
	margin: 0 auto;
	min-width: 1100px;
	max-width: 1100px;
	border-radius: 15px 15px 15px 15px;
	background-color: white;
}



input[type="radio"] {
	margin-left: 80px;
	height: 25px;
	width: 25px;
	margin-top: 30px;
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
	line-height: 25px;
}
</style>
</head>
<body>

<!-- 메인영역(소비심리테스트) -->
<div class="rayout">
	<div id="s_left"></div>
	<div id="main">
	<div class="title">소비심리테스트</div>
		<div class="content">
			<div id="content_1">
				<div id= "h2_w"><h2>[1번 문항]</h2></div>
				<p>기억에 남는 여행을 하는것이 명품을 사는 것보다 좋다.</p>
				<label for="hobby1_1"><input type="radio" name="hobby1" id="hobby1_1">상당히 아니다</label>
				<label for="hobby1_2"><input type="radio" name="hobby1" id="hobby1_2">아니다</label>
				<label for="hobby1_3"><input type="radio" name="hobby1" id="hobby1_3">보통이다</label>
				<label for="hobby1_4"><input type="radio" name="hobby1" id="hobby1_4">그렇다</label>
				<label for="hobby1_5"><input type="radio" name="hobby1" id="hobby1_5">상당히 그렇다</label>
			</div>
		</div>
		<div class="content">
			<div id="content_1">
				<div id= "h2_w"><h2>[2번 문항]</h2></div>
				<p>쇼핑을 하는 것이 무 엇보다 더 즐겁다.</p>
				<label for="hobby2_1"><input type="radio" name="hobby2" id="hobby2_1">상당히 아니다</label>
				<label for="hobby2_2"><input type="radio" name="hobby2" id="hobby2_2">아니다</label>
				<label for="hobby2_3"><input type="radio" name="hobby2" id="hobby2_3">보통이다</label>
				<label for="hobby2_4"><input type="radio" name="hobby2" id="hobby2_4">그렇다</label>
				<label for="hobby2_5"><input type="radio" name="hobby2" id="hobby2_5">상당히 그렇다</label>
			</div>
		</div>
		<div class="content">
			<div id="content_1">
				<div id= "h2_w"><h2>[3번 문항]</h2></div>
				<p>소득이 줄어들면 문화생활을 줄일 것이다.</p>
				<label for="hobby3_1"><input type="radio" name="hobby3" id="hobby3_1">상당히 아니다</label>
				<label for="hobby3_2"><input type="radio" name="hobby3" id="hobby3_2">아니다</label>
				<label for="hobby3_3"><input type="radio" name="hobby3" id="hobby3_3">보통이다</label>
				<label for="hobby3_4"><input type="radio" name="hobby3" id="hobby3_4">그렇다</label>
				<label for="hobby3_5"><input type="radio" name="hobby3" id="hobby3_5">상당히 그렇다</label>
			</div>
		</div>
		<div class="content">
			<div id="content_1">
				<div id= "h2_w"><h2>[4번 문항]</h2></div>
				<p>커피의 가격보다는 카페의 분위기가 더 중요하다.</p>
				<label for="hobby4_1"><input type="radio" name="hobby4" id="hobby4_1">상당히 아니다</label>
				<label for="hobby4_2"><input type="radio" name="hobby4" id="hobby4_2">아니다</label>
				<label for="hobby4_3"><input type="radio" name="hobby4" id="hobby4_3">보통이다</label>
				<label for="hobby4_4"><input type="radio" name="hobby4" id="hobby4_4">그렇다</label>
				<label for="hobby4_5"><input type="radio" name="hobby4" id="hobby4_5">상당히 그렇다</label>
			</div>
		</div>
		<div class="content">
			<div id="content_1">
				<div id= "h2_w"><h2>[5번 문항]</h2></div>
				<p>한정판은 비싸더라도 사볼만 하다.</p>
				<label for="hobby5_1"><input type="radio" name="hobby5" id="hobby5_1">상당히 아니다</label>
				<label for="hobby5_2"><input type="radio" name="hobby5" id="hobby5_2">아니다</label>
				<label for="hobby5_3"><input type="radio" name="hobby5" id="hobby5_3">보통이다</label>
				<label for="hobby5_4"><input type="radio" name="hobby5" id="hobby5_4">그렇다</label>
				<label for="hobby5_5"><input type="radio" name="hobby5" id="hobby5_5">상당히 그렇다</label>
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