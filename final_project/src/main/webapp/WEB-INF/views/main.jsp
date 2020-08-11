<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>메인 페이지</title>
<link href="/resources/css/main.css" rel="stylesheet">
<script type="text/javascript" src="/resources/js/jquery-3.5.1.js"></script>
	<!-- 자바스크립트 파일 분리할 것 -->
</head>
<body>
	<h1 class="main_title">메인 페이지</h1>
	<div class="logo">
		<img src="/resources/img/placeholder.jpg" width="500px">
	</div>
	<!-- 검색창 -->
	<form action="/search/result" name="search" method="GET">
		<div>
			<select name="type">
				<option value="I" selected>재료</option>
				<option value="N">음식</option>
				<option value="K">종류</option>
			</select>
			<input type="text" name="query">
			<input type="submit" value="검색" id="search">
		</div>
		<%--
		<div>
			<input type="hidden" name="pageNum" value="${searchResult.c.pageNum}">
			<input type="hidden" name="amount" value="${searchResult.c.amount}">
		</div>
		--%>
	</form>
</body>
</html>