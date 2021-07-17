<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카드캡틴계정</title>
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
	background-color: #F5F6F7;
	margin: 0;
}
.back_main {
	height: 700px;
	width: 1600px;
	display: block;
	margin: 0 auto;
}
.back_top {
   width: 100%;
   height: 130px;
   text-align: center;
   line-height: 130px;
   font-size: 30px;
   color: #0047AB;
   font-family: 'Cafe24Ohsquare';
   text-shadow: 2px 3px 4px gray;
   letter-spacing: 8px;
}
.back_middle {
	font-family: 'GmarketSansMedium';
	width: 100%;
	height: 90%;
	background-color: white;
	border: 1px solid #0047ab24;
	letter-spacing: 3px;
}
.contents {
	width: 95%;
	height: 90%;
	margin: 10px auto;
	display: flex;
}
.contents_top {
	width: 100%;
	height: 50px;
	line-height: 50px;
	text-align: center;
	font-size: 25px;
	color: #ff6e61;
}
.contents_left {
	width: 50%;
	height: 100%;
	display: inline-block;
	display: flex;
}
.contents_right {
	width: 50%;
	height: 100%;
	display: inline-block;
}
.line {
	width: 33%;
	height: 100%;
	display: block;
}
.card_blank {
	width: 100%;
	height: 30%;
	display: block;
}
.blank {
	width: 85%;
	height: 70%;
	margin: 10px auto;
    border-style: solid;
    border-width: thin;
    border-color: #0047AB;
    border-radius: 7px;
	background-color: #F5F6F7;
	padding: 10px 10px;
	cursor: pointer;
}
/* .card_logo {
	width: 30%;
	height: 20%;
} */
.card_name {
	width: 40%;
	height:20%;
	font-size: 18px;
}
.title {
	width: 100%;
	height: 50px;
	line-height: 50px;
	font-size: 16px;
}
.text {
	width: 100%;
    height: 55px;
	line-height: 55px;
    border-style: solid;
    border-width: 0 0 1px 0;
    border-color: #0047AB;
    padding: 11px 70px 8px 0;
    outline: 0;
    border-radius: 0;
    box-sizing: border-box;
    caret-color: red;
    text-decoration: none;
	color: #0047AB;
	font-size: 14px;
	letter-spacing: 3px;
}
#btn_next {
    display: block;
    width: 20%;
    height: 50px;
    padding: 0;
    border: 0;
    border-radius: 4px;
    font-size: 15px;
    color: white;
    background-color: #0047ab;
    cursor: pointer;
}
#txt {
	height: 45px;
	line-height: 45px;
	letter-spacing: 5px;
	color: #0047AB;
}
#footer {
	min-width: 600px;	
    width: 100%;
  	height: 100px;
	border-radius: 5px;
}
#footerMenu {
    height: inherit;
    margin: 0 auto;
    color: #0047AB;
    text-align: center;
    font-family: GmarketSansMedium;
    font-size: 12px;
}
#select_tel {
    width: 170px;
    height: 43px;
    border-style: solid;
    border-width: 0 0 1px 0;
    border-color: #0047AB;
    outline: 0;
    caret-color: red;
    color: #0047AB;
    letter-spacing: 3px;
}
.paging_wrap div {
	display: inline-block;
	padding: 5px;
	margin: 0 3px;
	background-color: #DFDFDF;
	border: 1px solid #444;
	border-radius: 3px;
	cursor: pointer;
	width: 50px;
	text-align: center;
}
.paging_wrap div:active {
	background-color: #AAAAAA;
}
#paging_wrap #on {
	background-color: skyblue;
	color: white;
	font-size: 12px;
}
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function () {
	if("${param.searchGbn}" != "") {
		$("${searchGbn}").val("${param.searchGbn}")
	}
	// 카드사선택
	$(".blank").on("click", function () {
		$("#page").val(1);
		$("#searchOldTxt").val($("#searchTxt").val());
		reloadList();
	});
	// 검색
	$("#searchBtn").on("click", function () {
		$("#page").val(1);
		$("#searchOldTxt").val($("#searchTxt").val());
		reloadList();
	});
	
	// 페이징
	$("#paging_wrap").on("click", "span", function () {
		$("#page").val($(this).attr("page"));
		$("#searchTxt").val($("#searchOldTxt").val());
		reloadList();
	});
	
	// 리스트불러오기
	function reloadList() {
		
		var params = $("#joinCard").serialize();
		
		$.ajax({
			url: "joincards",
			type: "post",
			dataType: "json",
			data: params,
			success: function (res) {
				drawList(res.list);
				drawPaging(res.pb);
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
		for(var d of list) {
			html += "<tr sno=\"" + d.CARD_NO + "\">";
			html += "<td>" + d.CARD_NO + "</td>";
			html += "<td>" + d.CARD_NAME + "</td>";
			html += "</tr>";
		}
		
		$(".list_wrap tbody").html(html);
		
	}
		
	//페이징 그리기
	function drawPaging(pb) {
		var html = "";
		
		html += "<span page=\"1\">처음</span>";
		
		if($("#page").val() == "1") {
			html += "<span page=\"1\">이전</span>";
		} else {
			html += "<span page=\"" + ($("#page").val() - 1) + "\">이전</span>";
		}
		
		for(var i = pb.startPcount ; i <= pb.endPcount ; i++) {
			if($("#page").val() == i) {
				html += "<span id=\"on\" page=\"" + i + "\">" + i + "</span>";
			} else {
				html += "<span page=\"" + i + "\">" + i + "</span>";
			}
		}
		
		if($("#page").val() == pb.maxPcount) {
			html += "<span page=\"" + pb.maxPcount + "\">다음</span>";
		} else {
			html += "<span page=\"" + ($("#page").val() * 1 + 1) + "\">다음</span>";
		}
			html += "<span page=\"" + pb.maxPcount + "\">마지막</span>";
		
		$("#paging_wrap").html(html);
	}	
});
</script>
</head>
<body>
<div class="back_main">
	<div class="back_top">CARD CAPTAIN</div>
	<div class="back_middle">
		<div class="contents_top">보유중인 카드를 등록하고 혜택을 누리세요</div>
		<div class="contents">
			<div class="contents_left">
				<div class="line">
					<div class="card_blank">
						<div class="blank" id="kbcard">
							<div class="card_logo"><img src="resources/images/user/cardLogo/kb_logo.png" height=35px></div>
							<div class="card_name">국민카드</div>
						</div>
					</div>
					<div class="card_blank">
						<div class="blank" id="sscard">
							<div class="card_logo"><img src="resources/images/user/cardLogo/samsung_logo.png" height=35px></div>
							<div class="card_name">삼성카드</div>
						</div>
					</div>
					<div class="card_blank">
						<div class="blank" id="locard">
							<div class="card_logo"><img src="resources/images/user/cardLogo/loca_logo.png" height=35px></div>
							<div class="card_name">롯데카드</div>
						</div>
					</div>
				</div>
				<div class="line">
					<div class="card_blank">
						<div class="blank" id="shcard">
							<div class="card_logo"><img src="resources/images/user/cardLogo/shinhan_logo.png" height=35px></div>
							<div class="card_name">신한카드</div>
						</div>
					</div>
					<div class="card_blank">
						<div class="blank" id="wrcard">
							<div class="card_logo"><img src="resources/images/user/cardLogo/wr_logo.png" height=35px></div>
							<div class="card_name">우리카드</div>
						</div>
					</div>
					<div class="card_blank">
						<div class="blank" id="hdcard">
							<div class="card_logo"><img src="resources/images/user/cardLogo/hyundai_logo.png" height=35px></div>
							<div class="card_name">현대카드</div>
						</div>
					</div>
				</div>
				<div class="line">
					<div class="card_blank">
						<div class="blank" id="nhcard">
							<div class="card_logo"><img src="resources/images/user/cardLogo/nh_logo.png" height=35px></div>
							<div class="card_name">농협카드</div>
						</div>
					</div>
					<div class="card_blank">
						<div class="blank" id="hncard">
							<div class="card_logo"><img src="resources/images/user/cardLogo/hn_logo.png" height=35px></div>
							<div class="card_name">하나카드</div>
						</div>
					</div>
					<div class="card_blank">
						<div class="blank" id="ibkcard">
							<div class="card_logo"><img src="resources/images/user/cardLogo/ibk_logo.png" height=35px></div>
							<div class="card_name">기업카드</div>
						</div>
					</div>
				</div>
			</div>
			<div class="contents_right">
				<div class="search">
				<form action="#" id="joinCard" method="post">
					<input type="hidden" id="sNo" name="sNo" />
					<input type="hidden" id="page" name="page" value="${page}" />
					<select id="searchGbn" name="searchGbn">
						<option value="1">카드타입</option>
						<option value="2">카드명</option>
					</select>
					<input type="hidden" id="searchOldTxt" value="${param.searchOldTxt}" />
					<input type="text" name="searchTxt" id="searchTxt" value="${param.searchTxt}" />
					<input type="button" value="검색" id="searchBtn" />
				</form><br/>
					<div class="list_wrap">
					<table>
						<colgroup width="3000px">
							<col width="25%" />
							<col width="35%" />
							<col width="15%" />
						</colgroup>
						<thead>
							<tr>
								<th>카드타입</th>
								<th>카드명</th>
								<th>선택</th>
							</tr>
						</thead>
						<tbody></tbody>
					</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br/>
	<br/>
	<div id="footer">
		<div id="footerMenu">
			<div>서울시 금천구 가산디지털2로 115,509호,811호,1109-1호(가산동,대륭테크노타운3차) 금융조 조장 : 주건정</div>
			<div>Copyright © 2021-2031 CardCaptain All Rights Reserved.</div>
		</div>
	</div>
</div>
</html>