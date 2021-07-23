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
		text-align: right;
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
		margin-top: 15px;
		margin-right: 20px;
	}
	#imgLogin {
	 	display: inline-block;
	    background-image: url("/cdcp/resources/images/main/login1.png");
	    background-repeat: no-repeat;
	    background-size: 30px;
	    width: 30px;
	    height: 25px;
	    cursor: pointer;
	    text-align: center;
		margin-top: 15px;
	}
	#searchTxt {
	    border-style: solid;
	    border-width: 0 0 1px 0;
	    border-color: #0047AB;
	    outline: 0;
	    caret-color: red;
	    color: #0047AB;
	    box-sizing: border-box;
	    font-size: 13px;
	    letter-spacing: 3px;
	    display: none;
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
	#logNick {
		hight: 12px;
		width: auto;
		display: inline-block;
	}
	#logoutBtn {
		width: 70px;
		heigth: 40px;
		margin-left: 20px;
		/* display: none; */
	}
	/* header_right 종료 */
	/* 헤더 종료 */
	
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
		font-size: 11px;
	    margin: 10px 0 10px 130px;
	}
	.new {
		display: inline-block;
		vertical-align: top;
		font-size: 11px;
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
				/* 리뷰 영역 */	
				#review_name{
					height: 50px;
					margin: 10px auto;
					font-family: Cafe24Ohsquare;
					font-size: 30px;
					line-height: 60px;
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
					/* 리뷰 작성 영역 */
					.review_write_area{
						width: 100%;
						height: 500px; 
					}
					.login_btn_area{
						margin-top: 20px;
						margin-left: 50px;
						font-family: GmarketSansMedium;
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
						#likeImg{
							position: relative;
							top: 25px;
						}
						#likeCnt{
							display: inline-block;
							position: relative;
							top: 10px;
							font-weight: bold;
							font-size: 20px;
							font-family: GmarketSansMedium;
						}
						
					/* 페이지 작성 영역 */
					.paging_area{
						text-align: center;
					}
					#pagingWrap{
						margin-top: 20px;
					}
					#pagingWrap span{
						display: inline-block;
						padding: 5px;
						margin-left: 3px;
						margin-right: 3px;
						background-color: #DFDFDF;
						border: 1px solid #444;
						border-radius: 3px;
						cursor: pointer;
						width: 60px;
						text-align: center;
					}
					#pagingWrap span:active {
					background-color: #AAAAAA;
					}
					#pagingWrap .on {
					background-color: #AAAAAA;
					}

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
    $("#compareBtn").on("click", function() {
    	var temp = "";
		if(cardNo.length > 2) {
			alert("비교함이 가득 찼습니다.");
		} else {
			cardNo.push($(this).prop('id'));
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
		$("#compareBtn").on("click",function(){
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
			location.href = "/cdcp";
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
			location.href = "/cdcp";
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
							location.href = "/cdcp";
							$("#nickName").css("display","inline");
							$("#imgSearch").css("margin-left","70%");
							$("#imgLogin").css("display","none");
							$("#logoutBtn").css("display","inline");
						} else {
							$(".errorMsg").css("display","inline");
							$("#masage").html("아이디 또는 비밀번호가 일치하지 않습니다.")
						}
					},
					error: function (request, status, error) {
						console.log(error);
					}
				}); //ajax end
			}
		}); //로그인 end
		
		/* 로그아웃  */
		$("#logoutBtn").on("click", function () {
			location.href = "testALogout";
		}); //로그아웃 end
		
		/* 마이페이지이동 */
		$("#logNick").on("click", function(){
			alert($("#sMNm").val());
			$("#memNo").attr("action");
			$("#memNo").submit();
		});
		
		$("#bef_btn").on("click", function(){
			$("#goForm").submit();
		});
		
		$(".review_content").on("click", function(){
			
		});
		
		/* 리뷰 목록  */
		function reloadList(){
			var params = $("#goCardNo").serialize();
			$("#goCardNo").submit();
			
			$.ajax({
				url: "cardviews", // 접속주소 (현재 저상태는 상대 경로이다)
				type: "post", // 전송방식: get,post
				dataType: "json", // 받아올 데이터 형식
				data: params, //보낼 데이터(문자열 형태)
				success: function(res){ // 성공 시 다음 함수 실행	
					drawList(res.review);
					alert(res);
					drawPaging(res.pb);	
				},
				error: function(request, status, error){ // 실패 시 다음 함수 실행
					console.log(error);
				}
			});
		}
		
		// 목록 그리기
		function drawList(review){
			var html = "";
			
			for(var i = 0; i < review.length - 1; i++){
			html += "<div class=\"list_area\">";
			html += "<div class=\"review_no\">" + ${review[i].REVIEW_NO} + "</div>";
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
			html += "<div>작성자 : " + ${review[i].NICKNAME} + "</div>";
			html += "<div>등록일 : " + ${review[i].ADD_DATE} + "</div>";
			html += "</div>";
			html += "</div>";
			html += "<div class=\"review_content\">";
			html += "<div class=\"content_title\">" + ${review[i].TITLE} + "</div>";
			html += "<div class=\"content_con\">" + ${review[i].TEXT} + "</div>";
			html += "</div>";
			html += "<div class=\"review_like\">";
			html += "<img id=\"likeImg\" alt=\"좋아요 \" src=\"resources/images/ranking/icon/like_icon_bule.png\" width=\"50px\" height=\"50px\">";
			html += "<div id=\"likeCnt\">20</div>";
			html += "</div>";
			html += "</div>";
			
			$(".list_area").html(html);
		}
		
		// 페이징 그리기
		function drawPaging(pb){
			var html = "";
			
			html += "<div page=\"1\">처음</div>";
			if($("#page").val() == "1"){
				html += "<div page=\"1\">이전</div>";
			} else {
				html += "<div page=\"" + ($("#page").val() - 1) + "\">이전</div>";
			}
			
			for(var i = pb.startPcount; i <= pb.endPcount; i++){
				if($("#page").val() == i){
					html += "<div class=\"on\" page=\"" + i + "\">" + i + "</div>";	// 숫자일경우니깐 반복문 사용할것이다.
				} else {
					html += "<div page=\"" + i + "\">" + i + "</div>";	// 숫자일경우니깐 반복문 사용할것이다.
				}
			}
			
			if($("#page").val() == pb.maxPcount){
				html += "<div page=\"" + pb.maxPcount + "\">다음</div>";
			} else{
				// 곱하기 안하면 11로 나오기 때문에 숫자로 변환시키는 작업 필요. 마이너스는 자동 형변환이 적용.
				html += "<div page=\"" + ($("#page").val() * 1 + 1) + "\">다음</div>"; 
			}
			
			html += "<div page=\"" + pb.maxPcount + "\">마지막</div>";
			
			$(".paging_wrap").html(html);
		}
	}); // document ready end
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
			<form action="cardviews" id="goCardNo" method="post">
				<input type="hidden" name="memNo" value="${data[0].CARD_NO}" id="sMNo"/>
			</form>
			<div id="headerRight">
				<input type="text" id="searchTxt">
				<div id="imgSearch"></div>
				<c:choose>
					<c:when test="${empty sMNm}">
						<div id="imgLogin"></div>
					</c:when>
					<c:otherwise>
						<div id="logNick">${sMNm}</div><input type="button" value="로그아웃" id="logoutBtn" />
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
				<div id="btnSct">
					<input type="button" value="카드 신청" class="bef_btn" id="bef_btn" onclick='window.open("${data[0].CARD_APPLY_URL}")' />
					<input type="button" value="비교함 담기" class="compare_btn" id="compareBtn" />
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
		<div id="review_name">카드 리뷰</div>
		<div class="review_area">
			<div class="review_top">
				<!-- 사용자 평점 영역 -->
				<div class="star_area">
					<h2>사용자 총 평점</h2>
					<div class="star-rating">
						<span style ="width:30%"></span>
					</div>
				</div>
		<!-- 전체 리뷰 수 영역 -->
				<div class="review_total">
					<h2>카드 리뷰수</h2>
					<div class="review_img"></div>
					<div class="review_cnt">${cnt} 건</div>
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
						<input type="hidden" id="sg" name="searchGbn" value="${param.searchGbn}" /><!-- 검색시 반드시 필요 -->
						<input type="hidden" id="st" name="searchTxt" value="${param.searchTxt}" /><!-- 검색시 반드시 필요 -->
						<input type="hidden" id="page" name="page" value="${page}" ><!-- 검색시 반드시 필요 -->
						<!-- 글작성, 편집영역 -->
						<c:choose>
							<c:when test="${empty sMNo}">
							<div class="login_btn_area">
								<span>로그인이 필요한 영역입니다.</span>
								<input type="button" value="로그인하러 가기" id="reviewLoginBtn" />
							</div>
							</c:when>
							<c:otherwise>
								<input type="hidden" name="mNo" value="${sMNo}" />
								<input type="button" value="리뷰작성" id="writeBtn" />
							</c:otherwise>
						</c:choose>
					</form>
				</div>
				<!-- 리뷰 목록 영역 -->
				<div class="list_area">
					<!-- <div class="review_no">2</div>
					<div class="review_info">
						<div class="review_star">★★★★☆</div>
						<div class="review_writer">
							<div>작성자 : 장원혁</div>
							<div>등록일 : 2021-07-22</div>
						</div>
					</div>
					<div class="review_content">
						<div class="content_title">혜택이 많아서 너무 싫다!</div>
						<div class="content_con">혜택을 사용할수 있는 매장들이 없고, 너무 싫다.</div>
					</div>
					<div class="review_like">
						<img id="likeImg" alt="좋아요 " src="resources/images/ranking/icon/like_icon_bule.png" width="50px" height="50px">
						<div id="likeCnt">20</div>
						</div>
				</div>
				<div class="list_area">
					<div class="review_no">1</div>
					<div class="review_info">
						<div class="review_star">★☆☆☆☆</div>
						<div class="review_writer">
							<div>작성자 : 김도헌</div>
							<div>등록일 : 2021-07-21</div>
						</div>
					</div>
					<div class="review_content">
						<div class="content_title">혜택이 많아서 좋다!</div>
						<div class="content_con">혜택을 사용할수 있는 매장들이 많고, 너무너무너무너무너무너무 너무너무너무너무너무너무 너무너무너무너무너무너무 너무너무너무너무너무너무 너무너무너무너무너무너무 싫다.</div>
					</div>
					<div class="review_like">
						<img id="likeImg" alt="좋아요 " src="resources/images/ranking/icon/like_icon_bule.png" width="50px" height="50px">
						<div id="likeCnt">5</div>
						</div> -->
				</div>
				<!-- 페이지 영역 -->
				<div class="paging_area">
					<!-- 검색 -->
					<select id="searchGbn">
						<option value="0">닉네임</option>
						<option value="1">내용</option>
					</select>
					<input type="text" id="searchTxt" value="${param.searchTxt}" />
					<input type="button" value="검색" id="searchBtn" /><br/>
					<!-- 페이징 -->
					<div id="pagingWrap">
						<span name="1">처음</span>
						<!-- 이전페이지 -->
						<c:choose>
							<c:when test="${page eq 1}">
							<span name="1">이전</span>
							</c:when>
							<c:otherwise>
							<span name="${page - 1}">이전</span>
							</c:otherwise>
						</c:choose>
						<!-- 페이지들 -->
						<c:forEach var ="i" begin="${pb.startPcount}" end="${pb.endPcount}" step="1">
							<c:choose>
								<c:when test="${i eq page}">
									<span name="${i}"><b>${i}</b></span>
								</c:when>
								<c:otherwise>
									<span name="${i}">${i}</span>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<!-- 다음페이지 -->
						<c:choose>
							<c:when test="${page eq pb.maxPcount}">
								<span name="${pb.maxPcount}">다음</span>
							</c:when>
							<c:otherwise>
								<span name="${page + 1}">다음</span>
							</c:otherwise>
						</c:choose>
						<!-- 마지막페이지 -->
						<span name="${pb.maxPcount}">마지막</span>
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