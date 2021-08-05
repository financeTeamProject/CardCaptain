<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카드상세보기-카드캡틴</title>
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
		top: 0;
	}
	
/* ============================================================================ */		
/* 아코디언팝업 영역  */
#bi1{
		
	cursor:pointer;
	position: relative;
	top:90%;
	left:0%;
	position: fixed;
	background-color:#0047ab;
	color : white;
	width: 150px;
	height: 110px;
	text-align:center;
	line-height:50px;
	font-weight:bold;
	font-size:24px;
	font-family: 'Cafe24Ohsquare';
	z-index:200;
	margin:0 auto;
}

#bi2{
	top: 90%;
    left: 3%;
    position: fixed;
    background-color: #ff6e61;
    color: white;
    width: 40px;
    height: 40px;
    text-align: center;
    line-height: 37px;
    font-weight: bold;
    font-size: 15px;
    font-family: 'Cafe24Ohsquare';
    z-index: 200;
    margin: 0 auto;
    border-radius: 20px;
	border: 1px;
}

	.Popup{
		z-index:150;
	}

	#p1{
	    font-size: 15px;
	    position: relative;
	    top: 85%;
	    position: fixed;
	    padding: 10px;
	    background-color: #A0CFEC;
	    color: white;
	    font-family: 'Cafe24Ohsquare';
	    border: 0px;
	    cursor: pointer;
	    z-index: 150;
	    width: 91px;
	    height: 50px;
		}

	#p2{
		font-size: 15px;
	    position: relative;
	    top: 85%;
	    left: 90px;
	    position: fixed;
	    padding: 10px;
	    background-color: #FFE5B4;
	    color: white;
	    font-family: 'Cafe24Ohsquare';
	    border: 0px;
	    cursor: pointer;
	    z-index: 150;
	    width: 60px;
	    height: 50px;	
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
/* 아코디언팝업 종료 */

/* ============================================================================ */		
/* 헤더  영역*/
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
    background-image: url("resources/images/main/logo.png");
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

/* ============================================================================ */		
/* header_right 시작 */	
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
    background-image: url("resources/images/main/login1.png");
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
/* header_right 종료
	
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
#loginpopup {
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
/* ============================================================================ */	
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
			/* 소주제 영역 */
			#menuName{
				height: 50px;
				margin: 10px auto;
				margin-left: 10px;
				font-family: Cafe24Ohsquare;
				font-size: 30px;
				line-height: 60px;			
			}
/* ============================================================================ */			
/* 혜택 상위 영역 */
			#topArea{
				width: 100%;
				background-color: #f2f2f2;
				border-radius: 50px;
				padding: 20px 0px;
				margin: 20px 0;
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
			.bef_area{
				display: block;
				text-align: center;
				width: 100%;
				margin: 20px 0;
			}
/* 왼쪽이미지 영역 */
				#mainImg{
					display: inline-block;
					width: 370px;
					height: inherit;
					margin-left: 200px;
				}
					.big_img{	
						width: 370px;
						height: 230px;
						border-radius: 20px;
						box-shadow: 0px 5px 10px 1px gray;
					}
/* 오른쪽 혜택안내 영역 */	
				#cardBnf{
					display: inline-block;
					width:650px;
					text-align: center;
					margin-left: 30px;
				}
					
/* 혜택 전체 박스 영역 */
					.bnf_sct{
						display: flex;
						height: 70px;
						margin-bottom: 20px;
					}	
						.bnf_dsc{
							display: flex;
							flex-direction: column;
							margin-left: 10px;	
						}
							.bnf_top{
								height: 35px;
								text-align: left;
								line-height: 45px;
								font-size: 20px;
								font-weight: bold;
								font-family: GmarketSansMedium;
							}
							.bnf_mid{
								text-align: left;
								height: 35px;
								font-size: 20px;
								font-family: GmarketSansMedium;
							}
						
/* 버튼 영역 */		
					#btnSct{ 
						width: 100%;
						height: 80px;
						text-align: center;
					}
					.bef_btn{
						width: 250px;
						height: 60px;
						font-size: 25px;
						color: white;
						background-color: #0047ab;
						padding: 10px;
						border-radius: 10px;
						font-family: GmarketSansMedium;
						font-weight: bold;
					}
					
						.bef_btn:hover{
							cursor: pointer;
							color: black;
							background-color: #F5DF4D;
							border: none;
						}
					.compare_btn{
							width: 250px;
							height: 60px;
							font-size: 25px;
							color: white;
							background-color: #808080;
							padding: 10px;
							border-radius: 10px;
							font-family: GmarketSansMedium;
							font-weight: bold;
						}
						.compare_btn:hover{
							color: black;
							background-color: #F5DF4D;
							cursor: pointer;
							border: none;
						}
/* ============================================================================ */						
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
					height: 50px;
					margin: 10px auto;
					margin-left: 10px;
					font-family: Cafe24Ohsquare;
					font-size: 30px;
					line-height: 60px;
				}
/* 혜택 박스 틀 */
				.group1-1{
				    margin: 10px auto;
				    width: 760px;
				    height: 100%;
				    background-color: #F0FFFF;
				    text-align: left;
				    font-size: 13px;
				    font-family: GmarketSansMedium;
				    padding: 20px;
				}
								
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
						height: inherit;
						cursor: pointer;
					}
						.arrow_down , .arrow_up{
							width: 50%;
							height: 50%;
							margin: 20px 30px;
						}			
/* ============================================================================ */							
/* 리뷰 영역 */	
				#review_name{
					height: 50px;
					margin: 10px auto;
					font-family: Cafe24Ohsquare;
					font-size: 30px;
					line-height: 60px;
				}
				#reviewExplanation{
					font-family: GmarketSansMedium;
					color: gray;
					font-size: 20px;
					margin-left: 10px;
				}	
				.review_area{
					width: 100%;
					background-color: #f2f2f2;
					border-radius: 50px;
					padding: 20px 0px;
					margin-bottom: 30px;
				}
				.review_top{
					display: flex;
					justify-content: space-around;
					width: 100%;
				}
/* ============================================================================ */						
/* 사용자 평점 영역 */
					.star_area{
						display: inline-block;
						vertical-align: top;
						margin-left: 50px;
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
							background-image: url("resources/images/ranking/background/star.png");
							background-repeat: no-repeat;
							}
						.star-rating span{
						background-position:left bottom; 
						line-height:0; 
						vertical-align:top; 
						}
/* ============================================================================ */						
/* 전체 리뷰 수 영역 */	
					.review_total{
						display: inline-block;
						vertical-align: top;
					}
						.review_img{
							display: inline-block;
							vertical-align: top;
							width: 40px;
							height: 40px;
							background-image: url("resources/images/ranking/icon/review.png");
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
					.click_total{
						display: inline-block;
						vertical-align: top;
						margin-right: 50px;
					}
						.click_img{
							display: inline-block;
							vertical-align: top;
							width: 40px;
							height: 40px;
							background-image: url("resources/images/ranking/icon/click.png");
							background-repeat: no-repeat;
							background-size: 40px;
							margin: 0 10px;
							
						}
						.click_cnt{
							display: inline-block;
							vertical-align: top;
							font-family: GmarketSansMedium;
							font-size: 40px;
							font-weight: bold;
							text-align: center;
							margin: 0 10px;
						}
/* ============================================================================ */						
/* 리뷰 작성 영역 */
					.review_write_area{
						width: 100%;
					}
					.login_btn_area{
						margin-top: 20px;
						margin-left: 50px;
						font-family: GmarketSansMedium;
					}
					.review_list_wrap{
						width: 100%;
					}
					.list_area{
						display: flex;
						justify-content: center;
						height: 100px;
						width: 70%;
						margin: 10px auto;
						background-color: white;
						box-shadow: 5px 0px 5px -1px rgba(1, 1, 1, 0.6),
								-5px 0px 5px -1px rgba(1, 1, 1, 0.6);
					}
					.review_no{
						width: 10%;
						font-family: GmarketSansMedium;
						font-weight: bold;
						font-size: 20px;
						text-align: center;
						padding-top: 40px; 
					}
/* 리뷰 별점 및 작성자 영역 */
					.review_info{
						width: 15%;
						font-weight: bold;
						font-family: GmarketSansMedium;
						padding: 15px;
					}
					.review_star{
						color: #0047AB;
						font-size: 20px;
					}
					.review_writer{
						font-size: 15px;
					}
/* 리뷰 작성 버튼 */
					#reviewLoginBtn{
						width: 150px;
						height: 50px;
						position: relative;
						left: 1160px;
						background-color: #0047AB;
						color: white;
						font-family: GmarketSansMedium;
						font-size: 20px;
						border-radius: 5px;
					}
/* ============================================================================ */					
/* 리뷰 작성 영역 */
					.review_content{
						width: 60%;
						padding: 10px;
					}
					.content_title{
						font-family: Cafe24Ohsquare;
						line-height: 50px;
					}
					.content_con{
						font-family: GmarketSansMedium;
						white-space: nowrap;
						overflow: hidden;
						text-overflow: ellipsis;
					}
/* 리뷰 좋아요 영역 */
					.review_like{
						width: 10%;
					}
						.like_good_Img{
							position: relative;
							top: 25px;
							cursor: pointer;
						}
						#likeCnt{
							display: inline-block;
							position: relative;
							top: 10px;
							font-weight: bold;
							font-size: 20px;
							font-family: GmarketSansMedium;
						}

/* ============================================================================ */						
/* 페이지 작성 영역 */
					.paging_area{
						text-align: center;
					}
					.paging_area{
						margin-top: 20px;
					}
					.paging_area span{
						display: inline-block;
						padding: 5px;
						margin-left: 3px;
						margin-right: 3px;
						border-width: none;
						border-radius: 3px;
						cursor: pointer;
						width: 50px;
						text-align: center;
						font-size: 12px;
						height: 20px;
						line-height: 20px;
					}
					.paging_area span:active {
					background-color: #AAAAAA;
					}
					.paging_area #on {
					background-color: #AAAAAA;
					}

/* ============================================================================ */
/* 풋터 영역 */
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
	    background-image: url("/CDCP/resources/images/main/logo.png");
	    background-repeat: no-repeat;
	    background-size: 120px;
	    width: 120px;
	    height: 40px;
	    cursor: pointer;
	    text-align: center;
	    margin-top: 10px;
	}
/* 풋터 종료 */

/* ============================================================================ */
/*	리뷰팝업 영역	*/	
		.pop_bg{
			display: inline-block;
			width: 100%;
			height: 2700px;
			position: absolute;
			top: 0px;
			left: 0px;
			background-color: #000000;
			z-index: 200;
			opacity: 0.6;
		}
		.review_popup{
			display: inline-block;
			width: 900px;
			height: 600px;
			background-color: #ffffff;
			box-shadow: 0px 0px 1px 1px #444444;
			position: absolute;
			top: calc(1600px - 300px);
			left: calc(50% - 450px);
			z-index: 300;
			font-size: 16px;
			border: 3px solid #0047AB;
			border-radius: 10px;
		}
		.pop_header{
			text-align: center;
		    font-size: 25px;
		    height: 50px;
		    line-height: 50px;
		    background-color: #0047AB;
		    color: white;
		    font-family: Cafe24Ohsquare;
		}
		.pop_card{
			margin: 20px;
			text-align: center;
			font-size: 20px;
			font-family: GmarketSansMedium;
		}
		.block_form{
			margin: 10px auto;
			width: 80%;
		}
		.info_rabel{
			display: inline-block;
			width: 120px;
			font-family: GmarketSansMedium;
		}
		.write_div{
			display: inline-block;
			font-family: GmarketSansMedium;
		}
		.title_text{
			font-size: 20px;
		}
			#reviewTitleArea{
				width: 100%;
			}
			#reviewTextArea{
				width: 100%;
			}
		.radio{
			margin: 10px 0;
			text-align: center;
			font-size: 20px;
		}
		.butten_area{
			float: right;
    		margin-top: 50px;
		}
		.popAreaBtn{
			width: 60px;
			height: 30px;
			background-color: #0047AB;
			color: white;
			border-radius: 5px;
			font-family: GmarketSansMedium;
			line-height: 30px;
		}
			#reportBtn{
				
			}
			#closeBtn{
			
			}
/* 상세보기 팝업 제목 내용 박스 */
		#dtTitleDiv{
			margin: 10px 0;
			width: 100%;
			height: 50px;
			border: 1px solid gray;
			overflow: auto;
			font-size: 20px;
		}
/* 내용 박스 */
		#dtTextDiv{
			margin: 10px 0;
			width: 100%;
			height: 100px;
			border: 1px solid gray;
			overflow: auto;
			font-size: 20px;
		}
		.dt_title_div{
			display: inline-block;
			font-family: GmarketSansMedium;
		}
		#deleteBtn{
			background-color: red;
		}
		
/*	신고 팝업 영역 	*/			
.pop_small_title{
			margin: 20px;
			text-align: center;
			font-size: 20px;
			font-family: GmarketSansMedium;
		}	
		.report_left{
			display: inline-block;
			vertical-align: top;
			width: 20%;
		    height: 260px;
		    line-height: 260px;
		    border: 1px solid;
		    padding: 10px;
		    text-align: center;
		    font-family: GmarketSansMedium;
		}
		.report_right{
			display: inline-block;
			width: 80%;
			height: 50px;
			padding: 10px;
		}
		#reTextArea{
			display: flex;
			border: 1px solid;
			margin: 50px auto;
		}	
		#reportButtonArea{
			float: right;
    		margin-top: 10px;
		}
		
/*	리뷰 팝업 영역 끝	*/	


		
</style>
<script type="text/javascript"
			src = "resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">

/* 아코디언 */
$(document).ready(function(){
	$(".group1-1").hide();
	$(".bot_box").click(function(){
			
		if($(this).next().css("display")=="none"){
			$(this).next().slideDown("fast");
		}
		else{
			$(this).next().slideUp("fast");
		}
	});
});

/* 버튼 클릭시 화살표 이미지 변경 */
   $(document).ready(function(){
  
    $(".arrow_down").show();
    $(".arrow_up").hide();
        
    $(".arrow_down").click(function(){
        $(".arrow_down").hide();
        $(".arrow_up").show();
    });
 
    $(".arrow_up").click(function(){
        $(".arrow_down").show();
        $(".arrow_up").hide();
    });
});

//클릭을 했을때 클릭한 놈의 부모에서 자식만 바꿔준다. this parent children
/*비교함 담기  */	

$(document).ready(function(){
		 var cardNo = [];              
/* 메인 비교함 버튼 조건 */
    $(".compare_btn").on("click", function() {
    	var temp = "";
		if(cardNo.length > 2) {
			alert("비교함이 가득 찼습니다.");
		} else {
			var a = cardNo.push($(this).prop('id'));
			cardNo.push(a[1]);
			$("#bi2").val(cardNo.length-1);
			console.log(cardNo);
			for(var i=0; i<cardNo.length; i++){
				for(var j=0; j<i; j++){
					if(cardNo[i] == cardNo[j]) {
						alert("동일한 카드가 있습니다.");
						cardNo.pop(cardNo.pop());//pop() = 배열의 마지막 요소 제거
						$("#bi2").val(cardNo.length-1);
						return false;
			 		}
				}	
			}
		}
	});	
	
    $("#bi1").on("click",function(){
		$("#compared1").val(cardNo[0]);
		$("#compared").attr("action","compareSearch");	
	});    	
});

/* 메인 비교함 팝업  */
	$(document).ready(function(){
		$("#bi").hide();
		$(".compare_btn").on("click",function(){
			$("#bi").hide();
			$("#bi").fadeIn();
		});
		$("#bi").on("click",function(){
			makePopup();
			});
	  	
		function makePopup(){
			var html = "<div class = \"Popup\">"
				+ "<input type = \"button\" id = \"p1\" value = \"비교함 이동\" readonly = \"readonly\" >"
				+ "<input type = \"button\" id = \"p2\" value = \"취소\"  readonly = \"readonly\" >"
				+ "</div>"
				$("body").prepend(html);
				$(".Popup").hide().fadeIn();
				$("#p1").on("click",function(){
					$("#compared").submit();
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
	 });	
/* ====================================================================================== */		
/* 도헌 카드리뷰 페이지 */
	$(document).ready(function(){
		
		reloadList();
		
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
			location.href = "/CDCP";
		}); // headerLogo click end
	
/* 로그인팝업 실행 */
		$("#imgLogin").on("click", function(){
			$("#loginpopup").css("display","block");
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
							/* location.href = "/CDCP"; */
							$("#loginpopup").css("display","none");
							$(".body").css("display","inline");
							location.reload();
							$("#nickName").css("display","inline");
							$("#imgSearch").css("margin-left","70%");
							$("#imgLogin").css("display","none");
							$("#logoutBtn").css("display","inline");
							
						} else {
							$(".errorMsg").css("display","inline");
							$("#masage").html("아이디 또는 비밀번호가 일치하지 않습니다.");
						}
					},
					error: function (request, status, error) {
						console.log(error);
					}
				}); //ajax end
			}
		}); //로그인 end
		
/* 로그아웃  */
		$("#logoutBtn").on("click", function (){
			location.href = "testALogout2";
		}); //로그아웃 end
		
/* 마이페이지 이동 */
		$("#logNick").on("click", function(){
			$("#memNo").attr("action");
			$("#memNo").submit();
		});
// 카드 신청 수 증가		
		$("#bef_btn").on("click", function(){
			$("#goForm").submit();
		});
// 페이지 이동	
		$(".paging_area").on("click", "span", function () {
			$("#page").val($(this).attr("page"));
			
			reloadList();
		});
// 리뷰 작성 버튼 클릭
		$("#reviewLoginBtn").on("click", function(){
			
			var params = $("#actionForm").serialize();
			
			$.ajax({
				url:"reviewWrite",
				type:"post",
				dataType :"json",
				data: params,
				success : function (res) {
					if(res.checkCnt == 1){
					makeWritePopup(res.data);
					} else {
						alert("카드를 보유하고 있지 않습니다.");
						reloadList();
					}
				},
				error: function (request, status, error) {
					console.log(error);
					
				}
			})
		});
		
		
});	// document ready end	
/* ====================================================================================== */
/* 리뷰 목록  */
		function reloadList(){
			var params = $("#actionForm").serialize();
			
			$.ajax({
				url: "cardviews", // 접속주소 (현재 저상태는 상대 경로이다)
				type: "post", // 전송방식: get,post
				dataType: "json", // 받아올 데이터 형식
				data: params, //보낼 데이터(문자열 형태)
				success: function(res){ // 성공 시 다음 함수 실행	
					drawList(res.review);
					drawPaging(res.pb);
					$(".review_cnt").html(res.cnt);
				},
				error: function(request, status, error){ // 실패 시 다음 함수 실행
					console.log(error);
				}
			});
		}

/* ====================================================================================== */
// 목록 그리기
		function drawList(review){
			var html = "";
			
			for(var i = 0; i < review.length; i++){
			html +=	"<input type=\"hidden\" value=\""+ review[i].MEMBER_NO + "\" />";
			html +=	"<div class=\"list_area\">";
			html += "<div class=\"review_no\" id=\"reviewNo\">" + review[i].REVIEW_NO + "</div>";
			html += "<div class=\"review_info\">";
			
			if(review[i].SCORE == 1){
			html += "<div class=\"review_star\">★☆☆☆☆</div>";
			} else if(review[i].SCORE == 2){
			html += "<div class=\"review_star\">★★☆☆☆</div>";
			} else if(review[i].SCORE == 3){
			html += "<div class=\"review_star\">★★★☆☆</div>";
			} else if(review[i].SCORE == 4){
			html += "<div class=\"review_star\">★★★★☆</div>";
			} else{
			html += "<div class=\"review_star\">★★★★★</div>";
			}
			html += "<div class=\"review_writer\">";
			html += "<div>작성자 : " + review[i].NICKNAME + "</div>";
			html += "<div>등록일 : " + review[i].ADD_DATE + "</div>";
			html += "</div>";
			html += "</div>";
			html += "<div class=\"review_content\" id=" + review[i].REVIEW_NO + ">";
			html += "<div class=\"content_title\">" + review[i].TITLE + "</div>";
			html += "<div class=\"content_con\">" + review[i].TEXT + "</div>";
			html += "</div>";
			html += "<div class=\"review_like\">";
			html += "<img class=\"like_good_Img\" id=" + review[i].REVIEW_NO + " alt=\"좋아요 \" src=\"resources/images/ranking/icon/like_icon_bule.png\" width=\"50px\" height=\"50px\">";
			html += "<div id=\"likeCnt\">" + review[i].LIKE_CNT +"</div>";
			html += "</div>";
			html += "</div>";
		}
				
			$(".review_list_wrap").html(html);
			
// 리뷰 좋아요 클릭
			$(".like_good_Img").on("click", function(){
				var params = "reviewNo=" + $(this).attr("id");
				
				$.ajax({
					url:"cardviews",
					type:"post",
					dataType :"json",
					data: params,
					success : function () {
						reloadlist();
					},
					error: function (request, status, error) {
						console.log(error);
						
					}
				})
			});
			
// 상세보기 클릭
			$(".review_content").on("click", function(){
				var params = "reviewNo=" + $(this).attr("id");
				
				$.ajax({
					url:"reviewDetail",
					type:"post",
					dataType :"json",
					data: params,
					success : function (res) {
						makeDetailPopup(res.detail);
					},
					error: function (request, status, error) {
						console.log(error);
						
					}
				})
			});
/* ====================================================================================== */			
// 리뷰상세보기 팝업 그리기
			function makeDetailPopup(detail){
				var html = "";
				html +=	"<form action=\"#\" id=\"deleteForm\" method=\"post\">";
				html +=	"<input type=\"hidden\" name=\"revieMNo\" value=\""+ detail.MEMBER_NO + "\" />";
				html +=	"<input type=\"hidden\" name=\"reviewNo\" value=\""+ detail.REVIEW_NO + "\" />";
				html +=	"<input type=\"hidden\" id=\"reportSNo\" name=\"revieSNo\" value=\""+ detail.STATUS_NO + "\" />";
				html +=	"</form>";
				html += "<div class=\"pop_bg\"></div>";                                                                                                                
				html += "<div class=\"review_popup\">";                                                                                                                 
				html += "	<div class=\"pop_header\">카드리뷰</div>";                                                                                                  
				html += "	<div class=\"pop_card\" id=\"popCardName\">[" + detail.CARD_NAME + "]</div>";                                                                         
				html += "	<div class=\"block_form\">";                                                                                                               
				html += "		<label class=\"info_rabel\">작성자(닉네임) :</label>";                                                                                  
				html += "		<div class=\"write_div\">" + detail.NICKNAME + "</div>";                                                                                               
				html += "	</div>";                                                                                                                                  
				html += "	<div class=\"block_form\">";                                                                                                                
				html += "		<div class=\"dt_title_div\">제목 :</div>";                                                                             
				html += "		<div class=\"dt_write_div\" id=\"dtTitleDiv\">" + detail.TITLE + "</div>";                                                                                                         
				html += "	</div>";                                                                                                                                  
				html += "	<div class=\"block_form\">";                                                                                                                
				html += "		<div class=\"dt_title_div\">내용 :</div>";                                                                           
				html += "		<div class=\"dt_write_div\" id=\"dtTextDiv\">" + detail.TEXT + "</div>";                                                                                                              
				html += "	</div>";                                                                                                                                  
				html += "	<div class=\"block_form\">";                                                                                                               
				html += "		<div class=\"butten_area\">";
				if("${sMNo}" == detail.MEMBER_NO){
				html += "			<input type=\"button\" value=\"수정\" class=\"popAreaBtn\" id=\"updateBtn\">";                                                            
				html += "			<input type=\"button\" value=\"삭제\" class=\"popAreaBtn\" id=\"deleteBtn\">";                                                            
				html += "			<input type=\"button\" value=\"닫기\" class=\"popAreaBtn\" id=\"closeBtn\">";                                                             
				} else if("${sMNm}" == "") {
				html += "			<input type=\"button\" value=\"닫기\" class=\"popAreaBtn\" id=\"closeBtn\">";                                                             
				} else {
				html += "			<input type=\"button\" value=\"신고\" class=\"popAreaBtn\" id=\"reportBtn\">";
				html += "			<input type=\"button\" value=\"닫기\" class=\"popAreaBtn\" id=\"closeBtn\">";                                                             
				}
				html += "		</div>";                                                                                                                              
				html += "	</div>";                                                                                                                                  
				html += "</div>";                                                                                                                                     
				                                                                                                                                                    
				$("body").prepend(html);
				
// 상세보기 삭제 버튼
				$("#deleteBtn").on("click", function(){                                                                                                              
					if(confirm("삭제하시겠습니까?")){
						var params = $("#deleteForm").serialize();
						
						$.ajax({
							url: "reviewDelete", // 접속주소 (현재 저상태는 상대 경로이다)
							type: "post", // 전송방식: get,post
							dataType: "json", // 받아올 데이터 형식
							data: params, //보낼 데이터(문자열 형태)
							success: function(res){ // 성공 시 다음 함수 실행	
								if(res.msg == "success"){
									closePopup();
									/* reloadList(); */
									location.reload();
								} else if(res.msg == "failed"){
									alert("삭제에 실패하였습니다.");
								} else {
									alert("삭제중 문제가 발생하였습니다.");
								}
							},
							error: function(request, status, error){ // 실패 시 다음 함수 실행
								console.log(error);
							}
						});
					}
				}); // deleteBtn click end
				
				// 상세보기 닫기 버튼
				$("#closeBtn").on("click", function(){                                                                                                              
					closePopup();
				});
				
				// 팝업창 닫기 함수
				function closePopup() {
					
					$(".pop_bg").fadeOut(function(){
						$(".pop_bg").remove();
					});
					
					$(".review_popup").fadeOut(function(){
						$(".review_popup").remove();
					});
				} // function closePopup end
			
				// 상세보기 수정 버튼
				$("#updateBtn").on("click", function(){
					var params = $("#deleteForm").serialize();
					/* $(".pop_bg").remove(); */
					$(".review_popup").hide();
					
					$.ajax({
						url:"reviewUpdate",
						type:"post",
						dataType :"json",
						data: params,
						success : function (res) {
							reviewUpPopup(res.detail);
						},
						error: function (request, status, error) {
							console.log(error);
							
						}
					});
				}); // updateBtn click end
				
				// 상세보기 신고 버튼
				$("#reportBtn").on("click", function(){
					if($("#reportSNo").val() == 1){
						alert("신고 처리중인 리뷰입니다.");
					} else{
						
					
					var params = $("#deleteForm").serialize();
					$(".review_popup").hide();
					
					$.ajax({
						url:"reviewReport",
						type:"post",
						dataType :"json",
						data: params,
						success : function (res) {
							reviewreportPopup(res.detail);
						},
						error: function (request, status, error) {
							console.log(error);
							
						}
					});
					}
				}); // updateBtn click end
				
			} // 리뷰상세보기 팝업 그리기 끝	
			
// 리뷰상세보기 팝업 그리기			
/* ====================================================================================== */			

// 리뷰신고  팝업 그리기	
			function reviewreportPopup(detail){
			var html = "";
			
			html += "<div class=\"review_popup\">";
			html += "<div class=\"pop_header\">리뷰신고</div>";
			html += "<div class=\"pop_small_title\">*허위신고일 경우, 신고자의 서비스 활동이 제한될수 있으니 신중하게 신고해주세요</div>";
			html += "<div class=\"block_form\" id=\"reTextArea\">";
			html += "<div class=\"report_left\">신고사유</div>";
			html += "<form action=\"#\" id=\"reportForm\" method=\"post\">";
			html +=	"<input type=\"hidden\" name=\"revieMNo\" value=\""+ detail.MEMBER_NO + "\" />";
			html +=	"<input type=\"hidden\" name=\"reviewNo\" value=\""+ detail.REVIEW_NO + "\" />";
			html += "<div class=\"report_right\">";
			html += "<div>";
			html += "<label class=\"radio-inline\"> <input type=\"radio\" name=\"review_report\" id=\"reviewReport1\" value=\"광고성 게시물\" >광고성 게시물</label>";
			html += "</div>";
			html += "<div>";
			html += "<label class=\"radio-inline\"> <input type=\"radio\" name=\"review_report\" id=\"reviewReport2\" value=\"욕설/부적절한 언어\" >욕설/부적절한 언어</label>";
			html += "</div>";
			html += "<div>";
			html += "<label class=\"radio-inline\"> <input type=\"radio\" name=\"review_report\" id=\"reviewReport3\" value=\"지나친 정치/종교 논쟁\" >지나친 정치/종교 논쟁</label>";
			html += "</div>";
			html += "<div>";
			html += "<label class=\"radio-inline\"> <input type=\"radio\" name=\"review_report\" id=\"reviewReport4\" value=\"도배성 게시물\" >도배성 게시물</label>";
			html += "</div>";
			html += "<div>";
			html += "<label class=\"radio-inline\"> <input type=\"radio\" name=\"review_report\" id=\"reviewReport5\" value=\"회원 비방\" >회원 비방</label>";
			html += "</div>";
			html += "<div>";
			html += "<label class=\"radio-inline\"> <input type=\"radio\" id=\"reviewReport6\" >기타</label>";
			html += "<div class=\"write_div\" id=\"reviewTextArea\">";
			html += "<textarea rows=\"5\" cols=\"50\" class=\"title_text\" id=\"title_text\" name=\"review_report\"></textarea>";
			html += "</div>";
			html += "</div>";
			html += "</div>";
			html += "</form>";
			html += "</div>";
			html += "<div class=\"block_form\">";
			html += "<div class=\"butten_area\" id=\"reportButtonArea\">";
			html += "<input type=\"button\" value=\"신고\" class=\"popAreaBtn\" id=\"reportBtn\">";
			html += "<input type=\"button\" value=\"닫기\" class=\"popAreaBtn\" id=\"closeBtn\">";
			html += "</div>";
			html += "</div>";
			html += "</div>";                                                                                                                           
			                                                                                                                                                    
			$("body").prepend(html);
			
// 신고 버튼 클릭
			$("#reportBtn").on("click", function(){
				
					var params = $("#reportForm").serialize();
					
					$.ajax({
						url: "reviewReport2", // 접속주소 (현재 저상태는 상대 경로이다)
						type: "post", // 전송방식: get,post
						dataType: "json", // 받아올 데이터 형식
						data: params, //보낼 데이터(문자열 형태)
						success: function(res){ // 성공 시 다음 함수 실행	
							if(res.msg == "success"){
								alert("신고가 접수되었습니다.");
								closePopup();
								reloadList();
							} else if(res.msg == "failed"){
								alert("신고중 문제발생 입니다.");
							} else {
								alert("신고중 문제가 발생되었습니다.");
							}
						},
						error: function(request, status, error){ // 실패 시 다음 함수 실행
							console.log(error);
						}
					}); // ajax end
				
		}); // reportBtn click end
			
			
			$("#closeBtn").on("click", function(){                                                                                                              
				$(".review_popup").show();
			});
			
			// 팝업창 닫기 함수
			function closePopup() {
				
				$(".pop_bg").fadeOut(function(){
					$(".pop_bg").remove();
				});
				
				$(".review_popup").fadeOut(function(){
					$(".review_popup").remove();
				});
			} // function closePopup end
		}
				

/* ====================================================================================== */
//리뷰 수정 페이지
				function reviewUpPopup(detail){
					var html = "";
					
					html += "<div class=\"review_popup\">";                                                                                                                 
					html += "	<div class=\"pop_header\">카드리뷰</div>";                                                                                                  
					html += "	<div class=\"pop_card\" id=\"popCardName\">[" + detail.CARD_NAME + "]</div>"; 
					html += "	<div class=\"block_form\">";
					html += "		<label class=\"info_rabel\">작성자(닉네임) :</label>";                                                                                  
					html += "		<div class=\"write_div\"> ${sMNm} </div>";                                                                                               
					html += "	</div>";                                                                                                                                  
					html += "	<form action=\"#\" id=\"updateForm\" method=\"post\">";
					html += "		<input type=\"hidden\" name=\"cardNo\" value=\"${data[0].CARD_NO}\"/>";
					html += "		<input type=\"hidden\" id=\"memberNo\" name=\"memNo\" value=\"${sMNo}\" >";
					html +=	"		<input type=\"hidden\" name=\"reviewNo\" value=\""+ detail.REVIEW_NO + "\" />";
					html += "	<div class=\"block_form\">";                                                                                                                
					html += "		<label class=\"info_rabel\" id=\"infoTitle\">제목 :</label>";                                                                           
					html += "		<div class=\"write_div\">";                                                                                                             
					html += "			<input type=\"text\" class=\"title_text\" id=\"reviewTitleArea\" name=\"reviewTitle\" value=\""+ detail.TITLE +"\" size=\"70\" />";                                                              
					html += "		</div>";                                                                                                                              
					html += "	</div>";                                                                                                                                  
					html += "	<div class=\"block_form\">";                                                                                                                
					html += "		<label class=\"info_rabel\" id=\"infoContent\">내용 :</label>";                                                                           
					html += "		<div class=\"write_div\">";                                                                                                             
					html += "			<textarea rows=\"5\" cols=\"70\" class=\"title_text\" id=\"reviewTextArea\" name=\"reviewText\">"+ detail.TEXT +"</textarea>";                                                     
					html += "		</div>";                                                                                                                              
					html += "	</div>";                                                                                                                                  
					html += "	<div class=\"block_form\">";                                                                                                                
					html += "		<label class=\"info_rabel\">별점 주기</label>";                                                                                         
					html += "		<div class=\"radio\">";                                                                                                                 
					html += "			<label class=\"radio-inline\"> <input type=\"radio\" name=\"review_star\" id=\"review_star1\" value=\"1\" >★☆☆☆☆</label>";             
					html += "			<label class=\"radio-inline\"> <input type=\"radio\" name=\"review_star\" id=\"review_star2\" value=\"2\">★★☆☆☆</label>";              
					html += "			<label class=\"radio-inline\"> <input type=\"radio\" name=\"review_star\" id=\"review_star3\" value=\"3\">★★★☆☆</label>";              
					html += "			<label class=\"radio-inline\"> <input type=\"radio\" name=\"review_star\" id=\"review_star4\" value=\"4\">★★★★☆</label>";              
					html += "			<label class=\"radio-inline\"> <input type=\"radio\" name=\"review_star\" id=\"review_star5\" value=\"5\" checked=\"checked\">★★★★★</label>";    
					html += "		</div>";                                                                                                                              
					html += "	</div>"; 
					html += "	</form>";
					html += "	<div class=\"block_form\">";                                                                                                               
					html += "		<div class=\"butten_area\">";                                                                                                           
					html += "			<input type=\"button\" value=\"수정\" class=\"popAreaBtn\" id=\"uupdateBtn\">";                                                            
					html += "			<input type=\"button\" value=\"닫기\" class=\"popAreaBtn\" id=\"closeBtn\">";                                                             
					html += "		</div>";                                                                                                                              
					html += "	</div>";                                                                                                                                  
					html += "</div>";
				
					$("body").prepend(html);
					
					// 수정페이지 수정 버튼
					$("#uupdateBtn").on("click", function(){
						if($.trim($("#reviewTitleArea").val()) == ""){
							alert("제목을 입력해 주세요.");
							$("#reviewTitleArea").focus();
						} else if($("#reviewTitleArea").val() == detail.TITLE){
							alert("제목을 변경해야 수정 가능합니다.");
							$("#reviewTitleArea").focus();
						} else if($("#reviewTextArea").val() == detail.TEXT){
							alert("내용을 변경해야 수정 가능합니다.");
							$("#reviewTextArea").focus();
						} else if($.trim($("#reviewTextArea").val()) == ""){
							alert("내용을 입력해 주세요.");
							$("#reviewTextArea").focus();
						} else {
							var params = $("#updateForm").serialize();
							
								$.ajax({
									url:"reviewUpdates",
									type:"post",
									dataType :"json",
									data: params,
									success : function (res) {
										$("#updateForm").attr("action", "cardview");
										$("#updateForm").submit();
										
									},
									error: function (request, status, error) {
										console.log(error);
										
									}
								});
							}
						}); // 수정페이지 updateBtn click end
					
					$("#closeBtn").on("click", function(){                                                                                                              
						$(".review_popup").show();
					});
					
					// 팝업창 닫기 함수
					function closePopup() {
						
						$(".pop_bg").fadeOut(function(){
							$(".pop_bg").remove();
						});
						
						$(".review_popup").fadeOut(function(){
							$(".review_popup").remove();
						});
					} // function closePopup end
					
				} // 리뷰 수정 페이지 끝
		}
//리뷰 수정 페이지 끝

// 리뷰 목록 그리기 끝
/* ====================================================================================== */		
		
// 페이징 그리기
		function drawPaging(pb) {
		var html = "";
		
		html += "<span page=\"1\">|&lt;</span>";
		
		if($("#page").val() == "1") {
			html += "<span page=\"1\">&lt;</span>";
		} else {
			html += "<span page=\"" + ($("#page").val() - 1) + "\">&lt;</span>";
		}
		
		for(var i = pb.startPcount ; i <= pb.endPcount ; i++) {
			if($("#page").val() == i) {
				html += "<span id=\"on\" page=\"" + i + "\"><b>" + i + "</b></span>";
			} else {
				html += "<span page=\"" + i + "\">" + i + "</span>";
			}
		}
		
		if($("#page").val() == pb.maxPcount) {
			html += "<span page=\"" + pb.maxPcount + "\">&gt;</span>";
		} else {
			html += "<span page=\"" + ($("#page").val() * 1 + 1) + "\">&gt;</span>";
		}
			html += "<span page=\"" + pb.maxPcount + "\">&gt;|</span>";
		
		$(".paging_area").html(html);
	}
// 페이징 그리기 끝
/* ====================================================================================== */	

// 리뷰작성 팝업 그리기
		function makeWritePopup(data){
			var html = "";
			
			html += "<div class=\"pop_bg\"></div>";                                                                                                                
			html += "<div class=\"review_popup\">";                                                                                                                 
			html += "	<div class=\"pop_header\">카드리뷰</div>";                                                                                                  
			html += "	<div class=\"pop_card\" id=\"popCardName\">" + [ data[0].CARD_NAME ] + "</div>"; 
			html += "	<form action=\"#\" id=\"addForm\" method=\"post\">";
			html += "	<input type=\"hidden\" name=\"cardNo\" value=\"${data[0].CARD_NO}\"/>";
			html += "	<div class=\"block_form\">";
			html += "		<input type=\"hidden\" id=\"memberNo\" name=\"memNo\" value=\"${sMNo}\" >";
			html += "		<label class=\"info_rabel\">작성자(닉네임) :</label>";                                                                                  
			html += "		<div class=\"write_div\"> ${sMNm} </div>";                                                                                               
			html += "	</div>";                                                                                                                                  
			html += "	<div class=\"block_form\">";                                                                                                                
			html += "		<label class=\"info_rabel\" id=\"infoTitle\">제목 :</label>";                                                                             
			html += "		<div class=\"write_div\">";                                                                                                             
			html += "			<input type=\"text\" class=\"title_text\" id=\"reviewTitleArea\" name=\"reviewTitle\" size=\"70\" />";                                                              
			html += "		</div>";                                                                                                                              
			html += "	</div>";                                                                                                                                  
			html += "	<div class=\"block_form\">";                                                                                                                
			html += "		<label class=\"info_rabel\" id=\"infoContent\">내용 :</label>";                                                                           
			html += "		<div class=\"write_div\">";                                                                                                             
			html += "			<textarea rows=\"5\" cols=\"70\" class=\"title_text\" id=\"reviewTextArea\" name=\"reviewText\"></textarea>";                                                     
			html += "		</div>";                                                                                                                              
			html += "	</div>";                                                                                                                                  
			html += "	<div class=\"block_form\">";                                                                                                                
			html += "		<label class=\"info_rabel\">별점 주기</label>";                                                                                         
			html += "		<div class=\"radio\">";                                                                                                                 
			html += "			<label class=\"radio-inline\"> <input type=\"radio\" name=\"review_star\" id=\"review_star1\" value=\"1\" >★☆☆☆☆</label>";             
			html += "			<label class=\"radio-inline\"> <input type=\"radio\" name=\"review_star\" id=\"review_star2\" value=\"2\">★★☆☆☆</label>";              
			html += "			<label class=\"radio-inline\"> <input type=\"radio\" name=\"review_star\" id=\"review_star3\" value=\"3\">★★★☆☆</label>";              
			html += "			<label class=\"radio-inline\"> <input type=\"radio\" name=\"review_star\" id=\"review_star4\" value=\"4\">★★★★☆</label>";              
			html += "			<label class=\"radio-inline\"> <input type=\"radio\" name=\"review_star\" id=\"review_star5\" value=\"5\" checked=\"checked\">★★★★★</label>";    
			html += "		</div>";                                                                                                                              
			html += "	</div>"; 
			html += "	</form>";
			html += "	<div class=\"block_form\">";                                                                                                               
			html += "		<div class=\"butten_area\">";                                                                                                           
			html += "			<input type=\"button\" value=\"작성\" class=\"popAreaBtn\" id=\"reportBtn\">";                                                            
			html += "			<input type=\"button\" value=\"닫기\" class=\"popAreaBtn\" id=\"closeBtn\">";                                                             
			html += "		</div>";                                                                                                                              
			html += "	</div>";                                                                                                                                  
			html += "</div>";                                                                                                                                     
			                                                                                                                                                    
			$("body").prepend(html);
			
// 작성 버튼 클릭
			$("#reportBtn").on("click", function(){
				
				if($.trim($("#reviewTitleArea").val()) == ""){
					alert("제목을 입력해 주세요.");
					$("#reviewTitleArea").focus();
				} else if($.trim($("#reviewTextArea").val()) == ""){
					alert("내용을 입력해 주세요.");
					$("#reviewTextArea").focus();
				}else {
					var params = $("#addForm").serialize();
					
					$.ajax({
						url: "reviewAdds", // 접속주소 (현재 저상태는 상대 경로이다)
						type: "post", // 전송방식: get,post
						dataType: "json", // 받아올 데이터 형식
						data: params, //보낼 데이터(문자열 형태)
						success: function(res){ // 성공 시 다음 함수 실행	
							if(res.msg == "success"){
								closePopup();
								/* reloadList(); */
								location.reload();
							} else if(res.msg == "failed"){
								alert("작성에 실패하였습니다.");
							} else {
								alert("작성중 문제가 발생하였습니다.");
							}
						},
						error: function(request, status, error){ // 실패 시 다음 함수 실행
							console.log(error);
						}
					}); // ajax end
			}
		}); // reportBtn click end
		
// 리뷰작성페이지 닫기 버튼 클릭		
		$("#closeBtn").on("click", function(){                                                                                                              
			closePopup();
		}); // closeBtn click end 
		
// 팝업창 닫기 함수
		function closePopup() {
			$(".pop_bg").fadeOut(function(){
				$(".pop_bg").remove();
			});
			
			$(".review_popup").fadeOut(function(){
				$(".review_popup").remove();
			});
		}
	}
// 리뷰작성 팝업 그리기 끝
/* ====================================================================================== */	

</script>
</head>
<body>
<!-- 로그인 팝업 영역 -->
<div id="loginpopup">
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
<div class="body">
	<form action = "#" id = "compared" method = "post">	
		<input id = "compared1" type = "hidden" name = "comparedd1" value = "">
	</form>
<!-- 헤더영역 -->
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
			<div id="menuName">카드 혜택 안내</div>
			<!-- 상위 내용 영역 -->
			<div id="topArea">
				<div id="nameSct">
					<div id="cardName">${data[0].CARD_NAME}</div>
					<div id="cardCmp">${data[0].CARD_CMP_NAME}</div>
				</div>
				<div class="bef_area">
					<!-- 카드 이미지 영역 -->
					<div id="mainImg">
						<img alt="혜택카드" src="${data[0].CARD_IMG_URL}" class="big_img"/>
					</div>
					<!-- 혜택  영역 -->
					<div id="cardBnf">
						<!-- 카드 혜택 -->
						<c:forEach var = "i" begin="0" end="2">
						<div class="bnf_sct">
							<img alt="카페" src="${data[i].BENEFIT_IMG_URL}" width="70px" height="70px"/>
							<div class="bnf_dsc">
								<div class="bnf_top">${data[i].BENEFIT_TOP}</div>
								<div class="bnf_mid">${data[i].BENEFIT_MID}</div>
							</div>
						</div>
						</c:forEach>	
					</div>
				</div>
				<form action="#" id="goForm" method="post">
				<input type="hidden" name="cardClick" value="${data[0].CARD_NO}" />
				<input type="hidden" name="cardNo" value="${data[0].CARD_NO}" />
				<div id="btnSct">
					<input type="button" value="카드 신청" class="bef_btn" id="bef_btn" onclick='window.open("${data[0].CARD_APPLY_URL}")' />
					<input type="button" value="비교함 담기" class="compare_btn" id="${data[0].CARD_NO}" />
						<div id = "bi">
						<input type = "button" value = "비교함 확인" id = "bi1"/>
						<input type = "button" value = "1" id= "bi2"/>						
						</div>
				</div>
				</form>
			</div>
<!-- 하위 내용 영역 -->
			<div id="bnfTxt">주요 혜택</div>
			<div id="botArea">
				<c:set var="size" value="${fn:length(data)}" />
				<c:forEach var = "j" begin="0" end="${size - 1}">
				<div class="bot_box">
					<div class="bnf_icon">
						<img alt="혜택아이콘" src="${data[j].BENEFIT_IMG_URL}" class="icon_img"/> 
					</div>
					<div class="box_txt"> 
						<h2 class="name_card">${data[j].BENEFIT_TOP}</h2>
						<h4 class="cmp_card">${data[j].BENEFIT_MID}</h4>
					</div>
					<div class="open_view">
						
						<img alt="펼쳐보기" src="resources/images/ranking/icon/arrow_down_gray.png" class="arrow_down"/>
						<img alt="올려보기" src="resources/images/ranking/icon/arrow_up_gray.png" class="arrow_up"/>	
											
					</div>
				</div>
					<div class = "group1-1"	>
					<h3 id = "h1">${data[j].BENEFIT_MID}</h3>
					${data[j].DETAIL_INFO}
					</div>
				</c:forEach>
			</div><!--bot_Area 종료-->
						
<!-- 리뷰 영역 -->
		<div id="review_name">카드 리뷰
		<span id="reviewExplanation">※해당카드를 보유한 회원분들만 작성 가능합니다.</span>
		</div>
		<div class="review_area">
			<div class="review_top">
				<!-- 사용자 평점 영역 -->
				<div class="star_area">
					<h2>사용자 총 평점&nbsp;&nbsp;${getStar}/5 </h2>
					<div class="star-rating">
						<span style ="width:${starCnt}%"></span>
					</div>
				</div>
<!-- 전체 리뷰 수 영역 -->
				<div class="review_total">
					<h2>카드 리뷰수</h2>
					<div class="review_img"></div>
					<div class="review_cnt"> 건</div>
				</div>
<!-- 전체 조회수 영역 -->
				<div class="click_total">
					<h2>카드 신청수</h2>
					<div class="click_img"></div>
					<div class="click_cnt">${data[0].CLICK_CNT}건</div>
				</div>
			</div>
<!-- 리뷰 작성 영역 -->
			<hr style="border: 2px dashed black"/>
			<div class="review_write_area">
				<div class="write_area">
					<form action="#" id="actionForm" method="post">
						<!-- 기본값들이 들어오게될거다 : hidden -->
						<input type="hidden" id="page" name="page" value="${page}" ><!-- 검색시 반드시 필요 -->
						<input type="hidden" id="memberNoCheck" name="memberNo" value="${sMNo}" >
						<input type="hidden" name="cardNo" value="${data[0].CARD_NO}"/>
					</form>
					<c:choose>
					<c:when test="${!empty sMNm}">
						<div class="login_btn_area">
							<input type="button" value="리뷰 작성하기" id="reviewLoginBtn" />
						</div>
					</c:when>
				</c:choose>
				</div>
				<!-- 리뷰 목록 영역 -->
				<div class="review_list_wrap"></div>
				<!-- 페이지 영역 -->
				<div class="paging_area"></div>											
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