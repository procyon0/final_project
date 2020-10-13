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
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap"
		rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Lemonada&display=swap"
		rel="stylesheet">
<!-- <link href="/resources/css/search.css" rel="stylesheet"> -->
<script type="text/javascript" src="/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="/resources/js/bootstrap.js"></script>
<link rel="stylesheet" href="/resources/css/bootstrap.css">
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
	
	var queryValue = '<c:out value="${search.query}"></c:out>';
	var typeValue = '<c:out value="${search.type}"></c:out>';

	var subQuery = "type="+typeValue+"&query="+queryValue;
	//  alert(subQuery);
	var resultDiv = $('.result');
	var kindSpan = $('#kind');
	var waySpan = $('#way');
	
	$(document).ready(function() {
		var queryValue = '<c:out value="${search.query}"></c:out>';
		var typeValue = '<c:out value="${search.type}"></c:out>';

		var subQuery = "type="+typeValue+"&query="+queryValue;
		//  alert(subQuery);
		var resultDiv = $('.result');
		var kindSpan = $('#kind');
		var waySpan = $('#way');
		var resetBtn = $('#resetBtn');
		
		showResult();
		getKind();
		getWay();
		
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
							str += "<div id='block' style='max-width:50%;'>"
							str += "<div id='img_blo'>";
							str += "<a href='/recipe/detail?rcp_seq=" + result[i].rcp_seq + "'>";
							str += "<img src='" + result[i].att_file_no_mk + "' width='200px' height='200px'>";
							str += "</div>";
							str += "<div id='content_blo'>";
							str += "<h2>";
							str += result[i].rcp_nm;
							str += "</a>";
							str += "</h2>"
							str += "</div>";
							str += "</div>"
					}
				resultDiv.html(str);
			});
		}
		
		// 음식 종류 키워드를 출력하는 함수
		function getKind() {
			searchService.getKind(
				{query:queryValue, type:typeValue},
				function(result) {
					var str = "";
					//"<button onclick='getFilterefData("'k'', ")'>";
					if (result == null|| result.length == 0) {
						kindSpan.html("");
						return;
					}
					for(var i = 0; i < result.length; i++) {
						console.log(result[i]);
						str += "<button onclick='getFilteredData(\"k\",\""+result[i]+"\")'>";
						str += result[i];
						str += "</button>";
					}
					kindSpan.html(str);
				});
		}
		
		// 조리 방법 키워드를 출력하는 함수
		function getWay() {
			searchService.getWay(
				{query:queryValue, type:typeValue},
				function(result) {
					var str = "";
					//"<button onclick='getFilterefData("'k'', ")'>";
					if (result == null|| result.length == 0) {
						waySpan.html("");
						return;
					}
					for(var i = 0; i < result.length; i++) {
						console.log(result[i]);
						str += "<button class='tg' onclick='getFilteredData(\"w\",\""+result[i]+"\")'>";
						str += result[i];
						str += "</button>";
					}
					waySpan.html(str);
				});
		}
	});
	
	function resetResult() {
		$(".result").remove();
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
							str += "<a href='/recipe/detail?rcp_seq=" + result[i].rcp_seq + "'>";
							str += "<img src='" + result[i].att_file_no_mk + "' width='200px' height='200px'>";
							str += "</div>";
							str += "<div id='content_blo'>";
							str += "<h2>";
							str += result[i].rcp_nm;
							str += "</a>";
							str += "</h2>"
							str += "</div>";
							str += "</div>"
					}
				$(".container").html(str);
			});
	
	}

	function getFilteredData (filterValue,keywordValue) {
		console.log("필터링된 검색 결과 출력--------------");
		var str = "<div class='result'>";
		$(".result").empty();
		//alert("검색 결과 삭제");
		searchService.getFilteredResult(
				{query:queryValue, type:typeValue, filter:filterValue, keyword:keywordValue},
				function(result) {
					if (result == null|| result.length == 0) {
						recipeUI.html("");
						return;
					}
					
					for (var i = 0, len = result.length || 0; i < len; i++) {
						str += "<div id='block'>"
						str += "<div id='img_blo'>";
						str += "<a href='/recipe/detail?rcp_seq=" + result[i].rcp_seq + "'>";
						str += "<img src='" + result[i].att_file_no_mk + "' width='200px' height='200px'>";
						str += "</div>";
						str += "<div id='content_blo'>";
						str += "<h2>";
						str += result[i].rcp_nm;
						str += "</a>";
						str += "</h2>"
						str += "</div>";
						str += "</div>"
				}
				str += "</div>";
				$(".result").html(str);
		});
	}
</script>
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="../includes/header.jsp"></jsp:include>
	<!-- ↑헤더 - 내용↓ 분할선 -->
	<div class="container">
		<div id="search">
			<form action="/recipe/search" method="GET">
				<select name="type">
					<option value="I">재료</option>
					<option value="N">요리</option>
				</select> <input name= "query" type="search" title="검색" placeholder="입력해주세요.">
				<button id="searchBtn">검색</button>
			</form>
		</div>
	</div>
	<div class="container">
	<!--<table class="table">
			<tr>
				
			</tr>
	</table> -->
		<div id="filter">
			<!-- 검색 결과를 필터링할 키워드가 출력되는 곳 -->
			<div>
				요리 종류  <span id="kind"></span>
			</div>
			<div>
				조리 방법 <span id="way"></span>
			</div>
		<button id="resetBtn" onclick='resetResult()'>초기화</button>
		</div>
	</div>
	
	<div class="container">
		<div class="result">
			<!-- 검색 결과가 출력되는 곳 -->
		</div>
	</div>
	<div class="container">
		<div id="footer">
			<a href="/main">메인으로</a>
		</div>
	</div>
</body>
</html>