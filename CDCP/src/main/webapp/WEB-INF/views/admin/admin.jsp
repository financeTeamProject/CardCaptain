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
.content_area {
	width: 100%;
	min-width: 1830px;
	margin-top: 50px;
	margin-bottom: 50px;
}	
.contents {
	width: 1600px;
	height: 500px;
	margin: 0px auto;
}
.sub_menuBar {
	margin-left: 180px;
	width: 1150px;
	float: left;
}
.sub_menuBar .content_content {
	width: auto;
	height: 40px;
	display: inline-block;
	margin-left: 10px;
	padding-left: 7px;
	padding-right: 7px;
	border-radius: 10px 10px 0px 0px;
}
.left_content {
	margin-top: 10px;
	width: 130px;
	height: inherit;
	display: inline-block;
	float: left;
}
.left_content .content_content {
	margin-top: 10px;
	width: 130px;
	height: 48px;
	float: left;
	border-radius: 10px 0px 0px 10px;
}
.real_content {
	float: left;
	width: 1330px;
	height: 500px;
}
.right_content {
	display: inline-block;
	padding: 50px;
	width: 1200px;
	height: inherit;
	background-color: #F2F2F2;
}
.content_content {
	padding-top: 10px;
	padding-bottom: 10px;
	background: #F5DF4D;
	font-size: 24px;
	color: black;
	font-family: 'Cafe24Ohsquare';
	text-align: center;
}
.content_content:hover {
	cursor: pointer;
	background-color: #F2F2F2;
	color: black;
}
#image_preview img{
	border-radius: 20px;
}
#cardAddBtn,.cardDeleteBtn,.cardUpdateBtn {
    width: 120px;
    height: 40px;
    color: white;
    border-style: none;
    background-color: #0047AB;
    border-radius: 7px;
    font-size: 18px;
    font-family: 'GmarketSansMedium';
    font-weight: bold;
}
#cardAddBtn:hover,.cardDeleteBtn:hover,.cardUpdateBtn:hover {
	cursor: pointer;
	/* background-color: #F5DF4D;
	color: black; */
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
	width: 1000px;
	height: 800px;
	position: absolute;
	top: 50%;
	left: 50%;
	margin-top: -400px;
	margin-left: -450px;
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
	height: 700px;
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
#updateCardPopName,#updateCardPopApply,#updateCardPopImg,#updateCardPopSummary {
	border: none;
	font-family: 'Gmarket Sans L';
	width: 500px;
}
#updateCardPopKind,#updateCardPopType {
	font-family: 'Gmarket Sans L';
	/* width: 300px; */
}
[id^='updateCardPopBeneTop_'],[id^='updateCardPopShop_'] {
	border: none;
	font-family: 'Gmarket Sans L';
	width: 150px;
}
[id^='updateCardPopBene_mid_'] {
	border: none;
	font-family: 'Gmarket Sans L';
	width: 900px;
}
[id^='updateCardPopDetail_'] {
	border: none;
	font-family: 'Gmarket Sans L';
	width: 900px;
	height: 100px;
}
.popup_div input[type='button'] {
	background-color: #F5DF4D;
	color: black;
	border: none;
	border-radius: 5px;
	font-family: 'GmarketSansMedium';
	margin-left: 10px;
}
.popup_div input[type='button']:hover {
	background-color: #0047AB;
	color: white;
	cursor: pointer;
}
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
/* 	SELECT * FROM CARDS;
	SELECT * FROM CARDTYPES;
	SELECT * FROM CARDBENEFITS;
	SELECT * FROM CARDCOMPANYS;
	SELECT * FROM CARDMEMTARGETS;

	SELECT DISTINCT BENEFIT_TOP FROM CARDBENEFITS; */
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
		getCardRead();
	});
	$("#deleteCard").on("click", function() {
		updateCardRead();
	});
	
	$(".left_content .content_content").on("click", function() {
		if($(this).html() == "추가") {
			getCardRead();
		} else if($(this).html() == "삭제/수정") {
			updateCardRead();
		}
	});
	
	$(".sub_menuBar .content_content").on("click", function() {
		var ival = $(this).prop('id').split("_");
		getCardRead();
	});
});

function updateCardRead() {
	$.ajax({
		url:"cardListGet",
		type:"post",
		dataType :"json",
		success : function (res) {
			var html ="";
			
			html +="<form action=\"#\" id =\"UpdateCardForm\" method=\"post\">";
			html +="<div>";
			html +="<table border=\"1\">";
			html +="<colgroup>";
			html +="<col width=\"110px\"/>";
			html +="<col width=\"390px\"/>";
			html +="<col width=\"250px\"/>";
			html +="<col width=\"250px\"/>";
			html +="</colgroup>";
			for(var i=0; i<res.list.length; i++) {
				html +="<tr>";
				html +="<td><img src=" + res.list[i].CARD_IMG_URL + " style=\"width:100px;height:60px;\"></td>";
				html +="<td>" + res.list[i].CARD_NAME + "</td>";
				html +="<td><input type=\"button\" value=\"수정\" class=\"cardUpdateBtn\"/><input type=\"hidden\" name=\"cardUpNo\" value=\"" + res.list[i].CARD_NO + "\"></td>";
				html +="<td><input type=\"button\" value=\"삭제\" class=\"cardDeleteBtn\"/><input type=\"hidden\" name=\"cardDelNo\" value=\"" + res.list[i].CARD_NO + "\"></td>";
				html +="</tr>";	
			}
			html +="</table>";
			html +="</div>";
			html +="</form>";
			$(".right_content").html(html);

			$(".cardDeleteBtn").on("click", function() {
				$("#goForm").append("<input type='\hidden'\ value=" + $(this).siblings().val() + " name=\"delNo\"/>");
				var params = $("#goForm").serialize();
				
				if(confirm("정말 삭제하시겠습니까?")) {
					$.ajax({
						url:"cardDelete",
						type:"post",
						dataType :"json",
						data: params,
						success : function (res) {
							updateCardRead();
							alert("삭제가 완료되었습니다");
						},
						error: function (request, status, error) {
							console.log(error);
						}
					});
				}
			});
			
			$(".cardUpdateBtn").on("click", function() {
				$("#goForm").append("<input type='\hidden'\ value=" + $(this).siblings().val() + " name=\"cardUpNo\"/>");
				var params = $("#goForm").serialize();
				
				makeUpdatePopUp($(this).siblings().val());
			});
		},
		error: function (request, status, error) {
			console.log(error);
		}
	});
}

function getCardRead() {
	var html = "";
	
	html += "<form action=\"#\" id =\"addCardForm\" method=\"post\">";
	html += "<input type=\"hidden\" id=\"data\" name =\"cardCompany\" value=\"\"><br/>";
	html += "<table border=\"1\">";
	html += "<colgroup>";
	html += "<col width=\"1100px\"/>";
	html += "<col width=\"1100px\"/>";
	html += "<col width=\"1100px\"/>";
	html += "<col width=\"1100px\"/>";
	html += "</colgroup>";
	html += "<tr>";
	html += "<td class=\"img\" colspan=\"3\">";
	html += "<div id=\"image_preview\">";
	html += "<img src=\"resources/images/detail/Main3.jpg\" style=\"width:220px;height:150px;\">";
	html += "</div>";
	html += "<div class=\"f_box\">";
	html += "<input type=\"file\" id=\"cardImg\" name=\"bf_file[]\">";
	html += "<label for=\"img\"></label><br/>";
	html += "</div>";
	html += "</td>";
	html += "</tr>";
	html += "<tr>";
	html += "<td><input type=\"text\" id=\"cardName\" name=\"cardName\" placeholder=\"카드이름\"/></td>";
	html += "<td><input type=\"text\" id=\"cardUrl\" name=\"cardUrl\" placeholder=\"가입Url\"/></td>";
	html += "<td><input type=\"text\" id=\"cardSummary\" name=\"cardSummary\" placeholder=\"간단혜택\"/></td>";
	html += "</tr>";
	html += "<tr>";
	html += "<td>카드종류<br/>";
	html += "<select id=\"cardKind\" name=\"cardKind\">";
	html += "<option value=\"0\">체크카드</option>";
	html += "<option value=\"1\">신용카드</option>";
	html += "</select>";
	html += "</td>";
	html += "<td>카드타입<br/>";
	html += "<select id=\"cardType\" name=\"cardType\">";
	html += "<option value=\"0\">할인</option>";
	html += "<option value=\"1\">적립</option>";
	html += "<option value=\"2\">마일리지</option>";
	html += "</select>";
	html += '<td id=\"cardBenefitTop\"><label><input type="checkbox" name="benefitOption" value="선택형">선택형</label><label><input type="checkbox" name="benefitOption" value="통신">통신</label><label><input type="checkbox" name="benefitOption" value="주유">주유</label><label><input type="checkbox" name="benefitOption" value="테마파크">테마파크</label><label><input type="checkbox" name="benefitOption" value="백화점">백화점</label><label><input type="checkbox" name="benefitOption" value="기타">기타</label><label><input type="checkbox" name="benefitOption" value="교육/육아">교육/육아</label><label><input type="checkbox" name="benefitOption" value="공연/전시">공연/전시</label><label><input type="checkbox" name="benefitOption" value="모든" 가맹정="">모든 가맹정</label><label><input type="checkbox" name="benefitOption" value="리빙">리빙</label><label><input type="checkbox" name="benefitOption" value="공항라운지/PP">공항라운지/PP</label><label><input type="checkbox" name="benefitOption" value="공항">공항</label><label><input type="checkbox" name="benefitOption" value="소셜커머스">소셜커머스</label><label><input type="checkbox" name="benefitOption" value="해피포인트">해피포인트</label><label><input type="checkbox" name="benefitOption" value="공과금">공과금</label><label><input type="checkbox" name="benefitOption" value="대형" 마트="">대형 마트</label><label><input type="checkbox" name="benefitOption" value="SKT">SKT</label><label><input type="checkbox" name="benefitOption" value="화장품">화장품</label><label><input type="checkbox" name="benefitOption" value="OK캐쉬백">OK캐쉬백</label><label><input type="checkbox" name="benefitOption" value="모든" 가맹점="">모든 가맹점</label><label><input type="checkbox" name="benefitOption" value="병원/약국">병원/약국</label><label><input type="checkbox" name="benefitOption" value="면세점">면세점</label><label><input type="checkbox" name="benefitOption" value="자동차">자동차</label><label><input type="checkbox" name="benefitOption" value="도서">도서</label><label><input type="checkbox" name="benefitOption" value="주유소">주유소</label><label><input type="checkbox" name="benefitOption" value="교통">교통</label><label><input type="checkbox" name="benefitOption" value="베이커리">베이커리</label><label><input type="checkbox" name="benefitOption" value="카페/디저트">카페/디저트</label><label><input type="checkbox" name="benefitOption" value="적립">적립</label><label><input type="checkbox" name="benefitOption" value="할인">할인</label><label><input type="checkbox" name="benefitOption" value="병원">병원</label><label><input type="checkbox" name="benefitOption" value="뷰티/피트니스">뷰티/피트니스</label><label><input type="checkbox" name="benefitOption" value="무이자할부">무이자할부</label><label><input type="checkbox" name="benefitOption" value="바우처">바우처</label><label><input type="checkbox" name="benefitOption" value="점심">점심</label><label><input type="checkbox" name="benefitOption" value="호텔">호텔</label><label><input type="checkbox" name="benefitOption" value="경기관람">경기관람</label><label><input type="checkbox" name="benefitOption" value="CJ" one="">CJ ONE</label><label><input type="checkbox" name="benefitOption" value="편의점">편의점</label><label><input type="checkbox" name="benefitOption" value="푸드">푸드</label><label><input type="checkbox" name="benefitOption" value="패밀리레스토랑">패밀리레스토랑</label><label><input type="checkbox" name="benefitOption" value="프리미엄">프리미엄</label><label><input type="checkbox" name="benefitOption" value="카페">카페</label><label><input type="checkbox" name="benefitOption" value="APP">APP</label><label><input type="checkbox" name="benefitOption" value="마트">마트</label><label><input type="checkbox" name="benefitOption" value="학원">학원</label><label><input type="checkbox" name="benefitOption" value="멤버십포인트">멤버십포인트</label><label><input type="checkbox" name="benefitOption" value="네이버페이">네이버페이</label><label><input type="checkbox" name="benefitOption" value="하이브리드">하이브리드</label><label><input type="checkbox" name="benefitOption" value="일반음식점">일반음식점</label><label><input type="checkbox" name="benefitOption" value="PAYCO">PAYCO</label><label><input type="checkbox" name="benefitOption" value="정비">정비</label><label><input type="checkbox" name="benefitOption" value="패스트푸드">패스트푸드</label><label><input type="checkbox" name="benefitOption" value="카카오페이">카카오페이</label><label><input type="checkbox" name="benefitOption" value="카페/제과">카페/제과</label><label><input type="checkbox" name="benefitOption" value="공항라운지">공항라운지</label><label><input type="checkbox" name="benefitOption" value="온라인" 쇼핑="">온라인 쇼핑</label><label><input type="checkbox" name="benefitOption" value="카드사">카드사</label><label><input type="checkbox" name="benefitOption" value="캐시백">캐시백</label><label><input type="checkbox" name="benefitOption" value="아시아나항공">아시아나항공</label><label><input type="checkbox" name="benefitOption" value="제주항공">제주항공</label><label><input type="checkbox" name="benefitOption" value="국민행복">국민행복 </label><label><input type="checkbox" name="benefitOption" value="어린이집">어린이집</label><label><input type="checkbox" name="benefitOption" value="전월" 실적="" 조건="" 없이="" 사용="" 횟수별="" 최대="" 2만원="" 적립="">전월 실적 조건 없이 사용 횟수별 최대 2만원 적립</label><label><input type="checkbox" name="benefitOption" value="생활">생활</label><label><input type="checkbox" name="benefitOption" value="대형마트">대형마트</label><label><input type="checkbox" name="benefitOption" value="렌터카">렌터카</label><label><input type="checkbox" name="benefitOption" value="디지털구독">디지털구독</label><label><input type="checkbox" name="benefitOption" value="간편결제">간편결제</label><label><input type="checkbox" name="benefitOption" value="프리미엄" 서비스="">프리미엄 서비스</label><label><input type="checkbox" name="benefitOption" value="은행사">은행사</label><label><input type="checkbox" name="benefitOption" value="해외이용">해외이용</label><label><input type="checkbox" name="benefitOption" value="SSM">SSM</label><label><input type="checkbox" name="benefitOption" value="택시">택시</label><label><input type="checkbox" name="benefitOption" value="기차">기차</label><label><input type="checkbox" name="benefitOption" value="수수료우대">수수료우대</label><label><input type="checkbox" name="benefitOption" value="무실적">무실적</label><label><input type="checkbox" name="benefitOption" value="연회비지원">연회비지원</label><label><input type="checkbox" name="benefitOption" value="공과금/렌탈">공과금/렌탈</label><label><input type="checkbox" name="benefitOption" value="해외">해외</label><label><input type="checkbox" name="benefitOption" value="모든가맹점">모든가맹점</label><label><input type="checkbox" name="benefitOption" value="드럭스토어">드럭스토어</label><label><input type="checkbox" name="benefitOption" value="배달앱">배달앱</label><label><input type="checkbox" name="benefitOption" value="디지털" 구독="">디지털 구독</label><label><input type="checkbox" name="benefitOption" value="온라인쇼핑">온라인쇼핑</label><label><input type="checkbox" name="benefitOption" value="아울렛">아울렛</label><label><input type="checkbox" name="benefitOption" value="항공권">항공권</label><label><input type="checkbox" name="benefitOption" value="영화/문화">영화/문화</label><label><input type="checkbox" name="benefitOption" value="마트/편의점">마트/편의점</label><label><input type="checkbox" name="benefitOption" value="홈쇼핑">홈쇼핑</label><label><input type="checkbox" name="benefitOption" value="국민행복">국민행복</label><label><input type="checkbox" name="benefitOption" value="아이행복">아이행복</label><label><input type="checkbox" name="benefitOption" value="음원사이트">음원사이트</label><label><input type="checkbox" name="benefitOption" value="CJ" one="">CJ ONE</label><label><input type="checkbox" name="benefitOption" value="쇼핑">쇼핑</label><label><input type="checkbox" name="benefitOption" value="대중교통">대중교통</label><label><input type="checkbox" name="benefitOption" value="영화">영화</label><label><input type="checkbox" name="benefitOption" value="금융">금융</label><label><input type="checkbox" name="benefitOption" value="여행/숙박">여행/숙박</label><label><input type="checkbox" name="benefitOption" value="멤버십" 포인트="">멤버십 포인트</label><label><input type="checkbox" name="benefitOption" value="대한항공">대한항공</label><label><input type="checkbox" name="benefitOption" value="교육,육아">교육,육아</label><label><input type="checkbox" name="benefitOption" value="자동차">자동차</label><label><input type="checkbox" name="benefitOption" value="자동차/하이패스">자동차/하이패스</label></td>';
	html += "</tr>";
	html += "<tr>";
	html += "<td>서브설명<br/><input type=\"text\" id=\"cardUrlBenefitMid\" name=\"cardBenefitMid\" /></td>";
	html += "<td colspan=\"2\"><textarea id=\"cardBenefitDetail\" name=\"cardBenefitDetail\" placeholder=\"상세혜택\"></textarea></td>";
	html += "</tr>";
	html += "<tr>";
	html += "<td colspan=\"3\"><input type=\"text\" id=\"cardShop\" name=\"cardShop\" placeholder=\"혜택매장\"/></td>";
	html += "</tr>";
	html += "</table>";
	html += "</form>";
	html += "<br/>";
	html += "<div>";
	html += "<input type=\"button\" value=\"등록하기\" id=\"cardAddBtn\"/>";
	html += "</div>";
	
	$(".right_content").html(html);
	
	// 이미지 업로드
    $('#cardImg').on('change', function() {
	    ext = $(this).val().split('.').pop().toLowerCase(); //확장자
	    //배열에 추출한 확장자가 존재하는지 체크
	    if($.inArray(ext, ['gif', 'png', 'jpg', 'jpeg']) == -1) {
	        resetFormElement($(this)); //폼 초기화
	        window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능)');
	    } else {
	        file = $('#cardImg').prop("files")[0];
	        blobURL = window.URL.createObjectURL(file);
	        $('#image_preview img').attr('src', blobURL);
	        $('#image_preview').show(); //업로드한 이미지 미리보기
	        $(this).hide(); //파일 양식 감춤
	    }
    });
}

function makeUpdatePopUp(no) {
	$("#goForm").append("<input type='\hidden'\ value='" + no + "' name=\"cardUpNo\"/>");
	var params = $("#goForm").serialize();
	
	$.ajax({
		url:"cardUpdatePop",
		type:"post",
		dataType :"json",
		data: params,
		success : function (res) {
			var html = "";
			html += "<div class=\"bg_div\"></div>";
			html += "<div class=\"popup_div\">";
			html += "<div class=\"popup_title\">";
			html += "<div class=\"popup_title_text\">" + res.popup[0].CARD_NAME + "변경</div>";
			html += "</div>";
			html += "<div class=\"popup_contents\">";
			html += "<div class=\"popup_text\">"
			html += "<form action=\"#\" id =\"updateCardPopForm\" method=\"post\">";
			html += "<input type=\"hidden\" id=\"updateCardPopNo\" name=\"option\" value='" + res.popup[0].CARD_NO + "'\><br/>";
			html += "카드이름 [ <input type=\"text\" id=\"updateCardPopName\" name=\"option\" value='" + res.popup[0].CARD_NAME + "'\> ]<br/>";
			html += "가입경로 [ <input type=\"text\" id=\"updateCardPopApply\" name=\"option\" value='" + res.popup[0].CARD_APPLY_URL + "'\> ]<br/>";
			html += "카드사진 [ <input type=\"text\" id=\"updateCardPopImg\" name=\"option\" value='" + res.popup[0].CARD_IMG_URL + "'\> ]<br/>";
			html += "혜택요약 [ <input type=\"text\" id=\"updateCardPopSummary\" name=\"option\" value='" + res.popup[0].CARD_SUMMARY + "'\> ]<br/>";
			
			html += "카드종류";
			if(res.popup[0].C_TYPE == 0) {
				html += " [ <select id=\"updateCardPopKind\" name=\"option\">";
				html += "<option value=\"0\" selected>신용카드";
				html += "<option value=\"1\">체크카드";
				html += "</select> ]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
			} else if(res.popup[0].C_TYPE == 1) {
				html += " [ <select name=\"option\">";
				html += "<option value=\"0\">신용카드";
				html += "<option value=\"1\" selected>체크카드";
				html += "</select> ]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";	
			}
			
			html += "카드타입";
			if(res.popup[0].T_TYPE == 0) {
				html += " [ <select id=\"updateCardPopType\" name=\"option\">";
				html += "<option value=\"0\" selected>할인";
				html += "<option value=\"1\">적립";
				html += "<option value=\"2\">마일리지";
				html += "</select> ]";
			} else if(res.popup[0].T_TYPE == 1) {
				html += " [ <select id=\"updateCardPopType\" name=\"option\">";
				html += "<option value=\"0\">할인";
				html += "<option value=\"1\" selected>적립";
				html += "<option value=\"2\">마일리지";
				html += "</select> ]";
			} else if(res.popup[0].T_TYPE == 2) {
				html += " [ <select id=\"updateCardPopType\" name=\"option\">";
				html += "<option value=\"0\">할인";
				html += "<option value=\"1\">적립";
				html += "<option value=\"2\" selected>마일리지";
				html += "</select> ]";	
			}
			
			html += "<hr/>[메인혜택]<input type=\"button\" class=\"PopBtn\" value=\"추가\"/><br/>";
			for(var i=0; i<res.popup.length; i++) {
				if(res.popup[i].BENEFIT_TOP != undefined && res.popup[i].BENEFIT_NO != undefined) {
					html += "<input type=\"hidden\" id=\"updateCardPopBeneNo_" + (i*1)+1 + "\" name=\"option\" value='" + res.popup[i].BENEFIT_NO + "'\>";
					html += "<input type=\"text\" id=\"updateCardPopBeneTop_" + (i*1)+1 + "\" name=\"option\" value='" + res.popup[i].BENEFIT_TOP + "'\>";
				} else {
					html += "<input type=\"hidden\" id=\"updateCardPopBeneNo_" + (i*1)+1 + "\" name=\"option\" value='" + res.popup[i].BENEFIT_NO + "'\>";
					html += "<input type=\"text\" id=\"updateCardPopBeneTop_" + (i*1)+1 + "\" name=\"option\" value='null'\>";
				}
			}
			html += "<hr/>[서브혜택]<input type=\"button\" class=\"PopBtn\" value=\"추가\"/><br/>";
			for(var i=0; i<res.popup.length; i++) {
				if(res.popup[i].BENEFIT_MID != undefined) {
					html += "<input type=\"text\" id=\"updateCardPopBene_mid_" + (i*1)+1 + "\" name=\"option\" value='" + res.popup[i].BENEFIT_MID + "'\><br/>";
				} else {
					html += "<input type=\"text\" id=\"updateCardPopBene_mid_" + (i*1)+1 + "\" name=\"option\" value='null'\><br/>";
				}
			}
			html += "<hr/>[상세혜택]<input type=\"button\" class=\"PopBtn\" value=\"추가\"/><br/>";
			for(var i=0; i<res.popup.length; i++) {
				if(res.popup[i].DETAIL_INFO != undefined) {
					html += "<textarea id=\"updateCardPopDetail_" + (i*1)+1 + "\" name=\"option\">";
					html += res.popup[i].DETAIL_INFO;
					html += "</textarea><br/><br/>";
				}
			}
			html += "<hr/>[혜택매장]<input type=\"button\" class=\"PopBtn\" value=\"추가\"/><br/>";
			for(var i=0; i<res.popup.length; i++) {
				if(res.popup[i].SHOP_INFO != undefined) {
					html += "<input type=\"text\" id=\"updateCardPopShop_" + (i*1)+1 + "\" name=\"option\" value='" + res.popup[i].SHOP_INFO + "'\><br/>";
				}
			}
			html += "<br/><br/></form>";
			html += "</div>";
			html += "<div class=\"popup_btn\">";
			html += "<input type=\"button\" class=\"btn_ok\" value=\"닫기\"/>";
			html += "<input type=\"button\" class=\"update_ok\" value=\"수정\"/>";
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
			
			function closePopup() {
				$(".bg_div").fadeOut(function(){
					$(".bg_div").remove();
				});
				
				$(".popup_div").fadeOut(function(){
					$(".popup_div").remove();
				});
			}
			
			$(".update_ok").on("click", function() {
				var params = $("#updateCardPopForm").serialize();
				
				$.ajax({
					url:"cardUpdate",
					type:"post",
					dataType :"json",
					data: params,
					success : function (res) {
						updateCardRead();
					},
					error: function (request, status, error) {
						console.log(error);
					}
				});
			});
		},
		error: function (request, status, error) {
			console.log(error);
		}
	});
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
<!-- 컨텐츠 영역 -->
<form action="#" id ="goForm" method="post"></form>
<div class="content_area">
	<div class="contents">
		<div class="sub_menuBar">
			<div class="content_content" id="cardNo_1">국민카드</div>
			<div class="content_content" id="cardNo_2">삼성카드</div>
			<div class="content_content" id="cardNo_3">롯데카드</div>
			<div class="content_content" id="cardNo_4">신한카드</div>
			<div class="content_content" id="cardNo_5">우리카드</div>
			<div class="content_content" id="cardNo_6">현대카드</div>
			<div class="content_content" id="cardNo_7">농협카드</div>
			<div class="content_content" id="cardNo_8">하나카드</div>
			<div class="content_content" id="cardNo_9">IBK카드</div>
		</div>
		<div class="real_content">
		<div class="left_content">
			<div class="content_content">추가</div>
			<div class="content_content">삭제/수정</div>
		</div>
		<div class="right_content"></div>
		</div>
	</div>
</div><br/><br/><br/>
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