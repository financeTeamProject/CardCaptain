<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script><!-- script 추가 by SYOU -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"><!-- link tag 추가 by SYOU -->
<title>My Page</title>
<style type="text/css">
body{
   margin: 0;
   overflow-x: hidden;/* SYOU */
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
#wrapper {
   max-width: 1500px;
   margin: 0 auto;
}
/*   헤더 영역   */
	/* 헤더  ~82번째줄*/
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
	text-align: right;
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
	margin-top: 15px;
	margin-right: 20px;
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
#searchTxt {
    border-style: solid;
    border-width: 0 0 1px 0;
    border-color: #0047AB;
    outline: 0;
    caret-color: red;
    color: #0047AB;
    box-sizing: border-box;
    font-size: 13px;
    letter-spacing: 3px;
    display: none;
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
#logoutBtn {
	width: 70px;
	heigth: 40px;
	margin-left: 20px;
	/* display: none; */
}
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
	font-size: 11px;
    margin: 10px 0 10px 130px;
}
.new {
	display: inline-block;
	vertical-align: top;
	font-size: 11px;
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
	/* header_right 종료 */
	/* 헤더 종료 */
/*   내용 영역   */   
#content {
	width: 100%;
    height: 2800px;
    margin: 0 auto;
}
#contentMenu {
   display:inline-block;
   vertical-align: top;
   width: 1200px;/* 컨텐츠 길이에 따라 변경할 것 */
   height: inherit;
   margin: 0 auto;
}
/*   풋터 영역   */         
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
/* SYOU */
.my_page {
   background-color: #F2F2F2;
   width: 1000px;
   height: 550px;
   margin: 120px auto;
   box-shadow: 0px 0px 18px 6px rgba(107,84,84,0.75);
}
.member_button {
   width: 100%;
   padding-top: 50px;
   display: inline-block;
   text-align: center   
}
.sub_txt {
   left: 50px;
   font-weight: 700;
}
.member_button input[type='button'] {
   width: 120px;
    height: 40px;
    color: white;
    border-style: none;
    background-color: #868e96;
    border-radius: 8px;
    font-weight: 700;
    font-size: 18px;
    font-family: GmarketSansMedium;
    margin: 0 auto;
}
.member_button input[type='button']:hover {
   background-color:#FFD400;
   color:#282C37;
   cursor: pointer;
}
.member_name {
   display: inline-block;
   position: relative;
   top: 70px;
   font-size: 50px;
   font-family: GmarketSansMedium;
   float: right;
   margin-top: auto;
}
.member_table {
   position: relative;
   width: 900px;
   height: 200px;
   top: 100px;
   font-size: 24px;
   font-family: GmarketSansMedium;   
   margin-left: 100px;
}
.member_table input {
   height:30px;
   border: none;
   background-color: inherit;
   font-size: 16px;
   font-family: GmarketSansMedium;
}
.member_sub_title {
   font-size: 45px;
   font-family: Cafe24Ohsquare;
   margin-top: 0px;
   margin-left: 150px;
}
.member_phone {
   margin-left: 7px;
}
.address_search_button {
   margin-left: 7px;
   border-radius: 7px;
}
.domain {
   
}
</style>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="../../script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
   $("#memberTable input").attr("readonly",true);
   
   $("#update").on("click",function() {
      $("#memberTable input").attr("readonly",false);
      $("#memberTable input").css("background-color","#FFFFFF");
      $("#memberID").attr("readonly",true);
      $(".address_search_button").css("background-color","#868e96");
      $(".address_search_button").css("color","#FFFFFF");
   });
});

   function openZipSearch() {
      new daum.Postcode({
         oncomplete: function(data) {
            $('[name=addr1]').val(data.address + " " + data.buildingName);
         }
      }).open();
   }
</script>
</head>
<body>
<!-- 헤더영역 -->
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
			<div id="headerRight">
				<input type="text" id="searchTxt">
				<div id="imgSearch"></div>
				<c:choose>
					<c:when test="${empty sMNm}">
						<div id="imgLogin"></div>
					</c:when>
					<c:otherwise>
						${sMNm}  님 <input type="button" value="로그아웃" id="logoutBtn" />
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
</div>
	
<!-- 내용 영역 -->   
<div id="content">
      <div id="myPage" class="my_page">
         <h1 id="memberName" class="member_name">${sMNm}&nbsp;님&nbsp;&nbsp;</h1>
         <table id="memberTable" class="member_table">
            <tr>
               <td>
                  <span id="subTxt" class="sub_txt">ID.</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="text" value="jujuju" id="memberID" class="member_id" />
               </td>
               <td>
                  <span id="subTxt" class="sub_txt">PW.</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="password" value="1111111111" />
               </td>
            </tr>
            <tr>
               <td>
                  <span id="subTxt" class="sub_txt">Birth.</span>&nbsp;&nbsp;&nbsp;
                  <input type="text" value="96. 04. 27" id="memberBirth" class="member_birth" />
               </td>
               <td>
                  <span id="subTxt" class="sub_txt">M.</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="text" value="010" id="memberPhone1" class="member_phone" style="width:35px;" />
                  <input type="text" value="1111" id="memberPhone2" class="member_phone" style="width:40px;" />
                  <input type="text" value="1111" id="memberPhone3" class="member_phone" style="width:40px;" />
               </td>
            </tr>
            <tr>
               <td>
                  <span id="subTxt" class="sub_txt">E.</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="text" value="jujuju" style="width:60px;" /><span style="font-size:20px;">@</span>
                  <select class="domain" id="domain">
                     <option>naver.com</option>
                     <option>google.com</option>
                     <option>kakao.com</option>
                  </select>
               </td>
               <td>
                  <span id="subTxt" class="sub_txt">A.</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="text" name="addr1" style="width:300px;" />
                  <input type="button" onclick="openZipSearch()" class="address_search_button" style="background-color: #868e96;color:white;" value="검색" />
               </td>
            </tr>
         </table>
      </div>
      <div id="memberButton" class="member_button">
         <input type="button" value="정보수정" id="update" class="update"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="회원탈퇴" id="delete" class="delete"/>
      </div>s
<!-- 풋터영역 -->
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