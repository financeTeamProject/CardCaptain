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
#errorMsgId div {
	width: auto;
	height: 100%;
	display: none;
	vertical-align: top;
    color: #e65f3e;
    font-size: 13px;
    float: right;
}
/* .errorMsg {
	width: auto;
	height: 100%;
	display: none;
	vertical-align: top;
    color: #e65f3e;
    font-size: 13px;
    float: right;
} */
#mem_Birth {
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
#phone_num {
	width: 300px;
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
#mem_Birth2 {
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
#email {
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
	width: 85px;
	height: 50px;
	margin-left: 25px;
	background-color: white;
	color: #0047AB;
	cursor: pointer;
	border-radius: 15px;
}
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
   var regex_kor = (/[^가-힣]$/);
   var regex_spe = (/[~!@#$%^&*()_+|<>?:{}]/);
   var regex_num = (/[^0-9]/g);
   var regex_eng = (/^[a-zA-Z]*$/);
   
   
    //숫자만 입력
    $("#phone_num").keyup(function() {
       if (regex_num.test($(this).val())) {
     	  $("#phone_num").val('');
          alert("잘못된 휴대폰 번호입니다. 숫자, - 를 제외한 숫자만 입력하세요.");
       }
    });
   
	//숫자만 입력
	$("#mem_Birth").keypress(function() {
		if (regex_num.test($(this).val())) {
			$("#mem_Birth").val('');
			alert("숫자만 입력 가능합니다.");
		}
	});
   
   //회원가입 필터링   
   	$("input").on("keypress", function() {
		var ival = $(this).prop("id").split("_");
		$("#errorMsg" + ival[1]).css("display","none");
    });
	$("#btn_next").on("click",function() {
      var memId = $.trim($("#mem_Id").val());
      var memPw = $.trim($("#mem_Pw").val());
      var memRePw = $.trim($("#mem_RePassword").val());
      var memNick = $.trim($("#mem_Nickname").val());
      var memPhoneOpt = $("select_tel option:selected").val();
      var memPhone = $.trim($("#phone_num").val());
      var memRRN = $.trim($("#mem_Birth").val());
      var memGender = $.trim($("#mem_Birth2").val());
      var memEmail = $.trim($("#email").val());
      var memEmailOpt = $("#select_email option:selected").val();
      var chk_num = memPw.search(/[0-9]/g);
      var chk_eng = memPw.search(/[a-z]/ig);
       
      if(memId == "") {
		  alert("아이디를 입력해주세요.")
          $("#errorMsgId").children(".c1").css("display","inline");
		  	alert($("#errorMsgId").children(".c1").html());
	   	  $("#mem_Id").focus();
      } else if (memId.length < 6 || memId.length > 16) {
          alert("아이디는 6자리 이상 16자리 이하로 입력해주세요.");
          $("#errorMsgId").children(".c2").css("display","inline");
          $("#mem_Id").val('');
          $("#mem_Id").focus();
      } else if (regex_spe.test(memId)) {
         alert("특수문자를 사용할 수 없습니다.");
         $("#errorMsgId").css("display","inline");
         $("#mem_Id").val('');
         $("#mem_Id").focus();
      } else if (regex_kor.test(memId)) {
         alert("아이디는 영문과 숫자 조합으로 만들 수 있습니다.");
         $("#mem_Id").val('');
         $("#mem_Id").focus();
      } else if(memPw == "") {
    	  $("#errorMsgPw").css("display","inline");
         alert("비밀번호를 입력하세요.");
         $("#mem_Password").focus();
      } else if(chk_num < 0 || chk_eng < 0) {
         alert("비밀번호는 영문과 숫자를 같이 사용해주세요.");
         $("#mem_Password").focus();
      } else if (memRePw == "") {
         alert("비밀번호를 확인해 주세요.");
         $("#mem_RePassword").focus();
      } else if (memPw.length < 10 || memPw.length > 25) {
         alert("비밀번호는 10 ~ 24자로 작성해주세요.");
         $("#mem_Password").val('');
         $("#mem_RePassword").val('');
         $("#mem_Password").focus();
      } else if (memPw != memRePw) {
         alert("비밀번호를 다시 확인해 주세요.");
         $("#mem_RePassword").focus();
      } else if (memNick == "") {
         alert("닉네임을 입력해 주세요.");
         $("#mem_Nickname").focus();
      } else if (memNick.length < 4 || memNick.length > 10) {
          alert("닉네임은 4자 ~ 10자로 작성해주세요.");
          $("#mem_Nickname").focus();
      } else if (regex_spe.test(memNick)) {
         alert("닉네임은 한글,영문,숫자 조합으로 작성해주세요.");
         $("#mem_Nickname").focus();
         
      } else if (memPhone == "") {
         alert("전화번호를 입력해주세요.");
         $("#phone_num").focus();
      } else if (memPhone.length < 11) {
          alert("-를 제외한 11자리를 입력해 주세요.");
          $("#phone_num").focus();
         
      } else if (memRRN == "") {
         alert("생년월일을 입력해 주세요.");
         $("#mem_Birth").focus();
      } else if (memRRN < 8) {
         alert("생년월일을 8자리를 입력해 주세요.");
         $("#mem_Birth").focus();
         
      } else if (memGender == "") {
         alert("주민번호 뒤의 첫번째자리를 입력해 주세요.");
         $("#mem_Birth2").focus();
         
      } else if (memEmail == "") {
         alert("이메일을 입력해 주세요.");
      }
   });
   
});
/* function SetNum(obj) {
      var keyVal = event.keyCode;
      if((keyVal >= 48) && (keyVal <= 57) || (keyVal >= 96) && (keyVal <= 105) || (keyVal >= 8)) {
         return true;
      } else {
         alert("숫자만 입력가능합니다."); 
         var member_id = obj.id;
         var member_val = obj.value;
         
         $("#" + member_id).val(member_val.slice(0,-1));
      }
}; */
</script>
</head>
<body>
<form action="#" id="checkEmailForm">
   <input type="hidden" name="checkEmail" id="checkEmail" value="" />
</form>
<div class="back_main">
   <div class="back_top">CARD CAPTAIN</div>
   <div class="back_middle">
		<div class="middle1">
		<div class="middle_top">회원가입 정보를 입력해주세요.</div>
		<div class="title">아이디
			<div class="errorMsg" id="errorMsgId">
				<div class="c1">아이디를 입력해주세요.</div>
				<div class="c2">아이디는 6자~16자로 입력해주세요.</div>
				<div class="c3">특수문자 거절.</div>
				<div>4</div>
			</div>
      	</div>
      	<input type="text" class="text" placeholder="아이디 입력(6~16자리)" id="mem_Id" />
      	<div class="title">비밀번호
      		<div class="errorMsg" id="errorMsgPw">비밀번호를 입력해 주세요.</div>
      	</div>
      	<strong><input type="password" class="text" placeholder="비밀번호(10~24자리)" id="mem_Password" /></strong>
      	<input type="password" class="text" placeholder="비밀번호 확인" id="mem_RePassword" />
      	<div class="title">닉네임
      		<div class="errorMsg" id="errorMsgNick">닉네임을 입력해 주세요.</div>
      	</div>
      	<input type="text" class="text" placeholder="닉네임(4~10자리)" id="mem_Nickname" />
      	<div class="title">전화번호
      		<div class="errorMsg" id="errorMsgTel">전화번호를 입력해 주세요.</div>
      	</div>
      	<select name="telnum" id="select_tel"> 
			<option value="+82   대한민국">+82&nbsp;&nbsp;대한민국</option>
         	<option value="+82   대한민국"></option>
      	</select>
      	<input type="text" id="phone_num" placeholder=" - 없이 입력해주세요." maxlength="11" />
      	<div class="title">생년월일
      		<div class="errorMsg" id="errorMsgBirth">생년월일을 입력해 주세요.</div>
      	</div>
      	<div class="title">
         	<input type="text" id="mem_Birth" placeholder="예) 19940507" maxlength="8" />&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;
         	<input type="text" id="mem_Birth2" maxlength="1" />
         	<span id="txt">*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*</span>
      	</div>
      	<div class="title">이메일
      		<div class="errorMsg" id="errorMsgEmail">이메일을 입력해 주세요.</div>
      	</div>
      	<div class="title">
         	<input type="text" id="email" placeholder="이메일" />&nbsp;&nbsp;@&nbsp;
         	<select name="email" id="select_email"> 
            	<option value="naver.com">naver.com</option>
            	<option value="google.com">google.com</option>
         	</select>
         	<input type="button" id="checkingEmail" value="이메일인증" />
      	</div>
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