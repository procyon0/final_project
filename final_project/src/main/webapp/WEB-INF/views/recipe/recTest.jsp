<!-- 
이유는 모르겠으나 sample 컨트롤러에서 Model이 인식되지 않음
(Null Pointer Exception 발생함)
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="/resources/js/search_module.js"></script>
<script type="text/javascript" src="/resources/js/recommend_module.js"></script>
<script src="/resources/js/youtube_module.js"></script>
<script type="text/javascript">
	// 재료
	var ingreValue = '<c:out value="${ingredient}"></c:out>';
	// 추천 상품을 저장할 문자열
	var recResult = "";
	// 전송 결과를 출력할 곳
	var isSendDiv = $("#isSend");
	// 추천 결과를 출력할 곳
	var recDiv = $("#recommend");

	$(document).ready(function() {
		// 재료
		var ingreValue = '<c:out value="${ingredient}"></c:out>';
		// 추천 받을 것(재료 or 밀키트)
		var desti = "ingredient";
		// 추천 결과를 출력할 곳
		var recDiv = $("#recommend");
		// 유튜브의 동영상 설명
		var descDiv = $("#youtubeDesc");
		// 유튜브 추천 상품을 출력할 곳 설정
		var youtubeDiv = $("#youtubeRec");
		// 백종원 유튜브 vid
		var vidValue = "qWbHSOplcvY";
		// 백종원 유튜브 설명
		var descValue = "";
		
		/***************************/
		showRecIngre();
		showVideoDetail();
		showYoutubeIngre();
		/***************************/
		
		function showRecIngre() {
			console.log("문자열 전송 시도.....");
			recommendService.getRecommend({
				str : ingreValue,
				destination : desti
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
					result += "<img src=\'"+goods[i].IMAGE+"\' >"
				}
				recDiv.html(result);
			});
		}
		
	    function showVideoDetail() {
	        youtubeService.getVideoDetail(
	            { vid: vidValue },
	            function (data) {
	            	console.log("유튜브에서 동영상 설명을 받아옵니다.............");
	                var str = "";
	                if (data == null || data.length == 0) {
	                    videoUI.html("");
	                    return;
	                }
	               	descValue = data.items[0].snippet.description;
	               	
	                str += "<h3>"+data.items[0].snippet.title+"</h3>";
	                str += "<small id='date'>"+data.items[0].snippet.publishedAt+"<hr id='divider'></small>";
	                str += "<div class='container'><div id='description'>";
	                str += data.items[0].snippet.description;
	                // 현재 날짜와 시간이 동시에 나옴. 날짜만 나오도록 문자열을 수정할 필요가 있음
	                str += "</div></div>";
	                descDiv.html(str);
	            });
	    }
		
		function showYoutubeIngre() {
			console.log("유튜브 문자열 전송 시도.....");
			recommendService.getRecommend({
				str : descValue,
				destination : desti
			}, function(goods) {
				// 추천 상품을 저장할 문자열
				var result = "";
				//alert("str:\n"+descValue);
				//alert("descValue\n:"+desti);
				// 추천 결과가 없으면 추천 상품이 없다고 출력하기
				if (goods == null || goods.length == 0) {
					console.log("전송은 성공했으나 추천 상품이 없습니다. 2");
					youtubeDiv.html("<h3>추천 상품이 없습니다.</h3>");
					return;
				}
				result += "<h1>상품 이름 2<h1>";
				for (var i = 0, len = goods.length || 0; i < len; i++) {
					result += "<h3>" + goods[i].GOODSNAME + "</h3>";
					result += "<img src=\'"+goods[i].IMAGE+"\' >"
				}
				youtubeDiv.html(result);
			});
		}
		

	});
</script>
<title>상품 추천 테스트 페이지</title>
<style type="text/css">
#horizon {
	border: solid blue 10px;
}
</style>
</head>
<body>
	<h1>재료</h1>
	<div id="ingredient">
		<c:out value="${ingredient}"></c:out>
	</div>
	<hr>
	<div id="recommend">
		<!-- 추천 상품이 출력되는 곳 -->
	</div>
	<hr id="horizon">
	<div id="youtubeDesc">
		<!-- 유튜브에서 받아온 동영상 설명이 출력되는 곳 -->
	</div>
	<hr>
	<div id="youtubeRec">
		<!-- 유튜브 동영상 설명에서 추천 제품이 출력되는 곳 -->
	</div>
</body>
</html>