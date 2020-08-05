<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>메인 페이지</title>
	<style type="text/css">
		/*CSS 파일 따로 분리함*/
		@import url('\resources/css/main.css');
	</style>
</head>
<body>
	<h1>메인 페이지</h1>
	<div class="logo">
		<img src="/resources/img/placeholder.jpg" width="500px">
	</div>
	<!-- 검색창 -->
	<form action="/recipe/search" name="search" method="GET">
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