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
			}
			a:active{
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
				padding-top: 150px;
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
			    top: -4%;
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
			    top: -4%;
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
			    top: -4%;
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
				    margin: 40px auto 40px auto;
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
		
		$(".nav_btn").on("click", function(){
			if($(this).prop('id') == "1" ){
				alert($(this).prop('id'));
				var params = $("#goForm").serialize();
				
				$.ajax({
					url: "cardcompanys", // 접속주소 (현재 저상태는 상대 경로이다)
					type: "post", // 전송방식: get,post
					dataType: "json", // 받아올 데이터 형식
					data: params, //보낼 데이터(문자열 형태)
					success: function(res){ // 성공 시 다음 함수 실행	
						if(res.msg == "success"){
							// 데이터를 새로 가져와야 하니깐 history back지우고 form.submit 처리
							$("#goForm").attr("action");
							$("#gogoForm").submit();
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
			}
		}); // nav_btn click end
		
	}); // document ready end
</script>
</head>
<body>
	<form action="#" id="goForm" method="post">
		<input type="hidden" name="top1" value="1" />
		<input type="hidden" name="top2" value="2" />
		<input type="hidden" name="top3" value="3" />
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
				<a href="#card_1" class="nav_btn" id="1">국민 카드</a>
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
	</div>
<!-- 내용 영역 -->	
	<div id="content">
		<!-- 카드 TOP3 영역 -->
		<div class=contentBg>
			<!-- card_0 영역 시작 -->
			<form action="#" id="gogoForm" method="post">
				<input type="hidden" name="cmpTop1" value="${top1[0].CARD_NO}" />
			<div class="card_1" id="card_0">
				<!-- 카드 이름 영역 -->
				<div class="card_title">
					<div class="title">
						<div class="card_name_block"># ${top1[0].CARD_CMP_NAME} 인기 TOP3</div>
						<div class="selection_criteria">
						2021.01.01 ~ 2021.06.30 카드캡틴 신청클릭 기준입니다.
						</div>
					</div>
				</div>
				<div class="card_contents_area">
					<!-- 카드 TOP1 영역 -->
					<div class="card_box">
						<div class="img_top1"></div>
						<div class="card_title_text" id="card_title_text_2">
						${top1[0].CARD_NAME}
						</div>
						<div class="card_contents" id="card_contents_1">
						${top1[0].CARD_SUMMARY}
						</div>
						<div class="tag_set">
							<div class="tag_age" id="tag_age_1">
							${top1[0].BENEFIT_TOP}
							</div>
							<div class="tag_event" id="tag_event_1">
							${top1[1].BENEFIT_TOP}
							</div>
						</div>
						<div class="card_box_img">
							<img alt="카드" 
							src="${top1[0].CARD_IMG_URL}"
							width="250px" height="150px">
						</div>
						<div class="card_btn_area">
							<input type="button" value="카드 상세보기  >" class="card_box_btn" id="cardBoxBtn1" />
						</div>
					</div>
					<!-- 카드 TOP2 영역 -->
					<div class="card_box">
						<div class="img_top2"></div>
						<div class="card_title_text" id="card_title_text_2">
						청춘대로 톡톡 WITH 카드
						</div>
						<div class="card_contents" id="card_contents_2">
						Simple하게 즐기자! 혜택 톡톡!
						</div>
						<div class="tag_set">
							<div class="tag_age" id="tag_age_2">
							20대 추천
							</div>
							<div class="tag_event" id="tag_event_2">
							연회비 캐시백 이벤트
							</div>
						</div>
						<div class="card_box_img">
							<img alt="카드" 
							src="resources/images/ranking/card/credit/kb/kb_toktokwith.png"
							width="250px" height="150px">
						</div>
						<div class="card_btn_area">
							<input type="button" value="카드 상세보기  >" class="card_box_btn" id="cardBoxBtn2" />
						</div>
					</div>
					<!-- 카드 TOP3 영역 -->
					<div class="card_box">
						<div class="img_top3"></div>
						<div class="card_title_text" id="card_title_text_3">
						다담카드
						</div>
						<div class="card_contents" id="card_contents_3">
						KB국민 훈민정음 두번째 이야기
						<br/>
						모두의 이야기를 담은 카드
						</div>
						<div class="tag_set">
							<div class="tag_ment" id="tag_ment_3">
							할인 집중
							</div>
							<div class="tag_event" id="tag_event_3">
							연회비 캐시백 이벤트
							</div>
						</div>
						<div class="card_box_img">
							<img alt="카드" 
							src="resources/images/ranking/card/credit/kb/kb_dadam_card.png"
							width="250px" height="150px">
						</div>
						<div class="card_btn_area">
							<input type="button" value="카드 상세보기  >" class="card_box_btn" id="cardBoxBtn3" />
						</div>
					</div>
				</div>
			</div>
			</form>
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