<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>카드혜택-카드캡틴</title>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type = "text/javascript">
		
	$(document).ready(function(){
				
		
		$("#bi").hide();
		
		
		$("#btnbi").on("click",function(){
			
			$("#bi").hide();
			$("#bi").fadeIn();
					
		
		});
		
		
		$("#bi").on("click",function(){
			
			makePopup();
		
			
		});
		
		
	});
				
			
		function makePopup(){
			
			var html = "<div class = \"Popup\">"
				+ "<input type = \"button\" id = \"p1\" value = \"상세보기\"  readonly = \"readonly\" >"
				+ "<input type = \"button\" id = \"p2\" value = \"취소\"  readonly = \"readonly\" >"
				+ "</div>"
								
				
				$("body").prepend(html);
				$(".Popup").hide().fadeIn();
						
			
			$("#p2").off("click");
			$("#p2").on("click",function(){
				
				closePopup();
																	
			});
			
		}				
		
			
	
	function closePopup(){
		
		$(".Popup").fadeOut(function(){
			
			$(".Popup").remove();
			
		});
	
	}
	
	
</script>

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

/* 팝업 영역  */

#bi{
		
	cursor:pointer;
	position: relative;
	top:90%;
	left:0%;
	position: fixed;
	background-color:#0047ab;
	color : white;
	width: 150px;
	height: 80px;
	text-align:center;
	line-height:50px;
	font-weight:bold;
	font-size:24px;
	font-family: 'Cafe24Ohsquare';
	z-index:200;
	margin:0 auto;
	
}


.Popup{

	z-index:150;
	
}


#p1{
	
	font-size:15px;
	position:relative;
	top:85%;
	position: fixed;
	padding:10px;
	background-color:#939597;
	color:white;
	font-family: 'Cafe24Ohsquare';
	border:0px;
	cursor:pointer;
	z-index:150;
	
}


#p2{

	font-size:15px;
	position:relative;
	top:85%;
	left:104px;
	position: fixed;
	padding:10px;
	background-color:#939597;
	color:white;
	font-family: 'Cafe24Ohsquare';
	border:0px;
	cursor:pointer;
	z-index:150;
	
}


.Popdown{
		
	display:inline-block;
	width:100%;
	height:100%;
	position: fixed;
	top:0;
	left:0;
	z-index: 100;
	opacity: 0.3; /* 0.0(투명) ~ 1.0(불투명)  */
			
}




/*	헤더 영역	*/
	#header{
		min-width: 1500px;
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
				background-image: url("/cdcp/resources/images/detail/logo_white.png");
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
					background-image: url("/cdcp/resources/images/detail/login_white.png");
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
		#contentMenu{
			display:inline-block;
			vertical-align: top;
			width: 1200px;
			height: inherit;
		}
			/* 소주제 영역 */
			#menuName{
				height: 60px;
				margin: 10px 10px;
				font-family: Cafe24Ohsquare;
				font-weight: bold;
				font-size: 35px;
				line-height: 70px;	
			}
			/* 혜택 상위 영역 */
			#topArea{
				width: 100%;
				background-color: #f2f2f2;
				border-radius: 50px;
				padding: 20px 0px;
				margin: 20px 0;
			}
				/* 왼쪽이미지 영역 */
				#mainImg{
					display: inline-block;
					vertical-align: top;
					width: 360px;
					height: 220px;
					margin-left: 150px;
				}
					.big_img{	
						width: 350px;
						height: 200px;
						border-radius: 20px;
						box-shadow: 0px 5px 10px 1px gray;
					}
				/* 오른쪽 혜택안내 영역 */	
				#cardBnf{
					display: inline-block;
					vertical-align: top;
					width:650px;
					height: 220px;
					text-align: center;
				}
					/* 해당카드 이름 영역 */
					#nameSct{
						width: 100%;
						height: 100px;
						text-align: center;
						}
							#cardName{
							height: 60px;
							font-size: 35px;
							line-height: 80px;
							font-family: Cafe24Ohsquare;
							}
							#cardCmp{
							height: 40px;
							font-size: 20px;
							font-family: GmarketSansMedium;
							}
					/* 혜택 전체 박스 영역 */		
					#imgSct{
					width: 100%;
					height: 200px;
					margin: 10px 0;
					}
						/* 각 혜택 박스 */
						.bnf_sct{
							display: inline-block;
							vertical-align: top;
							width: 200px;
							height: inherit;
						}
							.bnf_name{	/* 혜택내용 */
								text-align: center;
								width: 100%;
								height: 45px;
								font-size: 20px;
								font-family: GmarketSansMedium;
								font-weight: bold;
							}
							.bnf_box{	
								width: 100%;
								height: 50px;
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
									line-height: 30px;
								}
					/* 버튼 영역 */		
					#btnSct{ 
						width: 100%;
						height: 80px;
						text-align: center;
						
					}
						
						/* 카드 신청  */
									
						#btnCmp{
						width: 250px;
					    height: 70px;
					    font-size: 30px;
					    color: white;
					    background-color: #0047ab;
					    padding: 10px;
					    border-radius: 10px;
					    font-family: GmarketSansMedium;
					    font-weight: bold;
					    position: relative;
					    left: 7%;
					    top: 20%;
					}
						#btnCmp:hover{
							cursor: pointer;
							opacity: 0.6;
							background-color:aqua;
							
						}
						
						/* 비교함 담기 */
						
						#btnbi{
						
						
						    width: 150px;
						    height: 40px;
						    font-size: 18px;
						    color: white;
						    background-color: mediumpurple;
						    padding: 10px;
						    border-radius: 6px;
						    font-family: GmarketSansMedium;
						    font-weight: bold;
						    position: relative;
						    left: 31%;
						    top: 41%;
						
						}
						
						#btnbi:hover{
							cursor: pointer;
							opacity: 0.6;
							
						}
						
						
						
						
			/* 혜택 하위 영역 */
			#botArea{
				width: 100%;
				background-color: #f2f2f2;
				border-radius: 50px;
				padding: 20px 0px;
				margin: 20px 0;
			}	
				/* 주요 혜택 글씨 영역 */
				#bnfTxt{
					width: 100%;
					height: 70px;
					font-family: Cafe24Ohsquare;
					font-size: 35px;
					line-height: 70px;
					margin: 10px 10px;
				}
				/* 혜택 박스 틀 */
				.bot_box{  
					margin: 10px auto;
					width: 800px;
					height: 100px;
					background-color: white;
				}
					.bnf_icon{
						display: inline-block;
						vertical-align: top;
						text-align: center;
						width: 150px;
						height: inherit;
					}
						.icon_img{
							width: 80%;
							height: 100%;
							padding: 0px 10px;
						}
					.box_txt{
						display: inline-block;
						vertical-align: top;
						text-align: left;
						width: 515px;
						height: inherit;
						font-family: GmarketSansMedium;
					}
						.name_card{
							margin-bottom: 0;
							text-align: left;
						}
						.cmp_card{
							margin-top: 0;
						}
					.open_view{
						display: inline-block;
						vertical-align: top;
						width: 15%;
						height: 80%;
						cursor: pointer;
					}
						.arrow_down{
							width: 70%;
							height: 100%;
							padding: 10px;
						}				
				/* 리뷰 영역 */	
				#review_name{
					font-family: Cafe24Ohsquare;
					font-size: 35px;
					
				}	
				.review_area{
					width: 100%;
					background-color: #f2f2f2;
					border-radius: 50px;
					padding: 20px 0px;
					margin: 20px 0;
				}		
					.star_area{
						display: inline-block;
						vertical-align: top;
						margin-left: 100px;
						
					}
						h2 {
						font-size:20px;
						text-align: center;
						font-family: GmarketSansMedium;
						}
						.star-rating {
							width:304px; 
						}
						.star-rating,.star-rating span {
							display:inline-block; 
							height:55px; 
							overflow:hidden; 
							background-image: url("/cdcp/resources/images/detail/star.png");
							background-repeat: no-repeat;
							}
						.star-rating span{
						background-position:left bottom; 
						line-height:0; 
						vertical-align:top; 
						}
					.review_total{
						display: inline-block;
						vertical-align: top;
						margin-left: 100px;
						
					}
						.review_img{
							display: inline-block;
							vertical-align: top;
							width: 40px;
							height: 40px;
							background-image: url("/cdcp/resources/images/detail/review.png");
							background-repeat: no-repeat;
							background-size: 40px;
							margin: 0 10px;
							
						}
						.review_cnt{
							display: inline-block;
							vertical-align: top;
							font-family: GmarketSansMedium;
							font-size: 40px;
							font-weight: bold;
							text-align: center;
							margin: 0 10px;
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
				background-image: url("/cdcp/resources/images/detail/logo_white.png");
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
		<div class="side_area"></div>	
		<div id="contentMenu">
			<div id="menuName">카드 혜택 안내</div>
			<!-- 상위 내용 영역 -->
			<div id="topArea">
				<div id="nameSct">
						<div id="cardName">톡톡 with 카드</div>
						<div id="cardCmp">KB국민카드</div>
				</div>
				<div id="mainImg">
					<img alt="혜택카드" src="${pageContext.request.contextPath}/resources/images/detail/kb_toktokwith.png" width="350px" height="200px" class="big_img">
				</div>
				<!-- 혜택  영역 -->
				<div id="cardBnf">
					<div id="imgSct">
						<!-- 카페 혜택 -->
						<div class="bnf_sct">
							<img alt="카페" src="${pageContext.request.contextPath}/resources/images/detail/icon_cafe_blue.png" width="100px" height="100px">
							<div class="bnf_dsc">
								<div class="bnf_name">스타벅스</div>
								<div class="bnf_box">
									<div class="bnf_dt">50%</div>
									<div class="bnf_small">할인</div>
								</div>
							</div>
						</div>
						<!-- 간편결제 혜택 -->
						<div class="bnf_sct">
							<img alt="간편결제" src="${pageContext.request.contextPath}/resources/images/detail/icon_pay_blue.png" width="100px" height="100px">
							<div class="bnf_dsc">
								<div class="bnf_name">온라인 간편결제</div>
								<div class="bnf_box">
									<div class="bnf_dt">10%</div>
									<div class="bnf_small">할인</div>
								</div>
							</div>
						</div>
						<!-- 구독 혜택 -->
						<div class="bnf_sct">
							<img alt="구독" src="${pageContext.request.contextPath}/resources/images/detail/icon_subscribe_blue.png" width="100px" height="100px">
							<div class="bnf_dsc">
								<div class="bnf_name">구독</div>
								<div class="bnf_box">
									<div class="bnf_dt">20%</div>
									<div class="bnf_small">할인</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div id="btnSct">
						<input type="button" value="카드 신청" id="btnCmp">
						<input type="button" value = "비교함담기+" id="btnbi">
						<input type = "button" value = "비교함 확인" id= "bi"/>
				</div>
			</div>
			<!-- 하위 내용 영역 -->
			<div id="bnfTxt">주요 혜택</div>
			<div id="botArea">
				<!-- 카페 혜택 -->
				<div class="bot_box">
					<div class="bnf_icon">
						<img alt="혜택아이콘" src="${pageContext.request.contextPath}/resources/images/detail/icon_cafe_blue.png" class="icon_img"> 
					</div>
					<div class="box_txt"> 
						<h2 class="name_card">카페</h2>
						<h4 class="cmp_card">스타벅스 50%할인</h4>
					</div>
					<div class="open_view">
						<img alt="펼쳐보기" src="${pageContext.request.contextPath}/resources/images/detail/arrow_down_gray.png" class="arrow_down">
					</div>
				</div>
				<!-- 구독 혜택 -->
				<div class="bot_box">	
					<div class="bnf_icon">
						<img alt="혜택아이콘" src="${pageContext.request.contextPath}/resources/images/detail/icon_subscribe_blue.png" class="icon_img"> 
					</div>
					<div class="box_txt">
						<h2 class="name_card">디지털 구독</h2>
						<h4 class="cmp_card">구독(YouTube premium,넷플릭스,웨이브,티빙)20% 할인</h4>
					</div>
					<div class="open_view">
						<img alt="펼쳐보기" src="${pageContext.request.contextPath}/resources/images/detail/arrow_down_gray.png" class="arrow_down">
					</div>
				</div>
				<!-- 간편결제 혜택 -->
				<div class="bot_box">	
					<div class="bnf_icon">
						<img alt="혜택아이콘" src="${pageContext.request.contextPath}/resources/images/detail/icon_pay_blue.png" class="icon_img"> 
					</div>
					<div class="box_txt">
						<h2 class="name_card">간편결제</h2>
						<h4 class="cmp_card">온라인 간편결제 10% 할인</h4>
					</div>
					<div class="open_view">
						<img alt="펼쳐보기" src="${pageContext.request.contextPath}/resources/images/detail/arrow_down_gray.png" class="arrow_down">
					</div>
				</div>
				<!-- 유의사항 -->
				<div class="bot_box">	
					<div class="bnf_icon">
						<img alt="유의사항" src="${pageContext.request.contextPath}/resources/images/detail/icon_note_bule.png" class="icon_img"> 
					</div>
					<div class="box_txt">
						<h2 class="name_card">유의사항</h2>
						<h4 class="cmp_card">꼭 확인하세요!</h4>
					</div>
					<div class="open_view">
						<img alt="펼쳐보기" src="${pageContext.request.contextPath}/resources/images/detail/arrow_down_gray.png" class="arrow_down">
					</div>
				</div>
			</div>
			<!-- 리뷰 영역 -->
			<div id="review_name">카드 리뷰</div>
			<div class="review_area">
				<!-- 사용자 평점 영역 -->
				<div class="star_area">
					<h2>사용자 총 평점</h2>
					<div class="star-rating">
						<span style="width:30%"></span>
					</div>
				</div>
				<!-- 전체 리뷰 수 영역 -->
				<div class="review_total">
					<h2>전체 리뷰수</h2>
					<div class="review_img"></div>
					<div class="review_cnt">100건</div>
				</div>
			</div>
		</div>
		<div class="side_area"></div>	
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