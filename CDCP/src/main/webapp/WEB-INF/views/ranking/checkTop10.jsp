<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>체크카드 TOP10-카드캡틴</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
			/* TOP1  영역*/
			#midArea{
				display: flex;
				width: 100%;
				height: 200px;
				justify-content: space-around;
			}
				#contentTop{
					background-image: url("resources/images/ranking/background/chart_top_bg_polygon.png");
					background-color: rgba(50, 50, 50, 0.9);
					width: 100%;
					height: 400px;
					margin-bottom: 30px;
					box-shadow: 0px 10px 10px 1px rgba(1, 1, 1, 0.6);
				}
					#nameSct{
								height: 100px;
								color: white;
								text-align: center;
							}
						#cardName{
							height: 60px;
							font-size: 30px;
							line-height: 80px;
							font-family: Cafe24Ohsquare;
						}
						#cardCmp{
							height: 40px;
							font-size: 25px;
							font-family: GmarketSansMedium;
						}
					/* TOP1 왼쪽 영역*/
					#leftSct{
						width: 400px;
						text-align: center;
						line-height: 200px;
						color: white;
						font-size: 100px;
						font-family: Cafe24Ohsquare;
						text-shadow: 5px 5px 5px black;
					}
					/* TOP1 가운데 영역*/
					#centerSct{
						width: 400px;
						height: 200px;
						text-align: center;
					}
						#imgSct{
							background-image: url("resources/images/ranking/card/check/we/we_naver_check_card.png");
							background-repeat: round;
							background-size: 100%;
							width: 350px;
							height: 200px;
							margin: 0 auto;
						}
					/* TOP1 오른쪽 영역*/
					#rightSct{
						width: 400px;
						height: 200px;
						float: right;
					}
						/* 간단혜택 영역*/
						#bnfArea{
							width: 100%;
							height:150px;
							margin-top: 30px;
						}
							.bnf_dsc{
								width: 100%;
								height: 50px;
								color: white;
								line-height: 50px;
							}
								.bnf_name{	/* 혜택내용 */
									display: inline-block;
									vertical-align: top; 
									text-align: center;
									width: 220px;
									height: inherit;
									font-size: 25px;
									font-family: GmarketSansMedium;
									font-weight: bold;
								}
								.bnf_box{	
									display: inline-block;
									vertical-align: top;
									width: 140px;
									height: inherit;
									text-align: center;
								}
									.bnf_dt{	 /* %표시 */
										display: inline-block;
										vertical-align: top;
										text-align: right;
										width: 70px;
										height: inherit;
										font-size: 25px;
										font-family: GmarketSansMedium;
										font-weight: bold;
									}
									.bnf_small{	/* 할인 */
										display: inline-block;
										vertical-align: top;
										text-align: left;
										width: 60px;
										height: inherit;
										font-size: 20px;
										font-family: GmarketSansMedium;
									}
					/* 버튼 박스 영역*/	
					#btnBox{
						width: 100%;
						height: 100px;
						text-align: center;
					}
						#dtBtn{
							width: 150px;
							height: 50px;
							color: white;
							border-style: none;
						    background-color: #0047AB;
						    border-radius: 5px;
						    font-size: 18px;
						    font-family: 'GmarketSansMedium';
							margin: 25px 5px;
						}	
							#dtBtn:hover{
								color: black;
							    background-color: #F5DF4D;
							    cursor: pointer;
							}
			/* 2~10위 박스 영역*/
			#contentBot{
				width: 100%;
			}
				.rank_box{  /* 랭크 박스 틀 */
					display: flex;
					justify-content: space-around;
					margin: 10px auto;
					width: 1000px;
					height: 100px;
					box-shadow: 5px 0px 5px -1px rgba(1, 1, 1, 0.6),
								-5px 0px 5px -1px rgba(1, 1, 1, 0.6);
				}
					.rank_num{
						display: inline-block;
						vertical-align: top;
						width: 100px;
						height: inherit;
						font-size: 50px;
						font-weight: bold;
						text-align: center;
						line-height: 100px;
					}
					.box_card{
						display: inline-block;
						vertical-align: top;
						text-align: center;
						width: 150px;
						height: inherit;
					}
						.card_img{
							width: 80%;
							height: 80%;
							padding: 10px;
						}
					.box_txt{
						display: inline-block;
						vertical-align: top;
						text-align: left;
						width: 500px;
						height: inherit;
						font-family: GmarketSansMedium;
					}
						.name_card{
							margin-bottom: 0;
							
						}
						.cmp_card{
							margin-top: 0;
						}
					.dsc_view{
						display: flex;
						flex-wrap: wrap;
						align-content: space-around;
						width: 130px;
						height: inherit;
					}
					.view_box{
						font-family: GmarketSansMedium;
						font-size: 15px;
					}
						.view_box:hover{
							cursor: pointer;
							color: #0047ab;
							font-weight: bold;
						}
					.view_dt{
						font-family: GmarketSansMedium;
						font-size: 15px;
					}
						.view_dt:hover{
							cursor: pointer;
							color: #0047ab;
							font-weight: bold;
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
		$("#headerLogo").on("click", function(){
			location.href = "ranking";
		}); // headerLogo click end
	}); // document ready end
</script>
</head>
<body>
<!-- 헤더영역 -->
	<div id="header">
		<div id="headerWrap">
			<div id="headerLeft">
				<div id="headerLogo"></div>
				<div class="menu1">카드순위</div>
				<div class="menu1">카드검색/비교</div>
				<div class="menu1">컨텐츠</div>
			</div>
			<div id="headerRight">
				<div id="imgSearch"></div>
				<div id="imgLogin"></div>
			</div>
		</div>
	</div>
<!-- 내용 영역 -->	
	<div id="content">
		<!-- 1위 카드 이름 영역 -->
		<div id="contentMenu">
			<div id="menuName">체크카드 TOP10</div>
			<div id="contentTop">
				<div id="nameSct">
					<div id="cardName">네이버페이 우리카드 체크</div>
					<div id="cardCmp">우리카드</div>
				</div>
				<!-- 1위 카드 내용 영역 -->
				<div id="midArea">
					<div id="leftSct">TOP 1</div>
					<div id="centerSct">
						<div id="imgSct"></div>
					</div>
					<div id="rightSct">
						<div id="bnfArea">
							<div class="bnf_dsc">
								<div class="bnf_name">네이버페이</div>
								<div class="bnf_box">
									<div class="bnf_dt">1%</div>
									<div class="bnf_small">적립</div>
								</div>
							</div>
							<div class="bnf_dsc">
								<div class="bnf_name">공항라운지</div>
								<div class="bnf_dt">무료</div>
								<div class="bnf_small">이용</div>
							</div>
							<div class="bnf_dsc">
								<div class="bnf_name">해외수수료</div>
								<div class="bnf_dt">면제</div>
								<div class="bnf_small">서비스</div>
							</div>
						</div>
					</div>
				</div>
				<div id="btnBox">
					<input type="button" value="상세보기" id="dtBtn" />
					<input type="button" value="비교함 담기" id="dtBtn" />
				</div>
			</div>
			<div id="contentBot">
				<div class="rank_box">	<!-- 2등 -->
					<div class="rank_num">2</div>
					<div class="box_card">
						<img alt="카드" src="resources/images/ranking/card/check/we/we_joungsuck_card.png" class="card_img"/> 
					</div>
					<div class="box_txt">
						<h2 class="name_card">카드의정석COOKIE CHECK</h2>
						<h5 class="cmp_card">우리카드</h5>
					</div>
					<div class="dsc_view">
						<div class="view_box" id="viewBox2"><i class='fa fa-plus'></i>&nbsp;&nbsp;비교함 담기</div>
						<div class="view_dt" id="viewDt2"><i class='fa fa-angle-double-right'></i>&nbsp;&nbsp;상세보기</div>
					</div>
				</div>
				<div class="rank_box">	<!-- 3등 -->
					<div class="rank_num">3</div>
					<div class="box_card">
						<img alt="카드" src="resources/images/ranking/card/check//nh/nh_haebom_checkcard.png" class="card_img"/> 
					</div>
					<div class="box_txt">
						<h2 class="name_card">NH20해봄체크카드</h2>
						<h5 class="cmp_card">NH농협카드</h5>
					</div>
					<div class="dsc_view">
						<div class="view_box" id="viewBox3"><i class='fa fa-plus'></i>&nbsp;&nbsp;비교함 담기</div>
						<div class="view_dt" id="viewDt3"><i class='fa fa-angle-double-right'></i>&nbsp;&nbsp;상세보기</div>
					</div>
				</div>
				<div class="rank_box">	<!-- 4등 -->
					<div class="rank_num">4</div>
					<div class="box_card">
						<img alt="카드" src="resources/images/ranking/card/check/sh/sh_DeepDreamcheck_card.png" class="card_img"/> 
					</div>
					<div class="box_txt">
						<h2 class="name_card">신한카드 Deep Dream체크</h2>
						<h5 class="cmp_card">신한카드</h5>
					</div>
					<div class="dsc_view">
						<div class="view_box" id="viewBox4"><i class='fa fa-plus'></i>&nbsp;&nbsp;비교함 담기</div>
						<div class="view_dt" id="viewDt4"><i class='fa fa-angle-double-right'></i>&nbsp;&nbsp;상세보기</div>
					</div>
				</div>
				<div class="rank_box">	<!-- 5등 -->
					<div class="rank_num">5</div>
					<div class="box_card">
						<img alt="카드" src="resources/images/ranking/card/check/kb/kb_noricheck_card.png" class="card_img"/> 
					</div>
					<div class="box_txt">
						<h2 class="name_card">노리체크카드</h2>
						<h5 class="cmp_card">KB국민카드</h5>
					</div>
					<div class="dsc_view">
						<div class="view_box" id="viewBox5"><i class='fa fa-plus'></i>&nbsp;&nbsp;비교함 담기</div>
						<div class="view_dt" id="viewDt5"><i class='fa fa-angle-double-right'></i>&nbsp;&nbsp;상세보기</div>
					</div>
				</div>
				<div class="rank_box">	<!-- 6등 -->
					<div class="rank_num">6</div>
					<div class="box_card">
						<img alt="카드" src="resources/images/ranking/card/check/nh/nh_allpoint_checkcard.png" class="card_img"/> 
					</div>
					<div class="box_txt">
						<h2 class="name_card">올바른POINT체크카드</h2>
						<h5 class="cmp_card">NH농협카드</h5>
					</div>
					<div class="dsc_view">
						<div class="view_box" id="viewBox6"><i class='fa fa-plus'></i>&nbsp;&nbsp;비교함 담기</div>
						<div class="view_dt" id="viewDt6"><i class='fa fa-angle-double-right'></i>&nbsp;&nbsp;상세보기</div>
					</div>
				</div>
				<div class="rank_box">	<!-- 7등 -->
					<div class="rank_num">7</div>
					<div class="box_card">
						<img alt="카드" src="resources/images/ranking/card/check/sh/sh_heyyoung-check2.png" class="card_img"/> 
					</div>
					<div class="box_txt">
						<h2 class="name_card">신한카드 HeyYoung체크</h2>
						<h5 class="cmp_card">신한카드</h5>
					</div>
					<div class="dsc_view">
						<div class="view_box" id="viewBox7"><i class='fa fa-plus'></i>&nbsp;&nbsp;비교함 담기</div>
						<div class="view_dt" id="viewDt7"><i class='fa fa-angle-double-right'></i>&nbsp;&nbsp;상세보기</div>
					</div>
				</div>
				<div class="rank_box">	<!-- 8등 -->
					<div class="rank_num">8</div>
					<div class="box_card">
						<img alt="카드" src="resources/images/ranking/card/check/kb/kb_kakaopay_checkcard2.png" class="card_img"/> 
					</div>
					<div class="box_txt">
						<h2 class="name_card">카카오페이KB국민 체크카드</h2>
						<h5 class="cmp_card">KB국민카드</h5>
					</div>
					<div class="dsc_view">
						<div class="view_box" id="viewBox8"><i class='fa fa-plus'></i>&nbsp;&nbsp;비교함 담기</div>
						<div class="view_dt" id="viewDt8"><i class='fa fa-angle-double-right'></i>&nbsp;&nbsp;상세보기</div>
					</div>
				</div>
				<div class="rank_box">	<!-- 9등 -->
					<div class="rank_num">9</div>
					<div class="box_card">
						<img alt="카드" src="resources/images/ranking/card/check/kkb/kkb_kakao_check2.png" class="card_img"/> 
					</div>
					<div class="box_txt">
						<h2 class="name_Card">카카오뱅크 프렌즈 체크카드</h2>
						<h5 class="cmp_card">카카오뱅크</h5>
					</div>
					<div class="dsc_view">
						<div class="view_box" id="viewBox9"><i class='fa fa-plus'></i>&nbsp;&nbsp;비교함 담기</div>
						<div class="view_dt" id="viewDt9"><i class='fa fa-angle-double-right'></i>&nbsp;&nbsp;상세보기</div>
					</div>
				</div>
				<div class="rank_box">	<!-- 10등 -->
					<div class="rank_num">10</div>
					<div class="box_card">
						<img alt="카드" src="resources/images/ranking/card/check/kb/kb_bonus_checkcard.png" class="card_img"/> 
					</div>
					<div class="box_txt">
						<h2 class="name_card">직장인보너스체크카드</h2>
						<h5 class="cmp_card">KB국민카드</h5>
					</div>
					<div class="dsc_view">
						<div class="view_box" id="viewBox10"><i class='fa fa-plus'></i>&nbsp;&nbsp;비교함 담기</div>
						<div class="view_dt" id="viewDt10"><i class='fa fa-angle-double-right'></i>&nbsp;&nbsp;상세보기</div>
					</div>
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