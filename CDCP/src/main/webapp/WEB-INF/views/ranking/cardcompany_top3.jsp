<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카드사별 Top3-카드캡틴</title>
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
@font-face {
    font-family: 'MaruBuri-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.0/MaruBuri-Regular.woff') format('woff');
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
	/* header_right 종료 */
	/* 헤더 종료 */
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
			/* 카드사별 top3 배경 */
			#topBg{ 
				width: 100%;
				height: 600px;
				background-color: #333a44;
				margin-bottom: 10px;
			}
			/* TOP1  영역*/
			#contentTop{
				width: 100%;
				height: 300px;
			}
				/* TOP1 왼쪽 영역*/
				#leftSct{
					display: inline-block;
					vertical-align: top; 
					width: 390px;
					height: inherit;
					text-align: center;
					color: white;
				}
					#nameSct{
					width: 100%;
					height: 100px;
					color: white;
					margin-top: 80px;
					}
						#cardName{
						height: 60px;
						font-size: 25px;
						line-height: 80px;
						font-family: MaruBuri-Regular;
						font-weight: bold;
						}
						#cardCmp{
						height: 40px;
						font-size: 20px;
						font-family: MaruBuri-Regular;
						font-weight: bold;
						}
				/* TOP1 가운데 영역*/
				#centerSct{
					display: inline-block;
					vertical-align: top; 
					width: 400px;
					height: inherit;
					text-align: center;
				}
					#imgSct{
						background-image: url("../weDoument/imageFolder/card/credit/kb_toktokwith.png");
						background-repeat: no-repeat;
						background-size: 100%;
						width: 80%;
						height: 200px;
						margin: 20px auto 0px auto;
					}
					/* 버튼 박스 영역*/	
					#btnBox{
						width: 100%;
						height: 50px;
						text-align: center;
						margin-top: 10px;
					}
						#dtBtn{
							width: 200px;
							height: 50px;
							font-size: 20px;
							color: white;
							background-color: #0047ab;
							padding: 10px;
							
						}	
							#dtBtn:hover{
								cursor: pointer;
								color: black;
								font-weight: bold;
								background-color: white;
							}
				/* TOP1 오른쪽 영역*/
				#rightSct{
					display: inline-block;
					vertical-align: top; 
					width: 390px;
					height: inherit;
					float: right;
				}
					/* 간단혜택 영역*/
					#bnfArea{
						width: 100%;
						height:150px;
						margin-top: 60px;
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
				#contentBot{ /* 2등 3등 영역 */
					width: 100%;
					height: 300px;
				}
					.under_rank{	/* 왼쪽 오른쪽 공통 영역 */
						display: inline-block;
						vertical-align: top; 
						width: 400px;
						height: 300px;
						text-align: center;
						color: white;
						margin: 5px;
					}
						.under_name{
							width: 100%;
							height: 50px;
							color: white;
							margin-top: 10px;
						}
							.top_name{
								height: 30px;
								font-size: 25px;
								line-height: 30px;
								font-family: Cafe24Ohsquare;
							}
							.bot_cmp{
								height: 20px;
								font-size: 20px;
								font-family: GmarketSansMedium;
							}
						.under_card{	/* 카드 사진 영역 */
							text-align: center;
							width: 270px;
							height: 160px;
							margin: 0 auto;
						}
							.card_img{
								width: 80%;
								height: 80%;
								padding: 10px;
							}
						.under_btn{ /* 버튼 영역 */
							width: 100%;
							height: 50px;
							text-align: center;
						}
							.btn_mini{
							width: 100px;
							height: 40px;
							font-size: 15px;
							color: white;
							background-color: #0047ab;
							padding: 10px;
							
						}	
							.btn_mini:hover{
								cursor: pointer;
								color: black;
								font-weight: bold;
								background-color: white;
							}
					#spcArea{ /* 사이 공백 영역 */
						display: inline-block;
						vertical-align: top;
						width: 368px;
						height: inherit;
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
	/* 풋터 종료 */
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
		<div id="contentMenu">
			<div id="menuName">KB국민은행 TOP3</div>
			<div id="topBg">
				<div id="contentTop">
					<!-- top 왼쪽 영역 -->
					<div id="leftSct">
						<div id="nameSct">
							<div id="cardName">톡톡 with 카드</div>
							<div id="cardCmp">KB국민카드</div>
						</div>
					</div>
					<!-- top 중앙 영역 -->
					<div id="centerSct">
						<div id="imgSct"></div>
						<div id="btnBox">
							<input type="button" value="자세히 보기" id="dtBtn" />
						</div>
					</div>
					<!-- top 오른쪽 영역 -->
					<div id="rightSct">
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
					</div>
				</div>
				<!-- 2등 3등 영역 -->
				<div id="contentBot">
					<div class="under_rank">
						<div class="under_name">
							<div class="top_name">탄탄대로 올쇼핑 티타늄카드</div>
							<div class="bot_cmp">KB국민카드</div>
						</div>
						<div class="under_card">
							<img alt="카드" src="../weDoument/imageFolder/card/credit/kb_tantandaero.png" class="card_img"/>
						</div>
						<div class="under_btn">
							<input type="button" value="자세히 보기" class="btn_mini" />
						</div>
					</div>
					<!-- 사이공백 영역 -->
					<div id="spcArea"></div> 
					<div class="under_rank">
						<div class="under_name">
							<div class="top_name">다담카드</div>
							<div class="bot_cmp">KB국민카드</div>
						</div>
						<div class="under_card">
							<img alt="카드" src="../weDoument/imageFolder/card/credit/kb_dadam_card.png" class="card_img"/>
						</div>
						<div class="under_btn">
							<input type="button" value="자세히 보기" class="btn_mini" />
						</div>
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