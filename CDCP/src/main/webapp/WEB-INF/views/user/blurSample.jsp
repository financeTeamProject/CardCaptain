<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#message {
	display: none;
}
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#sampleId").blur(function() {/* 2. 아이디 input에 커서가 들어왔다가 다른 곳을 클릭해서 커서가 보이지 않게 되면 아래 함수 실행 */
		$("#message").css("display","inline");
	});
	
	$("#btn_next").blur(function() {
		var ival = $(this).prop("id").split("_");
		$("#findType").val(ival[0]);
		$("#checkEmail").val($("." + "errorMsg" + ival[0]).val()
				+ "@" 
				+ $("." + ival[0] + "_select_email option:selected").val());
	
	//블러
	$("btn_next").blur(function () {
	      var memId = $.trim($("#mem_id").val());
	      var memPw = $.trim($("#mem_password").val());
	      var memRePw = $.trim($("#mem_rePassword").val());
	      var memNick = $.trim($("#mem_nickname").val());
	      var memPhoneOpt = $("select_tel option:selected").val();
	      var memPhone = $.trim($("#phone_num").val());
	      var memRRN = $.trim($("#text_num").val());
	      var memGender = $.trim($("#text_num2").val());
	      var memEmail = $.trim($("#email").val());
	      var memEmailOpt = $("#select_email option:selected").val();
	      var chk_num = memPw.search(/[0-9]/g);
	      var chk_eng = memPw.search(/[a-z]/ig);
	      
	      
		if(memId == "") {
			$("#errorMsgId").css("display","inline");
		} else if(!memId == "") {
			$("#errorMsgId").css("display","none");
		}
		

   //회원가입 필터링   
   $("#btn_next").on("click",function() {
      var memId = $.trim($("#mem_id").val());
      var memPw = $.trim($("#mem_password").val());
      var memRePw = $.trim($("#mem_rePassword").val());
      var memNick = $.trim($("#mem_nickname").val());
      var memPhoneOpt = $("select_tel option:selected").val();
      var memPhone = $.trim($("#phone_num").val());
      var memRRN = $.trim($("#text_num").val());
      var memGender = $.trim($("#text_num2").val());
      var memEmail = $.trim($("#email").val());
      var memEmailOpt = $("#select_email option:selected").val();
      var chk_num = memPw.search(/[0-9]/g);
      var chk_eng = memPw.search(/[a-z]/ig);
      
       
      if(memId == "") {
         alert("아이디를 입력하세요.");
    	 /* alert(document.getElementById("errorMsg").style.visibility); 
         document.getElementById("errorMsg").style.visibility='visible'; */
         $("#mem_id").focus();
      } else if (memId.length < 6 || memId.length > 16) {
          alert("아이디는 6자리 이상 16자리 이하로 입력해주세요.");
          $("#mem_id").val('');
          $("#mem_id").focus();
      } else if (regex_spe.test(memId)) {
         alert("특수문자를 사용할 수 없습니다.");
         $("#mem_id").val('');
         $("#mem_id").focus();
      } else if (!regex_kor.test(memId)) {
         alert("아이디는 영문과 숫자 조합으로 만들 수 있습니다.");
         $("#mem_id").val('');
         $("#mem_id").focus();
      } else if(memPw == "") {
         alert("비밀번호를 입력하세요.");
         $("#mem_password").focus();
      } else if(chk_num < 0 || chk_eng < 0) {
         alert("비밀번호는 영문과 숫자를 같이 사용해주세요.");
         $("#mem_password").focus();
      } else if (memRePw == "") {
         alert("비밀번호를 확인해 주세요.");
         $("#mem_rePassword").focus();
      } else if (memPw.length < 10 || memPw.length > 25) {
         alert("비밀번호는 10 ~ 24자로 작성해주세요.");
         $("#mem_password").val('');
         $("#mem_rePassword").val('');
         $("#mem_password").focus();
      } else if (memPw != memRePw) {
         alert("비밀번호를 다시 확인해 주세요.");
         $("#mem_rePassword").focus();
      } else if (memNick == "") {
         alert("닉네임을 입력해 주세요.");
         $("#mem_nickname").focus();
      } else if (memNick.length < 4 || memNick.length > 10) {
          alert("닉네임은 4자 ~ 10자로 작성해주세요.");
          $("#mem_nickname").focus();
      } else if (regex_spe.test(memNick)) {
         alert("닉네임은 한글,영문,숫자 조합으로 작성해주세요.");
         $("#mem_nickname").focus();
         
      } else if (memPhone == "") {
         alert("전화번호를 입력해주세요.");
         $("#phone_num").focus();
      } else if (memPhone.length < 11) {
          alert("-를 제외한 11자리를 입력해 주세요.");
          $("#phone_num").focus();
         
      } else if (memRRN == "") {
         alert("생년월일을 입력해 주세요.");
         $("#text_num").focus();
      } else if (memRRN < 8) {
         alert("생년월일을 8자리를 입력해 주세요.");
         $("#text_num").focus();
         
      } else if (memGender == "") {
         alert("주민번호 뒤의 첫번째자리를 입력해 주세요.");
         $("#text_num2").focus();
         
      } else if (memEmail == "") {
         alert("이메일을 입력해 주세요.");
      }
   });
   
});
});
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
			<div class="errorMsg" id="errorMsgId">아이디를 입력해 주세요.</div>
      	</div>
      	<input type="text" class="text" placeholder="아이디 입력" id="mem_id" />
      	<div class="title">비밀번호
      		<div class="errorMsg" id="errorMsgPw">비밀번호를 입력해 주세요.</div>
      	</div>
      	<strong><input type="password" class="text" placeholder="비밀번호(10~24자리)" id="mem_password" /></strong>
      	<input type="password" class="text" placeholder="비밀번호 확인" id="mem_rePassword" />
      	<div class="title">닉네임
      		<div class="errorMsg" id="errorMsgNick">닉네임을 입력해 주세요.</div>
      	</div>
      	<input type="text" class="text" placeholder="닉네임(4~10자리)" id="mem_nickname" />
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
         	<input type="text" id="text_num" placeholder="예) 19940507" maxlength="8" />&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;
         	<input type="text" id="text_num2" maxlength="1" />
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