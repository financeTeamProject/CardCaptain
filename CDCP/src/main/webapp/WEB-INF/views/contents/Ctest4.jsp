<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테스트문항(4)</title>
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
<script type="text/javascript"
				src="resources/script/jquery/jquery-1.12.4.min.js"></script>
		<script type="text/javascript">
		
		$(document).ready(function() {
			
			$("#sobiButton").on("click", function() {
				location.href = "CtestResult";
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
				<div id= "h2_w"><h2>[16번 문항]</h2></div>
				<p>3보이상은 걷는 것보다는 택시를 이용하는 편이다.</p>
				<label for="hobby16_1"><input type="radio" name="hobby16" id="hobby16_1">상당히 아니다</label>
				<label for="hobby16_2"><input type="radio" name="hobby16" id="hobby16_2">아니다</label>
				<label for="hobby16_3"><input type="radio" name="hobby16" id="hobby16_3">보통이다</label>
				<label for="hobby16_4"><input type="radio" name="hobby16" id="hobby16_4">그렇다</label>
				<label for="hobby16_5"><input type="radio" name="hobby16" id="hobby16_5">상당히 그렇다</label>
			</div>
		</div>
		<div class="content">
			<div id="content_1">
				<div id= "h2_w"><h2>[17번 문항]</h2></div>
				<p>티끌이라도 모으는 편이다.</p>
				<label for="hobby17_1"><input type="radio" name="hobby17" id="hobby17_1">상당히 아니다</label>
				<label for="hobby17_2"><input type="radio" name="hobby17" id="hobby17_2">아니다</label>
				<label for="hobby17_3"><input type="radio" name="hobby17" id="hobby17_3">보통이다</label>
				<label for="hobby17_4"><input type="radio" name="hobby17" id="hobby17_4">그렇다</label>
				<label for="hobby17_5"><input type="radio" name="hobby17" id="hobby17_5">상당히 그렇다</label>
			</div>
		</div>
		<div class="content">
			<div id="content_1">
				<div id= "h2_w"><h2>[18번 문항]</h2></div>
				<p>갖고싶은거는 못 참는 편이다.</p>
				<label for="hobby18_1"><input type="radio" name="hobby18" id="hobby18_1">상당히 아니다</label>
				<label for="hobby18_2"><input type="radio" name="hobby18" id="hobby18_2">아니다</label>
				<label for="hobby18_3"><input type="radio" name="hobby18" id="hobby18_3">보통이다</label>
				<label for="hobby18_4"><input type="radio" name="hobby18" id="hobby18_4">그렇다</label>
				<label for="hobby18_5"><input type="radio" name="hobby18" id="hobby18_5">상당히 그렇다</label>
			</div>
		</div>
		<div class="content">
			<div id="content_1">
				<div id= "h2_w"><h2>[19번 문항]</h2></div>
				<p>신용카드 대금을 연체한 적이 있다.</p>
				<label for="hobby19_1"><input type="radio" name="hobby19" id="hobby19_1">상당히 아니다</label>
				<label for="hobby19_2"><input type="radio" name="hobby19" id="hobby19_2">아니다</label>
				<label for="hobby19_3"><input type="radio" name="hobby19" id="hobby19_3">보통이다</label>
				<label for="hobby19_4"><input type="radio" name="hobby19" id="hobby19_4">그렇다</label>
				<label for="hobby19_5"><input type="radio" name="hobby19" id="hobby19_5">상당히 그렇다</label>
			</div>
		</div>
		<div class="content">
			<div id="content_1">
				<div id= "h2_w"><h2>[20번 문항]</h2></div>
				<p>돈보다는 사랑이 좋다.</p>
				<label for="hobby20_1"><input type="radio" name="hobby20" id="hobby20_1">상당히 아니다</label>
				<label for="hobby20_2"><input type="radio" name="hobby20" id="hobby20_2">아니다</label>
				<label for="hobby20_3"><input type="radio" name="hobby20" id="hobby20_3">보통이다</label>
				<label for="hobby20_4"><input type="radio" name="hobby20" id="hobby20_4">그렇다</label>
				<label for="hobby20_5"><input type="radio" name="hobby20" id="hobby20_5">상당히 그렇다</label>
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