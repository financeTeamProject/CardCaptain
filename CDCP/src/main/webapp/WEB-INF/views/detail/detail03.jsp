<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>카드혜택-카드캡틴</title>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type = "text/javascript">
		

//아코디언


$(function(){
	

	$(".group1-1").hide();
	
	$(".group1").click(function(){
		
		if($(this).next().css("display")=="none"){
			
			$(this).next().slideDown("fast");
			
		}
		
		else{
						
			$(this).next().slideUp("fast");
			
		}
		
	
	});


});
		
	

	
	/*비교함 담기  */	
		
		
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
				+ "<input type = \"button\" id = \"p1\" value = \"상세보기\" readonly = \"readonly\" >"
				+ "<input type = \"button\" id = \"p2\" value = \"취소\"  readonly = \"readonly\" >"
				+ "</div>"
								
				
				$("body").prepend(html);
				$(".Popup").hide().fadeIn();
						
				$("#p1").on("click",function(){
					
					location.href = "http://localhost:8090/cdcp/compareSearch";
											
				});
							
				
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

	
	
	/* 버튼 클릭 화살표 이미지 변경*/	
	
	 $(document).ready(function(){
         /*웹페이지 열었을 때*/
         $(".arrow_down1").show();
         $(".arrow_up1").hide();

         /*img1을 클릭했을 때 img2를 보여줌*/
         $(".arrow_down1").click(function(){
             $(".arrow_down1").hide();
             $(".arrow_up1").show();
         });

         /*img2를 클릭했을 때 img1을 보여줌*/
         $(".arrow_up1").click(function(){
             $(".arrow_down1").show();
             $(".arrow_up1").hide();
         });
     });
	 
	 $(document).ready(function(){
         /*웹페이지 열었을 때*/
         $(".arrow_down2").show();
         $(".arrow_up2").hide();

         /*img1을 클릭했을 때 img2를 보여줌*/
         $(".arrow_down2").click(function(){
             $(".arrow_down2").hide();
             $(".arrow_up2").show();
         });

         /*img2를 클릭했을 때 img1을 보여줌*/
         $(".arrow_up2").click(function(){
             $(".arrow_down2").show();
             $(".arrow_up2").hide();
         });
     });
	 
	 $(document).ready(function(){
         /*웹페이지 열었을 때*/
         $(".arrow_down3").show();
         $(".arrow_up3").hide();

         /*img1을 클릭했을 때 img2를 보여줌*/
         $(".arrow_down3").click(function(){
             $(".arrow_down3").hide();
             $(".arrow_up3").show();
         });

         /*img2를 클릭했을 때 img1을 보여줌*/
         $(".arrow_up3").click(function(){
             $(".arrow_down3").show();
             $(".arrow_up3").hide();
         });
     });
	 
	 $(document).ready(function(){
         /*웹페이지 열었을 때*/
         $(".arrow_down4").show();
         $(".arrow_up4").hide();

         /*img1을 클릭했을 때 img2를 보여줌*/
         $(".arrow_down4").click(function(){
             $(".arrow_down4").hide();
             $(".arrow_up4").show();
         });

         /*img2를 클릭했을 때 img1을 보여줌*/
         $(".arrow_up4").click(function(){
             $(".arrow_down4").show();
             $(".arrow_up4").hide();
         });
     });
	
	
	
	
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
	#header {
	width: 100%;
	height: 55px;
	border-style: solid;
    border-width: 0 0 2px 0;
    border-color: #0047AB;
    font-family: 'GmarketSansMedium';
    min-width: 1500px;
}
#headerWrap {
	width: 80%;
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
													
						    width: 130px;
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
				.group1 , .group2 , .group3 , .group4{  
					margin: 10px auto;
					width: 800px;
					height: 100px;
					background-color: white;
				}
				
				.group1-1, .group2-1, .group3-1, .group4-1 {
				    margin: 10px auto;
				    width: 760px;
				    height: 100%;
				    background-color: #F0FFFF;
				    text-align: left;
				    font-size: 13px;
				    font-family: GmarketSansMedium;
				    padding: 20px;
			}
			
			#h1,#h2,#h3,#h4{
			
				text-align:center;
			
			
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
						
						.cont{
																				
							width : 200px;
							height : 50px;
							border: 1px solid #000000;
						
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
						.arrow_down1 , .arrow_down2 , .arrow_down3 , .arrow_down4{
							width: 70%;
							height: 100%;
							padding: 10px;
						}
						
						.arrow_up1,.arrow_up2,.arrow_up3,.arrow_up4{
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

</style>
</head>
<body>
<div id="wrapper">
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
				<div class="group1">
					<div class="bnf_icon">
						<img alt="혜택아이콘" src="${pageContext.request.contextPath}/resources/images/detail/icon_cafe_blue.png" class="icon_img"> 
					</div>
					<div class="box_txt"> 
						<h2 class="name_card">카페</h2>
						<h4 class="cmp_card">스타벅스 50%할인</h4>
																																				
					</div>
					
					<div class="open_view">
						<img alt="펼쳐보기" src="${pageContext.request.contextPath}/resources/images/detail/arrow_down_gray.png" class="arrow_down1">
						<img alt="올려보기" src="${pageContext.request.contextPath}/resources/images/detail/arrow_up_gray.png" class="arrow_up1">
						
					</div>
					<div class = "cont" style = "display:none";>가나다라마바사아자차카타파하</div>
				
				</div>
				<div class = "group1-1">
				
					<h3 id = "h1">스타벅스 50% 할인</h3> <br/>
					<br/>
					- 해당 카드의 서비스는 전월 이용실적 40만원 이상 시 제공되며, 전월 이용실적에 따라 월간 할인한도가 제공됩니다.<br/>
					- 전월 이용실적 40만원 이상 시, 월 할인한도 1만원<br/>
					- 최초 카드 사용 등록일로부터 다음달 말일(실적 유예기간)까지 해당 카드 이용실적이 없는 경우에도 서비스가 제공됩니다.<br/>
					- 상품명에 '톡톡 with'가 포함된 모든 카드(이하 톡톡 with 계열 카드)는 전월 이용실적과 서비스별 월 할인한도가 통합 적용되며, <br/>
					  &nbsp&nbsp;톡톡 with 계열 카드 중복 소지 시 최초 발급된 카드의 사용등록일을 기준으로 합니다.<br/>
					- 스타벅스 : 스타벅스(사이렌오더 포함)<br/>
					
					  * 상품권(선물하기 등) 및 선불카드(선불전자지급수단 포함) 충전 제외
								
				</div>
				
				
				<!-- 구독 혜택 -->
				<div class="group1">	
					<div class="bnf_icon">
						<img alt="혜택아이콘" src="${pageContext.request.contextPath}/resources/images/detail/icon_subscribe_blue.png" class="icon_img"> 
					</div>
					<div class="box_txt">
						<h2 class="name_card">디지털 구독</h2>
						<h4 class="cmp_card">구독(YouTube premium,넷플릭스,웨이브,티빙)20% 할인</h4>
					</div>
					<div class="open_view">
						<img alt="펼쳐보기" src="${pageContext.request.contextPath}/resources/images/detail/arrow_down_gray.png" class="arrow_down2">
						<img alt="올려보기" src="${pageContext.request.contextPath}/resources/images/detail/arrow_up_gray.png" class="arrow_up2">
					</div>
					<div class = "cont" style = "display:none";>가나다라마바사아자차카타파하</div>
				</div>
				<div class = "group1-1">
				
					<h3 id = "h1">구독 20%할인</h3> <br/>
					<br/>
					구독 20% 할인<br/>
					<br/>
					- 해당 카드의 서비스는 전월 이용실적 40만원 이상 시 제공되며, 전월 이용실적에 따라 월간 할인한도가 제공됩니다.<br/>
					- 전월 이용실적 40만원 이상 시, 월 할인한도 3천원<br/>
					- 최초 카드 사용 등록일로부터 다음달 말일(실적 유예기간)까지 해당 카드 이용실적이 없는 경우에도 서비스가 제공됩니다.<br/>
					- 상품명에 '톡톡 with'가 포함된 모든 카드(이하 톡톡 with 계열 카드)는 전월 이용실적과 서비스별 월 할인한도가 통합 적용되며,<br/>
				    - 톡톡 with 계열 카드 중복 소지 시 최초 발급된 카드의 사용등록일을 기준으로 합니다.<br/>
					- 구독 : YouTube Premium, 넷플릭스, 웨이브, 티빙<br/>
					<br/>
					* 공식 홈페이지 및 모바일(앱)을 통한 정기결제 시 제공(간편결제건 또는 앱스토어를 통한 인앱 결제건 등은 제외)<br/>
								
				</div>
				
				
				<!-- 간편결제 혜택 -->
				<div class="group1">	
					<div class="bnf_icon">
						<img alt="혜택아이콘" src="${pageContext.request.contextPath}/resources/images/detail/icon_pay_blue.png" class="icon_img"> 
					</div>
					<div class="box_txt">
						<h2 class="name_card">간편결제</h2>
						<h4 class="cmp_card">온라인 간편결제 10% 할인</h4>
					</div>
					<div class="open_view">
						<img alt="펼쳐보기" src="${pageContext.request.contextPath}/resources/images/detail/arrow_down_gray.png" class="arrow_down3">
						<img alt="올려보기" src="${pageContext.request.contextPath}/resources/images/detail/arrow_up_gray.png" class="arrow_up3">
					</div>
					<div class = "cont" style = "display:none";>가나다라마바사아자차카타파하</div>
				</div>
				<div class = "group1-1">
				
					<h3 id = "h1">온라인 간편결제 10% 할인</h3> <br/>
					<br/>
					구독 20% 할인<br/>
					<br/>
					- 해당 카드의 서비스는 전월 이용실적 40만원 이상 시 제공되며, 전월 이용실적에 따라 월간 할인한도가 제공됩니다.<br/>
					- 전월 이용실적 40만원 이상 시, 월 할인한도 3천원<br/>
					- 최초 카드 사용 등록일로부터 다음달 말일(실적 유예기간)까지 해당 카드 이용실적이 없는 경우에도 서비스가 제공됩니다.<br/>
					- 상품명에 '톡톡 with'가 포함된 모든 카드(이하 톡톡 with 계열 카드)는 전월 이용실적과 서비스별 월 할인한도가 통합 적용되며,<br/>
					  &nbsp&nbsp;톡톡 with 계열 카드 중복 소지 시 최초 발급된 카드의 사용등록일을 기준으로 합니다.<br/>
					- 온라인 간편결제 : KB Pay, 삼성 페이, LG 페이, 카카오페이, PAYCO, 네이버페이, 쿠페이, 스마일페이, SSGPAY, L.pay <br/>
					<br/>
					* 국내 온라인 가맹점 결제건에 한하며, 오프라인 매장 결제건(QR/바코드 결제, 스마트폰 NFC, 카카오T, 택시 등)은 제외<br/>
					<br/>
					* 스타벅스, 배달 청구할인 서비스와 중복 적용 가능하며 할인한도는 각각 차감<br/>
													
				</div>
				<!-- 유의사항 -->
				<div class="group1">	
					<div class="bnf_icon">
						<img alt="유의사항" src="${pageContext.request.contextPath}/resources/images/detail/icon_note_bule.png" class="icon_img"> 
					</div>
					<div class="box_txt">
						<h2 class="name_card">유의사항</h2>
						<h4 class="cmp_card">꼭 확인하세요!</h4>
					</div>
					<div class="open_view">
						<img alt="펼쳐보기" src="${pageContext.request.contextPath}/resources/images/detail/arrow_down_gray.png" class="arrow_down4">
						<img alt="올려보기" src="${pageContext.request.contextPath}/resources/images/detail/arrow_up_gray.png" class="arrow_up4">
					</div>
					<div class = "cont" style = "display:none";>가나다라마바사아자차카타파하</div>
				</div>
				<div class = "group1-1">
				
							<h3 id= "h1">서비스 제외 대상</h3><br/>
		<br/>
		- 무이자할부 이용금액, 상품권 및 선불카드(선불전자지급수단 포함) 구입·충전금액<br/>
		<br/>
		<br/>
		<br/>
		<h3 id= "h1">전원 실적 이용 대상</h3><br/>
		<br/>
		- 톡톡 with 계열 카드로 청구할인 서비스 받은 이용건(해당 매출 전체), 취소금액, 단기카드대출(현금서비스), 장기카드대출(카드론),<br/>
		 국세, 지방세, 공과금(전기/수도), 아파트관리비, 정부지원금(보육료/유치원보조비/바우처 이용금액 등),<br/> 
		 초·중·고등학교 납입금 전체(수업료/교육비/현장학습비/급식비),<br/>
		 대학(대학원)등록금, 4대 사회보험료(건강/연금/고용/산재), 각종 수수료 및 이자, 연체료, 연회비,<br/> 
		 상품권 및 선불카드(선불전자지급수단 포함)<br/>
		 구입·충전 금액, 교통요금, 무승인전표(자판기, 터널통행료, 항공기내 이용 등)<br/>
		<br/>
		<br/>
		<h3 id= "h1">전월 이용실적 기준</h3><br/>
		<br/>
		- 매월 1일 ~ 말일(승인시점 기준) 톡톡 with 계열 카드 일시불 및 할부 승인(이용)금액(해외이용금액은 전월 1일 ~ 말일까지 일시불 매입 완료 기준)<br/>
		<br/>
		- 취소금액은 취소 전표가 당사에 접수된 월의 실적에서 차감<br/>
		<br/>
		<br/>
		<h3 id= "h1">해외이용 확인사항</h3><br/>
		<br/>
		- 해외 이용 시(해외사이트 거래 포함) 미화(USD)기준 거래미화금액에 접수일의 (KB국민은행) 최초 고시 전신환매도율을 적용한 후,<br/>
		 국제브랜드사가 부과하는 국제브랜드 수수료(K-WORLD(UPI)0.8%, VISA 1.1%)와 KB국민카드가 부과하는 <br/>
		 해외서비스수수료(0.25%)를 포함하여 <br/>
		 원화로 청구됩니다. 이 경우 KB국민카드의 해외서비스 수수료는 국제브랜드 수수료를 제외하고 산정됩니다.<br/>
		<br/>
		<br/>
		<br/>
		<h3 id= "h1">해외이용 시 청구금액 산출방법</h3><br/>
		<br/>
		- 해외이용 시 청구금액 = (거래미화금액 * 전신환매도율¹) + 국제브랜드 수수료² + 해외서비스 수수료³<br/>
		<br/>
		  1. 전신환 매도율: 접수일의 KB국민은행 최초고시 전신환매도율<br/>
		<br/>
		  2. 국제브랜드수수료 = (거래미화금액 * 국제브랜드 이용수수료율) * 전신환매도율<br/>
		<br/>
		  3. 해외서비스수수료 = (거래미화금액 * 해외서비스 수수료율) * 전신환매도율<br/>
		<br/>
		- K-WORLD(UPI)브랜드는 2021.12.31까지 해외에서 일시불 및 할부 이용 시 국제브랜드 수수료가 면제됩니다.(단, 해외 이용 단기대출서비스(현금서비스)는 면제 제외)<br/>
		<br/>		
		- 해당 내용은 해외원화결제서비스(DCC)수수료가 없는 경우이며, 해외원화결제서비스 (DCC)이용 시 추가 수수료가 발생할 수 
		있으니 유의하시기 바랍니다.<br/>
		<br/>
		- 해외원화결제서비스(DCC) 차단 서비스 : KB국민카드 홈페이지 > 서비스 > 해외이용서비스 > 편의서비스 > 해외원화결제(DCC) 
		차단서비스: KB국민카드 모바일앱 > 서비스 > 해외이용 > <br/>
		해외이용 서비스 > 해외원화결제 차단서비스<br/>
				
								
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