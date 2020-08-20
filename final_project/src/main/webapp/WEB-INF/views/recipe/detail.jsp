<!-- 한 개의 레시피의 상세한 정보를 출력하는 페이지 -->
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
<!-- <script type="text/javascript" src="/resources/js/read.js"></script> -->
<link rel="stylesheet" href="/resources/css/detail.css">
<script type="text/javascript">
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
</head>
<body>
	<!-- 헤더 -->
	<header id="logo_header">
		<div id="logo">
			<h1>
				<a href="/main">recipe</a>
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
	<!-- 헤더 끝 -->
	<div id="recipe">
		<h1>
			<c:out value="${recipe.name}" />
		</h1>
		<hr>
		<div id="searchDetail_img">
			<p>
				<img src='${recipe.thumbnail}' width="571px">
			</p>
		</div>
		<div id="ingredients">
			<h2>Ingredients</h2>
			<hr>
			<br>
			<p>
				<c:out value="${recipe.ingredient}"></c:out>
			</p>
		</div>

		<div id="cooking">
			<h2>요리 방법</h2>
			<hr>
			<div>${recipe.manual_1}
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
			</div>
		</div>
	</div>
	<div>
		<a href="javascript:window.history.back()">뒤로 가기</a>
	</div>
</body>
</html>