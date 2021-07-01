<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	
</style>
<script type="text/javascript"
			src = "resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		$("#goBtn").on("click", function(){
			location.href = "creditTop10";
		}); // goBtn click end
		
	}); // document ready end
</script>
</head>
<body>
	<input type="button" value="신용카드 TOP 10 go!!" id="goBtn"/>
</body>
</html>