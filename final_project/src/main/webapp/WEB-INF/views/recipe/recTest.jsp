<!-- 
이유는 모르겠으나 sample 컨트롤러에서 Model이 인식되지 않음
(Null Pointer Exception 발생함)
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="/resources/js/search_module.js"></script>
<script type="text/javascript" src="/resources/js/recommend_module.js"></script>
<script>
	
</script>
<title>상품 추천 테스트 페이지</title>
<script>
	// 재료
	var ingreValue = '<c:out value="${ingredient}"></c:out>';
	// 추천 상품
	var recResult = "";
	// 출력할 곳
	var recDiv = $("#recommend");
	
	$(document).ready(function() {
		
	});
</script>
</head>
<body>
	<h1>재료</h1>
	<div id="ingredient">
		<c:out value="${ingredient}"></c:out>
	</div>
	<hr>
	<div id="recommend">
		<!-- 추천 상품이 출력되는 곳 -->
	</div>
</body>
</html>