<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>~ 검색 결과를 테스트하는 페이지 ~</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/resources/css/search.css">
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Lemonada&display=swap"
	rel="stylesheet">
<link href="/resources/css/search.css" rel="stylesheet">
<script type="text/javascript" src="/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="/resources/js/search_module.js"></script>
<script type="text/javascript">
	/** 검색 결과를 JSON 파일 형식으로 받아 출력하는 자바스크립트 페이지
	 * 1. 전 페이지에서 받아온 검색어와 타입을 출력해본다.
	 * 2.  
	 */
	/* console.log("검색 결과 출력 테스트----------------------------------");
	var queryValue = '<c:out value="${search.query}"></c:out>';
	var typeValue = '<c:out value="${search.type}"></c:out>';

	searchService.getResult(
		{query:queryValue, type:typeValue}, function(result) {
			for(var i = 0, len = result.length||0;i<len; i++) {
				console.log(result[i]);
			}
		}
	); */
	$(document).ready(function() {
		var queryValue = '<c:out value="${search.query}"></c:out>';
		var typeValue = '<c:out value="${search.type}"></c:out>';

	
		var recipeUI = $('#result');

		showResult();

		function showResult() {
			searchService.getResult(
				{query : queryValue, type : typeValue},
				function(result) {
					var str = "";
					if (result == null|| result.length == 0) {
						recipeUI.html("");
						return;
					}
					for (var i = 0, len = result.length || 0; i < len; i++) {
						str += "<div id='block'>"
						str += "<div id='img_blo'>";
						str += "<img src='" + result[i].thumbnail + "' width='200px' height='200px'>";
						str += "</div>";
						str += "<div id='content_blo'>";
						str += "<h2>";
						str += "<a href='/recipe/detail?id=" + result[i].id + "'>";
						// 현재 상세보기 링크가 작동하기 않음
						// -> href에 따옴표가 인식되지 않기 때문임
						// 	  따라서 URLEncoder를 사용해야함 (수정 예정) 
						str += result[i].name;
						str += "</a>";
						str += "</h2>"
						str += "</div>";
						str += "</div>"
					}
					recipeUI.html(str);
				});
			}
		});
</script>
</head>
<body>
	<!-- 헤더 -->
	<header id="logo_header">
		<div id="logo">
			<h1>
				<a href="#">recipe</a>
			</h1>
		</div>
		<nav id="menu">
			<ul>
				<li><a href="#">레시피검색</a></li>
				<li><a href="#">요리비책</a>
				<li><a href="#">게시판</a>
					<ul>
						<li><a href="#">레시피공유</a></li>
						<li><a href="#">공지사항</a></li>
					</ul></li>
				<li><a href="#">스토어</a></li>
			</ul>
		</nav>
		<nav id="login">
			<ul>
				<li><a href="#">로그인 </a></li>
				<li><a href="#"> 회원가입</a></li>
			</ul>
		</nav>
	</header>
	<!-- 분할선 -->
	<div id="search">
		<form action="search.html" method="GET">
			<select>
				<option value="I">재료</option>
				<option value="N">요리</option>
			</select> <input type="search" title="검색" placeholder="입력해주세요.">
			<button>검색</button>
		</form>
	</div>
	<div id="result">
		<%-- <div id="block">
			<div id="img_blo">
				<img src="<c:out value="${result.thumbnail}"/>" width="200px"
					height="200px">
			</div>
			<div id="content_blo">
				<h2>
					<a href="/recipe/detail?id=<c:out value="${result.id}"/>"> <c:out
							value="${result.name}" />
					</a>
				</h2>
			</div>
		</div> --%>
		
	</div>
	<div>
		<a href="/main">메인으로</a>
	</div>
</body>
</html>