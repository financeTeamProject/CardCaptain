<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카드캡틴계정</title>
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
	background-color: #F5F6F7;
	margin: 0;
}
.back_main {
	height: 1100px;
	width: 600px;
	display: block;
	margin: 0 auto;
}
.back_top {
   width: 100%;
   height: 130px;
   text-align: center;
   line-height: 130px;
   font-size: 30px;
   color: #0047AB;
   font-family: 'Cafe24Ohsquare';
   text-shadow: 2px 3px 4px gray;
   letter-spacing: 8px;
}
.back_middle {
	font-family: 'GmarketSansMedium';
	width: 100%;
	height: 95%;
	background-color: white;
	border: 1px solid #0047ab24;
	letter-spacing: 3px;
}
.middle1 {
	width: 80%;
	height: 80%;
	margin: 0 auto;
}
.middle_top {
	width: 100%;
	height: 50px;
	line-height: 50px;
	font-size: 13px;
	text-align: center;
	margin-top: 30px;
}
.searchId {
	width: 100%;
	height: 70x;
	line-height: 70px;
	font-size: 18px;
	font-weight: bold;
	color: #0047ab;
}
.title {
	width: 100%;
	height: 50px;
	line-height: 50px;
	font-size: 16px;
}
.title1{
	width: 100%;
	height: 50px;
	line-height: 50px;
	font-size: 16px;
}
.text {
	width: 100%;
    height: 55px;
	line-height: 55px;
    border-style: solid;
    border-width: 0 0 1px 0;
    border-color: #0047AB;
    padding: 11px 70px 8px 0;
    outline: 0;
    border-radius: 0;
    box-sizing: border-box;
    caret-color: red;
    text-decoration: none;
	color: #0047AB;
	font-size: 14px;
	letter-spacing: 3px;
}
#mBirth {
	width: 200px;
	height: 45px;
	border-style: solid;
	border-width: 0 0 1px 0;
	border-color: #0047AB;
	padding: 11px 70px 8px 0;
	outline: 0;
	caret-color: red;
	color: #0047AB;
	box-sizing: border-box;
	font-size: 13px;
	letter-spacing: 4px;
}
#mPhone {
	width: 300px;
    height: 45px;
    border-style: solid;
    border-width: 0 0 1px 0;
    border-color: #0047AB;
    outline: 0;
    caret-color: red;
    color: #0047AB;
    box-sizing: border-box;
    font-size: 13px;
    letter-spacing: 4px;
}
#mGender {
	width: 13px;
	height: 40px;
	border-style: solid;
	border-width: 0 0 1px 0;
	border-color: #0047AB;
    outline: 0;
	caret-color: red;
	color: #0047AB;
	box-sizing: border-box;
	font-size: 13px;
}
/* #select_num {
	width: 80px;
	height: 45px;
	border-style: solid;
	border-width: 0 0 1px 0;
	border-color: #0047AB;
	padding: 11px 70px 8px 0;
    outline: 0;
	caret-color: #f7e317;
	color: #0047AB;
} */
.EmailTxt {
	width: 150px;
	height: 45px;
	border-style: solid;
	border-width: 0 0 1px 0;
	border-color: #0047AB;
	outline: 0;
	caret-color: red;
	color: #0047AB;
	box-sizing: border-box;
	font-size: 13px;
	letter-spacing: 3px;
}
#id_select_email,#pw_select_email {
	width: 160px;
	height: 45px;
	border-style: solid;
	border-width: 0 0 1px 0;
	border-color: #0047AB;
    outline: 0;
	caret-color: #f7e317;
	color: #0047AB;
	letter-spacing: 3px;
    font-size: inherit;
}
#id_check, #pw_check {
	display: none;
}
.checkingEmailNum {
	width: 156px;
    height: 45px;
    border-style: solid;
    border-width: 0 0 1px 0;
    border-color: #0047AB;
    outline: 0;
    caret-color: red;
    color: #0047AB;
    margin-left: 186px;
}
.checkingBtn {
	width: 100px;
    height: 35px;
    line-height: 35px;
    color: white;
    border-style: none;
    background-color: #0047AB;
    font-size: 13px;
    font-family: 'GmarketSansMedium';
    margin-left: 15px;
    cursor: pointer;
    float: right;
}
.checkingEmailBtn {
	width: 100px;
    height: 35px;
    line-height: 35px;
    color: white;
    border-style: none;
    background-color: #0047AB;
    font-size: 13px;
    font-family: 'GmarketSansMedium';
    margin-left: 15px;
    cursor: pointer;
    float: right;
    display: none;
}
.checkingCodeBtn {
    width: 100px;
    height: 35px;
    color: white;
    border-style: none;
    background-color: #0047AB;
    font-size: 13px;
    font-family: 'GmarketSansMedium';
    float: right;
    margin-top: 10px;
}
}
.guide {
	color: red;
	font-size: 12px;
    float: right;
}
#email_check {
	display: none;
}
.errorMsg {
	width: auto;
	height: 100%;
	display:none;
	vertical-align:top;
    color: #e65f3e;
    font-size: 13px;
    float: right;
}
#select_tel {
    width: 170px;
    height: 43px;
    border-style: solid;
    border-width: 0 0 1px 0;
    border-color: #0047AB;
    outline: 0;
    caret-color: red;
    color: #0047AB;
    letter-spacing: 3px;
}
#btn_next {
    display: block;
    width: 100%;
    height: 50px;
    padding: 0;
    border: 0;
    border-radius: 4px;
    font-size: 15px;
    color: white;
    background-color: #0047ab;
    cursor: pointer;
}
#txt {
	height: 45px;
	line-height: 45px;
	letter-spacing: 5px;
	color: #0047AB;
}
#footer {
	min-width: 600px;	
    width: 100%;
  	height: 100px;
	border-radius: 5px;
}
#footerMenu {
    height: inherit;
    margin: 0 auto;
    color: #0047AB;
    text-align: center;
    font-family: GmarketSansMedium;
    font-size: 12px;
	}
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
var code = "";
var email = "";
var birth = "";
var Phone = "";
var id = "";
var no = "";

$(document).ready(function() {
	var regex_kor = (/[^가-힣]$/);
	var regex_spe = (/[~!@#$%^&*()_+|<>?:{}]/);
	var regex_num = (/[^0-9]/g);
	var regex_eng = (/^[a-zA-Z]*$/);
	$("#btn_next").on("click", function(){
		location.href = "/cdcp";
	});
	
    //숫자만 입력
    $("#mPhone").keyup(function() {
       if (regex_num.test($(this).val())) {
     	  $("#mPhone").val("");
          alert("잘못된 휴대폰 번호입니다. 숫자, - 를 제외한 숫자만 입력하세요.");
       }
    });
   
	//숫자만 입력
	$("#mBirth").keyup(function() {
		if (regex_num.test($(this).val())) {
			$("#mBirth").val("");
			alert("숫자만 입력 가능합니다.");
		}
	});
	
	/* 연락처 */
	$("#mPhone").blur(function(){
		var memPhone = $.trim($("#mPhone").val());
		
	   	if (memPhone == "") {
	 	  	$("#mPhone").focus();
	       	$(".errorMsg").css("display","inline");
	       	$("#errorMsgTel").html("전화번호를 입력해 주세요.");
	   	} else if (memPhone.length < 11) {
	 	  	$("#mPhone").focus();
	       	$(".errorMsg").css("display","inline");
	       	$("#errorMsgTel").html("-를 제외한 전화번호 11자리를 입력해주세요.");
	   	} else {
	 		$("#errorMsgTel").html("");
		}
	});

	/* 생년월일 */
	$("#mBirth").blur(function(){
		var memRRN = $.trim($("#mBirth").val());
		
		if (memRRN == "") {
	 	  	$("#mBirth").focus();
	       	$(".errorMsg").css("display","inline");
	       	$("#errorMsgBirth").html("생년월일을 입력해주세요.");
	   	} else if (memRRN.length < 8) {
 	  		$("#mBirth").focus();
	      	$(".errorMsg").css("display","inline");
	       	$("#errorMsgBirth").html("생년월일 8자리를 입력해주세요.");
	   	} else {
	 		$("#errorMsgBirth").html("");
		}
	});
	
	/* 주민번호 뒷자리 = 성별 */
	$("#mGender").blur(function(){
		var memGender = $.trim($("#mGender").val());

	    if (memGender == "") {
	 	  	$("#mGender").focus();
	       	$(".errorMsg").css("display","inline");
	       	$("#errorMsgBirth").html("뒷자리의 첫번째 자리만 입력해 주세요.");
	   	} else {
	 		$("#errorMsgBirth").html("");
		}
	});
	
	/* 아이디 */
	$("#mId").blur(function(){
		var memId = $.trim($("#mId").val());
		var regex_kor = (/[^가-힣]$/);
		var regex_spe = (/[~!@#$%^&*()_+|<>?:;{}]/);

		if(memId == "") {
			$("#mId").focus();
			$(".errorMsg").css("display","inline");
			$("#errorMsgId").html("아이디를 입력해주세요.");
		} else if (!regex_kor.test(memId)) {
	 		$("#mId").focus();
			$("#mId").val("");
			$(".errorMsg").css("display","inline");
			$("#errorMsgId").html("한글은 사용하실 수 없습니다.");
		} else if (regex_spe.test(memId)) {
			$("#mId").focus();
			$("#mId").val("");
			$(".errorMsg").css("display","inline");
			$("#errorMsgId").html("특수문자는 사용하실 수 없습니다.");
		} else {
	 		$("#errorMsgId").html("");
		}
	});
	
	/* 이메일 */
	$("#idEmail").blur(function(){
		var memEmail = $.trim($("#idEmail").val());

		if (memEmail == "") {
   			$("#idEmail").focus();
			$(".errorMsg").css("display","inline");
			$("#errorMsgEmail").html("이메일을 입력해주세요.");
		} else {
			$("#errorMsgEmail").html("");
		}
	});
	
	$("#pwEmail").blur(function(){
		var memEmail = $.trim($("#pwEmail").val());

		if (memEmail == "") {
   			$("#pwEmail").focus();
			$(".errorMsg").css("display","inline");
			$("#errorMsgEmail2").html("이메일을 입력해주세요.");
		} else {
			$("#errorMsgEmail2").html("");
		}
	});
	
	/* 아이디찾기 - 아이디 전송 */
 	$("#idCheck").on("click", function () {
		var memPhone = $.trim($("#mPhone").val());
		var memRRN = $.trim($("#mBirth").val());
		var memEmail = $.trim($("#idEmail").val());
		var memEmailOpt = $("#id_select_email option:selected").val();
		var memGender = $.trim($("#mGender").val());
		
 		if(memPhone == "") {
			$("#mPhone").focus();
		} else if(memRRN == "") {
			$("#mBirth").focus();
		} else if(memGender == "") {
			$("#mGender").focus();
		} else if(memEmail == "") {
			$("#idEmail").focus();
		} else {
			$("#id_Phone").val($("#mPhone").val());
			$("#id_Birth").val($("#mBirth").val());
			$("#id_Email").val($("#idEmail").val());
			$("#id_Address").val($("#id_select_email option:selected").val());
			
 			var params = $("#mData").serialize();

 			$.ajax({
 				url: "mDatas",
 				type: "post",
 				dataType: "json",
 				data: params,
 				success: function (res) {
 					id = res.mId
 					
 					if(res.resMsg == "success") {
 						$(".errorMsg").css("display","inline");
 						$("#errorMsgEmail").html("회원님의 아이디는  \"" + id + "\"  입니다.");
 					} else if(res.resMsg == "failed") {
 						alert("입력하신 회원님의 정보가 일치하지 않습니다.");
 					}
				},
				error: function (request, status, error) {
 					console.log(error);
 				}
 			});
		}
	});
});

$(document).ready(function() {
	// 비밀번호 찾기
	$("#pwCheck").on("click", function () {
		var memId = $.trim($("#mId").val());
		var memEmail = $.trim($("#pwEmail").val());
		var memEmailOpt = $("#pw_select_email option:selected").val();
		
		if(memId == "") {
			$("#mId").focus();
		} else if(memEmail == "") {
			$("#pwEmail").focus();
		} else {
			$("#pw_Id").val($("#mId").val());
			$("#pw_Email").val($("#pwEmail").val());
			$("#pw_Address").val($("#pw_select_email option:selected").val());
			$("#findType").val("pw");
			$("#checkEmail").val($("#pwEmail").val() + 
										$("#pw_select_email option:selected").val());

			var params = $("#mData2").serialize();
			
			$.ajax({
 				url: "mData2s",
 				type: "post",
 				dataType: "json",
 				data: params,
 				success: function (res) {
 					if(res.resMsg == "success") {
 						pw = res.mPw
 						code = res.temp;
 						
						alert(code);
						$("#pw_check").css("display", "inline");
						
						$("#pw_codeBtn").on("click", function () {
							if($("#pw_codeTxt").val() == "") {
								alert("코드를 입력해 주세요.");
							} else if ($("#pw_codeTxt").val() != code) {
								alert("인증코드가 일치하지 않습니다.");
							} else if ($("#pw_codeTxt").val() == code) {
								$("#errorMsgEmail2").html("회원님의 비밀번호는  \"" + pw + "\"  입니다.");	
								alert("인증코드가 일치합니다.");
							}
					});
					
 						
 					} else if(res.resMsg == "failed") {
 						alert("입력하신 회원님의 정보가 일치하지 않습니다.");
 						$("#pw_codeTxt").html("*이메일 전송이 실패했습니다. 다시한 번 확인해 주세요.");					
 					}
				},
				error: function (request, status, error) {
 					console.log(error);
				}
			});
		}
	});
	
/* 	 // 이메일인증 
	$(".checkingEmailBtn").on("click",function() {
		// $(".checkingEmailBtn").css("display","none");
		var ival = $(this).prop("id").split("_");
		$("#findType").val(ival[0]); // id / pw 둘 중 하나
		$("#checkEmail").val($("." + ival[0] + "Email").val() + $("." + ival[0] + "_select_email option:selected").val()); 
									 //wnrjswjd@naver.com

		var params = $("#checkEmailForm").serialize();
		
		$.ajax({
			url: "CheckingEmails",
			type: "post",
			dataType: "json",
			data: params,
			success: function(res) {
				console.log(res);
				if (res.result == "success") {
					$("#" + ival[0] + "_check").css("display","inline");
					$(".errorMsg").css("display","none");
					code = res.temp;
					
					$("#" + ival[0] + "_codeBtn").on("click", function () {
						if($("#" + ival[0] + "_codeTxt").val() == "") {
							alert("코드를 입력해 주세요.");
						} else if ($("#" + ival[0] + "_codeTxt").val() != code) {
							alert("인증코드가 일치하지 않습니다.");
						} else if ($("#" + ival[0] + "_codeTxt").val() == code) {
							alert("인증코드가 일치합니다.");
						}
					});
					
					//alert(res.temp);
					$("#" + ival[0] + "_codeTxt").html("*이메일 인증코드를 적어주세요.");					
				} else if (res = "failed") {
					$("#" + ival[0] + "_codeTxt").html("*이메일 전송이 실패했습니다. 다시한 번 확인해 주세요.");					
				}
			},
			error: function(request, status, error) {
					console.log(error);
					$("#" + ival[0] + "_codeTxt").html("*이메일 전송이 실패했습니다. 관리자에게 문의해 주세요");
			}
		});
	});
*/
	
});
</script>
</head>
<body>
<form action="#" id="mData" method="post">
	<input type="hidden" name="id_Phone" id="id_Phone" value=""/>
	<input type="hidden" name="id_Birth" id="id_Birth" value=""/>
	<input type="hidden" name="id_Email" id="id_Email" value=""/>
	<input type="hidden" name="id_Address" id="id_Address" value=""/>
</form>
<form action="#" id="mData2" method="post">
	<input type="hidden" name="pw_Id" id="pw_Id" value=""/>
	<input type="hidden" name="pw_Email" id="pw_Email" value=""/>
	<input type="hidden" name="pw_Address" id="pw_Address" value=""/>
	<input type="hidden" name="findType" id="findType" value="pw" />
	<input type="hidden" name="checkEmail" id="checkEmail" value="" /><!-- 이메일 주소 -->
</form>
<div class="back_main">
	<div class="back_top">CARD CAPTAIN</div>
	<div class="back_middle">
		<div class="middle1">
		<div class="middle_top">ID/PW를 찾아주세요.</div>
		<div class="searchId">■&nbsp;&nbsp;아이디 찾기&nbsp;&nbsp;□</div>
		<div class="title">전화번호
			<div class="errorMsg" id="errorMsgTel"></div>
		</div>
      	<select name="telnum" id="select_tel"> 
			<option value="+82   대한민국">+82&nbsp;&nbsp;대한민국</option>
         	<option value="+82   대한민국"></option>
      	</select>
		<input type="text" id="mPhone" maxlength="11" placeholder="-제외 한 11자리를 입력해주세요."/>
		<div class="title">생년월일
			<div class="errorMsg" id="errorMsgBirth"></div>
		</div>
		<div class="title">
         	<input type="text" id="mBirth" placeholder="예) 19940507" maxlength="8"/>&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;
			<input type="text" id="mGender" maxlength="1"/>
			<span id="txt">*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*</span>
		</div>
		<div class="title">이메일
			<div class="errorMsg" id="errorMsgEmail"></div>
		</div>
		<div class="title">
			<input type="text" id="idEmail" class="EmailTxt" placeholder="이메일" />&nbsp;@
			<select name="+82" id="id_select_email" class="id_select_email">
				<option value="@naver.com">naver.com</option>
				<option value="@gmail.com">gmail.com</option>
			</select>
			<input type="button" id="idCheck" class="checkingBtn" value="확인" />
		</div>
		<br/>
		<br/>
		<br/>
		<div class="searchId">□&nbsp;&nbsp;비밀번호 찾기&nbsp;&nbsp;■</div>
		<div class="title">아이디
			<div class="errorMsg" id="errorMsgId"></div>
		</div>
		<input type="text" class="text" placeholder="아이디 입력" id="mId" />
		<div class="title1">이메일
			<div class="errorMsg" id="errorMsgEmail2"></div>
		</div>
		<div class="title">
			<input type="text" id="pwEmail" class="EmailTxt" placeholder="이메일" />&nbsp;@
			<select name="+82" id="pw_select_email" class="pw_select_email"> 
				<option value="@naver.com">naver.com</option>
				<option value="@gmail.com">gmail.com</option>
			</select>
			<input type="button" id="pwCheck" class="checkingBtn" value="확인" />
			<input type="button" id="pw_FindBtn" class="checkingEmailBtn" value="인증하기" />
			<div id="pw_check">
				<input type="text" id="pw_codeTxt" class="checkingEmailNum" placeholder="인증코드" />
				<input type="button" id="pw_codeBtn" class="checkingCodeBtn" value="코드확인" />
				<div class="guide" id="emailTxt"></div>
			</div>
		</div>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<input type="button" value="로그인하러가기" id="btn_next"></div>
	</div>
	<br/>
	<br/>
	<div id="footer">
		<div id="footerMenu">
			<div>서울시 금천구 가산디지털2로 115,509호,811호,1109-1호(가산동,대륭테크노타운3차) 금융조 조장 : 주건정</div>
			<div>Copyright © 2021-2031 CardCaptain All Rights Reserved.</div>
		</div>
	</div>
</div>
</html>