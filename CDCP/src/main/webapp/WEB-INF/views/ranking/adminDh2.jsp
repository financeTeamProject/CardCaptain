<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
/* ============================================================================ */
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
/* ============================================================================ */

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
/* ============================================================================ */

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
	background-color: 
}
#reviewMenubar{
	color: white;
	background-color: darkorange;
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
/* 메뉴바영역 종료 */
/* ============================================================================ */
.search_area{
	margin-bottom: 10px;
}
/* 내용 영역 */          
#content{
	width: 100%;
	height: 100%;
	min-width: 1830px;
	}
		#contentMenu{
			width: 1600px;
			height: 100%;
			margin: 0 auto;
		}
			/* 소주제 영역 */
			#menuName{
				height: 50px;
				margin: 10px auto;
				margin-left: 10px;
				font-family: Cafe24Ohsquare;
				font-size: 30px;
				line-height: 60px;			
			}
		.review_area{
			text-align: center;
		}
		.review_title_area{
			display: flex;
			height: 50px;
			line-height: 50px;
			background-color: #0047ab;
    		color: white;
    		border: 1px solid gray;
		}
/* 리뷰 제목 영역 */
			.review_title{
				font-family: GmarketSansMedium;
				border: 1px solid;
			}
			/* 리뷰번호 */
			.review_title:nth-child(1){
				width: 80px;
			}
			/* 닉네임 */
			.review_title:nth-child(2){
				width: 200px;
			}
			/* 별점 */
			.review_title:nth-child(3){
				width: 100px;
			}
			/* 카드이름 */
			.review_title:nth-child(4){
				width: 300px;
			}
			/* 리뷰제목 */
			.review_title:nth-child(5){
				width: 250px;
			}
			/* 리뷰내용 */
			.review_title:nth-child(6){
				width: 450px;
			}
			/* 등록일 */
			.review_title:nth-child(7){
				width: 150px;
			}
			/* 삭제여부 */
			.review_title:nth-child(8){
				width: 80px;
			}
/* 리뷰 제목 영역 종료*/
/* ============================================================================ */

/* 리뷰 목록 영역 */
		.review_content_area{
			font-family: GmarketSansMedium;
		}
		.review_content{
			font-family: GmarketSansMedium;
			white-space: nowrap;
			overflow: hidden;
			text-overflow: ellipsis;
			height: 30px;
			line-height: 30px;
		}
		.review_box{
			display: flex;
			border: 1px solid gray;
		}
		.review_box:hover{
			background-color: gray;
			cursor: pointer;
		}
			/* 리뷰번호 */
			.review_content:nth-child(1){
				width: 80px;
			}
			/* 닉네임 */
			.review_content:nth-child(2){
				width: 200px;
			}
			/* 별점 */
			.review_content:nth-child(3){
				width: 100px;
			}
			/* 카드이름 */
			.review_content:nth-child(4){
				width: 300px;
			}
			/* 리뷰제목 */
			.review_content:nth-child(5){
				width: 250px;
				padding: 0 10px;
			}
			/* 리뷰내용 */
			.review_content:nth-child(6){
				width: 450px;
				padding: 0 10px;
			}
			/* 등록일 */
			.review_content:nth-child(7){
				width: 150px;
			}
			/* 삭제여부 */
			.review_content:nth-child(8){
				width: 80px;
			}

		
/* 리뷰 목록 영역 종료*/

/* ============================================================================ */						
/* 페이지 작성 영역 */
	.paging_area{
		text-align: center;
	}
	.paging_area{
		margin: 10px;
	}
	.paging_area span{
		display: inline-block;
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
	.paging_area span:active {
		background-color: #AAAAAA;
	}
	.paging_area #on {
		background-color: #AAAAAA;
	}

/* ============================================================================ */

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
/* 풋터영역 종료*/
/* ============================================================================ */	

/*	리뷰팝업 영역	*/	
		.pop_bg{
			display: inline-block;
			width: 100%;
			height: 2000px;
			position: absolute;
			top: 0px;
			left: 0px;
			background-color: #000000;
			z-index: 200;
			opacity: 0.6;
		}
		.review_popup{
			display: inline-block;
			width: 900px;
			background-color: #ffffff;
			box-shadow: 0px 0px 1px 1px #444444;
			position: absolute;
			top: calc(50% - 300px);
			left: calc(50% - 450px);
			z-index: 300;
			font-size: 16px;
			border: 3px solid #0047AB;
			border-radius: 10px;
		}
		.pop_header{
			text-align: center;
		    font-size: 25px;
		    height: 50px;
		    line-height: 50px;
		    background-color: #0047AB;
		    color: white;
		    font-family: Cafe24Ohsquare;
		}
		.pop_card{
			margin: 20px;
			text-align: center;
			font-size: 20px;
			font-family: GmarketSansMedium;
		}
		.block_form{
			margin: 10px auto;
			width: 80%;
		}
		.info_rabel{
			display: inline-block;
			width: 120px;
			font-family: GmarketSansMedium;
		}
		.write_div{
			display: inline-block;
			font-family: GmarketSansMedium;
		}
		.title_text{
			font-size: 20px;
		}
			#reviewTitleArea{
				width: 100%;
			}
			#reviewTextArea{
				width: 100%;
			}
		.radio{
			margin: 10px 0;
			text-align: center;
			font-size: 20px;
		}
		.butten_area{
			float: right;
    		margin: 20px;
		}
		.popAreaBtn{
			width: 60px;
			height: 30px;
			background-color: #0047AB;
			color: white;
			border-radius: 5px;
			font-family: GmarketSansMedium;
			line-height: 30px;
		}
			#reportBtn{
				
			}
			#closeBtn{
			
			}
/* 상세보기 팝업 제목 내용 박스 */
		#dtTitleDiv{
			margin: 10px 0;
			width: 100%;
			height: 50px;
			border: 1px solid gray;
			overflow: auto;
			font-size: 20px;
		}
/* 내용 박스 */
		#dtTextDiv{
			margin: 10px 0;
			width: 100%;
			height: 100px;
			border: 1px solid gray;
			overflow: auto;
			font-size: 20px;
		}
		.dt_title_div{
			display: inline-block;
			font-family: GmarketSansMedium;
		}
		#deleteBtn{
			background-color: red;
		}
/*	리뷰 팝업 영역 끝	*/	
/* ============================================================================ */

</style>
<script type="text/javascript"
			src = "resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	if("${param.searchGbn}" != ""){
		$("#searchGbn").val("${param.searchGbn}");
	}
	
	reloadList();
	
	/* 검색버튼 클릭 */
	$("#searchBtn").on("click", function(){
		$("#page").val(1);
		$("#searchOldTxt").val($("#searchTxt").val());
		reloadList();
	}); // searchBtn click end

	// 페이징 버튼 	
	$(".paging_area").on("click", "span", function(){
		$("#page").val($(this).attr("page"));
		$("#searchTxt").val($("#searchOldTxt").val());
		reloadList();
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
	$("#headerLogo").on("click", function(){
		location.href = "/cdcp";
	}); // headerLogo click end
	

	
/* ====================================================================================== */	
	
	function reloadList(){
		var params = $("#actionForm").serialize();
		
		$.ajax({
			url: "adminDhs", // 접속주소 (현재 저상태는 상대 경로이다)
			type: "post", // 전송방식: get,post
			dataType: "json", // 받아올 데이터 형식
			data: params, //보낼 데이터(문자열 형태)
			success: function(res){ // 성공 시 다음 함수 실행	
				drawList(res.reviewList);
				drawPaging(res.pb);
			},
			error: function(request, status, error){ // 실패 시 다음 함수 실행
				console.log(error);
			}
		});
	}
/* ====================================================================================== */	
// 목록 그리기
	function drawList(reviewList){
		var html = "";
		
		for(var i = 0; i < reviewList.length; i++){
			
		html +=	"<div class=\"review_box\" id=" + reviewList[i].REVIEW_NO + ">";
		html +=	"<div class=\"review_content\">"+ reviewList[i].REVIEW_NO + "</div>";	
		html +=	"<div class=\"review_content\">"+ reviewList[i].NICKNAME + "</div>";	
		if(reviewList[i].SCORE == 1){
		html += "<div class=\"review_content\">★☆☆☆☆</div>";
		} else if(reviewList[i].SCORE == 2){
		html += "<div class=\"review_content\">★★☆☆☆</div>";
		} else if(reviewList[i].SCORE == 3){
		html += "<div class=\"review_content\">★★★☆☆</div>";
		} else if(reviewList[i].SCORE == 4){
		html += "<div class=\"review_content\">★★★★☆</div>";
		} else{
		html += "<div class=\"review_content\">★★★★★</div>";
		}
		html +=	"<div class=\"review_content\">"+reviewList[i].CARD_NAME + "</div>";	
		html +=	"<div class=\"review_content\">"+reviewList[i].TITLE + "</div>";	
		html +=	"<div class=\"review_content\">"+reviewList[i].TEXT + "</div>";	
		html +=	"<div class=\"review_content\">"+reviewList[i].ADD_DATE + "</div>";	
		html +=	"<div class=\"review_content\">"+reviewList[i].STATUS_NO + "</div>";
		html +=	"<input type=\"hidden\" name=\"reviewMNo\" value=\"" + reviewList[i].MEMBER_NO + "\" />";
		html +=	"</div>";
		
		}
		
		$(".review_content_area").html(html);
		
		// 상세보기 팝업 실행
		$(".review_box").on("click", function(){
			var params = "reviewNo=" + $(this).attr("id");
			
			$.ajax({
				url: "adminDetail", 
				type: "post", 
				dataType: "json", 
				data: params,
				success: function(res){ 	
					makeDetailPopup(res.adminDetail);
				},
				error: function(request, status, error){
					console.log(error);
				}
			});
			
		});
		/* ====================================================================================== */	
		// 상세보기 팝업 
		function makeDetailPopup(adminDetail){
			var html = "";
			html +=	"<form action=\"#\" id=\"deleteForm\" method=\"post\">";
			html +=	"<input type=\"hidden\" name=\"revieMNo\" value=\""+ adminDetail.MEMBER_NO + "\"/>";
			html +=	"<input type=\"hidden\" name=\"reviewNo\" value=\""+ adminDetail.REVIEW_NO + "\"/>";
			html +=	"</form>";
			html += "<div class=\"pop_bg\"></div>";                                                                                                                
			html += "<div class=\"review_popup\">";                                                                                                                 
			html += "	<div class=\"pop_header\">카드리뷰</div>";                                                                                                  
			html += "	<div class=\"pop_card\" id=\"popCardName\">[ " + adminDetail.CARD_NAME + " ]</div>";                                                                         
			html += "	<div class=\"block_form\">";                                                                                                               
			html += "		<label class=\"info_rabel\">작성자(닉네임) :</label>";                                                                                  
			html += "		<div class=\"write_div\">" + adminDetail.NICKNAME + "</div>";                                                                                               
			html += "	</div>";                                                                                                                                  
			html += "	<div class=\"block_form\">";                                                                                                                
			html += "		<div class=\"dt_title_div\">제목 :</div>";                                                                             
			html += "		<div class=\"dt_write_div\" id=\"dtTitleDiv\">" + adminDetail.TITLE + "</div>";                                                                                                         
			html += "	</div>";                                                                                                                                  
			html += "	<div class=\"block_form\">";                                                                                                                
			html += "		<div class=\"dt_title_div\">내용 :</div>";                                                                           
			html += "		<div class=\"dt_write_div\" id=\"dtTextDiv\">" + adminDetail.TEXT + "</div>";                                                                                                              
			html += "	</div>"; 
			if(adminDetail.STATUS_NO == 1){
			html += "	<div class=\"block_form\">";
			html += "		<div class=\"dt_title_div\">신고내용 :</div>";                                                                           
			html += "		<div class=\"dt_write_div\" id=\"dtTextDiv\">" + adminDetail.REPORT_TEXT + "</div>"; 
			html += "	</div>"; 
			} else{
			html += "	<div class=\"block_form\"></div>";
			}
			html += "	<div class=\"block_form\">";                                                                                                               
			html += "		<div class=\"butten_area\">";
			html += "			<input type=\"button\" value=\"삭제\" class=\"popAreaBtn\" id=\"deleteBtn\">";                                                            
			html += "			<input type=\"button\" value=\"닫기\" class=\"popAreaBtn\" id=\"closeBtn\">";                                                             
			html += "		</div>";                                                                                                                              
			html += "	</div>";                                                                                                                                  
			html += "</div>";                                                                                                                                     
			                                                                                                                                                    
			$("body").prepend(html);
			
			$("#deleteBtn").on("click", function(){                                                                                                              
				if(confirm("삭제하시겠습니까?")){
					var params = $("#deleteForm").serialize();
					alert(params);
					$.ajax({
						url: "adminDelete", 
						type: "post", 
						dataType: "json", 
						data: params, 
						success: function(res){ 
							if(res.msg == "success"){
								closePopup();
								reloadList();
							} else if(res.msg == "failed"){
								alert("삭제에 실패하였습니다.");
							} else {
								alert("삭제중 문제가 발생하였습니다.");
							}
						},
						error: function(request, status, error){ // 실패 시 다음 함수 실행
							console.log(error);
						}
					});
				}
			}); // deleteBtn click end
			
			// 상세보기 닫기 버튼
			$("#closeBtn").on("click", function(){                                                                                                              
				closePopup();
			});
			
			// 팝업창 닫기 함수
			function closePopup() {
				
				$(".pop_bg").fadeOut(function(){
					$(".pop_bg").remove();
				});
				
				$(".review_popup").fadeOut(function(){
					$(".review_popup").remove();
				});
			} // function closePopup end
		}
		
	}
// 상세보기 팝업 종료	
/* ====================================================================================== */		
	
// 페이징 그리기
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
					html += "<span id=\"on\" page=\"" + i + "\"><b>" + i + "</b></span>";
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
			
			$(".paging_area").html(html);
			
		
		}
// 페이징 그리기 끝
/* ====================================================================================== */	
	
	
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
                <div class="dropdown-menu" id="reviewMenubar">리뷰</div>
                <div class="dropdown-content">
                    <a href="#">리뷰관리</a>
                    <a href="#">리뷰신고관리</a>
                    <a href="#">리뷰별점관리</a>
                    <a href="#">Menu2-4</a>
                </div>
                <!--  -->
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
<div id="content">
	<div id="contentMenu">
		<div id="menuName">리뷰 관리</div>
		<div class="search_area">
		<form action="#" id="actionForm" method="post">
			<input type="hidden" id="mNo" name="mNo" />
			<input type="hidden" id="page" name="page" value="${page}" />
			<select name="searchGbn" id="searchGbn">
				<option value="0">닉네임</option>
				<option value="1">신고상태</option>
				<option value="2">카드이름</option>
			</select>
			<!-- 페이징 누르면 검색되는 기능 방지 목적 -->
			<input type="hidden" id="searchOldTxt" value="${param.searchTxt}" />
			<input type="text" name="searchTxt" id="searchTxt" value="${param.searchTxt}"/>
			<input type="button" value="검색" id="searchBtn" />
		</form>
	</div>
		<div class="review_area" id="reviewArea">
			<div class="review_title_area" id="reviewTitleArea">
				<div class="review_title">리뷰번호</div>	
				<div class="review_title">닉네임</div>	
				<div class="review_title">별점</div>	
				<div class="review_title">카드이름</div>	
				<div class="review_title">리뷰제목</div>	
				<div class="review_title">리뷰내용</div>	
				<div class="review_title">등록일</div>	
				<div class="review_title">신고상태</div>	
			</div>
			<div class="review_content_area" id="reviewContentArea"></div>
			
			<div class="paging_area"></div>
		</div>
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