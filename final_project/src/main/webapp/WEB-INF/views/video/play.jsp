<!-- 유튜브 동영상을 출력하는 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동영상 재생</title>
<script src="/resources/js/jquery-3.5.1.js" type="text/javascript"></script>
<script src="/resources/js/youtube_module.js"></script>
<script type="text/javascript" src="/resources/js/recommend_module.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Lemonada:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@800&display=swap" rel="stylesheet">
<script type="text/javascript" src="/resources/js/bootstrap.js"></script>
<script type="text/javascript" src="/resources/slick/slick.js"></script>
<link rel="stylesheet" href="/resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="/resources/slick/slick.css" />
<link rel="stylesheet" type="text/css" href="/resources/slick/slick-theme.css"/>
<link rel="stylesheet" href="/resources/css/play.css">
<script>
$(document).ready(function () {
    var vidValue = '<c:out value="${vid}"></c:out>';
    var videoUI = $('#vid');
   
 	// 유튜브의 동영상 설명
	var descDiv = $("#youtubeDesc");
	// 유튜브 추천 상품을 출력할 곳 설정
	var youtubeDiv = $("#rec");
  	
    showVideoDetailInfo();		// 유튜브 아래 설명 출력
    var descValue = showVideoDetail();
	showYoutubeIngre(descValue);		// 추천 상품 출력
	
	function showVideoDetailInfo() {
        youtubeService.getVideoDetail({ vid: vidValue },
        	function (data) {
                var str = "";
                if (data == null || data.length == 0) {
                    videoUI.html("");
                    return;
                }
                str += '<iframe id="video" width="960" height="540" src="https://www.youtube.com/embed/' + vidValue + '" frameborder="0" ';
                str += 'allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>';
                str += "<h3 id='title'>"+data.items[0].snippet.title+"</h3>";
                str += "<div class='container'><details id='description' class='overflow-auto'>";
                str += "<p>" + data.items[0].snippet.description + "</p>";
                str += "</details></div>";
 
                videoUI.html(str);
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
               	//alert("유튜브 1: "+descValue);
                str += "<h3>"+data.items[0].snippet.title+"</h3>";
                str += "<small id='date'>"+data.items[0].snippet.publishedAt+"<hr id='divider'></small>";
                str += "<div class='container'><div id='description'>";
                str += data.items[0].snippet.description;
                // 현재 날짜와 시간이 동시에 나옴. 날짜만 나오도록 문자열을 수정할 필요가 있음
                str += "</div></div>";
                descDiv.html(str);
                showYoutubeIngre(data.items[0].snippet.description);
            });
    }
	
	function showYoutubeIngre(descValue) {
		console.log("유튜브 문자열 전송 시도.....");
		let desti = "ingredient";
		var token ="${_csrf.token}";
		//alert(descValue);
		recommendService.getRecommend({
			str : descValue,
			destination : desti,
			csrf:token
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
			for (var i = 0, len = goods.length || 0; i < len; i++) {
				result += "<div><a href='/goods/detail?goodsNo="+goods[i].GOODSNO+"'><img src=\'"+goods[i].THUMBIMGURL+"\' class='thumb'><br>";
				result += "<p 'text-truncate' style='max-width:240px;'>" + goods[i].GOODSNAME + "</p></a></div>";
			}
			$('#rec').slick('slickAdd', result);
			//youtubeDiv.html(result);
		});
	}
});
</script>
</head>
<body>

	<jsp:include page="../includes/header.jsp"></jsp:include>
	<!-- 유튜브 동영상 페이지 본문 -->
	<div class="jumbotron" id="bg">
		<div class="container justify-content-center">
			<div id="vid"></div>
			<hr id="divider">
		</div>
	</div>
	<div class="container" id="rec">
	</div>
	<div class="container"></div>
	<jsp:include page="../includes/footer.jsp"></jsp:include>
	<script>
	$('#rec').slick({
		  infinite: true,
		  slidesToShow: 4,
		  slidesToScroll: 4
	});
	</script>
</body>
</html>