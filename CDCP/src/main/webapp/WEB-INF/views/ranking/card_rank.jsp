<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

/*	헤더 영역	*/
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
	}); // document ready end
</script>
</head>
<body>
<!-- 헤더영역 -->
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
					<div class="nav_menubar"> <!-- a 태그 영역 -->
						<a href="cardcompany_top3" class="nav_btn" id="kbCard">국민 카드</a>
						<a href="#card_2" class="nav_btn" id="samsumgCard">삼성 카드</a>
						<a href="#card_3" class="nav_btn" id="lotteCard">롯데 카드</a>
						<a href="#card_4" class="nav_btn" id="shCard">신한 카드</a>
						<a href="#card_5" class="nav_btn" id="weCard">우리 카드</a>
						<a href="#card_6" class="nav_btn" id="hdCard">현대 카드</a>
						<a href="#card_7" class="nav_btn" id="nhCard">농협 카드</a>
						<a href="#card_8" class="nav_btn" id="hanaCard">하나 카드</a>
						<a href="#card_9" class="nav_btn" id="ibkCard">IBK 카드</a>
					</div>
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
</body>
</html>