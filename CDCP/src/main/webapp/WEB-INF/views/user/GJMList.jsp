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
/*	헤더 영역	*/
#header {
	width: 100%;
	height: 55px;
    font-family: 'GmarketSansMedium';
    min-width: 1830px;
    background-color: white;
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
}	
/* header_left 종료 */
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
/* header_right 종료 */
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
	reloadList();
	
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
	$("#headerLogo").on("click", function(){
		location.href = "/cdcp";
	}); // headerLogo click end
	
	$("#addCard").on("click", function() {
		$(".right_content").html("");
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
			url: "mDetails",
			type: "post",
			dataType: "json",
			data: params,
			success: function (res) {
				drawDetail(res.mDetails)
				alert(mDetails);
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
<!-- 헤더영역(메뉴바) -->
<div id="header">
	<div id="headerWrap">
	<div id="headerLeft">
		<div id="headerLogo"></div>
		<div class="menu1" id="ranking">카드순위</div>
		<div class="menu1" id="search">카드검색/비교</div>
		<div class="menu1" id="contents">컨텐츠</div>
	</div>
	<div id="headerRight">
		<div id="imgSearch"></div>
		<div id="imgLogin"></div>
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
                <div class="dropdown-menu">카드</div>
                <div class="dropdown-content">
                    <a href="#" id="addCard">카드등록</a>
                    <a href="#" id="deleteCard">카드삭제</a>
                </div>
            </li>
            <li class="dropdown">
                <div class="dropdown-menu">리뷰</div>
                <div class="dropdown-content">
                    <a href="#">리뷰관리</a>
                    <a href="#">리뷰신고관리</a>
                    <a href="#">리뷰별점관리</a>
                    <a href="#">Menu2-4</a>
                </div>
            </li>
            <li class="dropdown">
                <div class="dropdown-menu">회원관리</div>
                <div class="dropdown-content">
                    <a href="#">회원정보수정</a>
                    <a href="#">회원가입목록</a>
                    <a href="#">회원보유카드</a>
                    <a href="#">Menu3-4</a>
                </div>
            </li>
            <li class="dropdown">
                <div class="dropdown-menu">컨텐츠관리</div>
                <div class="dropdown-content">
                    <a href="#">소비심리테스트</a>
                    <a href="#">영상관리</a>
                    <a href="#">등록기사관리</a>
                    <a href="#">카드랭킹관리(?)</a>
                </div>
            </li>
            <li class="home"><a href="#">Home</a></li>
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
</body>
</html>