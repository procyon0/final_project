<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="/resources/js/jquery-3.5.1.js" type="text/javascript"></script>
    <script src="/resources/js/youtube_module.js"></script>
    <script>
        $(document).ready(function () {
            var plID = '<c:out value="${pid}"></c:out>';
            var recipeUI = $('body');

            showResult();

            function showResult() {
                youtubeService.getPlaylist(
                    { playlistId: plID },
                    function (data) {
                        var str = "";
                        if (data == null || data.length == 0) {
                            recipeUI.html("");
                            return;
                        }
                        for (var i = 0 || 0; i < 5; i++) {
                        	str += "<a href='/video/play?vid="+data.items[i].snippet.resourceId.videoId +"'>";
                            str += "<img src='" + data.items[i].snippet.thumbnails.maxres.url + "' width='240px'>";
                            str += "<br>"
                           	str += data.items[i].snippet.title +"</a>";
                            str += "<hr>"
                        }
                        recipeUI.html(str);
                    });
            }
        });

    </script>
    <link rel="stylesheet" href="/resources/css/playlist.css">
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Lemonada&display=swap"
	rel="stylesheet">
</head>

<body>
    
</body>

</html>