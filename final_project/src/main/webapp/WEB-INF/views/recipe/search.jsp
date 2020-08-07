<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>~ 검색 결과를 테스트하는 페이지 ~</title>
<link href="/resources/css/search.css" rel="stylesheet">
	<script type="text/javascript" src="/resources/js/jquery-3.5.1.js"></script>
	<script type="text/javascript" src="/resources/js/search.js"></script>
</head>
<body>
	<%-- 
		<div>
			<h1>전 페이지에서 받아온 파라미터</h1>
			<h2>${query}</h2>
			<h2>${type}</h2>
		</div>
	 --%>
	<div>
		<h1>${query}의 검색 결과</h1>
		<hr>
		<!-- 검색 결과를 필터링 하는 곳 -->
		<div class="searchFilter"></div>
			<!-- 요리 방법에 따른 분류 -->
			<div class="way">
				<div class="fileter-title">
					방법
				</div>
				<div class="filter-contents">
					<c:forEach var="way" items="${way}">
						<a href="/recipe/search/filter?keyword=${way}">${way}</a>
					</c:forEach>
				</div>
			</div>
			<!-- 음식 용도(종류)에 따른 분류 -->
			<div class="kind">
				<div class="filter-title">
					종류
				</div>
				<div class="filter-contents">
					<c:forEach var="kind" items="${kind}">
						<a href="/recipe/search/filter?keyword=${kind},query=${query}">${kind}</a>
					</c:forEach>
				</div>
			</div>
		<div>
			<c:forEach items="${recipe}" var="result">
				<div class="item">
					<div>
						<h2>
							<a href="/recipe/detail?id=<c:out value="${result.id}"/>"> <c:out
									value="${result.name}" />
							</a>
						</h2>
					</div>
					<div>
						<img src='<c:out value="${result.thumbnail}"/>'>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<div>
		<a href="/main">메인으로</a>
	</div>
</body>
</html>