<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
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
body {
	margin: 0;
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
/* 메뉴바영역 */
* {
	box-sizing: border-box;
	}
/* 네비메뉴바 영역 */
nav {
	width:100%;
	height: 60px;
	background: #0047ab;
	min-width: 1830px;
}
#smallMeunName {
	width: 130px;
	font-family: 'GmarketSansMedium';
	font-size: 20px;
	color: white;
}
nav ul {
	width: 1600px;
	margin: 0px auto;
	list-style-type: none;
	padding: 0px;
}
nav ul li {
	display: inline-block;
	height: 60px;
	font-family: '맑은고딕';
}            
.home {
	background-color: darkorange;
	width: 100px;
	text-align: center;
	font-weight: bold;
	float: right;
}
.home a {
	display: block;
	text-decoration: none;
	color: white;
	padding: 16px 16px;
}
.dropdown {
	position: relative;
}
.dropdown-menu {
	color: white;
	padding: 20px;
	font-size: 16px;
	cursor: pointer;
	font-family: 'GmarketSansMedium';
}
.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}
.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}
.dropdown:hover .dropdown-content {
display: block;
}
.dropdown-content a:hover {
	background-color: #f1f1f1
}
.dropdown-menu:hover:not(.home){
	background-color: darkorange;
	color: white;
}
/* 내용 영역 */          
input text {
	width: 100px;
}
.content_area {
	width: 1600px;
	height: 700px;
	margin: 0px auto;
}
#content_area2 {
	width: 1600px;
	height: 700px;
	margin: 0px auto;
	display: none;
}
#content_area3 {
	width: 1600px;
	height: 700px;
	margin: 0px auto;
	display: none;
}
.contents {
	width: 100%;
	height: 80%;
	margin: 100px auto;
}
.contents2 {
	width: 95%;
	height: 80%;
	margin: 100px auto;
}
.buttons{
    margin: 0 auto;
    text-align: center;
}
#paging_wrap #on {
	background-color: skyblue;
	color: white;
	font-size: 12px;
	height: auto;
}
.detail_wrap thead tr { 
 	border-top: 1px solid #000; 
 	border-bottom: 1px solid #000; 
 	background-color: #0047AB; 
 	hieght: 30px;
 	color: white;
 	width: 100%;
}
.detail_wrap tbody tr {
	border-bottom: 1px solid #000;
	height: 50px;
	text-align: center;
	width: 100px;
	height: 50px;
}
.detail_wrap table {
	border-collapse: collapse;
}
.list_wrap thead tr { 
 	border-top: 1px solid #000; 
 	border-bottom: 1px solid #000; 
 	background-color: #0047AB; 
 	hieght: 30px;
 	color: white;
}
.list_wrap table {
	border-collapse: collapse;
}
.list_wrap tbody tr {
	border-bottom: 1px solid #000;
	height: 50px;
	text-align: center;
}
.list_wrap tbody tr:hover {
	background-color: #ff8c0080;
}
#paging_wrap span {
	display: inline-block;
	padding: 5px;
	margin-left: 3px;
	margin-right: 3px;
	border-width: none;
	border-radius: 3px;
	cursor: pointer;
	width: 50px;
	text-align: center;
	font-size: 12px;
	height: 20px;
	line-height: 20px;
}
.addbtn {
	width: 45px;
	height: 25px;
	float: right;
}
#paging_wrap {
	text-align: center;
}
	/* 풋터  ~127번째줄*/
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

	/* 풋터 종료 */
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	if("${sMNo}" != "10000") {
		alert("권한이 없는 회원입니다.");
		history.back();
	}
	reloadList();
	
	/* 카드순위 페이지 이동 */
	$("#headerLogo").on("click", function(){
		location.href = "/cdcp";
	});
	
	/* 카드순위 페이지 이동 */
	$("#ranking").on("click", function(){
		location.href = "card_rank";
	});
	/* 카드검색/비교 페이지 이동 */
	 $("#search").on("click", function(){
		location.href = "search";
	});
	/* 컨텐츠 페이지 이동 */
	$("#contents").on("click", function(){
		location.href = "content";
	});
	
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
		alert($("#sMNm").val());
		$("#memNo").attr("action");
		$("#memNo").submit();
	});
	
	$("#addCard").on("click", function() {
		$(".right_content").html("");
	});
	
	//컨텐츠관리 이동
	$("#conAdmin").on("click", function(){
		location.href = "/cdcp/adm_hj";
	});
	
	//리뷰관리 이동
	$("#reAdmin").on("click", function(){
		location.href = "/cdcp/adminDh2";
	});
	
	//카드관리 이동
	$("#cAdmin").on("click", function(){
		location.href = "/cdcp/admin";
	});
	
	// 목록으로
	$("#listBtn").on("click", function() {
		$("#content_area1").show();
		$("#content_area2").css("display","none");
		$("#goForm").submit();
 	});
	
	$("#paging_wrap").on("click", "span", function () {
		$("#page").val($(this).attr("page"));
		
		reloadList();
	});

	
	
	// 회원리스트
	function reloadList() {
		var params = $("#mList").serialize();
		
		$.ajax({
			url: "mLists",
			type: "post",
			dataType: "json",
			data: params,
			success: function (res) {
				drawList(res.list);
				drawPaging(res.pb);
				console.log(res.list);
			},
			error: function (request, status, error) {
				console.log(error);
			}
		});
	}
	
	// 회원상세
	function mDetail() {
		var params = $("#mList").serialize();
		
		$.ajax({
			url: "mDetails",
			type: "post",
			dataType: "json",
			data: params,
			success: function (res) {
				drawDetail(res.mDetails)
				mPw(res.mPw);
				alert(mDetails);
			},
			error: function (request, status, error) {
				console.log(error);
			}
		});
	}
	
	// 수정
	function mDetail() {
		var params = $("#mList").serialize();
		
		$.ajax({
			url: "mUpdates",
			type: "post",
			dataType: "json",
			data: params,
			success: function (res) {
				
			},
			error: function (request, status, error) {
				console.log(error);
			}
		});
	}
	// 목록 그리기
	function drawList(list) {
		var html = "";
		// 	" +  + " : 만들어놓고 붙여넣어도 됨.
		for(var m of list) {
			html += "<tr mNo=\"" + m.MEMBER_NO + "\">";
			html += "<td class=\"a\">" + m.MEMBER_RNK + "</td>";
			html += "<td class=\"a\">" + m.MEMBER_NO + "</td>";
			html += "<td class=\"b\">" + m.MEMBER_ID + "</td>";
			html += "<td class=\"c\">" + m.MEMBER_PW + "</td>";
			html += "<td class=\"d\">" + m.MEMBER_BIRTH + "</td>";
			html += "<td class=\"e\">" + m.CONTACT + "</td>";
			html += "<td class=\"f\">" + m.NICKNAME + "</td>";
			html += "<td class=\"g\">" + m.JOIN_DATE + "</td>";
			html += "<td class=\"h\">" + m.LEAVE_DATE + "</td>";
			html += "<td class=\"i\">" + m.LEAVE_CHECK + "</td>";
			html += "<td class=\"j\">" + m.EMAIL + "</td>";
			html += "</tr>";
		}
		$(".list_wrap tbody").html(html);
		
		// 회원상세 클릭
		$(".list_wrap tr td").on("click", function() {
			mNo = $(this).parents().attr("mNo");
			$("#content_area1").css("display","none");
			$("#content_area2").css("display","inline");
			console.log(mNo);
			$("#mList #mNo").val(mNo);
			
			mDetail();
		});
	}
	
	// 상세 그리기
	function drawDetail(mDetails) {
		var html = "";
		// 	" +  + " : 만들어놓고 붙여넣어도 됨.
		
			html += "<tr mNo=\"" + mDetails.MEMBER_NO + "\">";
			html += "<td>" + "<input type text value=" + mDetails.MEMBER_NO + " name=mId></text>" + "</td>";
			html += "<td>" + "<input type text value=" + mDetails.MEMBER_ID + "></text>" + "</td>";
			html += "<td>" + "<input type text value=" + mDetails.MEMBER_PW + "></text>" + "</td>";
			html += "<td>" + "<input type text value=" + mDetails.MEMBER_BIRTH + "></text>" + "</td>";
			html += "<td>" + "<input type text value=" + mDetails.CONTACT + "></text>" + "</td>";
			html += "<td>" + "<input type text value=" + mDetails.NICKNAME + "></text>" + "</td>";
			html += "<td>" + "<input type text value=" + mDetails.JOIN_DATE + "></text>" + "</td>";
			html += "<td>" + "<input type text value=" + mDetails.LEAVE_DATE + "></text>" + "</td>";
			html += "<td>" + "<input type text value=" + mDetails.LEAVE_CHECK + "></text>" + "</td>";
			html += "<td>" + "<input type text value=" + mDetails.EMAIL + "></text>" + "</td>";
			html += "</tr>";
		
		$(".detail_wrap tbody").html(html);
		
		// 수정
		$("#updateBtn").on("click", function () {
			$("#content_area2").css("display","none");
			$("#content_area3").css("display","inline");
			$("#goForm").submit();
		});
		
	}
	
	//페이징 그리기
	function drawPaging(pb) {
		var html = "";
		
		html += "<span page=\"1\">|&lt;</span>";
		
		if($("#page").val() == "1") {
			html += "<span page=\"1\">&lt;</span>";
		} else {
			html += "<span page=\"" + ($("#page").val() - 1) + "\">&lt;</span>";
		}
		
		for(var i = pb.startPcount ; i <= pb.endPcount ; i++) {
			if($("#page").val() == i) {
				html += "<span id=\"on\" page=\"" + i + "\">" + i + "</span>";
			} else {
				html += "<span page=\"" + i + "\">" + i + "</span>";
			}
		}
		
		if($("#page").val() == pb.maxPcount) {
			html += "<span page=\"" + pb.maxPcount + "\">&gt;</span>";
		} else {
			html += "<span page=\"" + ($("#page").val() * 1 + 1) + "\">&gt;</span>";
		}
			html += "<span page=\"" + pb.maxPcount + "\">&gt;|</span>";
		
		$("#paging_wrap").html(html);
	}
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
<!-- 헤더영역(메뉴바) -->
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
<!-- 메뉴바영역 -->
	<nav>
        <ul>
        	<li class="dropdown">
                <div id="smallMeunName">관리자페이지</div>
            </li>
            <li class="dropdown">
                <div class="dropdown-menu" id="cAdmin">카드</div>
            </li>
            <li class="dropdown">
                <div class="dropdown-menu" id="reAdmin">리뷰</div>
            </li>
            <li class="dropdown">
                <div class="dropdown-menu" id="mAdmin">회원관리</div>
            </li>
            <li class="dropdown">
                <div class="dropdown-menu" id="conAdmin">컨텐츠관리</div>
            </li>
        </ul>
    </nav>
<!-- 컨텐츠 영역 -->
<div class="content_area" id="content_area1">
	<div class="contents">
		<form action="#" id="mList" method="post">   
			<input type="hidden" id="mNo" name="mNo" value=""/>
			<input type="hidden" id="page" name="page" value="${page}"/>
		</form>
		<div class="list_wrap">
		<table>
			<colgroup width="3000px">
				<col width="5%" />
				<col width="10%" />
				<col width="10%" />
				<col width="10%" />
				<col width="10%" />
				<col width="10%" />
				<col width="10%" />
				<col width="10%" />
				<col width="10%" />
				<col width="5%" />
				<col width="10%" />
			</colgroup>
			<thead>
				<tr>
					<th>번호</th>
					<th>회원번호</th>
					<th>아이디</th>
					<th>비밀번호</th>
					<th>생년월일</th>
					<th>연락처</th>
					<th>닉네임</th>
					<th>가입일</th>
					<th>탈퇴일</th>
					<th>회원여부</th>
					<th>이메일</th>
				</tr>
			</thead>
			<tbody></tbody>
		</table>
		</div><br/><br/>
		<div id="paging_wrap"></div>
	</div>
</div>
<div  class="content_area" id="content_area2">
	<div class="contents2">
		<div class="detail_wrap">
		<table>
			<colgroup width="3000px">
				<col width="10%" />
				<col width="10%" />
				<col width="10%" />
				<col width="10%" />
				<col width="10%" />
				<col width="10%" />
				<col width="10%" />
				<col width="10%" />
				<col width="10%" />
				<col width="10%" />
			</colgroup>
			<thead>
				<tr>
					<th>회원번호</th>
					<th>아이디</th>
					<th>비밀번호</th>
					<th>생년월일</th>
					<th>연락처</th>
					<th>닉네임</th>
					<th>가입일</th>
					<th>탈퇴일</th>
					<th>회원여부</th>
					<th>이메일</th>
				</tr>
			</thead>
			<tbody></tbody>
		</table>
		</div><br/>
		<div class="buttons">
			<input type="button" value="수정" id="updateBtn" />
			<input type="button" value="삭제" id="deleteBtn" />
			<input type="button" value="목록으로" id="listBtn" />
		</div>
	</div>
</div>
<!-- 풋터영역 (하단 마무리) -->
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