<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>카드 비교하기</title>
<style type="text/css">
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
    height: 900px;/* content에 맞게 줄임 - SYOU */
    margin: 0 auto;
    text-align: center;
}
/* SYOU */
#contentMenu {
	display: inline-block;
}
.sub_title {
	margin-top: 40px;
}
.sub_title h1 {
	font-size: 38px;
	margin-left: 100px;
	font-family: 'Cafe24Ohsquare';
	display:inline-block;
}
.cardArea {
	display: inline-block;
	width: 400px;
	height: 700px;
	margin-right: 70px;
}
.cardDelete {
	display: inline-block;
    vertical-align: top;
    background-image: url("resources/images/search/delete_icon.PNG");
    background-repeat: no-repeat;
    background-size: 25px;
    width: 30px;
    height: 30px;
    visibility: hidden;
}
.cardDelete:hover {
	cursor: pointer;
}
.cardDetail {
	display: inline-block;
}
.cardDetail input {
	border: none;
	background-color: #EDB9BB;
	font-family: 'GmarketSansMedium';
	text-align: center;
	border-radius: 5px;
	padding: 3px;
	margin-bottom: 10px;
	visibility: hidden;
}
.cardDetail input:hover {
	cursor: pointer;
}
.cardBox {
	display: inline-block;
	margin: 0 auto;
	background-color: #F2F2F2;
	width: 400px;
	height: 700px;
	box-shadow: 0px 0px 18px 6px rgba(107,84,84,0.75);
	margin-right: 70px;
	border-radius: 5px;
	text-align: center;
}
.cardImg {
	background-color: #CCC;
	margin-top: 25px;
	margin-left: 25px;
	width: 350px;
	height: 200px;
	border-radius: 20px;
	text-align: center;
}
.cardName {
	margin-top: 10px;
	margin-left: 25px;
	width: 350px;
	height: 40px;
	text-align: center;
	font-family: 'GmarketSansMedium';
	font-weight: 1000;
}
.addCardBtn {
	margin-top: 80px;
	border: none;
	background-color: #F5DF4D;
	font-family: 'GmarketSansMedium';
	padding: 5px;
	text-align: center;
}
.btn_ok {
	border: none;
	background-color: #F5DF4D;
	font-family: 'GmarketSansMedium';
	padding: 5px;
	text-align: center;
}
.addCardBtn:hover {
	cursor: pointer;
}
.cardKind, .cardType, .cardBenefit {
	padding-top: 5px;
	padding-bottom: 5px;
	background-color: #0047AB;
	width: 400px;
	text-align: center;
	color: white;
    font-family: 'GmarketSansMedium';
    font-size: 30px;
    padding-top: 20px;
}
.cardKind_info,.cardType_info,.cardBenefit_info {
	background-color: #F8F9FA;
	width: 400px;
	height: 25px;
	text-align: center;
	font-family: 'GmarketSansMedium';
	font-size: 15px;
	padding-top: 15px;
	padding-bottom: 15px;
}

/* 팝업 */
.bg_div {
	width: 100%;
	height: 100%;
	position: absolute;
	background-color: #000000;
	opacity:0.3;
	z-index: 100;
}
.popup_div {
	display: inline-block;
	width: 500px;
	height: 700px;
	position: absolute;
	top: 50%;
	left: 50%;
	margin-top: -300px;
	margin-left: -200px;
	background-color: #FFFFFF;
	border: 2px solid #0047AB;
	z-index: 1000;
}
.popup_title {
	line-height:40px;
	height: 40px;
	background-color: #0047AB;
}
.popup_title_text {
	padding-left: 5px;
	color: #FFFFFF;
	vertical-align: middle;
	font-weight: bold;
	font-family: 'GmarketSansMedium';
	font-size: 20px;
}
.popup_contents {
	height: 600px;
}
.popup_text {
	height: 600px;
	text-align: center;
	white-space: pre-line;
	overflow-y: auto;
	padding: 10px 10px 10px 10px;
	text-align: left;
	font-family: 'GmarketSansMedium';
}
.popup_text div:hover {
	background-color: #F2F2F2;
	cursor: pointer;
}
.popup_btn {
	height: 30px;
	text-align: center;
}
.popupImgUrl {
	margin-top: -110px;
	width:350px;
	height:200px;
}
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	function makePopup(title, contents, num) {
		var html = "";
		html += "<div class=\"bg_div\"></div>";
		html += "<div class=\"popup_div\">";
		html += "<div class=\"popup_title\">";
		html += "<div class=\"popup_title_text\">" + title + "</div>";
		html += "</div>";
		html += "<div class=\"popup_contents\">";
		html += "<div class=\"popup_text\">"
		html += "<input type=\"hidden\" id=\"divNo\" value=" + num + "\>";
		for(var d of contents) {
			html += "<div>" + d.CARD_NAME + "<br/><input type=\"hidden\" class=\"cardNo\" value='" + d.CARD_NO + "'\>";
			html += "<input type=\"hidden\" class=\"cardName\" value='" + d.CARD_NAME + "'\>";
			html += "<input type=\"hidden\" class=\"cardSummary\" value='" + d.CARD_SUMMARY + "'\>";
			html += "<input type=\"hidden\" class=\"cardKind\" value='" + d.CARD_KIND + "'\>";
			html += "<input type=\"hidden\" class=\"cardType\" value='" + d.CARD_TYPE + "'\>";
			html += "<input type=\"hidden\" class=\"cardImg\" value='" + d.CARD_IMG_URL + "'\>";
			html += "</div>";
		}
		html += "</div>";
		html += "<div class=\"popup_btn\">";
		html += "<input type=\"button\" class=\"btn_ok\" value=\"닫기\"/>";
		html += "</div>";
		html += "</div>";
		html += "</div>";
		
		$("body").prepend(html);
		
		$(".btn_ok").focus();
		
		$(".bg_div").hide();
		$(".popup_div").hide();
		
		$(".bg_div").fadeIn();
		$(".popup_div").fadeIn();
		
		
		$(".btn_ok").off("click");
		$(".btn_ok").on("click", function(){
			closePopup();
		});
		
		$(".bg_div").off("click");
		$(".bg_div").on("click", function(){
			closePopup();
		});
		
		$(".popup_text").on("click","div", function() {
			$("#cardName_" + $("#divNo").val()).html("[ " + $(this).children('.cardName').val() + " ]");
			$("#cardImg_" + $("#divNo").val()).append("<img src=\"" + $(this).children('.cardImg').val() + "\" class=\"popupImgUrl\" />");
			$("#cardKind_info_" + $("#divNo").val()).html($(this).children('.cardKind').val());
			$("#cardType_info_" + $("#divNo").val()).html($(this).children('.cardType').val());
			$("#cardBenefit_info_" + $("#divNo").val()).html($(this).children('.cardSummary').val());
			$("#addCardBtn_" + $("#divNo").val()).css("visibility","hidden");
			$("#cardDelete_" + $("#divNo").val()).css("visibility","visible");
			$("#cardDetail_" + $("#divNo").val() + " input").css("visibility","visible");
			$("#cardDetail_" + $("#divNo").val() + " input").attr("id",$(this).children('.cardNo').val());
			closePopup();
		});
	}
	$(".cardDelete").on("click", function() {
		var ival = $(this).prop('id').split("_");
		$("#cardName_" + ival[1]).html("");
		$("#addCardBtn_" + ival[1]).css("visibility","visible");
		$("#cardImg_" + ival[1]).children('img').remove();
		$("#cardKind_info_" + ival[1]).html("");
		$("#cardType_info_" + ival[1]).html("");
		$("#cardBenefit_info_" + ival[1]).html("");
		$("#cardDelete_" + ival[1]).css("visibility","hidden");
		$("#addCardBtn_" + ival[1]).css("visibility","visible");
		$("#cardDetail_" + ival[1] + " input").css("visibility","hidden");
	});
	function closePopup() {
		$(".bg_div").fadeOut(function(){
			$(".bg_div").remove();
		});
		
		$(".popup_div").fadeOut(function(){
			$(".popup_div").remove();
		});
	}
	
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
	
	$(".addCardBtn").on("click", function() {
		var num = $(this).prop('id').split("_");
		num = num[1];
		
		$.ajax({
			url:"cardListGet",
			type:"post",
			dataType :"json",
			success : function (res) {
				makePopup("카드추가", res.list, num);
			},
			error: function (request, status, error) {
				console.log(error);
			}
		});
	});
	
	$(".cardDetail input").on("click", function() {
		var ival = $(this).prop('id');
		$("#cardNo").val(ival);
		$("#gogoForm").submit();
	});
});
</script>
</head>
<body>
<!-- Start Header by KJ -->
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
<!-- End Header by KJ -->
<!-- 내용 영역 -->	
<div id="content">
	<div id="contentMenu"><br/>
		<div id="subTitle" class="sub_title">
			<h1>카드 비교하기</h1>
		</div><br/><br/>
		<form action="cardview" id="gogoForm" method="post">
			<input type="hidden" id="cardNo" name="cardNo" value="" />
		</form>
		<c:choose>
		<c:when test="${compareList[0].CARD_NO ne ''}">
		<div class="cardArea">
			<div class="afterSelectCard">
				<div class="cardDelete" id="cardDelete_1" style="visibility: visible;"></div>
				<div class="cardDetail" id="cardDetail_1">
					<input type="button" value="상세보기" id="${compareList[0].CARD_NO}" style="visibility: visible;"/>
				</div>
			</div>
			<div class="cardBox" id="cardBox_1">
				<div class="cardImg" id="cardImg_1">
					<input type="button" value="카드를 선택해 보세요" class="addCardBtn" id="addCardBtn_1" />
					<img src="${compareList[0].CARD_IMG_URL}" class="popupImgUrl">
				</div>
				<div class="cardName" id="cardName_1"></div>
				<div class="cardKind" id="cardKind_1">카드종류</div>
				<div class="cardKind_info" id="cardKind_info_1">${compareList[0].CARD_NAME}</div><br/>
				<div class="cardType" id="cardType_1">카드타입</div>
				<div class="cardType_info" id="cardType_info_1">${compareList[0].CARD_TYPE}</div><br/>
				<div class="cardBenefit" id="cardBenefit_1">간단설명</div>
				<div class="cardBenefit_info" id="cardBenefit_info_1">${compareList[0].CARD_SUMMARY}</div><br/>
			</div>
		</div>
		</c:when>
		<c:otherwise>
		<div class="cardArea">
			<div class="afterSelectCard">
				<div class="cardDelete" id="cardDelete_1"></div>
				<div class="cardDetail" id="cardDetail_1">
					<input type="button" value="상세보기" id=""/>
				</div>
			</div>
			<div class="cardBox" id="cardBox_1">
				<div class="cardImg" id="cardImg_1">
					<input type="button" value="카드를 선택해 보세요" class="addCardBtn" id="addCardBtn_1" />
				</div>
				<div class="cardName" id="cardName_1"></div>
				<div class="cardKind" id="cardKind_1">카드종류</div>
				<div class="cardKind_info" id="cardKind_info_1"></div><br/>
				<div class="cardType" id="cardType_1">카드타입</div>
				<div class="cardType_info" id="cardType_info_1"></div><br/>
				<div class="cardBenefit" id="cardBenefit_1">간단설명</div>
				<div class="cardBenefit_info" id="cardBenefit_info_1"></div><br/>
			</div>
		</div>
		</c:otherwise>
		</c:choose>
		<c:choose>
		<c:when test="${compareList[0].CARD_NO ne ''}">
		<div class="cardArea">
			<div class="afterSelectCard">
				<div class="cardDelete" id="cardDelete_2" style="visibility: visible;"></div>
				<div class="cardDetail" id="cardDetail_2">
					<input type="button" value="상세보기" id="${compareList[1].CARD_NO}" style="visibility: visible;"/>
				</div>
			</div>
			<div class="cardBox" id="cardBox_2">
				<div class="cardImg" id="cardImg_2">
					<input type="button" value="카드를 선택해 보세요" class="addCardBtn" id="addCardBtn_2" />
					<img src="${compareList[1].CARD_IMG_URL}" class="popupImgUrl">
				</div>
				<div class="cardName" id="cardName_2"></div>
				<div class="cardKind" id="cardKind_2">카드종류</div>
				<div class="cardKind_info" id="cardKind_info_2">${compareList[1].CARD_NAME}</div><br/>
				<div class="cardType" id="cardType_2">카드타입</div>
				<div class="cardType_info" id="cardType_info_2">${compareList[1].CARD_TYPE}</div><br/>
				<div class="cardBenefit" id="cardBenefit_2">간단설명</div>
				<div class="cardBenefit_info" id="cardBenefit_info_2">${compareList[1].CARD_SUMMARY}</div><br/>
			</div>
		</div>
		</c:when>
		<c:otherwise>
		<div class="cardArea">
			<div class="afterSelectCard">
				<div class="cardDelete" id="cardDelete_2"></div>
				<div class="cardDetail" id="cardDetail_2">
					<input type="button" value="상세보기" id=""/>
				</div>
			</div>
			<div class="cardBox" id="cardBox_2">
				<div class="cardImg" id="cardImg_2">
					<input type="button" value="카드를 선택해 보세요" class="addCardBtn" id="addCardBtn_2" />
				</div>
				<div class="cardName" id="cardName_2"></div>
				<div class="cardKind" id="cardKind_2">카드종류</div>
				<div class="cardKind_info" id="cardKind_info_2"></div><br/>
				<div class="cardType" id="cardType_2">카드타입</div>
				<div class="cardType_info" id="cardType_info_2"></div><br/>
				<div class="cardBenefit" id="cardBenefit_2">간단설명</div>
				<div class="cardBenefit_info" id="cardBenefit_info_2"></div><br/>
			</div>
		</div>
		</c:otherwise>
		</c:choose>
		<c:choose>
		<c:when test="${compareList[0].CARD_NO ne ''}">
		<div class="cardArea">
			<div class="afterSelectCard">
				<div class="cardDelete" id="cardDelete_3" style="visibility: visible;"></div>
				<div class="cardDetail" id="cardDetail_3">
					<input type="button" value="상세보기" id="${compareList[2].CARD_NO}" style="visibility: visible;"/>
				</div>
			</div>
			<div class="cardBox" id="cardBox_3">
				<div class="cardImg" id="cardImg_3">
					<input type="button" value="카드를 선택해 보세요" class="addCardBtn" id="addCardBtn_3" />
					<img src="${compareList[2].CARD_IMG_URL}" class="popupImgUrl">
				</div>
				<div class="cardName" id="cardName_3"></div>
				<div class="cardKind" id="cardKind_3">카드종류</div>
				<div class="cardKind_info" id="cardKind_info_3">${compareList[2].CARD_NAME}</div><br/>
				<div class="cardType" id="cardType_3">카드타입</div>
				<div class="cardType_info" id="cardType_info_3">${compareList[2].CARD_TYPE}</div><br/>
				<div class="cardBenefit" id="cardBenefit_3">간단설명</div>
				<div class="cardBenefit_info" id="cardBenefit_info_3">${compareList[2].CARD_SUMMARY}</div><br/>
			</div>
		</div>
		</c:when>
		<c:otherwise>
		<div class="cardArea">
			<div class="afterSelectCard">
				<div class="cardDelete" id="cardDelete_3"></div>
				<div class="cardDetail" id="cardDetail_3">
					<input type="button" value="상세보기" id=""/>
				</div>
			</div>
			<div class="cardBox" id="cardBox_3">
				<div class="cardImg" id="cardImg_3">
					<input type="button" value="카드를 선택해 보세요" class="addCardBtn" id="addCardBtn_3" />
				</div>
				<div class="cardName" id="cardName_3"></div>
				<div class="cardKind" id="cardKind_3">카드종류</div>
				<div class="cardKind_info" id="cardKind_info_3"></div><br/>
				<div class="cardType" id="cardType_1">카드타입</div>
				<div class="cardType_info" id="cardType_info_3"></div><br/>
				<div class="cardBenefit" id="cardBenefit_3">간단설명</div>
				<div class="cardBenefit_info" id="cardBenefit_info_3"></div><br/>
			</div>
		</div>
		</c:otherwise>
		</c:choose>
	</div>
</div>
<br/><br/><br/><br/><br/>
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