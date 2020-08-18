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
<script>
$(document).ready(function () {
    var vidValue = '<c:out value="${vid}"></c:out>';
    var videoUI = $('body');
    
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
                	str += '<iframe width="960" height="540" src="https://www.youtube.com/embed/' + vidValue + '" frameborder="0" ';
                	str += 'allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>';
                    str += "<br>"
                   	str += "<h1>"+data.items[0].snippet.title+"</h1>";
                   	str += "<h3>"+data.items[0].snippet.publishedAt+"</h3>";
                    str += "<div>";
                    str += data.items[0].snippet.description;
                    // 현재 날짜와 시간이 동시에 나옴. 날짜만 나오도록 문자열을 수정할 필요가 있음
                    str += "</div>";
 
                videoUI.html(str);
            });
    }
});
</script>
<body>
	<%-- <iframe width="960" height="540" src="https://www.youtube.com/embed/${vid}" frameborder="0"
        allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	<h1>제목이 들어갈 자리</h1> --%>
</body>
</html>