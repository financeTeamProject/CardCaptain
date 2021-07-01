<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type = "text/javascript">
		
	$(document).ready(function(){
				
		
		$("#bi").hide();
		
		
		$("#c5").on("click",function(){
			
			$("#bi").hide();
			$("#bi").fadeIn();
					
		
		});
		
		
		$("#bi").on("click",function(){
			
			makePopup();
		
			
		});
		
		
	});
				
			
		function makePopup(){
			
			var html = "<div class = \"Popup\">"
				+ "<input type = \"button\" id = \"p1\" value = \"상세보기\"  readonly = \"readonly\" >"
				+ "<input type = \"button\" id = \"p2\" value = \"취소\"  readonly = \"readonly\" >"
				+ "</div>"
								
				
				$("body").prepend(html);
				$(".Popup").hide().fadeIn();
						
			
			$("#p2").off("click");
			$("#p2").on("click",function(){
				
				closePopup();
																	
			});
			
		}				
		
			
	
	function closePopup(){
		
		$(".Popup").fadeOut(function(){
			
			$(".Popup").remove();
			
		});
	
	}
	
	
</script>

<style type = "text/css">


#bi{
		
	cursor:pointer;
	position: relative;
	top:90%;
	position: fixed;
	background-color:#0047ab;
	color : white;
	width: 150px;
	height: 80px;
	text-align:center;
	line-height:50px;
	font-weight:bold;
	font-size:24px;
	font-family: 'Cafe24Ohsquare';
	z-index:200;
	
	
}


.Popup{

	z-index:150;
	
}


#p1{
	
	font-size:15px;
	position:relative;
	top:85%;
	position: fixed;
	padding:10px;
	background-color:#939597;
	color:white;
	font-family: 'Cafe24Ohsquare';
	border:0px;
	cursor:pointer;
	z-index:150;
	
}


#p2{

	font-size:15px;
	position:relative;
	top:85%;
	left:115px;
	position: fixed;
	padding:10px;
	background-color:#939597;
	color:white;
	font-family: 'Cafe24Ohsquare';
	border:0px;
	cursor:pointer;
	z-index:150;
	
}


.Popdown{
		
	display:inline-block;
	width:100%;
	height:100%;
	position: fixed;
	top:0;
	left:0;
	z-index: 100;
	opacity: 0.3; /* 0.0(투명) ~ 1.0(불투명)  */
			
}


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
			
	margin:0 auto;
	width:100%;
	height: 100%;
	z-index:50;
		
}	
	
.menu{
	
	width:100%;
	height : 10%;
	background-color : #0047ab;
	border-radius:5px;
	margin:0 auto;
	
}

.menu1{
		
	width : 80%;
	height : 10%;
	margin : 0px auto;
	color :white;
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

	margin-left : 1130px;
	position:relative;
	bottom:40px;
	cursor:pointer;
	
}


.middle{

	width:100%;
	height:79%;
	display:block;
	background-color:#f5f6f7;
		
}

#middleleft{

	width:10%;
	height:79%;
	display:inline-block;
	vertical-align:top;
	
}


#middlemain{


	width:80%;
	height:79%;
	display:inline-block;
	vertical-align:top;
	background-color:#f5f6f7;
	border-radius:40px;
	margin:0 auto;
		
}

#maintop{

	margin:0 auto;

}

#mainmain{

	margin:0 auto;
}

#mainbottom{
	
	margin:0 auto;

}

#m0{

	text-align:center;
	font-family: 'Cafe24Ohsquare';
	font-size : 30px;
	position:relative;
	top:50px;
	
}


#mA{

	position:relative;
	top:150px;
	
}


#a1{

	padding:10px;
	

}

#a2{
		
	padding:20px;
	font-size : 20px;
	font-weight : bold;
	color : #f5df4d;
	width : 180px;
	height: 30px;
	border: 1px solid #939597;
	text-align:center;
	font-family: 'Cafe24Ohsquare';

}

#mA1{

	position:relative;
	top:240px;	
	left:100px;
	
}

#a3{

	font-size:24px;
	color:#0047ab;
	font-weight:bold;
	padding:10px;
	font-family: 'Cafe24Ohsquare';
}


#a4{
	
	font-size:24px;
	color:#0047ab;
	font-weight:bold;
	padding:10px;
	font-family: 'Cafe24Ohsquare';
	
}


#mB{

	text-align :center;
	position:relative;
	bottom:200px;
	
}

#b1{
	
	padding:10px;
	
	
}

#b2{
	
	font-family: 'Cafe24Ohsquare';	
	font-size:20px;
	color:orange;
	font-style:italic;
	font-weight:bold;
	padding:10px;
	
}


#b3{
	
	font-family: 'GmarketSansMedium';
	font-size:15px;
	font-style:italic;
	font-weight:bold;

}


#mC{
	
	
	font-size : 14px;
	font-weight:bold;
	position:relative;
	bottom:580px;
	border: 1px solid #939597;
	width : 200px;
	height : 160px;
	text-align:center;
	background-color:rgb(246, 232, 177);
	
}


#c1,#c2,#c3,#c4{
	
	font-family: 'GmarketSansMedium';
	padding:10px;

}


#mC1{

	position:relative;
	top:280px;
	right:10px;
	
}


#c5{
	
	
	
	position:relative;
	bottom:20px;
	width:100px;
	height:40px;
	font-size:14px;
	background-color:#0047ab;
	color:white;
	padding:5px;
	cursor:pointer;
	font-family: 'Cafe24Ohsquare';
	padding:10px;
	
	
}

#c6{
	
	width:240px;
	height:50px;
	font-size:24px;
	background-color:#0047ab;
	color:white;
	padding:5px;
	text-align:center;
	cursor:pointer;
	font-family: 'Cafe24Ohsquare';
	position:relative;
	right:40px;
	padding:10px;
}


#c5-1 , #c6-1{

	position:relative;
	top:10px;

}


#mainbottom{

	position:relative;
	bottom:100px;
	margin:0 auto;
}


#mD{
	
	
	
	
	
}


#d2{

	
	width : 60px;
	font-size : 14px;
	color : white;
	background-color:rgb(94, 94, 94);
	border: 1px solid #000000;
	padding :10px 10px 10px 10px;
	position:relative;
	bottom :30px;
	left:10px;
	text-align:center;		
	font-family: 'Cafe24Ohsquare';
	
}


#d3{

	
	height : 200px;
	font-size : 14px;
	width : 350px;
	position:relative;
	bottom : 80px;
	border: 1px solid #000000;
	padding :10px 10px 10px 10px;
 	font-family: 'GmarketSansMedium';
 	
}


#d4{

	
	margin-left :510px;
	position:relative;
	bottom : 140px;
	cursor:pointer;

}


#mE{

	

}


#e2{
	
	width : 60px;
	font-size : 14px;
	color : white;
	background-color:rgb(94, 94, 94);
	border: 1px solid #000000;
	padding :10px 10px 10px 10px;
	position:relative;
	bottom :30px;
	left:10px;
	text-align :center;
	font-family: 'Cafe24Ohsquare';


}

#e3{
	
	height : 200px;
	font-size : 14px;
	width : 350px;
	position:relative;
	bottom : 80px;
	border: 1px solid #000000;
	padding :10px 10px 10px 10px;
	font-family: 'GmarketSansMedium';
}

#e4{

	position:relative;
	bottom : 140px;
	cursor:pointer;
	
}


#mF{
	
	
	
	
	
}


#f2{

	
	width : 60px;
	font-size : 14px;
	color : white;
	background-color:rgb(94, 94, 94);
	border: 1px solid #000000;
	padding :10px 10px 10px 10px;
	position:relative;
	bottom :30px;
	left:10px;
	text-align:center;		
	font-family: 'Cafe24Ohsquare';
}


#f3{

	
	height : 200px;
	font-size : 14px;
	width : 350px;
	position:relative;
	bottom : 80px;
	border: 1px solid #000000;
	padding :10px 10px 10px 10px;
	font-family: 'GmarketSansMedium';
	
}

#f4{

	
	position:relative;
	bottom : 140px;
	cursor:pointer;

}


#mG{
	
		
		
		
}


#g2{

	
	width : 60px;
	font-size : 14px;
	color : white;
	background-color:rgb(94, 94, 94);
	border: 1px solid #000000;
	padding :10px 10px 10px 10px;
	position:relative;
	bottom :30px;
	left:10px;
	text-align:center;		
	font-family: 'Cafe24Ohsquare';
}


#g3{

	
	height : 200px;
	font-size : 14px;
	width : 350px;
	position:relative;
	bottom : 80px;
	border: 1px solid #000000;
	padding :10px 10px 10px 10px;
	font-family: 'GmarketSansMedium';
}

#g4{

	
	position:relative;
	bottom : 140px;
	cursor:pointer;

}


#mH{

	text-align:center;
	position:relative;
	top:50px;
}


#h1{

	display:inline-block;

}

#h2{
	
	font-weight:bold;
	font-size:20px;
	display:inline-block;
	position:relative;
	bottom: 20px;
	font-family: 'Cafe24Ohsquare';
}

#h3{

	display:inline-block;
	cursor:pointer;
	
}


#middleright{

	width:10%;
	height:79%;
	display:inline-block;
	vertical-align:top;
	
}



#footer{

min-width: 1500px;
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
	background-image: url("/cdcp/resources/images/detail/logo_white.png");
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

<div class = "full">
<div class = "menu">
<div class = "menu1">
<span id = "m1"><img alt = "로고" src = "${pageContext.request.contextPath}/resources/images/detail/Logo1.png" width = "230px"></span>
<span id = "m2">카드검색/비교</span>
<span id = "m3">컨텐츠</span>
<span id = "m4">카드순위</span>
<span id = "m5">로그인</span>
<span id = "m6"><img alt = "로그인" src = "${pageContext.request.contextPath}/resources/images/detail/login_white.png" width = "30px"></span>
</div> 
</div>

<div class = "middle">

<div id = "middleleft">
<input type = "button" value = "비교함 확인" id= "bi"/>


</div>

<div id = "middlemain">

<div id = "maintop">
<div id = "m0">&lt;카드 정보 안내&gt;</div>

<div id = "mA">
<div id = "a1"><img alt = "금메달" src = "${pageContext.request.contextPath}/resources/images/detail/Gold.png" width = 80px;></div>
<div id = "a2">이번달 Card Best</div>
<div id = "mA1">
<div id = "a3">혜택</div>
<div id = "a4">Benefit</div>
</div>
</div>


<div id = "mB">
<div id = "b1"><img alt = "롯데카드" src = "${pageContext.request.contextPath}/resources/images/detail/Card1.png" width = 200px; height=300px;></div>
<div id = "b2">롯데 Like it 카드</div>
<div id = "b3">롯데 카드</div>
</div>
</div>


<div id = "mainmain">
<div id = "mC">
<div id = "c1">국내전용 15000원</div>
<div id = "c2">해외 겸용 15000원</div>
<div id = "c3">전원 실적 40만원 이상</div>
<div id = "c4">MASTERCARD</div>
<div id = "mC1">
<div id = "c5">
<div id = "c5-1">비교함 담기+</div>
</div>
<div id = "c6">
<div id = "c6-1">카드 신청 NOW</div>
</div>
</div>
</div>
</div>


<div id = "mainbottom">
<div id = "mD" style = "height:100px">	<!-- 카드 혜택 상세  -->
<span id = "d1"> <img alt = "커피" src = "${pageContext.request.contextPath}/resources/images/detail/Cafe.png" width = "70px"/> </span>
<input type = "text" id = "d2" value = "카페/제과">
<div id = "d3">
<div>스타벅스 50% 결제일 할인</div>
<div>간편결제시 스타벅스 60% 결제일 할인</div>
<div>-스타벅스 50% 결제일 할인<br/>
- LIKIT FUN+를 발급받은 첫달에는 스타벅스 할인 혜택이 제공되지 않으며, 그 다음 달부터 지난달 이용금액 40만원 이상 시 할인 혜택이 제공됩니다.<br/>
- 스타벅스 할인 혜택은 월 1만원 한도 내에서 제공됩니다.<br/>
- 현장 결제 건에 한해 제공되며, 백화점․마트 등에 입점한 매장에서는 할인 혜택이 제공되지 않을 수 있습니다.<br/>
- 상품권 및 선불카드 구입․충전 건은 할인 혜택이 제공되지 않습니다.<br/>
</div>
</div>
<div id = "d4"><img alt = "버튼" src = "${pageContext.request.contextPath}/resources/images/detail/Button.png" width = "70px"/></div>
</div>


<div id = "mE" style = "height:100px"> <!-- 카드 혜택 상세  -->
<span id = "e1"> <img alt = "영화" src = "${pageContext.request.contextPath}/resources/images/detail/Movie.png" width = "70px"/> </span>
<input type = "text" id = "e2" value = "영화">
<div id = "e3">
<div>롯데시네마 , CGV 50% 결제일 할인</div>
</div>
<div id = "e4"><img alt = "버튼" src = "${pageContext.request.contextPath}/resources/images/detail/Button.png" width = "70px"/></div>
</div>


<div id = "mF" style = "height:100px">	<!-- 카드 혜택 상세  -->
<span id = "f1"> <img alt = "대중교통" src = "${pageContext.request.contextPath}/resources/images/detail/Transportation.png" width = "70px"/> </span>
<input type = "text" id = "f2" value = "대중교통">
<div id = "f3">
<div>시내버스 , 지하철 10% 결제일 할인</div>
</div>
<div id = "f4"><img alt = "버튼" src = "${pageContext.request.contextPath}/resources/images/detail/Button.png" width = "70px"/></div>
</div>


<div id = "mG" style = "height:100px">	<!-- 카드 혜택 상세  -->
<span id = "g1"> <img alt = "통신비" src = "${pageContext.request.contextPath}/resources/images/detail/Mobile.png" width = "70px"/> </span>
<input type = "text" id = "g2" value = "통신비">
<div id = "g3">
<div>SKT, KT , LG U + 10% 결제일 할인</div>
</div>
<div id = "g4"><img alt = "버튼" src = "${pageContext.request.contextPath}/resources/images/detail/Button.png" width = "70px"/></div>
</div>


<div id = "mH">
<div id = "h1"><img alt = "유의사항" src = "${pageContext.request.contextPath}/resources/images/detail/Warning.png" width = "60px"/></div>
<div id = "h2">&lt;유의 사항!&gt;</div>
<div id = "h3"><img alt = "버튼" src = "${pageContext.request.contextPath}/resources/images/detail/Button.png" width = "60px"/></div>

	
</div>
</div>
</div>

<div id = "middleright">
</div>


</div>


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

