<!-- 유튜브 동영상을 출력하는 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="/resources/js/jquery-3.5.1.js" type="text/javascript"></script>
<script src="/resources/js/youtube_module.js"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@800&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="/resources/css/play.css">
<script>
$(document).ready(function () {
    var vidValue = '<c:out value="${vid}"></c:out>';
    var videoUI = $('#vid');
    
    showVideoDetail();

    function showVideoDetail() {
        youtubeService.getVideoDetail(
            { vid: vidValue },
            function (data) {
                var str = "";
                if (data == null || data.length == 0) {
                    videoUI.html("");
                    return;
                }
                	str += '<iframe id="video" width="960" height="540" src="https://www.youtube.com/embed/' + vidValue + '" frameborder="0" ';
                	str += 'allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>';
                   	str += "<h3 id='title'>"+data.items[0].snippet.title+"</h3>";
                   	str += "<small id='date'>"+data.items[0].snippet.publishedAt+"<hr id='divider'></small>";
                    str += "<div class='container'><div id='description'>";
                    str += data.items[0].snippet.description;
                    // 현재 날짜와 시간이 동시에 나옴. 날짜만 나오도록 문자열을 수정할 필요가 있음
                    str += "</div></div>";
 
                videoUI.html(str);
            });
    }
});
</script>
<body>
	<div id="header">
		<!-- 메뉴가 들어갈 자리 -->
	</div>
	<div class="container">
		<div id="vid"></div>
	</div>
	<div class="container"></div>
	<div id="footer-nav">
		<!-- 푸터가 들어갈 자리 -->
	</div>
</body>
</html>