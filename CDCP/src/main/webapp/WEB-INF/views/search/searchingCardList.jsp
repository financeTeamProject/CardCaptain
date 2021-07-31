<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>카드 상세보기</title>
<style type="text/css">
/* 시복 */
body{
	margin: 0;
	background-color: #F5F6F7;
}
@font-face {
	font-family: 'GmarketSansMedium';
	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
	font-weight: normal;
	font-style: normal;
}
@font-face {
	font-family: 'Cafe24Ohsquare';
	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/Cafe24Ohsquare.woff') format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
    font-family: 'GmarketSansLight';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansLight.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

/* 팝업 영역  */

#bi1{
	cursor:pointer;
	position: relative;
	top:90%;
	left:0%;
	position: fixed;
	background-color:#0047ab;
	color : white;
	width: 150px;
	height: 110px;
	text-align:center;
	line-height:50px;
	font-weight:bold;
	font-size:24px;
	font-family: 'Cafe24Ohsquare';
	z-index:200;
	margin:0 auto;
}

#bi2{
	top: 90%;
    left: 3%;
    position: fixed;
    background-color: #ff6e61;
    color: white;
    width: 40px;
    height: 40px;
    text-align: center;
    line-height: 37px;
    font-weight: bold;
    font-size: 15px;
    font-family: 'Cafe24Ohsquare';
    z-index: 200;
    margin: 0 auto;
    border-radius: 20px;
	border: 1px;
}

	.Popup{
		z-index:150;
	}

	#p1{
	    font-size: 15px;
	    position: relative;
	    top: 85%;
	    position: fixed;
	    padding: 10px;
	    background-color: #A0CFEC;
	    color: white;
	    font-family: 'Cafe24Ohsquare';
	    border: 0px;
	    cursor: pointer;
	    z-index: 150;
	    width: 91px;
	    height: 50px;
		}

	#p2{
		font-size: 15px;
	    position: relative;
	    top: 85%;
	    left: 90px;
	    position: fixed;
	    padding: 10px;
	    background-color: #FFE5B4;
	    color: white;
	    font-family: 'Cafe24Ohsquare';
	    border: 0px;
	    cursor: pointer;
	    z-index: 150;
	    width: 60px;
	    height: 50px;	
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

/* 헤더 시작 by KJ */
#header {
	width: 100%;
	height: 55px;
	border-style: solid;
    border-width: 0 0 2px 0;
    border-color: #0047AB;
    font-family: 'GmarketSansMedium';
    min-width: 1830px;
}
#headerWrap {
	width: 1600px;
	height: 100%;
	margin: 0 auto;
	display: flex;
}
#headerLeft {
	display: inline-block;
	width: 50%;
	height: 100%;
    font-size: 16px;
	vertical-align: top;
}
#headerLogo {
    display: inline-block;
    vertical-align: top;
    background-image: url("/cdcp/resources/images/main/logo.png");
    background-repeat: no-repeat;
    background-size: 120px;
    width: 120px;
    height: 40px;
    cursor: pointer;
    text-align: center;
    margin-top: 10px;
}
#headerLeft .menu1 { 
	display: inline-block;
	width: 130px;
	height: 100%;
	line-height: 65px;
	color: #0047AB;
	text-align: center;
	letter-spacing: 2px;
	vertical-align: top;
	cursor: pointer;
}	/* header_left 종료 */
#headerRight {
	display: inline-block;
	width: 50%;
	height: 100%;
    font-size: 18px;
	vertical-align: top;
}
#imgSearch {
 	display: inline-block;
    background-image: url("/cdcp/resources/images/main/search.png");
    background-repeat: no-repeat;
    background-size: 30px;
    width: 30px;
    height: 25px;
    cursor: pointer;
    text-align: center;
    margin-left: 85%;
}
#imgLogin {
 	display: inline-block;
    background-image: url("/cdcp/resources/images/main/login1.png");
    background-repeat: no-repeat;
    background-size: 30px;
    width: 30px;
    height: 25px;
    cursor: pointer;
    margin-top: 15px;
}
/* 헤더 종료 by KJ */
/* 풋터 시작 by KJ */
#footer {
	min-width: 600px;	
    width: 100%;
  	height: 100px;
	border-radius: 5px;
	border-style: solid;
    border-width: 2px 0 0 0;
    border-color: #0047AB;
    font-family: 'Cafe24Ohsquare';
}
#footerMenu {
    height: inherit;
    margin: 0 auto;
    color: #0047AB;
    text-align: center;
    font-family: GmarketSansMedium;
    font-size: 12px;
}	
#footerLogo {
    display: inline-block;
    vertical-align: top;
    background-image: url("/cdcp/resources/images/main/logo.png");
    background-repeat: no-repeat;
    background-size: 120px;
    width: 120px;
    height: 40px;
    cursor: pointer;
    text-align: center;
    margin-top: 10px;
}
/* 풋터 종료 by KJ */
/* 내용 시작 by KJ */
* {
	margin:0;
	padding:0;
}
#content {
	width: 1600px;
    height: 2100px;/* content에 맞게 줄임 - SYOU */
    margin: 0 auto;
}		
/* SYOU */
#contentMenu {
	padding-top: 70px;
	width: 1200px;
    margin: 0 auto;
}
#main {
	width: 1000px;
	height: auto;
	margin: 0 auto;
}
.choiceList {
	font-family: 'GmarketSansLight';
	margin-top: 20px;
}
.choiceList:hover {
	color: #0047AB;
    cursor: pointer;
    text-decoration:underline;
}
.keyword {
	width:1200px;
	height:50px;
	margin-bottom: 50px;
}
.keyword ul {
	padding-inline-start: 0px;
}
.keyword ul li{
	    font-family: 'Cafe24Ohsquare';
	float:left;
	margin-left: 20px;
	font-size: 30px;
	font-weight: 1000;
	list-style: none;
}
.keyword ul li:hover{
	text-decoration:underline;
}
.card_list {
	width: 1050px;
	height: 170px;
	margin-bottom: 15px;	
	border-radius:12px;
	box-shadow: 1px 1px 3px 3px #868e96;
	background-color: white;
}
.card_list > * {
	display: inline-block;
}
.card_list img {
	height: 170px;
	width: 270px;
}
.card_list_txt {
	vertical-align: top;
	width: 650px;
	height: 170px;
}
.card_list_txt h3 {
	display: inline-block;
}
.srch_card_list {
	width: 1050px;
	height: auto;
}
.card_list h3 {
	width:780px;
	font-size: 20px;
	font-family: 'Cafe24Ohsquare';
	margin-left: 20px;
	margin-top: 50px;
}
.card_list_txt ul {
	padding-inline-start: 0px;
}
.card_list_txt ul li {
	float:left;
	margin-left: 30px;
	list-style: none;
}
.cardList_etc {
	width: 100px;
	height: 170px;
	vertical-align: top;
	display: inline-block;
}
.side_Btn , .side_Btn1{
	vertical-align:top;
	font-size: 14px;
	font-family: 'Cafe24Ohsquare';
	margin-block-start: 0em;
    margin-block-end: 0em;
}

.side_Btn:hover {
	color: #0047AB;
	cursor: pointer;
	text-decoration:underline;
}

.side_Btn1:hover{
	color: #0047AB;
	cursor: pointer;
	text-decoration:underline;

}

.cardList_etc :nth-child(1) {
	padding-top: 10px;
}
.cardList_etc :nth-child(2) {
	padding-top: 80px;
}
/* paging */
#pagingWrap {
	text-align: center;
	padding-top: 20px;
}
#pagingWrap span {
	font-size: 18px;
	font-family: 'GmarketSansLight';
	padding: 4px 10px 3px 10px;
}
#pagingWrap span:hover {
	cursor: pointer;
	color: #0047AB;
	font-weight: 1000;
}
   /* 헤더 */
#header {
   width: 100%;
   height: 55px;
   border-style: solid;
    border-width: 0 0 2px 0;
    border-color: #0047AB;
    font-family: 'GmarketSansMedium';
    min-width: 1830px;
    background: white;
}
#headerWrap {
   width: 1600px;
   height: 100%;
   margin: 0 auto;
   display: flex;
}
#headerLeft {
   display: inline-block;
   width: 50%;
   height: 100%;
    font-size: 16px;
   vertical-align: top;
}
#headerLogo {
    display: inline-block;
    vertical-align: top;
    background-image: url("/cdcp/resources/images/main/logo.png");
    background-repeat: no-repeat;
    background-size: 120px;
    width: 120px;
    height: 40px;
    cursor: pointer;
    text-align: center;
    margin-top: 10px;
}
.menu1 { 
   display: inline-block;
   width: 130px;
   height: 100%;
   line-height: 65px;
   color: #0047AB;
   text-align: center;
   letter-spacing: 2px;
   vertical-align: top;
   cursor: pointer;
}   

   /* header_left 종료 */

#headerRight {
   display: inline-block;
   width: 50%;
   height: 100%;
    font-size: 18px;
   vertical-align: top;
   text-align: right;
}
#imgLogin {
    display: inline-block;
    background-image: url("/cdcp/resources/images/main/login1.png");
    background-repeat: no-repeat;
    background-size: 30px;
    width: 30px;
    height: 25px;
    cursor: pointer;
    text-align: center;
   margin-top: 15px;
}
#Nickname {
    width: auto;
    height: auto;
    color: #0047AB;
    box-sizing: border-box;
    font-size: 13px;
    letter-spacing: 2px;
    display: none;
}
#logNick:hover{
   color: #1AAB8A;
}
#logNick {
   display: inline-block;
   color:#0047AB;
   border:none;
   position:relative;
   width: auto;
   cursor:pointer;
   transition:800ms ease all;
   outline:none;
   margin-top: 18px;
   letter-spacing: 2px;
}
#logNick:before, #logNick:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
  background: #1AAB8A;
  transition:400ms ease all;
}
#logNick:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}
#logNick:hover:before, #logNick:hover:after{
  width:100%;
  transition:800ms ease all;
}
#logoutBtn {
   background:#fff;
   color:#1AAB8A;
   border:none;
   position:relative;
   height:30px;
   width: 70px;
   cursor:pointer;
   transition:800ms ease all;
   outline:none;
   margin-left: 20px;
}
/* 로그인팝업 */
.popinput {
   width: 50%;
    height: 40px;
    padding: 0px 20px;
    border: 1px solid lightgray;
    outline: none;
    font-size: 13px;
    border-style: solid;
    border-width: 0 0 1px 0;
    border-color: #0047AB;
    outline: 0;
    text-decoration: none;
    letter-spacing: 2px;
    margin: 5px 50px 10px 70px;
}
.cardcaptain {
   width: 100%;
   height: 95px;
   line-height: 110px;
   text-align: center;
   font-size: 25px;
   color: #0047AB;
   letter-spacing: 5px;
   cursor: pointer;
}
#popup {
   height: 320px;
   width: 400px;
   background-color: white;
   border-radius: 70px;
   display: none;
   margin: 300px auto;
   z-index: 50;
}
#loginBtn {
   margin-bottom: 10px;
   margin-top: 5px;
   background: linear-gradient(125deg,#81ecec,#6c5ce7,#81ecec);
   background-size: 200%;
   color: white;
    font-weight: bold;
   border: none;
   cursor: pointer;
   display: inline;
   margin: 20px 10px 15px 90px;
}
.re {
   display: inline-block;
   vertical-align: top;
   font-size: 12px;
    margin: 10px 0 10px 130px;
}
.new {
   display: inline-block;
   vertical-align: top;
   font-size: 12px;
   margin: 10px 0 10px 0;
}
.re:hover, .new:hover {
   cursor: pointer;
}
.error {
    font-size: 11px;
    color: red;
    visibility: hidden;
}
.errorMsg {
   height: 100%;
    display: none;
    color: #e65f3e;
    font-size: 13px;
    margin-left: 65px;
} 
   /* 로그인팝업종료 */
   /* header_right 종료 */
   /* 헤더 종료 */
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">

/*비교함 담기  */	
$(document).ready(function(){
	/* 로그인팝업 실행 */
    $("#imgLogin").on("click", function(){
		/* $("#popup").css("display","block");
		$(".body").css("display","none"); */
		$("#popup").css("display","none");
		$(".body").css("display","inline");
    });
    /* 로그인팝업 실행 */
    $("#imgSearch").on("click", function(){
       $("#searchTxt").css("display","inline");
    });
    
    $("#searchmem, #join").on("click", function() {
       var ival = $(this).prop("id");
       $(location).attr('href',ival);
    });
    
    $(".cardcaptain").on("click", function(){
       location.href = "/cdcp";
    });
    
    /* 로그인 */
    $("#loginBtn").on("click", function () {
       if($.trim($("#mId").val()) == "") {
          alert("아이디를 입력해 주세요.");
          $("#mId").focus();
       } else if($.trim($("#mPw").val()) == "") {
          alert("비밀번호를 입력해 주세요.");
          $("#mPw").focus();
       } else {
          var params = $("#loginForm").serialize();
          
          $.ajax({
             url: "logins",
             type: "post",
             dataType: "json",
             data: params,
             success: function (res) {
                if(res.resMsg == "success"){
                   location.href = "/cdcp";
                   $("#nickName").css("display","inline");
                   $("#imgSearch").css("margin-left","70%");
                   $("#imgLogin").css("display","none");
                   $("#logoutBtn").css("display","inline");
                } else {
                   $(".errorMsg").css("display","inline");
                   $("#masage").html("아이디 또는 비밀번호가 일치하지 않습니다.")
                }
             },
             error: function (request, status, error) {
                console.log(error);
             }
          }); //ajax end
       }
    }); //로그인 end
    
    /* 로그아웃  */
    $("#logoutBtn").on("click", function () {
       location.href = "testALogout";
    }); //로그아웃 end
    
    /* 마이페이지이동 */
    $("#logNick").on("click", function(){
       location.href = "/mypage";
    });
    
    $("#logNick").on("click", function(){
       $("#memNo").attr("action");
       $("#memNo").submit();
    });
    
		 var cardNo = [];
	/* 옆에 비교함 버튼 조건  */
    $(".side_Btn1").on("click", function() {
    	var temp = "";
		if(cardNo.length > 2) {
			alert("비교함이 가득 찼습니다.");
		} else {
			var a = $(this).prop('id').split("_");
			/* alert(a); */
			cardNo.push(a[1]);
			/* console.log(cardNo); */
			$("#bi2").val(cardNo.length);
		for(var i=0; i<cardNo.length; i++){
			for(var j=0; j<i; j++){
				if(cardNo[i] == cardNo[j]) {
						alert("동일한 카드가 있습니다.");
						cardNo.pop();//pop() = 배열의 마지막 요소 제거
						$("#bi2").val(cardNo.length);
						return false;
					} 
				}
			}
		}
	});
   	
    $("#bi1").on("click",function(){
    	
    	$("#compared1").val(cardNo[0]);
    	$("#compared2").val(cardNo[1]);
    	$("#compared3").val(cardNo[2]);
    	
    	$("#compared").attr("action","compareSearch");
    });
});

/* 비교함 팝업 */	
$(document).ready(function(){
	$("#bi").hide();
	$(".side_Btn1").on("click" , function(){
		$("#bi").hide();
		$("#bi").fadeIn();
	});
	$("#bi").on("click",function(){
		makePopup();
		});
   });

function makePopup(){
	var html = "<div class = \"Popup\">"
		+ "<input type = \"button\" id = \"p1\" value = \"비교함 이동\" readonly = \"readonly\" >"
		+ "<input type = \"button\" id = \"p2\" value = \"취소\"  readonly = \"readonly\" >"
		+ "</div>"
		$("body").prepend(html);
		$(".Popup").hide().fadeIn();
		$("#p1").on("click",function(){
			$("#compared").submit();
		});
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

$(document).ready(function() {
	/* 카드순위 페이지 이동 */
	$("#ranking").on("click", function(){
		location.href = "card_rank";
	}); // ranking click end
	/* 카드검색/비교 페이지 이동 */
	 $("#search").on("click", function(){
		location.href = "search";
	});// search click end
	/* 컨텐츠 페이지 이동 */
	$("#contents").on("click", function(){
		location.href = "content";
	});// contents click end
	
	/* 메인페이지 이동 */
	$("#headerLogo").on("click", function(){
		location.href = "/cdcp";
	}); // headerLogo click end
	
	/* 페이징 */
	$("#pagingWrap").on("click","span", function () {
		$("#page").val($(this).attr("name"));
		$("#pagingForm").submit();
	}); // pagingWrap click end
	
	/* 상세보기 이동 */
	$(".side_Btn").on("click", function(){
		var vdt = $(this).prop('id').split("_");
		
		if(vdt[0] == 'viewDt') {			
			$("#gogoForm #cardNo").val(vdt[1]);
			$("#gogoForm").submit();
		}
	}); // side_Btn click end
});
</script>
</head>
<body>
<!-- 로그인팝업 -->
<div id="popup">
   <div class="cardcaptain">&nbsp;&nbsp;&nbsp;&nbsp;Card Captain&nbsp;&nbsp;&nbsp;&nbsp;X</div>
   <form action="testLogins" id="loginForm" method="post">
         <input type="email" class="popinput" placeholder="ID" id="mId" name="mId">
         <input type="password" class="popinput" placeholder="PW" id="mPw" name="mPw"><br/>
      <span class="errorMsg" id="masage" aria-live="assertive"></span>
      <input type="button" class="popinput" id="loginBtn" value="로그인"/><br/>
   </form>
   <div class="re" id="searchmem">ID/PW 찾기</div>
   <div class="new" id="join">|&nbsp;&nbsp;회원 가입</div>
</div>
<!-- 로그인팝업 종료 -->
<!-- 로그인팝업 -->
<div id="popup">
   <div class="cardcaptain">&nbsp;&nbsp;&nbsp;&nbsp;Card Captain&nbsp;&nbsp;&nbsp;&nbsp;X</div>
   <form action="testLogins" id="loginForm" method="post">
         <input type="email" class="popinput" placeholder="ID" id="mId" name="mId">
         <input type="password" class="popinput" placeholder="PW" id="mPw" name="mPw"><br/>
      <span class="errorMsg" id="masage" aria-live="assertive"></span>
      <input type="button" class="popinput" id="loginBtn" value="로그인"/><br/>
   </form>
   <div class="re" id="searchmem">ID/PW 찾기</div>
   <div class="new" id="join">|&nbsp;&nbsp;회원 가입</div>
</div>
<!-- 로그인팝업 종료 -->
<div class="body">
   <div id="header">
      <div id="headerWrap">
         <div id="headerLeft">
            <div id="headerLogo"></div>
            <div class="menu1" id="ranking">카드순위</div>
            <div class="menu1" id="search">카드검색/비교</div>
            <div class="menu1" id="contents">컨텐츠</div>
         </div>
         <form action="mypage" id="memNo" method="post">
            <input type="hidden" name="memNo" value="${sMNo}" id="sMNo"/>
            <input type="hidden" name="memId" value="${sMId}" id="sMId"/>
            <input type="hidden" name="memPW" value="${sMPw}" id="sMPw"/>
            <input type="hidden" name="memBi" value="${sMBi}" id="sMBi"/>
            <input type="hidden" name="memGe" value="${sMGe}" id="sMGe"/>
            <input type="hidden" name="memCo" value="${sMCo}" id="sMCo"/>
            <input type="hidden" name="memNm" value="${sMNm}" id="sMNm"/>
            <input type="hidden" name="memNa" value="${sMNa}" id="sMNa"/>
            <input type="hidden" name="memAd" value="${sMAd}" id="sMAd"/>
         </form>
         <div id="headerRight">
            <c:choose>
               <c:when test="${empty sMNm}">
                  <div id="imgLogin"></div>
               </c:when>
               <c:otherwise>
                  <div id="logNick">${sMNm}&nbsp;&nbsp;님</div><input type="button" value="로그아웃" id="logoutBtn" />
               </c:otherwise>
            </c:choose>
         </div>
      </div>
   </div>
</div>
<form action = "#" id = "compared" method = "post">
	<input id = "compared1" type = "hidden" name = "comparedd1">
	<input id = "compared2" type = "hidden" name = "comparedd2">
	<input id = "compared3" type = "hidden" name = "comparedd3">
</form>


<!-- 내용 영역 -->
<form action="cardview" id="gogoForm" method="post">
	<input type="hidden" id="cardNo" name="cardNo" value="">
</form>
<form action="searchingCardList" id="pagingForm" method="post">
	<input type="hidden" id="page" name="page" value="${page}"><!-- 페이지 -->
	<input type="hidden" id="searchType" name="searchType" value="${searchType}"><!-- 검색 타입(keyword, optionCheck) -->
	<c:if test="${searchType eq keyword}">
		<input type="hidden" id="option" name="option" value="${option}" />
	</c:if>
	<c:if test="${searchType ne keyword}">
	<c:forEach var="data" items="${options}">
	<input type="hidden" name="option" value="${data}" />
		</c:forEach>
	</c:if>
</form>
<div id="content">
	<div id="contentMenu">
	<div id="main" class="main">
		<div id="keyword" class="keyword">
			<ul>
			<c:forEach var="data" items="${options}">
				<li>#${data}</li>
			</c:forEach>
			</ul>
			<div id = "bi">
				<input type = "button" value = "비교함 확인" id = "bi1"/>
				<input type = "button" value = "1" id= "bi2"/>
			</div>	
		</div>
<c:set var="size" value="${fn:length(pagingDistinct)}" />
<c:choose>
<c:when test="${size > 0}">
	<c:forEach var ="i" begin="0" end ="${size-1}">
		<div id="srchCardList" class="srch_card_list">
			<div id="cardList_1" class="card_list">
				<img src="${pagingDistinct[i].CARD_IMG_URL}">
				<div id="cardList_1_txt"  class="card_list_txt">
					<h3>${pagingDistinct[i].CARD_NAME}</h3>
					<c:set var="benefit_size" value="${fn:length(searchKeyword)}" />
					<ul>
						<c:forEach var ="j" begin="0" end ="${benefit_size-1}">
							<c:if test="${pagingDistinct[i].CARD_NO eq searchKeyword[j].CARD_NO}">
								<li class="choiceList">${searchKeyword[j].BENEFIT_TOP}</li>
							</c:if>
						</c:forEach>
					</ul>
				</div>
				<div id="cardList_1_etc" class="cardList_etc">
					<h4 class="side_Btn1" id="viewBox_${pagingDistinct[i].CARD_NO}"><i class='fa fa-plus'></i>&nbsp;비교함 담기</h4>
					<h4 class="side_Btn" id="viewDt_${pagingDistinct[i].CARD_NO}"><i class='fa fa-angle-double-right'></i>&nbsp;상세보기</h4>
				</div>
			</div>
		</div>
	</c:forEach>
</c:when>
<c:otherwise>
검색결과가 없습니다
</c:otherwise>
</c:choose>
	</div>
	</div>
</div>
<!-- Paging -->
<div id="pagingWrap">
<span name="1">&#60;&#60;</span>
<c:choose>
	<c:when test="${page eq 1}">
		<span name="1">&#60;</span>
	</c:when>
	<c:otherwise>
		<span name="${page-1}">&#60;</span>
	</c:otherwise>
</c:choose>
<c:forEach var="i" begin="${pb.startPcount}" end="${pb.endPcount}" step="1">
	<c:choose>
		<c:when test="${i eq page}">
			<span name="${i}"><b>${i}</b></span>
		</c:when>
		<c:otherwise>
			<span name="${i}">${i}</span>
		</c:otherwise>
	</c:choose>
</c:forEach>
<c:choose>
	<c:when test="${page eq pb.maxPcount}">
		<span name="${pb.maxPcount}">&#62;</span>
	</c:when>
	<c:otherwise>
		<span name="${page+1}">&#62;</span>
	</c:otherwise>
</c:choose>
<span name="${pb.maxPcount}">&#62;&#62;</span>
<br/><br/><br/><br/>
</div>
<!-- Start Footer by KJ -->
<div id="footer">
	<div id="footerMenu">
		<div id="footerLogo"></div>
		<div>서울시 금천구 가산디지털2로 115,509호,811호,1109-1호(가산동,대륭테크노타운3차) 금융조 조장 : 주건정</div>
		<div>Copyright © 2021-2031 CardCaptain All Rights Reserved.</div>
	</div>
</div>
<!-- End Footer by KJ -->
</body>
</html>