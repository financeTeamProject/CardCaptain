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
   height: 90%;
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
   height: 150px;
   line-height: 150px;
   font-size: 22px;
}
.title {
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
    padding: 11px 0 8px 0;
    outline: 0;
    border-radius: 0;
    box-sizing: border-box;
    caret-color: red;
    text-decoration: none;
    color: #0047AB;
    font-size: 14px;
    letter-spacing: 2px;
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
    width: 15px;
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
#mEmail {
   width: 150px;
   height: 45px;
   border-style: solid;
   border-width: 0 0 1px 0;
   border-color: #0047AB;
   padding: 10px 0px 8px 0;
   outline: 0;
   caret-color: red;
   color: #0047AB;
   box-sizing: border-box;
   font-size: 13px;
   letter-spacing: 4px;
}
#select_email {
    width: 150px;
    height: 45px;
    border-style: solid;
	border-width: 0 0 1px 0;
    border-color: #0047AB;
    padding: 11px 5px 8px 5px;
    outline: 0;
    caret-color: red;
    color: #0047AB;
    letter-spacing: 3px;
    font-size: 14px;
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
#checkingEmail{
	width: 100px;
    height: 35px;
    color: white;
    border-style: none;
    background-color: #0047AB;
    font-size: 13px;
    font-family: 'GmarketSansMedium';
    margin-left: 15px;
    cursor: pointer;
}
#email_check {
	display: none;
}
.guide {
	color: red;
	font-size: 12px;
    float: right;
}
.checkingEmailNum {
    width: 148px;
    height: 45px;
    border-style: solid;
    border-width: 0 0 1px 0;
    border-color: #0047AB;
    outline: 0;
    caret-color: red;
    color: #0047AB;
    margin-left: 203px;
}
.checkingCodeBtn {
    width: 100px;
    height: 35px;
    color: white;
    border-style: none;
    background-color: #0047AB;
    font-size: 13px;
    font-family: 'GmarketSansMedium';
    margin-left: 14px;
}
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	var regex_kor = (/[^가-힣]$/);
	var regex_spe = (/[~!@#$%^&*()_+|<>?:{}]/);
	var regex_num = (/[^0-9]/g);
	var regex_eng = (/^[a-zA-Z]*$/);
	var memId = $.trim($("#mId").val());
	var memPw = $.trim($("#mPw").val());
	var memRePw = $.trim($("#mRpw").val());
	var memNick = $.trim($("#mNick").val());
	var memPhoneOpt = $("select_tel option:selected").val();
	var memPhone = $.trim($("#mPhone").val());
	var memRRN = $.trim($("#mBirth").val());
	var memGender = $.trim($("#mGender").val());
	var memEmail = $.trim($("#mEmail").val());
	var memEmailOpt = $("#select_email option:selected").val();
	var chk_num = memPw.search(/[0-9]/g);
	var chk_eng = memPw.search(/[a-z]/ig);
	var chk_spe = memPw.search(/[~!@#$%^&*()_+|<>?:{}]/ig);
   
    //숫자만 입력
    $("#mPhone").keyup(function() {
       if (regex_num.test($(this).val())) {
     	  $("#mPhone").val('');
          alert("잘못된 휴대폰 번호입니다. 숫자, - 를 제외한 숫자만 입력하세요.");
       }
    });
   
	//숫자만 입력
	$("#mBirth").keyup(function() {
		if (regex_num.test($(this).val())) {
			$("#mBirth").val('');
			alert("숫자만 입력 가능합니다.");
		}
	});
	/* 아이디 */
	$('#mId').blur(function(){
		var memId = $.trim($("#mId").val());
		var regex_kor = (/[^가-힣]$/);
		var regex_spe = (/[~!@#$%^&*()_+|<>?:{}]/);

		if(memId == "") {
			$("#mId").focus();
			$(".errorMsg").css("display","inline");
			$("#errorMsgId").html("아이디를 입력해주세요.");
		} else if (memId.length < 6 || memId.length > 16) {
			$("#mId").focus();
			$(".errorMsg").css("display","inline");
			$("#errorMsgId").html("아이디는 6~16자리로 만들어 주세요.");
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
	 		$("#errorMsgId").html('');
		}
	});
	/* 비밀번호 */
	$('#mPw').blur(function(){
		var memPw = $.trim($("#mPw").val());
		var chk_num = memPw.search(/[0-9]/g);
		var chk_eng = memPw.search(/[a-z]/ig);
		var chk_spe = memPw.search(/[~!@#$%^&*()_+|<>?:{}]/ig);
		
		if(memPw == "") {
 			$("#mPw").focus();
	       	$(".errorMsg").css("display","inline");
	       	$("#errorMsgPw").html("비밀번호를 입력해주세요.");
	   	} else if (memPw.length < 10 || memPw.length > 25) {
	 	  	$("#mPw").focus();
	       	$(".errorMsg").css("display","inline");
	       	$("#errorMsgPw").html("10~24자리로 만들어 주세요.");
	   	} else if(chk_num < 0 || chk_eng < 0 || chk_spe <  0) {
	 	  	$("#mPw").focus();
	       	$(".errorMsg").css("display","inline");
			$("#errorMsgPw").html("영문,숫자,특수문자 조합으로 만들어 주세요.");
	   	} else {
	 		$("#errorMsgPw").html("");
		}
	});
	/* 비밀번호 확인 */
	$('#mRpw').blur(function(){
		var memPw = $.trim($("#mPw").val());
		var memRePw = $.trim($("#mRpw").val());
		
		if(memRePw == "") {
 			$("#mRpw").focus();
	       	$(".errorMsg").css("display","inline");
	       	$("#errorMsgPw").html("비밀번호를 재입력해주세요.");
	   	} else if (memPw != memRePw) {
	 	  	$("#mRpw").focus();
	       	$("#mRpw").val('');
	       	$(".errorMsg").css("display","inline");
	       	$("#errorMsgPw").html("비밀번호가 일치하지 않습니다.");
		} else {
	 		$("#errorMsgPw").html('');
			$('#memo').focus();
		}
	});
	/* 닉네임 */
	$('#mNick').blur(function(){
		var memNick = $.trim($("#mNick").val());
		var regex_spe = (/[~!@#$%^&*()_+|<>?:{}]/);

	   	if (memNick == "") {
	      	$("#mNick").focus();
	      	$(".errorMsg").css("display","inline");
	      	$("#errorMsgNick").html("닉네임을 입력해 주세요.");
	   	} else if (memNick.length < 3 || memNick.length > 10) {
	 	  	$("#mNick").focus();
	       	$(".errorMsg").css("display","inline");
	       	$("#errorMsgNick").html("3~10자리로 만들어 주세요.");
	   	} else if (regex_spe.test(memNick)) {
	 	  	$("#mNick").focus();
	 	  	$("#mNick").val("");
	       	$(".errorMsg").css("display","inline");
	       	$("#errorMsgNick").html("특수문자는 사용할 수 없습니다.");
	   	} else {
			$("#errorMsgNick").html("");
		}
	});
	/* 연락처 */
	$('#mPhone').blur(function(){
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
	$('#mBirth').blur(function(){
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
	 		$("")
		}
	});
	
	$('#mGender').blur(function(){
		var memGender = $.trim($("#mGender").val());

	    if (memGender == "") {
	 	  	$("#mGender").focus();
	       	$(".errorMsg").css("display","inline");
	       	$("#errorMsgBirth").html("뒷자리의 첫번째 자리만 입력해 주세요.");
	   	} else {
	 		$("#errorMsgBirth").html("");
		}
	});
	/* 이메일 */
	$('#mEmail').blur(function(){
		var memEmail = $.trim($("#mEmail").val());
		
		if (memEmail == "") {
   			$("#mEmail").focus();
			$(".errorMsg").css("display","inline");
			$("#errorMsgEmail").html("이메일을 입력해주세요.");
		} else {
			$("#errorMsgEmail").html("");
		}
	});

	
   //회원가입 필터링   
	$("#checkingEmail").on("click",function() {
			$("#checkEmail").val($(".mEmail").val() + "@" + $(".select_email option:selected").val());
			$("#email_check").css("display","inline");
			$(".errorMsg").css("display","none");

			var params = $("#checkEmailForm").serialize();
			
			$.ajax({
				url: "checkingEmail",
				type: "post",
				dataType: "json",
				data: params,
				success: function(res) {
					if (res = "success") {
						$("#emailTxt").html("*이메일 인증코드를 적어주세요");					
					} else if (res = "failed") {
						$("#emailTxt").html("*이메일 전송이 실패했습니다. 다시한 번 확인해 주세요.");					
					}
				},
				error: function(request, status, error) {
						console.log(error);
						$("#emailTxt").html("*이메일 전송이 실패했습니다. 관리자에게 문의해 주세요");
				}
			});
		});

		var params = $("#addForm").serialize();
		
 		$.ajax({
			url: "joins",
			type: "post",
			dataType: "json",
			data: params,
			success: function (res) {
				if(res.msg == "success") {
					location.href = "joincard";
				} else if (res.msg == "failed") {
					alert("회원가입에 실패하였습니다.");
				} else {
					alert("회원가입 중 문제가 발생하였습니다.");
				}
			},
			error: function (request, status, error) {
				console.log(error);
			}
		});
});
</script>
</head>
<body>
<form action="#" id="checkEmailForm">
	<input type="hidden" name="checkEmail" id="checkEmail" value="" /><!-- 이메일 주소 -->
	<input type="hidden" name="findType" id="findType" value="" /><!--  -->
</form>
<div class="back_main">
   <div class="back_top">CARD CAPTAIN</div>
   <div class="back_middle">
		<div class="middle1">
		<div class="middle_top">회원가입 정보를 입력해주세요.</div>
		<form action="#" id="addForm" method="post">
			<div class="title">아이디
				<div class="errorMsg" id="errorMsgId"></div>
	      	</div>
	      	<input type="text" class="text" placeholder="한글,특수문자 제외 6~16자리를 입력해주세요." id="mId" name="mId"/>
	     	<div class="title">비밀번호
	      		<div class="errorMsg" id="errorMsgPw"></div>
	      	</div>
	      	<strong><input type="password" class="text" placeholder="~!@#$%^&*()_+|<>?:{}]/ 포함 영문,숫자 조합 10~24자리" id="mPw" name="mPw"/></strong>
	      	<input type="password" class="text" placeholder="비밀번호 확인" id="mRpw" name="mRpw"/>
	     	<div class="title">닉네임
	      		<div class="errorMsg" id="errorMsgNick"></div>
	      	</div>
	      	<input type="text" class="text" placeholder="특수문자 제외 3~10자리를 입력해주세요." id="mNick" name="mNick"/>
	     	<div class="title">전화번호
	      		<div class="errorMsg" id="errorMsgTel"></div>
	      	</div>
	      	<select name="telnum" id="select_tel"> 
				<option value="+82   대한민국">+82&nbsp;&nbsp;대한민국</option>
	         	<option value="+82   대한민국"></option>
	      	</select>
	      	<input type="text" placeholder="-제외 한 11자리를 입력해주세요." maxlength="11" id="mPhone" name="mPhone"/>
	    	<div class="title">생년월일
	      		<div class="errorMsg" id="errorMsgBirth"></div>
	      	</div>
	      	<div class="title">
	         	<input type="text" id="mBirth" placeholder="예)19940507" maxlength="8" name="mBirth"/>&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;
	         	<input type="text" id="mGender" maxlength="1" name="mGender"/>
	         	<span id="txt">*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*</span>
	      	</div>
			<div class="title">이메일
	      		<div class="errorMsg" id="errorMsgEmail"></div>
	      	</div>
	      	<div class="title">
	         	<input type="text" placeholder="이메일" class="" id="mEmail" name="mEmail"/>&nbsp;&nbsp;@&nbsp;
	         	<select name="address" id="select_email" class="select_email"> 
	            	<option value="naver.com">naver.com</option>
	            	<option value="google.com">google.com</option>
	         	</select>
	         	<input type="button" id="checkingEmail" value="인증하기" />
				<div id="email_check">
					<input type="text" id="" class="checkingEmailNum" placeholder="인증코드" />
					<input type="button" id="" class="checkingCodeBtn" value="코드확인" />
				<div class="guide" id="emailTxt"></div>
			</div>
	      	</div>
      	</form>
      	<br/>
      	<br/>
      	<br/>
      	<br/>
      	<input type="button" value="다음" id="btn_next"></div>
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