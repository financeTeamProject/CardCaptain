<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보유카드추가</title>
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
#paging_wrap #on {
	background-color: skyblue;
	color: white;
	font-size: 12px;
}
.list_wrap thead tr, .add_wrap thead tr { 
 	border-top: 1px solid #000; 
 	border-bottom: 1px solid #000; 
 	background-color: #0047AB; 
 	hieght: 30px;
 	color: white;
}
.list_wrap table, .add_wrap table{
	border-collapse: collapse;
}
.list_wrap tbody tr, .add_wrap tbody tr {
	border-bottom: 1px solid #000;
	height: 35px;
	text-align: center;
}
#paging_wrap span {
	display: inline-block;
	padding: 5px;
	margin-left: 3px;
	margin-right: 3px;
	background-color: #DFDFDF;
	border: 1px solid #444;
	border-radius: 3px;
	cursor: pointer;
	width: 50px;
	text-align: center;
	font-size: 10px;
}
.addbtn {
	width: 45px;
	height: 25px;
	margin-top: 3px;
}
.joinBtn {
	width: 65px;
	height: 25px;
}
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
var memAdd = "";
$(document).ready(function () {
	if("${param.searchGbn}" != "") {
		$("${searchGbn}").val("${param.searchGbn}")
	}
	reloadList();
	
	$("#joinCard").on("keypress", "input", function (event) {
		if(event.keyCode == 13) {
			return false; 
		}
	});
	
	// 카드사선택
	$(".blank").on("click", function () {
		$("#page").val(1);
		$("#cmpNo").val($(this).prop("id")); //1~9카드사
		console.log($("#cmpNo").val());
		
		reloadList();
	});
	// 검색
	$("#searchBtn").on("click", function () {
		$("#page").val(1);
		
		reloadList();
	});
	
	// 페이징
	$("#paging_wrap").on("click", "span", function () {
		$("#page").val($(this).attr("page"));
		
		reloadList();
	});
	
	// 추가하기
	$("#joinBtn").on("click", function () {
	});
	
	//
	$(".add_wrap tbody")
	
	function addcard() {
		var params = $("#").serialize();
		
		$.ajax({
			url: "addcards",
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
			html += "<td>" + "" + "</td>";
			html += "<td class=\"a\">" + d.CARD_TYPE + "</td>";
			html += "<td class=\"b\">" + d.CARD_NAME + "</td>";
			html += "<td>" + "<button value=\"추가\" class=\"addbtn\" id=addbtn>추가</button>" + "</td>";
			html += "</tr>";
		}
		
		$(".list_wrap tbody").html(html);
			var add ="";
			var addcnt = 0;
			
		$(".list_wrap tr").on("click",function () {
			addcnt++;
			if(addcnt > 5) {
				alert("추가못함.")
			} else {
				add += "<tr sno=\"" + $(this).attr("sno") + "\">";
				add += "<td>" + "" + "</td>";
				add += "<td>" + $(this).children( '.a' ).html() + "</td>";
				add += "<td>" + $(this).children( '.b' ).html() + "</td>";
				add += "<td>" + "<button value=\"추가\" class=\"addbtn\" id=addbtn>삭제</button>" + "</td>";
				add += "</tr>";
				
				$(".add_wrap tbody").append(add);
					var add ="";
				
				$("#joinBtn").on("click", function () {
					
					console.log(memAdd);
				});
			}
		});
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
						<div class="blank" id="1">
							<div class="card_logo"><img src="resources/images/user/cardLogo/kb_logo.png" height=35px></div>
							<div class="card_name">국민카드</div>
						</div>
					</div>
					<div class="card_blank">
						<div class="blank" id="2">
							<div class="card_logo"><img src="resources/images/user/cardLogo/samsung_logo.png" height=35px></div>
							<div class="card_name">삼성카드</div>
						</div>
					</div>
					<div class="card_blank">
						<div class="blank" id="3">
							<div class="card_logo"><img src="resources/images/user/cardLogo/loca_logo.png" height=35px></div>
							<div class="card_name">롯데카드</div>
						</div>
					</div>
				</div>
				<div class="line">
					<div class="card_blank">
						<div class="blank" id="4">
							<div class="card_logo"><img src="resources/images/user/cardLogo/shinhan_logo.png" height=35px></div>
							<div class="card_name">신한카드</div>
						</div>
					</div>
					<div class="card_blank">
						<div class="blank" id="5">
							<div class="card_logo"><img src="resources/images/user/cardLogo/wr_logo.png" height=35px></div>
							<div class="card_name">우리카드</div>
						</div>
					</div>
					<div class="card_blank">
						<div class="blank" id="6">
							<div class="card_logo"><img src="resources/images/user/cardLogo/hyundai_logo.png" height=35px></div>
							<div class="card_name">현대카드</div>
						</div>
					</div>
				</div>
				<div class="line">
					<div class="card_blank">
						<div class="blank" id="7">
							<div class="card_logo"><img src="resources/images/user/cardLogo/nh_logo.png" height=35px></div>
							<div class="card_name">농협카드</div>
						</div>
					</div>
					<div class="card_blank">
						<div class="blank" id="8">
							<div class="card_logo"><img src="resources/images/user/cardLogo/hn_logo.png" height=35px></div>
							<div class="card_name">하나카드</div>
						</div>
					</div>
					<div class="card_blank">
						<div class="blank" id="9">
							<div class="card_logo"><img src="resources/images/user/cardLogo/ibk_logo.png" height=35px></div>
							<div class="card_name">기업카드</div>
						</div>
					</div>
				</div>
			</div>
			<div class="contents_right">
				<div class="search">
<!-- Form -->
					<form action="#" id="joinCard" method="post">   
						<input type="hidden" name="cmpNo" id="cmpNo" value="1" />
						<input type="hidden" id="page" name="page" value="${page}" />
					</form><br/>
<!-- Form end -->
					<div class="list_wrap">
					<table>
						<colgroup width="3000px">
							<col width="5%" />
							<col width="15%" />
							<col width="65%" />
							<col width="15%" />
						</colgroup>
						<thead>
							<tr>
								<th></th>
								<th>카드타입</th>
								<th>카드명</th>
								<th></th>
							</tr>
						</thead>
						<tbody></tbody>
					</table>
					</div>
					<br/>
					<div id="paging_wrap"></div>
					<br/>
					<div class="add_wrap">
					<table>
						<colgroup width="3000px">
							<col width="5%" />
							<col width="15%" />
							<col width="65%" />
							<col width="15%" />
						</colgroup>
						<thead>
							<tr>
								<th></th>
								<th>카드타입</th>
								<th>카드명</th>
								<th></th>
							</tr>
						</thead>
						<tbody></tbody>
					</table>
					</div>
					<br/>
					<br/>
				</div>
				<input type="button" value="다음" class="joinBtn" id="joinBtn" >
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