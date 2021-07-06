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
	})
});
</script>
</head>
<body>
	아이디 : <input type="text" id="sampleId" /><span id="message">아이디에 커서가 없습니다.</span><br/><!-- 1. 처음엔 span이 보이지 않음(css참고) -->
	비밀번호 : <input type="password" id="samplePw" /><br/>
	<input type="button" value="버튼" />
</body>
</html>