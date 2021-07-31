<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카드순위-카드캡틴</title>
<style type="text/css">
body{
	margin: 0;
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

body {
	margin: 0;
	top: 0;
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
			
	
/*	내용 영역	*/	
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
			#menuName{
				height: 50px;
				margin: 10px auto;
				margin-left: 10px;
				font-family: Cafe24Ohsquare;
				font-size: 30px;
				line-height: 60px;			
			}
			/* 카드캡틴 TOP10 */
			#topRank{
				width: 100%; 
				background-image: url("resources/images/ranking/background/rank_bg3.jpg");
				background-repeat: round;
				background-size: 100%;
				height: 350px;
				text-align: center;
			}
			#topSub{
				width: 100%;
				height: 100px;
				padding-top: 10px;
			}
				#subTop{
					height: 60px;
					line-height: 70px;
				    font-size: 40px;
				    color: white;
				    font-family: Cafe24Ohsquare;
				}
				#subBot{
					line-height: 30px;
				    margin: 0px;
				    font-size: 20px;
				    color: white;
					font-family: GmarketSansMedium;
				}
				#viewBtn{
				display: inline-block;
			    cursor: pointer;
			    width: 200px;
			    height: 50px;
			    line-height: 50px;
			    margin-top: 175px;
			    font-family: Cafe24Ohsquare;
			    font-size: 20px;
			    color: white;
			    letter-spacing: 1px;
			    border: 3px solid white;
				}
				/* 차트보러가기 효과 */
				#viewBtn:hover {	
				background-color: white;
				font-weight: bold;
				color: black;	
				}
			#midRank{
				display: flex;
				width: 100%;
				height: 350px;
				margin: 20px 0; 
			}
			/* 카드사 별 TOP3 */
				#midCmp{
					display:inline-block;
					vertical-align: top;
					background: linear-gradient(rgba(0, 0, 0, 0.1), rgba(0, 0, 0, 0.3)),
											url("resources/images/ranking/background/office2.PNG");
					background-repeat: no-repeat;
					background-size: cover;
					width: 50%;
					text-align: center;
					margin-right: 10px;
					position: relative;
				}
					#cmpImg{
						display: inline-block;
						vertical-align: top;
						background-image: url("resources/images/ranking/icon/company_white.png");
						background-repeat: no-repeat;
						background-size: 80px;
						width: 80px;
						height: 80px;
						margin-top: 130px;
					}
					#cardCmp{
						margin: 0;
						height: 60px;
						line-height: 70px;
					    font-size: 40px;
					    color: white;
					    font-family: Cafe24Ohsquare;
					}
					#cardTitle{
						margin: 0;
						height: 20px;
						line-height: 20px;
					    font-size: 20px;
					    color: white;
					    font-family: GmarketSansMedium;
					}
					.nav_menubar{
						position: absolute;
						top: 60px;
						left: 80px;
						width: 80%;
						display: none;
					}
					.nav_btn{
							font-family: GmarketSansMedium;
							text-decoration: none;
						    font-size: 20px;
						    font-weight: 700;
						    line-height: 20px;
						    padding: 20px 40px;
						    margin: 10px;
						    display: inline-block;
						    /* transition: all 0.1s; */
						    overflow: hidden;
						    color: black;
						    background: white;
						    border-radius: 5px;
						    cursor: pointer;
					}
						.nav_btn:hover{
							background: #F5DF4D;
						}
					
				/* 체크카드 인기순위 */
				#midCheck{
					display:inline-block;
					vertical-align: top;
					float:right;
					background: linear-gradient(rgba(0, 0, 0, 0.1), rgba(0, 0, 0, 0.3)),
											url("resources/images/ranking/background/checkcard.jpg");
					background-repeat: no-repeat;
					background-size: cover;
					width: 50%;
					text-align: center;
					margin-left: 10px;
				}
				#midCheck:hover, #cardcheck:hover, #checkRank:hover {	/* 체크카드 순위 mouse over */
				cursor: pointer;
				color: black;
				}
					#checkImg{
						display: inline-block;
						vertical-align: top;
						background-image: url("resources/images/ranking/icon/checkcard_white.png");
						background-repeat: no-repeat;
						background-size: 80px;
						width: 80px;
						height: 80px;
						margin-top: 130px;
					}
					#cardcheck{
						margin: 0;
						height: 60px;
						line-height: 70px;
					    font-size: 40px;
					    color: white;
					    font-family: Cafe24Ohsquare;
					}
					#checkRank{
						margin: 0;
						height: 20px;
						line-height: 20px;
					    font-size: 20px;
					    color: white;
					    font-family: GmarketSansMedium;
					}
/*	풋터 영역	*/			
	#footer {
	    width: 100%;
	  	height: 100px;
		border-style: solid;
	    border-width: 2px 0 0 0;
	    border-color: #0047AB;
	    font-family: 'Cafe24Ohsquare';
		min-width: 1830px;	
	}
	#footerMenu {
		width: 80%;
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
</style>
<script type="text/javascript"
			src = "resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		
		/* 메인페이지 이동 */
		$("#headerLogo").on("click", function(){
			location.href = "/cdcp";
			/* $(location).attr('href',"/cdcp"); */
		}); // headerLogo click end
		
		/* 신용카드 top10 페이지 이동 */
		$("#viewBtn").on("click", function(){
			location.href = "creditTop10";
		}); // viewBtn click end
		
		/* 체크카드 top10 페이지 이동 */
		$("#midCheck").on("click", function(){
			location.href = "checkTop10";
		}); // viewBtn click end
		
		
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
			$("#loginpopup").css("display","none");
			$(".body").css("display","inline");
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
			$("#memNo").attr("action");
			$("#memNo").submit();
		});
		
/* 카드사별 top3 페이지 이동 */
		
		/* 카드사별 css 효과 */
		$("#midCmp").hover(function(){
			$("#cmpImg").css("display", "none");
			$("#cardCmp").css("display", "none");
			$("#cardTitle").css("display", "none");
			
			$(".nav_menubar").css("display", "block");
		});
		
		$("#midCmp").mouseleave(function(){
			$(".nav_menubar").css("display", "none");
			
			$("#cmpImg").css("display", "inline-block");
			$("#cardCmp").css("display", "block");
			$("#cardTitle").css("display", "block");
		});
		
		$(".nav_btn").on("click", function(){
			$("#cmpNo").val($(this).prop('id'));
			$("#goForm").submit();
		}); // nav_btn click end
	}); // document ready end
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
<!-- 내용 영역 -->
	<div id="content">
		<div id="contentMenu">
			<div id="menuName">카드순위</div>
			<div id="topRank">
				<div id="topSub">
					<div id="subTop">카드캡틴 TOP10</div>
					<div id="subBot">신용카드 실시간 인기순위</div>
				</div>
				<a id="viewBtn">VIEW CHART</a>
			</div>
			<div id="midRank">
				<div id="midCmp"> <!-- 사진 들어가있는 영역 -->
					<div id="cmpImg"></div>
					<div id="cardCmp">카드사</div>
					<div id="cardTitle">각 카드사별 TOP3</div>
					<form action="cardcompany_top3" id="goForm" method="post">
					<input type="hidden" name="cmpNo" value="" id="cmpNo"/>
					<div class="nav_menubar"> 
						<div class="nav_btn" id="1">국민 카드</div>
						<div class="nav_btn" id="2">삼성 카드</div>
						<div class="nav_btn" id="3">롯데 카드</div>
						<div class="nav_btn" id="4">신한 카드</div>
						<div class="nav_btn" id="5">우리 카드</div>
						<div class="nav_btn" id="6">현대 카드</div>
						<div class="nav_btn" id="7">농협 카드</div>
						<div class="nav_btn" id="8">하나 카드</div>
						<div class="nav_btn" id="9">IBK 카드</div>
					</div>
					</form>				
				</div>
				<div id="midCheck">
					<div id="checkImg"></div>
					<div id="cardcheck">체크카드</div>
					<div id="checkRank">체크카드 실시간 인기순위 TOP10</div>
				</div>
			</div>
		</div>
	</div>
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