<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	#midHeader{
		width: 100%;
	    height: 70px;
	    background-color: white;
	    position: sticky;
	    top: 0;
	    z-index: 100;
	    min-width: 1830px;
	}
	
	/* 헤더 종료 */
	
/*	내용 영역	*/	
	#content{
		width: 100%;
		height: 100%;
		min-width: 1830px;
		margin: 0 auto;
	}
		#contentMenu{
			display: flex;
			justify-content: center;
			width: 1600px;
			height: 100%;
			margin: 0 auto;
		}
			/* 소주제 영역 */
			#menuName{
				width: 200px;
				height: 50px;
				margin: 10px;
				margin-left: 10px;
				font-family: Cafe24Ohsquare;
				font-size: 30px;
				line-height: 60px;			
			}
			.nav_menubar{
				display: flex;
				width: 1400px;
				height: inherit;
			}
			/* 네비 버튼 통합 - 크기 조절 */
			.nav_btn{
				display: flex;
				align-items: center;
				width: 90px;
				text-decoration: none;
				margin: 0 30px;
				font-family: 'GmarketSansMedium';
				font-size: 20px;
				color: rgba(51, 51, 51, 0.6);
				cursor: pointer;
			}
			.nav_btn:hover{
				color: #0047AB;
			}
			/* 카드사별 top3 배경 */
			.contentBg{ 
				width: 100%;
				background-color: #333a44;
				margin-bottom: 10px;
				padding: 0 0 50px 0;
			}
			/* TOP3  영역*/
			.card_0{
				display: block;
				width: 100%;
				height: auto;
				padding-top: 50px;
			}
				.card_title{
				    width: 1600px;
				    height: 130px;
				    margin: 0px auto;
				}
				.title{
					width: 100%;
					height: inherit;
					vertical-align: middle;
				}
				/* 카드 이름 */
					.card_name_block{
					    font-family: 'GmarketSansMedium';
					    color: white;
					    font-size: 35px;
					    font-weight: bold;
					    text-align: center;
					    padding-top: 30px;
					}
					.selection_criteria{
					    font-family: 'GmarketSansMedium';
					    color: white;
					    font-size: 14px;
						margin-top: 10px;
						text-align: center;
					}
			/* 카드 TOP3 영역*/
			.card_contents_area{
				position: relative;
			    z-index: 0;
			    width: auto;
			    margin: 50px auto 20px;
			    display: flex;
			    justify-content: center;
			}	
				/* 카드 박스 영역*/
				.card_box{
					position: relative;
				    display: flex;
				    width: 375px;
				    text-align: center;
				    margin-right: 20px;
				    margin-left: 20px;
				    padding: 24px 25px 40px;
				    flex-direction: column;
				    justify-content: flex-start;
				    border-radius: 12px;
				    background-color: white;
				    box-shadow: 0 0 22px 4px rgb(26 37 48 / 6%), 0 1px 3px 0 rgb(20 33 41 / 6%);
				}
				/* 카드 TOP1,2,3 이미지*/
				.img_top1{
				position: absolute;
			    left: 0%;
			    top: -3.5%;
			    right: 0%;
			    bottom: auto;
			    width: 40px;
			    height: 40px;
			    margin-right: auto;
			    margin-left: auto;
			    background-image: url("resources/images/ranking/icon/rank1.svg");
			    background-position: 50% 50%;
			    background-size: auto;
				}
				.img_top2{
				position: absolute;
			    left: 0%;
			    top: -3.5%;
			    right: 0%;
			    bottom: auto;
			    width: 40px;
			    height: 40px;
			    margin-right: auto;
			    margin-left: auto;
			    background-image: url("resources/images/ranking/icon/rank2.svg");
			    background-position: 50% 50%;
			    background-size: auto;
				}
				.img_top3{
				position: absolute;
			    left: 0%;
			    top: -3.5%;
			    right: 0%;
			    bottom: auto;
			    width: 40px;
			    height: 40px;
			    margin-right: auto;
			    margin-left: auto;
			    background-image: url("resources/images/ranking/icon/rank3.svg");
			    background-position: 50% 50%;
			    background-size: auto;
				}
				/* 카드 이름 */
				.card_title_text{
					display: block;
					height: 75px;
					margin-top: 20px;
				    margin-bottom: 0px;
				    font-family: 'GmarketSansMedium';
				    font-size: 24px;
				    font-weight: bold;
				}
				/* 카드 설명 */
				.card_contents{
					display: block;
				    height: 20px;
				    margin: 16px auto;
				    color: #666c77;
				    font-size: 14px;
				    line-height: 20px;
				}
				/* 카드 태그 */
				.tag_set{
					display: flex;
					justify-content: center;
   					width: 100%;
   					margin-top: 20px;
				}
				.tag_age{
					display: flex;
					align-items: center;
				    height: 30px;
				    margin: 0 5px;
				    padding: 10px 12px;
				    border-radius: 8px;
				    background-color: #f4f5f9;
    				color: #868686;
				    font-family: 'GmarketSansMedium';
				}
				.tag_ment{
				 	display: flex;
					align-items: center;
				    height: 30px;
				    margin: 0 5px;
				    padding: 10px 12px;
				    border-radius: 8px;
				    background-color: #f4f5f9;
    				color: #868686;
				    font-family: 'GmarketSansMedium';
				}
				.tag_event{
				 	display: flex;
					align-items: center;
				    height: 30px;
				    margin: 0 5px;
				    padding: 10px 12px;
				    border-radius: 8px;
				    background-color: #e6ffff;
				    color: #0047ab;
				    font-family: 'GmarketSansMedium';
				}
				   
				/* 카드 이미지  */
				.card_box_img{
					display: block;
				    height: 150px;
				    margin: 40px auto 60px auto;
				}
				/* 카드 상세보기 버튼  */
				.card_btn_area{
					width: 100%;
					height: 50px;
				}
					.card_box_btn{
						width: 200px;
						height: 50px;
						background: #0047AB;
						color: white;
						border-style: none;
						border-radius: 5px;
						font-size: 20px;
						font-family: 'GmarketSansMedium';
					}
					.card_box_btn:hover{
						color: black;
					    background-color: #F5DF4D;
					    cursor: pointer;
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
		
		// top1 버튼 클릭시 상세보기 페이지 이동
		$(document).on("click", "#cardBoxBtn1", function(){
			$("#goForm1").attr("action", "cardview");
			$("#goForm1").submit();
		});
		// top2 버튼 클릭시 상세보기 페이지 이동
		$(document).on("click", "#cardBoxBtn2", function(){
			$("#goForm2").attr("action", "cardview");
			$("#goForm2").submit();
		});
		// top3 버튼 클릭시 상세보기 페이지 이동
		$(document).on("click", "#cardBoxBtn3", function(){
			$("#goForm3").attr("action", "cardview");
			$("#goForm3").submit();
		});
		
		$("#cardBoxBtn1").on("click", function(){
			$("#goForm1").submit();
		});
		$(".nav_btn").on("click", function(){
				//$("#cmpNo").val() : goform에 있는 value 변경.
				$("#cmpNo").val($(this).prop('id'));
				var params = $("#goForm").serialize();
				
				$.ajax({
					url: "cardcompany_top3s", // 접속주소 (현재 저상태는 상대 경로이다)
					type: "post", // 전송방식: get,post
					dataType: "json", // 받아올 데이터 형식
					data: params, //보낼 데이터(문자열 형태)
					success: function(res){ // 성공 시 다음 함수 실행	
						if(res.msg == "success"){
							// 카드사별 top1
							$(".card_name_block").html("#" + res.top1[0].CARD_CMP_NAME + " 인기 TOP3");
							$("#cardTitleText1").html(res.top1[0].CARD_NAME);
							$("#cardContents1").html(res.top1[0].CARD_SUMMARY);
							$("#benefitTop1_1").html(res.top1[0].BENEFIT_TOP);
							$("#benefitTop1_2").html(res.top1[1].BENEFIT_TOP);
							$("#benefitTop1_3").html(res.top1[2].BENEFIT_TOP);
							// div 태그 값이 아닌 img 태그 안에 src 속성의 값을 변경하기 때문에 html -> attr로 변경.
							$("#cardCmpImg1").attr("src", res.top1[0].CARD_IMG_URL);
							// 각 버튼마다 카드 넘버 따서 컨트롤러로 보내기위해 value값 설정!!!
							$("#cardNo1").val(res.top1[0].CARD_NO);
							
							
							// 카드사별 top2
							$("#cardTitleText2").html(res.top2[0].CARD_NAME);
							$("#cardContents2").html(res.top2[0].CARD_SUMMARY);
							$("#benefitTop2_1").html(res.top2[0].BENEFIT_TOP);
							$("#benefitTop2_2").html(res.top2[1].BENEFIT_TOP);
							$("#benefitTop2_3").html(res.top2[2].BENEFIT_TOP);
							$("#cardCmpImg2").attr("src", res.top2[0].CARD_IMG_URL);
							$("#cardNo2").val(res.top2[0].CARD_NO);
							
							// 카드사별 top3
							$("#cardTitleText3").html(res.top3[0].CARD_NAME);
							$("#cardContents3").html(res.top3[0].CARD_SUMMARY);
							$("#benefitTop3_1").html(res.top3[0].BENEFIT_TOP);
							$("#benefitTop3_2").html(res.top3[1].BENEFIT_TOP);
							$("#benefitTop3_3").html(res.top3[2].BENEFIT_TOP);
							$("#cardCmpImg3").attr("src", res.top3[0].CARD_IMG_URL);
							$("#cardNo3").val(res.top3[0].CARD_NO);
							
							
						} else if(res.msg == "failed"){
							alert("불러오기에 실패하였습니다.");
						} else {
							alert("불러오기중 문제가 발생하였습니다.");
						}
					},
					error: function(request, status, error){ // 실패 시 다음 함수 실행
						console.log(error);
					}
				});
		}); // nav_btn click end
		
	}); // document ready end
</script>
</head>
<body>
	<form action="#" id="goForm" method="post">
		<input type="hidden" name="cmpNo" id="cmpNo" value="1" />
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
			<div id="headerRight">
				<div id="imgSearch"></div>
				<div id="imgLogin"></div>
			</div>
		</div>
	</div>
	<!-- 카드사 선택 목록 -->
	<div id="midHeader">
		<div id="contentMenu">
			<div id="menuName">카드사별 TOP3</div>
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
		</div>
	</div>
<!-- 내용 영역 -->	
	<div id="content">
		<!-- 카드 TOP3 영역 -->
		<div class=contentBg>
			<!-- card_0 영역 시작 -->
			<div class="card_0" id="card_0">
				<!-- 카드 이름 영역 -->
				<div class="card_title">
					<div class="title">
						<div class="card_name_block">#${top1[0].CARD_CMP_NAME} 인기 TOP3</div>
						<div class="selection_criteria">
						2021.01.01 ~ 2021.06.30 카드신청 클릭 기준입니다.
						</div>
					</div>
				</div>
				<div class="card_contents_area">
					<!-- 카드 TOP1 영역 -->
					<div class="card_box">
						<div class="img_top1"></div>
						<div class="card_title_text" id="cardTitleText1">
						${top1[0].CARD_NAME}
						</div>
						<div class="card_contents" id="cardContents1">
						${top1[0].CARD_SUMMARY}
						</div>
						<div class="tag_set">
							<div class="tag_age" id="benefitTop1_1">
							${top1[0].BENEFIT_TOP}
							</div>
							<div class="tag_event" id="benefitTop1_2">
							${top1[1].BENEFIT_TOP}
							</div>
							<div class="tag_age" id="benefitTop1_3">
							${top1[2].BENEFIT_TOP}
							</div>
						</div>
						<div class="card_box_img">
							<img alt="카드" id="cardCmpImg1"
							src="${top1[0].CARD_IMG_URL}"
							width="250px" height="150px">
						</div>
						<form action="cardview" id="goForm1" method="post">
						<input type="hidden" name="cardNo" value="${top1[0].CARD_NO}" id="cardNo1">
						<div class="card_btn_area">
							<input type="button" value="카드 상세보기  >" class="card_box_btn" id="cardBoxBtn1" />
						</div>
						</form>
					</div>
					<!-- 카드 TOP2 영역 -->
					<div class="card_box">
						<div class="img_top2"></div>
						<div class="card_title_text" id="cardTitleText2">
						${top2[0].CARD_NAME}
						</div>
						<div class="card_contents" id="cardContents2">
						${top2[0].CARD_NAME}
						</div>
						<div class="tag_set">
							<div class="tag_age" id="benefitTop2_1">
							${top2[0].BENEFIT_TOP}
							</div>
							<div class="tag_event" id="benefitTop2_2">
							${top2[1].BENEFIT_TOP}
							</div>
							<div class="tag_age" id="benefitTop2_3">
							${top2[2].BENEFIT_TOP}
							</div>
						</div>
						<div class="card_box_img">
							<img alt="카드" id="cardCmpImg2"
							src="${top2[0].CARD_IMG_URL}"
							width="250px" height="150px">
						</div>
						<form action="cardview" id="goForm2" method="post">
						<input type="hidden" name="cardNo" value="${top2[0].CARD_NO}" id="cardNo2">
						<div class="card_btn_area">
							<input type="button" value="카드 상세보기  >" class="card_box_btn" id="cardBoxBtn2" />
						</div>
						</form>
					</div>
					<!-- 카드 TOP3 영역 -->
					<div class="card_box">
						<div class="img_top3"></div>
						<div class="card_title_text" id="cardTitleText3">
						${top3[0].CARD_NAME}
						</div>
						<div class="card_contents" id="cardContents3">
						${top3[0].CARD_NAME}
						</div>
						<div class="tag_set">
							<div class="tag_age" id="benefitTop3_1">
							${top3[0].BENEFIT_TOP}
							</div>
							<div class="tag_event" id="benefitTop3_2">
							${top3[1].BENEFIT_TOP}
							</div>
							<div class="tag_age" id="benefitTop3_3">
							${top3[2].BENEFIT_TOP}
							</div>
						</div>
						<div class="card_box_img">
							<img alt="카드" id="cardCmpImg3"
							src="${top3[0].CARD_IMG_URL}"
							width="250px" height="150px">
						</div>
						<form action="cardview" id="goForm3" method="post">
						<input type="hidden" name="cardNo" value="${top3[0].CARD_NO}" id="cardNo3">
						<div class="card_btn_area">
							<input type="button" value="카드 상세보기  >" class="card_box_btn" id="cardBoxBtn3" />
						</div>
						</form>
					</div>
				</div>
			</div>
			<!-- card_1 영역 끝 -->
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