<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신용카드 TOP10-카드캡틴</title>
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

	/* 팝업 영역  */

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
							display: flex;
							flex-direction: column;
							align-content: center;
							width: 100%;
							height: inherit;
							text-align: center;
						}
							.bnf_dsc1{
								width: 100%;
								height: 50px;
								color: white;
								font-size: 20px;
								line-height: 50px;
								font-family: GmarketSansMedium;
							}
							.bnf_dsc2{
								display: block;
								width: 100%;
								height: 100px;
								color: white;
								font-size: 30px;
								font-family: GmarketSansMedium;
								margin: 30px 0;
							}
							.bnf_dsc3{
								width: 100%;
								height: 50px;
								color: white;
								font-size: 20px;
								line-height: 50px;
								font-family: GmarketSansMedium;
							}
							.bnf_img{
								position: relative;
								top: 6px;
							}
					/* 버튼 박스 영역*/	
					#btnBox{
						width: 100%;
						height: 100px;
						text-align: center;
					}
						.dt_btn{
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
							.dt_btn:hover{
								color: black;
							    background-color: #F5DF4D;
							    cursor: pointer;
							}
						.compare_btn{
							width: 150px;
							height: 50px;
							color: white;
							border-style: none;
						    background-color: #808080;
						    border-radius: 5px;
						    font-size: 18px;
						    font-family: 'GmarketSansMedium';
							margin: 25px 5px;
						}
							.compare_btn:hover{
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
	
/*비교함 담기  */	
$(document).ready(function(){
		 var cardNo = [];   
	/* 사이드 비교함 버튼 조건  */
    $(".view_box").on("click", function() {
		var temp = "";
		if(cardNo.length > 2) {
			alert("비교함이 가득 찼습니다.");
		} else {
			/* alert($(this).prop('id')); */
			var a = $(this).prop('id').split("_");
			/* alert(a); */
			cardNo.push(a[1]);
			console.log(cardNo);
			$("#bi2").val(cardNo.length);
		for(var i=0; i<cardNo.length; i++){
			for(var j=0; j<i; j++){
				if(cardNo[i] == cardNo[j]) {
						alert("동일한 카드가 있습니다.");
						cardNo.pop();//pop() = 배열의 마지막 요소 제거
						$("#bi2").val(cardNo.length);
						return false;
					} 
				}
			}
		}	
	});
	
    /* 비교함 데이터 compareSearch로값 보내기 */
	$("#bi1").on("click",function(){
		$("#compared1").val(cardNo[0]);
		$("#compared2").val(cardNo[1]);
		$("#compared3").val(cardNo[2]);
				
		$("#compared").attr("action","compareSearch");	
	});    
			
      /* 메인 비교함 버튼 조건 */
    $(".compare_btn").on("click", function() {
    	var temp = "";
		if(cardNo.length > 2) {
			alert("비교함이 가득 찼습니다.");
		} else {	
			cardNo.push($(this).prop('id'));
			console.log(cardNo);		
			$("#bi2").val(cardNo.length);
			for(var i=0; i<cardNo.length; i++){
				for(var j=0; j<i; j++){
					if(cardNo[i] == cardNo[j]) {
						alert("동일한 카드가 있습니다.");
						cardNo.pop();//pop() = 배열의 마지막 요소 제거
						$("#bi2").val(cardNo.length);
						return false;
			 		}
				}	
			}
		}
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
	   });	
	/* 사이드 비교함 팝업 */	
	$(document).ready(function(){
		$("#bi").hide();
		$(".view_box").on("click" , function(){
			$("#bi").hide();
			$("#bi").fadeIn();
		});
		$("#bi").on("click",function(){
			makePopup();
		});
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
	$(document).ready(function(){
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
			location.href = "/cdcp";
		}); // headerLogo click end
		
		/* TOP1 상세보기 이동 */
		$(".dt_btn").on("click", function(){
			location.href = "cardview";
			$("#goForm").submit();
		}); // dtBtn click end
		
		/* TOP2 ~ 10 상세보기 이동 */
		$(".view_dt").on("click", function(){
			var vdt = $(this).prop('id').split("_");
			location.href = "cardview";
			$("#gogoForm_" + vdt[1]).submit();
		}); // view_dt click end
		
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
	<!-- 비교함 담기 폼  -->	
	<form action = "#" id = "compared" method = "post">
		<input id = "compared1" type = "hidden" name = "comparedd1" value = "">
		<input id = "compared2" type = "hidden" name = "comparedd2" value = "">
		<input Id = "compared3" type = "hidden" name = "comparedd3" value = "">
	</form>	
<!-- 내용 영역 -->	
	<div id="content">
		<!-- 1위 카드 이름 영역 -->
		<div id="contentMenu">
			<div id="menuName">신용카드 TOP10</div>
			<div id="contentTop">
				<div id="nameSct">
					<div id="cardName">${list[0].CARD_NAME}</div>
					<div id="cardCmp">${list[0].CARD_CMP_NAME}</div>
				</div>
				<!-- 1위 카드 내용 영역 -->
				<div id="midArea">
					<div id="leftSct">TOP 1</div>
					<div id="centerSct">
						<div id="imgSct">
							<img src="${list[0].CARD_IMG_URL}" width="350px" height= "200px">
						</div>
					</div>
					<div id="rightSct">
						<div id="bnfArea">
							<div class="bnf_dsc1">[ TOP 1 카드의 수상 소감 한마디 ]</div>
							<div class="bnf_dsc2">${list[0].CARD_SUMMARY}</div>
							<div class="bnf_dsc3">
								<img class="bnf_img" src="resources/images/ranking/icon/love_icon_1.png" width="30px" height="30px">
								${list[0].CLICK_CNT}명이 신청한 카드!!
							</div>
						</div>
					</div>
				</div>
				<form action="cardview" id="goForm" method="post">
					<input type="hidden" name="cardNo" value="${list[0].CARD_NO}" />
				</form>
				<div id="btnBox">
					<input type="button" value="상세보기" class="dt_btn" id="dtBtn" />
					<input type="button" value="비교함 담기" class="compare_btn" id="${list[0].CARD_NO}" />
				<div id = "bi">
						<input type = "button" value = "비교함 확인" id = "bi1"/>
						<input type = "button" value = "1" id= "bi2"/>
						</div>
				</div>
			</div>
			<div id="contentBot">
			<c:forEach var ="i" begin="1" end ="9">
				<form action="cardview" id="gogoForm_${list[i].CARD_NO}">
					<input type="hidden" name="cardNo" value="${list[i].CARD_NO}" />
				</form>
				<div class="rank_box">	<!-- 2등 -->
					<div class="rank_num">${list[i].RNK}</div>
					<div class="box_card">
						<img alt="카드" src="${list[i].CARD_IMG_URL}" class="card_img"/> 
					</div>
					<div class="box_txt">
						<h2 class="name_card">${list[i].CARD_NAME}</h2>
						<h5 class="cmp_card">${list[i].CARD_CMP_NAME}</h5>
					</div>
					<div class="dsc_view">
						<div class="view_box" id="viewBox_${list[i].CARD_NO}"><i class='fa fa-plus'></i>&nbsp;&nbsp;비교함 담기</div>
						<div class="view_dt" id="viewDt_${list[i].CARD_NO}"><i class='fa fa-angle-double-right'></i>&nbsp;&nbsp;상세보기</div>
					</div>
				</div>
				</c:forEach>	
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