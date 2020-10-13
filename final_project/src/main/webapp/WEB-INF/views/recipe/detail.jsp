<!-- 한 개의 레시피의 상세한 정보를 출력하는 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세한 레시피</title>
<link href="/resources/css/detail.css" rel="stylesheet">
<script type="text/javascript" src="/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="/resources/js/detail.js"></script>
<!-- <script type="text/javascript" src="/resources/js/read.js"></script> -->
<link href="https://fonts.googleapis.com/css2?family=Lemonada:wght@500&display=swap" rel="stylesheet"> 
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@800&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/resources/css/detail.css">
<script type="text/javascript" src="/resources/js/recommend_module.js"></script>
<script type="text/javascript">
	// 재료
	
	// 추천 상품을 저장할 문자열
	var recResult = "";
	// 추천 결과를 출력할 곳
	var recDiv = $("#recommend");

	$(document).ready(function() {
		// 재료
		var ingreValue = '<c:out value="${rcp_parts_dtls}"></c:out>';
		// 추천 받을 것(재료 or 밀키트)
		var desti = "ingredient";
		// 추천 결과를 출력할 곳	
		var recDiv = $("#recommend");
		
		/***************************/
		showRecIngre();
		/***************************/
	
		function showRecIngre() {
			var token ="${_csrf.token}";
			//alert(token);
			console.log("문자열 전송 시도.....");
			recommendService.getRecommend({
				str : ingreValue,
				destination : desti,
				csrf:token
			}, function(goods) {
				// 추천 상품을 저장할 문자열
				var result = "";
				// 추천 결과가 없으면 추천 상품이 없다고 출력하기
				if (goods == null || goods.length == 0) {
					console.log("전송은 성공했으나 추천 상품이 없습니다.1");
					recDiv.html("<h3>추천 상품이 없습니다.</h3>");
					return;
				}
				result += "<h1>상품 이름 1<h1>";
				for (var i = 0, len = goods.length || 0; i < len; i++) {
					result += "<h3>" + goods[i].GOODSNAME + "</h3>";
					result += "<img src=\'"+goods[i].THUMBIMGURL+"\' width='320px'>"
				}
				recDiv.html(result);
			});
		}
	});
	
	// TTS 함수
	function makeSound(txt) {
		// 음성 합성 모듈 불러옴
		var synth = window.speechSynthesis;
		// 읽을 텍스트를 가져올 변수
		var textInput = txt;
		var lang = 'ko-KR';
		var rateValue = 0.8;
		var pitchValue = 1;
		var voices = [];
		var readThis = new SpeechSynthesisUtterance(textInput);
		for (var i = 0; i < voices.length; i++) {
			readThis.voice = lang;
		}
		readThis.pitch = pitchValue;
		readThis.rate = rateValue;

		synth.speak(readThis);
	}
</script>
<style type="text/css">

#logo>h1>a{
       text-decoration: none;
      font-family: 'Lemonada', cursive;
      font-size:53px;    
      font-weight: bolder;
       
      }
#menu>ul>li>a{
      text-decoration: none;
      }
#login>ul>li>a{
   text-decoration: none;
}      
</style>
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="../includes/header.jsp"></jsp:include>
	<!-- 헤더 끝 -->
	<div id="recipe">
		<h1>
			<c:out value="${recipe.rcp_nm}" />
		</h1>
		<hr>
		<div id="searchDetail_img">
			<p>
				<img src='${recipe.att_file_no_mk}' width="571px">
			</p>
		</div>
		<div id="ingredients">
			<h2>재료</h2>
			<hr>
			<br>
			<p>
				<c:out value="${recipe.rcp_parts_dtls}"></c:out>
			</p>
		</div>

		<div id="cooking">
			<h2>요리 방법</h2>
			<hr>
			<c:if test="${not empty recipe.manual01}">
				<div>${recipe.manual01}
					<button onclick="makeSound('${recipe.manual01}')">재생</button>
					<br> <img src='${recipe.manual_img01}'>
				</div>
			</c:if>
			<c:if test="${not empty recipe.manual02}">
				<div>${recipe.manual01}
					<button onclick="makeSound('${recipe.manual02}')">재생</button>
					<br> <img src='${recipe.manual_img02}'>
				</div>
			</c:if>
			<c:if test="${not empty recipe.manual03}">
				<div>${recipe.manual03}
					<button onclick="makeSound('${recipe.manual03}')">재생</button>
					<br> <img src='${recipe.manual_img03}'>
				</div>
			</c:if>
			<c:if test="${not empty recipe.manual04}">
				<div>${recipe.manual04}
					<button onclick="makeSound('${recipe.manual04}')">재생</button>
					<br> <img src='${recipe.manual_img04}'>
				</div>
			</c:if>
			<c:if test="${not empty recipe.manual05}">
				<div>${recipe.manual05}
					<button onclick="makeSound('${recipe.manual05}')">재생</button>
					<br> <img src='${recipe.manual_img05}'>
				</div>
			</c:if>
			<c:if test="${not empty recipe.manual06}">
				<div>${recipe.manual06}
					<button onclick="makeSound('${recipe.manual06}')">재생</button>
					<br> <img src='${recipe.manual_img06}'>
				</div>
			</c:if>
			<c:if test="${not empty recipe.manual07}">
				<div>${recipe.manual07}
					<button onclick="makeSound('${recipe.manual07}')">재생</button>
					<br> <img src='${recipe.manual_img07}'>
				</div>
			</c:if>
			<c:if test="${not empty recipe.manual08}">
				<div>${recipe.manual08}
					<button onclick="makeSound('${recipe.manual08}')">재생</button>
					<br> <img src='${recipe.manual_img08}'>
				</div>
			</c:if>
			<%-- <div>${recipe.manual_1}
				<button onclick="makeSound('${recipe.manual_1}')">재생</button>
				<br> <img src='${recipe.photo_1}'>
			</div>
			<div>
				${recipe.manual_2}
				<button onclick="makeSound('${recipe.manual_2}')">재생</button>
				<br> <img src='${recipe.photo_2}'>
			</div>
			<div>
				${recipe.manual_3}
				<button onclick="makeSound('${recipe.manual_3}')">재생</button>
				<br> <img src='${recipe.photo_3}'>
			</div>
			<div>
				${recipe.manual_4}
				<button onclick="makeSound('${recipe.manual_4}')">재생</button>
				<br> <img src='${recipe.photo_4}'>
			</div>
			<div>
				${recipe.manual_5}
				<button onclick="makeSound('${recipe.manual_5}')">재생</button>
				<br> <img src='${recipe.photo_5}'>
			</div> --%>
		</div>
	</div>
	<div id="recommend">
		<!-- 추천 상품이 출력되는 곳 -->
	</div>
	<div>
		<a href="javascript:window.history.back()">뒤로 가기</a>
	</div>
</body>
</html>