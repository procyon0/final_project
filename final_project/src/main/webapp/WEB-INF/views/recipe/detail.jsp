<!-- 한 개의 레시피의 상세한 정보를 출력하는 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>recipe detail page</title>
<link href="/resources/css/detail.css" rel="stylesheet">
<script type="text/javascript" src="/resources/js/jquery-3.5.1.js"></script>
<!-- <script type="text/javascript" src="/resources/js/detail.js"></script> -->
<!-- <script type="text/javascript" src="/resources/js/read.js"></script> -->
<link href="/resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="/resources/css/detail.css">


<link rel="stylesheet" type="text/css" href="/resources/slick/slick.css" />
<link rel="stylesheet" type="text/css"
	href="/resources/slick/slick-theme.css" />


<script type="text/javascript" src="/resources/js/recommend_module.js"></script>

<%@ include file="../includes/header.jsp"%>


<script type="text/javascript">
	// 재료
	//var ingreValue = '<c:out value="${recipe.rcp_parts_dtls}"></c:out>';

	// 추천 상품을 저장할 문자열
	var recResult = "";
	// 추천 결과를 출력할 곳
	var recDiv = $("#recommend");

	$(document)
			.ready(
					function() {
						// 재료
						var ingreValue = '<c:out value="${recipe.rcp_parts_dtls}"></c:out>';
						// 추천 받을 것(재료 or 밀키트)
						var desti = "rcp_parts_dtls";
						// 추천 결과를 출력할 곳	
						var recDiv = $("#recommend");

						/***************************/
						showRecIngre();
						/***************************/

						function showRecIngre() {
							var token = "${_csrf.token}";
							alert(token);
							console.log("문자열 전송 시도.....");
							recommendService
									.getRecommend(
											{
												str : ingreValue,
												destination : desti,
												csrf : token
											},
											function(goods) {
												// 추천 상품을 저장할 문자열
												var result = "";
												// 추천 결과가 없으면 추천 상품이 없다고 출력하기
												if (goods == null
														|| goods.length == 0) {
													console
															.log("전송은 성공했으나 추천 상품이 없습니다.1");
													recDiv
															.html("<h3>추천 상품이 없습니다.</h3>");
													return;
												}
												result += "<h1>상품 이름 1<h1>";
												for (var i = 0, len = goods.length || 0; i < len; i++) {
													result += "<h3>"
															+ goods[i].GOODSNAME
															+ "</h3>";
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

</head>
<body>
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
				<div>${recipe.manual02}
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
		</div>
	</div>

	<div id="recommend">
		<!-- 추천 상품 -->
		<section class="regular slider">
			<c:forEach var="goods" items="${gList}">
				<div id="relatedGoods">
					<form class="form">
						<div class="relatedGoods">
							<img src="${goods.thumbImgUrl}" width="200px" height="200px"alt="thumnail" onclick="btn_add"> 
							<input type="hidden" value="1" id="amount"> <input type="hidden" value='<c:out value="${goods.goodsNo}"></c:out>' id="goodsNo">
									
	<%--					<input type="hidden" value="1" id="amount">		
							<input type="hidden" value='<c:out value="36463"></c:out>' id="goodsNo"> --%>
	<%-- 					<input type="hidden" value='<sec:authentication property="principal.username"/>'id="userId">
							<input type="hidden" value="${_csrf.token}" id="csrf"> --%>
						</div>
						
						<div class="btn_test">
								<button class="cart_btn" id="btn_add" role="button">
									<img src="/resources/img/cart_coral.png" style="height:45px; width:45px;">
								</button>
						</div> 
					</form>
				</div>
			</c:forEach>
		</section>
	</div>
	



	<!-- recommend-end -->

	<div>
		<a href="javascript:window.history.back()">뒤로 가기</a>
	</div>
	<script type="text/javascript" src="/resources/js/add_to_cart.js"></script>
	<script type="text/javascript" src="/resources/slick/slick.min.js"></script>
	<script type="text/javascript"
		src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<!--추천상품슬라이드JS -->
	<script type="text/javascript">
/* 	$('#slider-div').slick("unslick");
	$('#slider-div').slick('slickPlay'); */
		$(".regular").slick({
			dots : true,
			infinite : true,
			slidesToShow : 4,
			slidesToScroll : 4
		});
	</script>
</body>
</html>