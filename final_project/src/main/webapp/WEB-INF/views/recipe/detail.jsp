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
$(document).ready(function() {
//자바스크립트 자체 음성 합성 모듈을 불러옴
var synth = window.speechSynthesis;

// 읽어올 텍스트를 저장할 변수들
var inputForm = document.getElementById("readForm");
var textInput = document.getElementById("manual1");
// 음성 언어: 한국어
var lang = 'ko-KR';
// 속도: 1
var rateValue = 1;
// 목소리 높낮이: 1
var pitchValue = 1;
// 글자를 하나씩 읽어와 합성할 변수
var voices = [];

// 재생 버튼을 누를 때 문장이 재생됨
inputForm.onsubmit = function(event) {
	// submit을 누를때 페이지가 새로고침 되는 것을 방지함
	event.preventDefault();
	var readThis = new SpeechSynthesisUtterance(textInput.value);
	// 글자마다 언어 설정하기
    for(var i = 0; i < voices.length; i++) {
    	readThis.voice = lang;
    }
    readThis.pitch = pitchValue;
    readThis.rate = rateValue;

    synth.speak(readThis);
});
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
		<h1>레시피 상세 정보</h1>
		<h3>
			<c:out value="${recipe.name}" />
		</h3>
		<div id ="searchDetail_img">
            <p><img src='${recipe.thumbnail}' width="571px" ></p>
        </div>
		<hr>
		<div id="ingredients">
            <h2>Ingredients</h2>
            <br>
            <p>
            	<c:out value="${recipe.ingredient}"></c:out>
            </p>
        </div>
        <hr>
        <div id="cooking">
			<p>
				${recipe.manual_1}
				<form id="readForm">
					<input type="hidden" value="${recipe.manual_1}" id="manual1">
					<input type="submit"  value="재생">
				</form>
			</p>
			<img src='${recipe.photo_1}'>

			<p>${recipe.manual_2}</p>
			<img src='${recipe.photo_2}'>

			<p>${recipe.manual_3}</p>
			<img src='${recipe.photo_3}'>

			<p>${recipe.manual_4}</p>
			<img src='${recipe.photo_4}'>

			<p>${recipe.manual_5}</p>
			<img src='${recipe.photo_5}'>
		</div>
	</div>
	<div>
		<a href="javascript:window.history.back()">뒤로 가기</a>
	</div>
</body>
</html>