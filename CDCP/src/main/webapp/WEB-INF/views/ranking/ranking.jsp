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
		
		$("#rankBtn").on("click", function(){
			location.href = "card_rank";
		}); // goBtn click end
		$("#creditBtn").on("click", function(){
			location.href = "creditTop10";
		}); // goBtn click end
		$("#checkBtn").on("click", function(){
			location.href = "checkTop10";
		}); // goBtn click end
		$("#cmpBtn").on("click", function(){
			location.href = "cardcompany_top3";
		}); // goBtn click end
		$("#viewBtn").on("click", function(){
			location.href = "cardview";
		}); // goBtn click end
		
		
	}); // document ready end
</script>
</head>
<body>
	<input type="button" value="카드랭킹 go!!" id="rankBtn"/>
	<input type="button" value="신용카드 TOP 10 go!!" id="creditBtn"/>
	<input type="button" value="체크카드 TOP 10 go!!" id="checkBtn"/>
	<input type="button" value="카드사별 TOP 3 go!!" id="cmpBtn"/>
	<input type="button" value="상세보기 페이지 go!!" id="viewBtn"/>
</body>
</html>