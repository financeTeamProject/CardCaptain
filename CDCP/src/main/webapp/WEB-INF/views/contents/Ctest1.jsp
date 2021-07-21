<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		
	
			function findChecked() {
			    var found = 0;
			    
			    $("#main input[type='radio']:checked").each(function() {
			    	found += $(this).val() * 1;
			    });
			    
			    if(found != 0)
			        alert(found);
			    else
			        alert("선택된 것이 없음");
			}	
			
		
</script>
</head>
<body>
<!-- 메인영역(소비심리테스트) -->
<div class="rayout">
	<div id="s_left"></div>
	<div id="main">
	<div class="title">소비심리테스트</div>
	<c:forEach var = "i" begin = "0" end = "4">
		<div class="content">
			<div class="content_1">
				<div class= "h2_w"><h2>[${list[i].TEST_NO}번 문항]</h2></div>
				<p>${list[i].CONTENT}</p>
				<input type="radio" name="hobby${list[i].TEST_NO}" id="hobby${list[i].TEST_NO}_1" value="1" checked><label for="hobby${list[i].TEST_NO}_1">상당히 아니다</label>
				<input type="radio" name="hobby${list[i].TEST_NO}" id="hobby${list[i].TEST_NO}_2" value="2"><label for="hobby${list[i].TEST_NO}_2">아니다</label>
				<input type="radio" name="hobby${list[i].TEST_NO}" id="hobby${list[i].TEST_NO}_3" value="3"><label for="hobby${list[i].TEST_NO}_3">보통이다</label>
				<input type="radio" name="hobby${list[i].TEST_NO}" id="hobby${list[i].TEST_NO}_4" value="4"><label for="hobby${list[i].TEST_NO}_4">그렇다</label>
				<input type="radio" name="hobby${list[i].TEST_NO}" id="hobby${list[i].TEST_NO}_5" value="5"><label for="hobby${list[i].TEST_NO}_5">상당히 그렇다</label>
			</div>
		</div>
	</c:forEach>
	<div id="sobiButton">
		<input type="submit" value="다음" id="next" onclick="findChecked()" />
	</div>	
	</div>
	<div id="s_right"></div>						
</div>
	
</body>
</html>