<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>페이지를 찾을 수 없습니다. 푸르지오아파트를 찾아가세요.</title>
<style type="text/css">
@font-face {
	font-family: 'GmarketSansMedium';
	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
	font-weight: normal;
	font-style: normal;
}
#exceptionImageArea {
	margin-top: 150px;
	display: flex;
}
#exception404 {
	margin: auto;
	width: 1000px;
	height: 500px;
	background-size: 100%;
	background-image: url("${pageContext.request.contextPath}/resources/images/exception/exception_404.PNG");
	background-position-y: -30px;
}
#exceptionBtnArea {
	display: flex;
}
#homeBtn {
    width: 120px;
    height: 40px;
    color: white;
    border-style: none;
    background-color: #0047AB;
    border-radius: 5px;
    font-size: 20px;
    font-family: 'GmarketSansMedium';
    font-weight: 1000;
    margin: auto;
}
#homeBtn:hover {
    color: black;
    background-color: #F5DF4D;
    cursor: pointer;
}
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#homeBtn").on("click",function() {
		$(location).attr('href',"/cdcp");
	});
});
</script>
</head>
<body>
<div id="exceptionImageArea">
	<div id="exception404"></div>
</div>
<br/><br/><br/>
<div id="exceptionBtnArea">
	<input type="button" value="홈으로" id="homeBtn"/>
</div>
</body>
</html>