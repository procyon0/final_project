<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>상세한 레시피</title>
	<link href="/resources/css/detail.css" rel="stylesheet">
<script type="text/javascript" src="/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="/resources/js/detail.js"></script>
</head>
<body>
	<h1>레시피 상세 정보</h1>
	<h2><c:out value="${recipe.name}"/></h2>
	<img src='${recipe.thumbnail}'> 
	<hr>
	<div>
		<p>${recipe.manual_1}</p>
		<img src='${recipe.photo_1}'>
	</div>
		<div>
		<p>${recipe.manual_2}</p>
		<img src='${recipe.photo_2}'>
	</div>
		<div>
		<p>${recipe.manual_3}</p>
		<img src='${recipe.photo_3}'>
	</div>
		<div>
		<p>${recipe.manual_4}</p>
		<img src='${recipe.photo_4}'>
	</div>
		<div>
		<p>${recipe.manual_5}</p>
		<img src='${recipe.photo_5}'>
	</div>
	<div>
		<a href="javascript:window.history.back()">뒤로 가기</a>
	</div>
</body>
</html>