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
				location.href = "Ctest4";
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
				<div class= "h2_w"><h2>[11번 문항]</h2></div>
				<p>새로운 취미를 시작할 때는 우선 장비부터 구매한다.</p>
				<input type="radio" name="hobby11" id="hobby11_1"><label for="hobb11_1">상당히 아니다</label>
				<input type="radio" name="hobby11" id="hobby11_2"><label for="hobb11_2">아니다</label>
				<input type="radio" name="hobby11" id="hobby11_3"><label for="hobb11_3">보통이다</label>
				<input type="radio" name="hobby11" id="hobby11_4"><label for="hobb11_4">그렇다</label>
				<input type="radio" name="hobby11" id="hobby11_5"><label for="hobb11_5">상당히 그렇다</label>
			</div>
		</div>
		<div class="content">
			<div class="content_1">
				<div class= "h2_w"><h2>[12번 문항]</h2></div>
				<p>가끔 충동적으로 큰 돈을 쓰곤 한다.</p>
				<input type="radio" name="hobby12" id="hobby12_1"><label for="hobb12_1">상당히 아니다</label>
				<input type="radio" name="hobby12" id="hobby12_2"><label for="hobb12_2">아니다</label>
				<input type="radio" name="hobby12" id="hobby12_3"><label for="hobb12_3">보통이다</label>
				<input type="radio" name="hobby12" id="hobby12_4"><label for="hobb12_4">그렇다</label>
				<input type="radio" name="hobby12" id="hobby12_5"><label for="hobb12_5">상당히 그렇다</label>
			</div>
		</div>
		<div class="content">
			<div class="content_1">
				<div class= "h2_w"><h2>[13번 문항]</h2></div>
				<p>비싸더라도 사고 싶은 물건은 꼭 사고야 만다.</p>
				<input type="radio" name="hobby13" id="hobby13_1"><label for="hobb13_1">상당히 아니다</label>
				<input type="radio" name="hobby13" id="hobby13_2"><label for="hobb13_2">아니다</label>
				<input type="radio" name="hobby13" id="hobby13_3"><label for="hobb13_3">보통이다</label>
				<input type="radio" name="hobby13" id="hobby13_4"><label for="hobb13_4">그렇다</label>
				<input type="radio" name="hobby13" id="hobby13_5"><label for="hobb13_5">상당히 그렇다</label>
			</div>
		</div>
		<div class="content">
			<div class="content_1">
				<div class= "h2_w"><h2>[14번 문항]</h2></div>
				<p>가끔은 체면을 위해 한턱 내기도 한다.</p>
				<input type="radio" name="hobby14" id="hobby14_1"><label for="hobb14_1">상당히 아니다</label>
				<input type="radio" name="hobby14" id="hobby14_2"><label for="hobb14_2">아니다</label>
				<input type="radio" name="hobby14" id="hobby14_3"><label for="hobb14_3">보통이다</label>
				<input type="radio" name="hobby14" id="hobby14_4"><label for="hobb14_4">그렇다</label>
				<input type="radio" name="hobby14" id="hobby14_5"><label for="hobb14_5">상당히 그렇다</label>
			</div>
		</div>
		<div class="content">
			<div class="content_1">
				<div class= "h2_w"><h2>[15번 문항]</h2></div>
				<p>놀러갈 때 구매 리스트에 적혀있는 것만 산다.</p>
				<input type="radio" name="hobby15" id="hobby15_1"><label for="hobb15_1">상당히 아니다</label>
				<input type="radio" name="hobby15" id="hobby15_2"><label for="hobb15_2">아니다</label>
				<input type="radio" name="hobby15" id="hobby15_3"><label for="hobb15_3">보통이다</label>
				<input type="radio" name="hobby15" id="hobby15_4"><label for="hobb15_4">그렇다</label>
				<input type="radio" name="hobby15" id="hobby15_5"><label for="hobb15_5">상당히 그렇다</label>
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