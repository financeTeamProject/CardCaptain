<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#att {
		display: none;
	}
</style>
<script type="text/javascript"
				src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
		src="resources/script/ckeditor/ckeditor.js"></script>
<script type="text/javascript" 
		src="resources/script/jquery/jquery.form.js"></script>
<script type="text/javascript">

$(document).ready(function() {
	$("#backBtn").on("click", function() {
		history.back();
	});
		$("#updateForm").on("keypress", "input", function(event) {
			if(event.keyCode == 13){
				return false;
			}
	});
		
		$("#updateBtn").on("click", function() {
			
			if($.trim($("#cTitle").val()) == "") {
				alert("제목을 입력해주세요.");
				$("#cTitle").focus();
			} else if($.trim($("#cWriter").val()) == "") {
				alert("작성자를 입력해주세요.");
				$("#cWriter").focus();
			} else if($.trim($("#cDt").val()) == "") {
				alert("작성일을 입력해 주세요.");
				$("#cDt").focus();
			} else if($.trim($("#cCon").val()) == ""){
				alert("내용을 입력해 주세요.");
				$("#cCon").focus();
			} else {
				var params = $("#updateForm").serialize();
				
				$.ajax({
					url: "lhjtestUpdates",
					type: "post", 
					dataType: "json",
					data: params,	
					success: function(res) {
						if(res.msg == "success") {
							$("#goForm").attr("action", "lhjtestD");
							$("#goForm").submit();
						} else if(res.msg == "failed") {
							alert("작성에 실패하였습니다.");
						} else {
							alert("수정중 문제가 발생하였습니다.");
						}
					},
					error: function(request, status, error) {
						console.log(error);
					}
				});
			}
		});
});
</script>
</head>
<body>
<form action="lhjtestD" id="goForm" method="post">
      <input type="hidden" name="sNo" value="${data.SELL_NO}" />
      <input type="hidden" name="page" value="${param.page}" />
      <input type="hidden" name="searchGbn" value="${param.searchGbn}" />
      <input type="hidden" name="searchTxt" value="${param.searchTxt}" />
   </form>
   <form action="#" id="updateForm" method="post">
      <input type="hidden" name="sNo" value="${data.SELL_NO}" />
      번호: ${data.SELL_NO}<br/>
      제목: <input type="text" id="cTitle" name="cTitle" /><br/>
      작성자: <input type="text" id="cWriter" name="cWriter" /><br/>
      등록일: <input type="date" id="cDt" name="cDt" /><br/>
      내용 <br/>
		<textarea rows="20" cols="50" id="cCon" name="cCon"></textarea><br/>
   </form>
   <input type="button" value="수정" id="updateBtn" />
   <input type="button" value="뒤로가기" id="backBtn" />
</body>
</html>