<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>어드민페이지양식2</title>
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
                /*background-color: darkorange; */
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

            .dropdown-content a:hover {background-color: #f1f1f1}

            .dropdown-menu:hover:not(.home){
                background-color: darkorange;
                color: white;
            }
/* 내용 영역 */          
	.content_area {
		width: 100%;
		height: 500px;
		min-width: 1830px;
	}
	
	.contents {
		display: flex;
		width: 1600px;
		height: 500px;
		margin: 0px auto;
	}
.left_content {
	width: 400px;
	height: inherit;
	background: yellow;
}
.right_content {
	width: 1200px;
	height: inherit;
	background: gray;
}
.content_content {
	width: 400px;
	height: 50%;
	background: #eee;
	font-size: 30px;
	color: black;
}
/* 풋터영역 */
#footer{
	width: 100%;
	height: 100px;
	float:left;
	background: gray;
	border-radius: 5px;
	border-style: solid;
    border-width: 2px 0 0 0;
    border-color: #0047AB;
    font-family: 'Cafe24Ohsquare';
    min-width: 600px;
    background-color: white;	
			
}
#footerMenu{

	height: inherit;
    margin: 0 auto;
    color: #0047AB;
	text-align: center;
	font-family: GmarketSansMedium;
	font-size: 12px;
}
#footerLogo{
	display: inline-block;
	vertical-align: top;
	background-image: url("/cdcp/resources/images/contentimg/logo.png");
	background-repeat: no-repeat;
	background-size: 120px;
	width: 120px;
	height: 40px;
	cursor: pointer;
	text-align: center;
	margin-top: 10px;
}

.search_area {
	margin-top: 10px;
	margin: 0px auto;
	text-align: right;
	width: 1000px;
	
}

.list_wrap, .list_movie {
	
	width: 1000px;
	height: 170px;
	margin: 0px auto;
}

.list_wrap table, .list_movie table {
	border-collapse: collapse;
}

.list_wrap thead tr, .list_movie thead tr {
	border-top: 1px solid #000;
	border-bottom: 1px solid #000;
	background-color: orange;
	height: 30px; 
}

.list_wrap tbody tr, .list_movie tbody tr {
	border-bottom: 1px solid #000;
	text-align: center;
	height: 25px; 
	cursor: pointer;
}

.list_wrap tbody tr td:nth-child(2), .list_movie tbody tr td:nth-child(2) {
	text-align: left;
}

.list_wrap tbody tr:nth-child(2n), .list_movie tbody tr:nth-child(2n) {
	background-color: #ffffcc; 
}

.list_wrap tbody tr:hover, .list_wrap tbody tr:nth-child(2):hover, .list_movie tbody tr:hover, .list_movie tbody tr:nth-child(2):hover {
	background-color: #eee;
	color: white;
}

/* 페이징 */

.paging_wrap {
	margin-top: 10px;
	margin: 0px auto;
	text-align: center;
}


.paging_wrap div {
	display: inline-block;
	padding: 5px;
	margin-left: 3px;
	margin-right: 3px;
	background-color: #DFDFDF;
	border: 1px solid #444;
	border-radius: 3px;
	cursor: pointer;
	width: 60px;
	text-align: center;
	font-size: 5px;
}

.paging_wrap div:active{
 background-color: #AAAAAA; 
}

.paging_wrap .on {
	background-color: #AAAAAA; 
}
</style>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
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
	$("#headerLogo").on("click", function(){
		location.href = "/cdcp";
	}); // headerLogo click end
	
	
}); // document ready end

$(document).ready(function() {
	
	reloadList();
	reloadList2();
	
	$("#writeBtn").on("click", function() {
		$("#searchTxt").val($("#searchOldTxt").val());
		
		$("#actionForm").attr("action", "lhjtestAdd");
		$("#actionForm").submit();
	});
	
	$(".list_wrap tbody").on("click", "tr", function() {
		$("#sNo").val($(this).attr("sno"));
		
		$("#actionForm").attr("action", "contentD");
		$("#actionForm").submit();
	});
	
});	// document ready end

function reloadList() {
	var params = $("#actionForm").serialize();
	
	$.ajax({
		url: "adm_hjAjax",
		type: "post", 
		dataType: "json",
		data: params,	
		success: function(res) {
			drawList(res.tipcon);
			drawPaging(res.pb);
			drawList(res.movie);
		},
		error: function(request, status, error) {
			console.log(error);
		}
	});
}
function reloadList2() {
	var params = $("#actionForm").serialize();

	$.ajax({
		url: "adm_hjAjax2",
		type: "post", 
		dataType: "json",
		data: params,	
		success: function(res) {
			drawList2(res.movie);
			drawPaging(res.pb);
		},
		error: function(request, status, error) {
			console.log(error);
		}
	});
}
//목록그리기
function drawList(tipcon) {
	var html = "";

	for(var c of tipcon) {
	html += "<tr cno=\"" + c.TIP_NO + "\">";
	html += "<td>" + c.TIP_NO + "</td>";
	html += "<td>" + c.TIP_TITLE + "</td>";
	html += "<td>" + c.TIP_WRITER + "</td>";
	html += "<td>" + c.ADD_DATE + "</td>";
	html += "</tr>";
	}
	
	$(".list_wrap tbody").html(html);
}

//목록그리기
function drawList2(movie) {
	var html = "";

	for(var v of movie) {
	html += "<tr cno=\"" + v.TIPVIDEO_NO + "\">";
	html += "<td>" + v.TIPVIDEO_NO + "</td>";
	html += "<td>" + v.VIDEO_NAME + "</td>";
	html += "<td>" + v.VIDEO_LINK + "</td>";
	html += "<td>" + v.ADD_DATE2 + "</td>";
	html += "</tr>";
	}
	
	$(".list_movie tbody").html(html);
}

//페이징 그리기
function drawPaging(pb) {
	var html = "";
	html += "<div page=\"1\">|<</div>";
	
	if($("#page").val() == "1") {
		html += "<div page=\"1\"><</div>";	
	} else {
		html += "<div page=\"" + ($("#page").val() -1) + "\"><</div>";	
	}
	
	for(var i = pb.startPcount ; i <= pb.endPcount ; i++) {
		if($("#page").val() == i) {
			html += "<div class=\"on\" page=\"" + i + "\">" + i + "</div>";
		} else {
			html += "<div page=\"" + i + "\">" + i + "</div>";
		}
		
	}
	if($("#page").val() == pb.maxPcount) {
		html += "<div page=\"" + pb.maxPcount + "\">></div>";
	} else {
		html += "<div page=\"" + ($("#page").val() * 1 + 1) + "\">></div>";
	}
	
	html += "<div page=\"" + pb.maxPcount + "\">>|</div>";
	
	$(".paging_wrap").html(html);
}


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
    <form action="#" id ="goForm" method="post"></form>
<!-- 컨텐츠 영역 -->
<div class="content_area">
	<div class="search_area">
	<form action="#" id="actionForm" method="post">
		<input type="hidden" name="tipNo" id="tipNo"/>
		<input type="hidden" name="movieNo" id="movieNo"/>
		<input type="hidden" id="page" name="page" value="${page}" />
		<select id="searchGbn" name="searchGbn">
			<option value="0">제목</option>
			<option value="1">작성자</option>
		</select>
		<input type="hidden" id="searchOldTxt" value="${param.searchTxt}" />
		<input type="text" name="searchTxt" id="searchTxt" value="${param.searchTxt}" />
		<input type="button" value="검색" id="searchBtn" />
		<input type="button" value="등록" id="writeBtn" />
	</form>
</div>
<br/><br/>
<div class="list_wrap"> 카드활용꿀팁
	<table>
		<colgroup>
			<col width="100px" />
			<col width="500px" />
			<col width="200px" />
			<col width="400px" />
		</colgroup>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일자</th>
			</tr>
		</thead>
		<tbody></tbody>	
	</table>
</div>
<div class="paging_p">
	<div class="paging_wrap"></div>
</div>
<div class="list_movie"> 카드꿀팁영상
	<table>
		<colgroup>
			<col width="100px" />
			<col width="500px" />
			<col width="200px" />
			<col width="400px" />
		</colgroup>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>링크</th>
				<th>작성일자</th>
			</tr>
		</thead>
		<tbody></tbody>
	</table>
</div>
<div class="paging_p">
	<div class="paging_wrap"></div>
</div>
</div>
<!-- 풋터영역 (하단 마무리) -->
<div class="rayout">
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