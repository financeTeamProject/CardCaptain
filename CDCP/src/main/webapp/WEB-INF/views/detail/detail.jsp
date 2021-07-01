<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type = "text/css">

@font-face {
    font-family: 'Cafe24Ohsquare';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/Cafe24Ohsquare.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}


@font-face {

    font-family: 'GmarketSansMedium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}


.full{
	
	width:100%;
	height: 100%;
	margin: 0 auto;
	text-algin:center;
	background-color:#f5f6f7;
				
}	
	
	
.menu{

	width:100%;
	height : 9%;
	background-color : #0047ab;
	border-radius:5px;
	margin: 0 auto;
	
	
}

.menu1{
				
	width : 80%;
	height : 9%;
	color :white;
	margin : 0 auto;
	font-weight : bold;
	font-family: 'Cafe24Ohsquare';	
		
}

#m1{
		
	width :20%;
	cursor:pointer;
	
}

#m2{
	
	font-size : 20px;
	margin-left : 43%;
	padding : 10px 10px 10px 10px;
	cursor:pointer;
	position:relative;
	bottom:10px;
	
}

#m2:hover{

	cursor:pointer;
	color:#f5df4d;

}

#m3:hover{

	cursor:pointer;
	color:#f5df4d;

}

#m4:hover{

	cursor:pointer;
	color:#f5df4d;

}

#m5:hover{

	cursor:pointer;
	color:#f5df4d;

}

#m3{

	font-size : 20px;
	padding : 10px 10px 10px 10px;
	cursor:pointer;
	position:relative;
	bottom:10px;
}


#m4{

	font-size : 20px;
	padding : 10px 10px 10px 10px;
	cursor:pointer;
	position:relative;
	bottom:10px;
}


#m5{

	font-size : 20px;
	padding : 10px 10px 10px 10px;
	cursor:pointer;
	position:relative;
	bottom:10px;
	
}


#m6{
		
	position:relative;
	cursor:pointer;
	
}


.middle{


	width:96%;
	height:80%;
	display:block;
	background-color:#f5f6f7;
		
}


#middleleft{

	width:9%;
	height:80%;
	display:inline-block;
	vertical-align:top;
	
}


/*본문내용 시작  */



#middlemain{

	width:80%;
	height:800px;
	display:inline-block;
	vertical-align:top;
	
	
}


/* 소제목 - 메달 올림픽  */

#ma1{
	
	
	text-align: center;
    border: 0px solid #ffffff;
    font-size: 35px;
    font-family: 'Cafe24Ohsquare';
    background-color: #f5f6f7;
    color: gold;
    margin-left: 44%;
    position: relative;
    bottom: 32%;
	
	
}


/* 금메달  */
#gold {
    position: absolute;
    right: 47%;
    top: 650px;
    
}



/*롯데카드 */

#ma3 {

    position: relative;
    top: 18%;
    right: 44%;

}


#ma4{
	
	font-family: 'GmarketSansMedium';
    position: relative;
    left: 24%;
    top: 18%;
    font-weight: bold;
    font-style: italic;
    padding: 10px 10px 10px 10px;
}

/* 화살표 */

#ma5{
	
	position:relative;
	top:31%;
	left:31%;
	

}

#ma6{

	position:relative;
	top:31%;
	left:60%;
	cursor:pointer;	
	
}

/*캡틴 골드 */

#ma7{

	position:relative;
	left:70%;
	top:33%;
	width:100px;
	height:100px;

}

/* 베스트  */

#ma8{

	position:relative;
	top:15%;
	left:4%;
	

}



/* 혜택  */

	
#o{
	
    padding: 10px 10px 10px 10px;
    margin-left: 50%;
    position: absolute;
    top: 200px;
     
}



#o1{
	
	position:relative;
	left:25%;
	font-family: 'Cafe24Ohsquare';
	font-size:18px;
	color:white;
	background-color:#0047ab;
	margin:20px;
	height: 40px;
	width : 120px;
	border: 0px solid #000000;
	text-align : center;
	
}


#o2 , #o3 , #o4{
	
	
	font-family: 'GmarketSansMedium';
	font-size:15px;
	font-style : italic;
	color:orange;
	background-color:white;
	margin:20px;
	height: 50px;
	width : 250px;
	border: 1px solid #000000;
	text-align : center;
	text-decoration: underline;
	box-shadow : 2px 2px 2px 2px #000000;


}



#o5{
		
	position:relative;
	left:50%;	
	font-family: 'GmarketSansMedium';
	font-size:14px;
	font-weight:bold;
	color:black;
	background-color:#f5f6f7;
	margin:20px;
	height: 30px;
	border: 0px solid #000000;
	width : 80px;
	text-align : center;
		
}

#o6{

	position:relative;
	left:38%;
	top:6px;
	

}




/* 메인 중간 끝   */


#middleright{

	width:9%;
	height:90%;
	display:inline-block;
	vertical-align:top;
	
}


/* 풋터  */

#footer{

width: 100%;
height: 10%;
border-radius: 5px;
background-color: #939597;
		
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
	background-detail: url("../weDoument/detailFolder/logo_white.png");
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

<div class = "full"> <!-- 전체 시작 -->


<div class = "menu">
<div class = "menu1">
<span id = "m1"><img alt = "로고" src = "/cdcp/detail/Logo1.png" width = "230px"></span>
<span id = "m2">카드검색/비교</span>
<span id = "m3">컨텐츠</span>
<span id = "m4">카드순위</span>
<span id = "m5">로그인</span>
<span id = "m6"><img alt = "로그인" src = "/cdcp/detail/login_white.png" width = "30px"></span>
</div> 
</div>


<div class = "middle">
<div id = "middleleft"></div>

<!-- 메인 본문 시작  --> 


<div id = "middlemain">
<input type = "text" id = "ma1" value = "<메달 올림픽>" size= "10px;" disabled >
<img alt="금메달" id = "gold" src="detail/Gold.png" width="100px;" height="200px;">
<img alt="롯데카드" id = "ma3" src="detail/Card1.png" width="220px;" height="350px;">
<div id="ma4">롯데 Like it 카드</div>
<img alt = "왼쪽화살표" id = "ma5" src="${pageContext.request.contextPath}/resources/images/detail/left.png"; width="80px"; height="80px";>
<img alt = "오른쪽화살표" id = "ma6" src = "${pageContext.request.contextPath}/resources/images/detail/right.png" width="80px"; height="80px";>
<img alt = "캡틴골드" id = "ma7" src = "${pageContext.request.contextPath}/resources/images/detail/Hero(Gold).png">
<img alt="베스트" id = "ma8" src="${pageContext.request.contextPath}/resources/images/detail/Best.png" width="60px;" height="70px;">


<div id="o">
<input type="text" id="o1" value="혜택" readonly="readonly">
<br>
<input type="text" id="o2" value="스타벅스최대  60% 할인" readonly="readonly">
<br>
<input type="text" id="o3" value="롯데시네마/CGV 50% 할인" readonly="readonly">
<br>
<input type="text" id="o4" value="배달앱 5% 할인" readonly="readonly">
<br>
<input type="text" id="o5" value="상세보기" disabled>
<img alt="상세보기" src="detail/Plus.png" id="o6" width="30px;" style="cursor:pointer;"><br>
</div>




</div>
</div>

<!--메인 본문 끝  --> 

<div id = "middleright"></div>

<!--  -->

<div id="footer">
		<div id="footerMenu">
			<div id="footerLogo"></div>
			<div>서울시 금천구 가산디지털2로 115,509호,811호,1109-1호(가산동,대륭테크노타운3차) 금융조 조장 : 주건정</div>
			<div>Copyright © 2021-2031 CardCaptain All Rights Reserved.</div>

</div>
</div>	<!-- 풋터 끝 -->


</div>	<!-- 전체 끝  -->

</body>
</html>


