<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

#wrapper{
	max-width: 1500px;
	margin: 0 auto;
}
/*	헤더 영역	*/
	#header{
		min-width: 1600px;
		width: 1500px;
		height: 70px;
		border-radius: 5px;
		background-color: #0047ab;
		font-family: Cafe24Ohsquare;
		position: fixed;
		top: 0;
	}
		#headerMenu{
			width: 80%;
			height:inherit;
			margin: 0 auto;
			font-size: 20px;
			font-weight: bold;
			color: white;
		}
			#menuLogo{
				display: inline-block;
				vertical-align: top;
				width: 200px;
				height: inherit;
				background-image: url("resources/images/ranking/logo/logo_white.png");
				background-position: left;
				background-repeat: no-repeat;
				background-size: 200px;
				cursor: pointer;
				float: left;
			}
			#menuList{
				display: inline-block;
				vertical-align: top;
				height: inherit;
				width: 70%;	
				text-align: right;	
			}
			#menuList > ul li{
				display: inline-block;
				vertical-align: top;
				list-style: none;
				margin-left: 15px;
				cursor: pointer;	
			}
			#menuList ul li:hover {	/* 메뉴 목록 mouse over */
				color: #F5DF4D;		/* 나중에 변경 */
				cursor: pointer;
			}
			#menuList > ul{
			display: inline-block;
				vertical-align: top;
				margin: 0;
				padding: 0;
				margin-top: 30px;
				width:100%;
			}
			#menuLogin{
				display:inline-block;
				vertical-align: top;
				height: inherit;
				cursor: pointer;
				float: right;		
			}
			#menuLogin:hover {	/* 메뉴 목록 mouse over */
				color: #F5DF4D;	
				cursor: pointer;
			}
				#loginName{
					display: inline-block;
					vertical-align: top;
					margin-top: 30px;
				}
				#loginImg{
					display: inline-block;
					vertical-align: top;
					width: 50px;
					height: inherit;
					background-image: url("../weDoument/imageFolder/icon/login_white.png");
					background-repeat: no-repeat;
					background-position:center;
					background-size: 40px;
				}
/*	내용 영역	*/	
	#content{
		margin-top: 70px;
		
		min-width: 1500px;
		width: 100%;
		height: 100%;
		/* 추후 인기순위 영역 범위 height: 830px; */
	}
		.side_area{ /* 양 사이드 영역(공백) */
			display:inline-block;
			vertical-align: top;
			width: 140px;
			height: inherit;
		}
		/* 내용 영역 */
		#contentMenu{
			display:inline-block;
			vertical-align: top;
			width: 1200px;
			height: inherit;
		}
			/* 소주제 영역 */
			#menuName{
				width: 500px;
				height: 60px;
				margin: 10px auto;
				text-align: center;
				font-family: Cafe24Ohsquare;
				font-weight: bold;
				font-size: 50px;
				line-height: 70px;			
			}
			/* TOP1  영역*/
			#contentTop{
				background-image: url("../weDoument/imageFolder/background/chart_top_bg_polygon.png");
				background-color: rgba(50, 50, 50, 0.9);
				width: 100%;
				height: 400px;
				margin-bottom: 30px;
				box-shadow: 0px 10px 10px 1px rgba(1, 1, 1, 0.6);
			}
				/* TOP1 왼쪽 영역*/
				#leftSct{
					display: inline-block;
					vertical-align: top; 
					width: 390px;
					height: inherit;
					text-align: center;
					line-height: 400px;
					color: white;
					font-weight: bold;
					font-size: 80px;
					font-family: Cafe24Ohsquare;
					text-shadow: 5px 5px 5px black;
				}
				/* TOP1 가운데 영역*/
				#centerSct{
					display: inline-block;
					vertical-align: top; 
					width: 400px;
					height: inherit;
					text-align: center;
				}
					#nameSct{
						height: 100px;
						color: white;
					}
						#cardName{
						height: 60px;
						font-size: 25px;
						line-height: 80px;
						font-family: Cafe24Ohsquare;
						}
						#cardCmp{
						height: 40px;
						font-size: 20px;
						font-family: GmarketSansMedium;
						}
					#imgSct{
						background-image: url("../weDoument/imageFolder/card/credit/kb_toktokwith.png");
						background-repeat: no-repeat;
						background-size: 100%;
						height: 250px;
					}
				/* TOP1 오른쪽 영역*/
				#rightSct{
					display: inline-block;
					vertical-align: top; 
					width: 390px;
					height: inherit;
					float: right;
				}
					/* 비교함 담기 영역*/
					#compareArea{
						width: 100%;
						height: 100px;
						color: white;
					}
						#compareBox{
							width: 200px;
							height: 50px;
							text-align: center;
							padding-top: 25px;
							margin-left: 180px;
						}
						#compareBox:hover{
							cursor: pointer;
							color: black;
							font-weight: bold;
						}
							#compareImg{
								display: inline-block;
								vertical-align: top;
								background-image: url("../weDoument/imageFolder/icon/icon_plus_circle_blue.png");
								background-repeat: no-repeat;
								background-size: 40px;
								background-position: center;
								width: 50px;
								height: 40px;	
								padding: 5px 0;
							}
							#compareFont{
								display: inline-block;
								vertical-align: top;
								font-size: 20px;
								font-family: GmarketSansMedium;
								font-weight: bold;
								padding: 10px 5px;
							}
					/* 간단혜택 영역*/
					#bnfArea{
						width: 100%;
						height:150px;
						margin-top: 10px;
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
								font-size: 20px;
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
									font-size: 20px;
									font-family: GmarketSansMedium;
									font-weight: bold;
								}
								.bnf_small{	/* 할인 */
									display: inline-block;
									vertical-align: top;
									text-align: left;
									width: 60px;
									height: inherit;
									font-size: 15px;
									font-family: GmarketSansMedium;
								}
					/* 버튼 박스 영역*/	
					#btnBox{
						width: 100%;
						height: 100px;
						text-align: center;
						margin-top: 50px;
					}
						#dtBtn{
							width: 200px;
							height: 50px;
							font-size: 20px;
							color: white;
							background-color: #0047ab;
							padding: 10px;
							font-family: GmarketSansMedium;
							
						}	
							#dtBtn:hover{
								cursor: pointer;
								color: black;
								font-weight: bold;
								background-color: white;
							}
			/* 2~10위 박스 영역*/
			#contentBot{
				width: 100%;
			}
				.rank_box{  /* 랭크 박스 틀 */
					margin: 10px auto;
					width: 900px;
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
						width: 400px;
						height: inherit;
						font-family: GmarketSansMedium;
					}
						.name_card{
							margin-bottom: 0;
							
						}
						.cmp_card{
							margin-top: 0;
						}
					.compare_in{
						display: inline-block;
						vertical-align: top;
						width: 80px;
						height: inherit;
						cursor: pointer;
					}
						.compare_btn{
							background-image: url("../weDoument/imageFolder/icon/icon_plus_circle_blue.png");
							background-repeat: no-repeat;
							background-size: 50px;
							background-position: center;
							width: 80px;
							height: 50px;	
							padding: 25px 10px;
						}
						.compare_btn:hover{
							cursor: pointer;
							opacity: 0.6;
						}
					.dsc_view{
						display: inline-block;
						vertical-align: top;
						width: 130px;
						height: inherit;
					}
						.dsc_btn{
							width: 100px;
							height: 50px;
							font-size: 15px;
							color: white;
							background-color: #0047ab;		
							font-family: GmarketSansMedium;
							margin: 25px 15px;			
						}	
						.dsc_btn:hover{
							cursor: pointer;
							opacity: 0.6;
						}
			
/*	풋터 영역	*/			
	#footer{
		min-width: 1500px;
		width: 100%;
		height: 100px;
		/* border-radius: 5px; */
		/* background-color: #0047ab;*/	
		background-color: gray;
	}
		#footerMenu{
			width: 80%;
			height:inherit;
			margin: 0 auto;
			color: white;
			text-align: center;
			font-family: GmarketSansMedium;
			font-size: 12px;
		}
			#footerLogo{
				display: inline-block;
				vertical-align: top;
				background-image: url("../weDoument/imageFolder/logo_white.png");
				background-repeat: no-repeat;
				background-size: 180px;
				width: 180px;
				height: 55px;
				cursor: pointer;
				text-align: center;
			}
</style>
</head>
<body>
<div id="wrapper">
<!-- 헤더영역 -->
	<div id="header">
		<div id="headerMenu">
			<div id="menuLogo"></div>
			<div id="menuList">
				<ul>
					<li>카드검색/비교</li>
					<li>컨텐츠</li>
					<li>카드순위</li>
				</ul>
			</div>
			<div id="menuLogin">
				<div id="loginName">로그인</div>
				<div id="loginImg"></div>
			</div>
		</div>
	</div>
<!-- 내용 영역 -->	
	<div id="content">
		<div class=side_area></div>	
		<div id="contentMenu">
			<div id="menuName">카드캡틴 TOP10</div>
			<div id="contentTop">
				<div id="leftSct">TOP 1</div>
				<div id="centerSct">
					<div id="nameSct">
						<div id="cardName">톡톡 with 카드</div>
						<div id="cardCmp">KB국민카드
						</div>
					</div>
					<div id="imgSct"></div>
				</div>
				<div id="rightSct">
					<div id="compareArea">
						<div id="compareBox">
							<div id="compareImg"></div>
							<div id="compareFont">비교함 담기</div>	
						</div>	
					</div>
					<div id="bnfArea">
						<div class="bnf_dsc">
							<div class="bnf_name">스타벅스</div>
							<div class="bnf_box">
								<div class="bnf_dt">50%</div>
								<div class="bnf_small">할인</div>
							</div>
						</div>
						<div class="bnf_dsc">
							<div class="bnf_name">온라인 간편결제</div>
							<div class="bnf_dt">10%</div>
							<div class="bnf_small">할인</div>
						</div>
						<div class="bnf_dsc">
							<div class="bnf_name">구독</div>
							<div class="bnf_dt">20%</div>
							<div class="bnf_small">할인</div>
						</div>
					</div>
					<div id="btnBox">
						<input type="button" value="자세히 보기" id="dtBtn" />
					</div>
				</div>
			</div>
			<div id="contentBot">
				<div class="rank_box">	<!-- 2등 -->
					<div class="rank_num">2</div>
					<div class="box_card">
						<img alt="카드" src= "resources/images/ranking/card/credit/sh/sh_mrlife_card.png" class="card_img"/> 
					</div>
					<div class="box_txt">
						<h2 class="name_card">신한카드 Mr.Life</h2>
						<h5 class="cmp_card">신한카드</h5>
					</div>
					<div class="compare_in">
						<div class="compare_btn"></div>
					</div>
					<div class="dsc_view">
						<input type="button" value="자세히보기" class="dsc_btn"/>
					</div>
				</div>
				<div class="rank_box">	<!-- 3등 -->
					<div class="rank_num">3</div>
					<div class="box_card">
						<img alt="카드" src="../weDoument/imageFolder/card/credit/kb_tantandaero.png" class="card_img"/> 
					</div>
					<div class="box_txt">
						<h2 class="name_card">탄탄대로 올쇼핑 티타늄카드</h2>
						<h5 class="cmp_card">KB국민카드</h5>
					</div>
					<div class="dsc_view">
						<input type="button" value="자세히보기" class="dsc_btn"/>
					</div>
				</div>
				<div class="rank_box">	<!-- 4등 -->
					<div class="rank_num">4</div>
					<div class="box_card">
						<img alt="카드" src="../weDoument/imageFolder/card/credit/hd_zero_ed2_3.png" class="card_img"/> 
					</div>
					<div class="box_txt">
						<h2 class="name_Card">현대카드ZERO Edition2(할인형)</h2>
						<h5 class="cmp_card">현대카드</h5>
					</div>
					<div class="dsc_view">
						<input type="button" value="자세히보기" class="dsc_btn"/>
					</div>
				</div>
				<div class="rank_box">	<!-- 5등 -->
					<div class="rank_num">5</div>
					<div class="box_card">
						<img alt="카드" src="../weDoument/imageFolder/card/credit/kb_dadam_card.png" class="card_img"/> 
					</div>
					<div class="box_txt">
						<h2 class="name_card">다담카드</h2>
						<h5 class="cmp_card">KB국민카드</h5>
					</div>
					<div class="dsc_view">
						<input type="button" value="자세히보기" class="dsc_btn"/>
					</div>
				</div>
				<div class="rank_box">	<!-- 6등 -->
					<div class="rank_num">6</div>
					<div class="box_card">
						<img alt="카드" src="../weDoument/imageFolder/card/credit/ss_taptap0_card.png" class="card_img"/> 
					</div>
					<div class="box_txt">
						<h2 class="name_card">삼성카드 taptap O</h2>
						<h5 class="cmp_card">삼성카드</h5>
					</div>
					<div class="dsc_view">
						<input type="button" value="자세히보기" class="dsc_btn"/>
					</div>
				</div>
				<div class="rank_box">	<!-- 7등 -->
					<div class="rank_num">7</div>
					<div class="box_card">
						<img alt="카드" src="../weDoument/imageFolder/card/credit/km_cheongchuntocktock_card.png" class="card_img"/> 
					</div>
					<div class="box_txt">
						<h2 class="name_card">청춘대로 톡톡카드</h2>
						<h5 class="cmp_card">KB국민카드</h5>
					</div>
					<div class="dsc_view">
						<input type="button" value="자세히보기" class="dsc_btn"/>
					</div>
				</div>
				<div class="rank_box">	<!-- 8등 -->
					<div class="rank_num">8</div>
					<div class="box_card">
						<img alt="카드" src="../weDoument/imageFolder/card/credit/nh_all1_pie_card.png" class="card_img"/> 
					</div>
					<div class="box_txt">
						<h2 class="name_card">NH올원 파이카드</h2>
						<h5 class="cmp_card">NH농협카드</h5>
					</div>
					<div class="dsc_view">
						<input type="button" value="자세히보기" class="dsc_btn"/>
					</div>
				</div>
				<div class="rank_box">	<!-- 9등 -->
					<div class="rank_num">9</div>
					<div class="box_card">
						<img alt="카드" src="../weDoument/imageFolder/card/credit/sh_the_more_card2.png" class="card_img"/> 
					</div>
					<div class="box_txt">
						<h2 class="name_card">신한카드 The More(더모아)</h2>
						<h5 class="cmp_card">신한카드</h5>
					</div>
					<div class="dsc_view">
						<input type="button" value="자세히보기" class="dsc_btn"/>
					</div>
				</div>
				<div class="rank_box">	<!-- 10등 -->
					<div class="rank_num">10</div>
					<div class="box_card">
						<img alt="카드" src="../weDoument/imageFolder/card/credit/wr_dAcjs_card3.png" class="card_img"/> 
					</div>
					<div class="box_txt">
						<h2 class="name_card">DA@카드의 정석</h2>
						<h5 class="cmp_card">우리카드</h5>
					</div>
					<div class="dsc_view">
						<input type="button" value="자세히보기" class="dsc_btn"/>
					</div>
				</div>
			</div>
		</div>
		<div class=side_area></div>	
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