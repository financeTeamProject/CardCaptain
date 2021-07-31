<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>맞춤 카드 찾기</title>
<style type="text/css">
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
    height: 600px;/* content에 맞게 줄임 - SYOU */
    margin: 0 auto;
    padding-top: 100px;
    padding-bottom: 50px;
}
.sub_title {
	padding-bottom: 30px;
}
.search_type {
	background-color: #F8F9FA;
	display: inline-block;
	padding: 40px 0px 20px 0px;
	border-radius: 10px;
	width: 250px;
	height: 250px;
	margin: auto;
	text-align: center;	
	box-shadow: 0px 0px 18px 6px rgba(107,84,84,0.75);
	-webkit-box-shadow: 0px 0px 18px 6px rgba(107,84,84,0.75);
	-moz-box-shadow: 0px 0px 18px 6px rgba(107,84,84,0.75);
}
.search_type div {
	display: inline-block;
}
.search_type:hover {
	margin-top: -5px;
}
.searchBtn {
    width: 150px;
    height: 40px;
    color: white;
    border-style: none;
    background-color: #0047AB;
    border-radius: 5px;
    font-size: 18px;
    font-family: 'GmarketSansMedium';
    font-weight: 1000;
}
.searchBtn:hover {
    color: black;
    background-color: #F5DF4D;
    cursor: pointer;
}
.search_txt {
	font-family: 'GmarketSansMedium';
	margin-top: 15px;
	margin-bottom: 15px;
}
.search_check_image {
	width: 150px;
	height: 150px;
	background-size: 100%;
	background-image: url("${pageContext.request.contextPath}/resources/images/search/cardCheck.png");
	background-repeat: no-repeat;
}
.search_keyword_image {
	width: 150px;
	height: 150px;
	background-size: 100%;
	background-image: url("${pageContext.request.contextPath}/resources/images/search/keyword.png");
	background-repeat: no-repeat;
}
.search_compare_image {
	width: 150px;
	height: 150px;
	background-size: 100%;
	background-image: url("${pageContext.request.contextPath}/resources/images/search/compareCard.png");
	background-repeat: no-repeat;
}
.search_type_area {
	display: flex;
	margin-left: 350px;
	margin-right: 350px;
	margin-top: 20px;
}
h1{
	font-size: 35px;
	margin-left: 420px;
	font-family: 'Cafe24Ohsquare';
	display:inline-block;
}
.search_area {
	text-align: center;
	font-family: 'GmarketSansMedium';
	line-height: 25px;
	padding-bottom: 50px;
}
.search_box {
	background-color: #F2F2F2;
	height: 40px;
	width: 550px;
	border: none;
	font-family: 'GmarketSansMedium';
	border-radius: 2px;
	box-shadow: 2px 2px 2px 0px #CCC;
}
.delete_search_value {
	height: 40px;
	width: 40px;
	border: none;
	font-family: 'GmarketSansBold';
	font-weight: 1000;
	font-size: 15px;
	cursor: pointer;
	border-radius: 2px;
	margin-right: -5px;
}
.search_area_btn {
	height: 40px;
	width: 40px;
	border: none;
	font-family: 'GmarketSansBold';
	font-weight: 1000;
	font-size: 15px;
	border-radius: 2px;
	cursor: pointer;
}
.search_area input[type=button]:hover {
	background-color: #0047AB;
	color: white;
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
$(document).ready(function() {
	/* 로그인팝업 실행 */
    $("#imgLogin").on("click", function(){
       $("#popup").css("display","block");
       $(".body").css("display","none");
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
                if(res.resMsg == "success") {
                   location.href = "/search";
                   //history.back(1);
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
    
    
    /* 마이페이지이동 */
    $("#logNick").on("click", function(){
       location.href = "/mypage";
    });
    
    $("#logNick").on("click", function(){
       $("#memNo").attr("action");
       $("#memNo").submit();
    });
    
    
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
	
	
	/* 카드 검색/비교 페이지 내 이동 이벤트 */
	$(".searchBtn").on("click",function() {
		var ival = $(this).prop('id');
		$(location).attr('href',ival);
	});
	
	$("#deleteSearchValue").on("click",function() {
		$("#searchBox").val("");
	});
	
	$("#searchAreaBtn").on("click",function() {
		if ($.trim($("#searchBox").val()) == "") {
			alert("검색어를 입력해 주세요.");
			$("#searchBox").val("");
			$("#searchBox").focus();
		} else {
			var actionVal = "<input type=\"hidden\" name=\"searchType\" value=\"keyword\" /><br/>";
			actionVal += "<input type=\"hidden\" name=\"option\" value=\"" + $.trim($("#searchBox").val()) + "\" /><br/>";
			actionVal += "<input type=\"hidden\" id=\"page\" name=\"page\" value=\"1\" />";
			
			$("#goForm").html(actionVal);
			$("#goForm").attr("action","searchingCardList");
			$("#goForm").submit();
		}
	});
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
<form action="#" id ="goForm" method="post"></form>
<div id="content">
<div id="searchArea" class="search_area">
	<input type="text" id="searchBox" class="search_box" placeholder="Search Card.." />
	<input type="button" value="X" id="deleteSearchValue" class="delete_search_value" />
	<input type="button" value="GO" id="searchAreaBtn" class="search_area_btn" />
</div>
<div id="subTitle" class="sub_title">
	<h1>맞춤 카드 검색</h1>
</div>
<div id="searchTypeArea" class="search_type_area">
	<div id="checkSearch" class="search_type">
		<div class="search_check_image" id="searchCheckImage"></div>
		<div class="search_txt">나에게 맞는 카드 찾기</div><br/>
		<div><input type="button" value="이동하기" class="searchBtn" id="checkSearch" /></div>
	</div>
	<div id="keywordSearch" class="search_type">
		<div class="search_keyword_image" id="searchKeywordImage"></div>
		<div class="search_txt">키워드로 검색하기</div><br/>
		<div><input type="button" value="이동하기" class="searchBtn" id="keywordSearch" /></div>
	</div>
	<div id="compareSearch" class="search_type">
		<div class="search_compare_image" id="searchCompareImage"></div>
		<div class="search_txt">카드혜택 비교하기</div><br/>
		<div><input type="button" value="이동하기" class="searchBtn" id="compareSearch" /></div>
	</div>
</div>
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