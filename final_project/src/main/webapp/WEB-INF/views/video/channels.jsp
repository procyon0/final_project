<!-- 유튜브 채널 목록을 출력하는 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>요리 비책 - 채널</title>
	<link rel="stylesheet" href="/resources/css/channels.css">
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="../includes/header.jsp"></jsp:include>
	<!-- 헤더 끝 -->
	<!-- 콘텐츠 블록 시작 -->
	<!-- 
	<div id="content">
		<div class="channel_block">
			<span class="icon">
				<img src="https://yt3.ggpht.com/-t8jeDSTMdMM/AAAAAAAAAAI/AAAAAAAAAAA/Edb3lX5Japk/s800-c-k-no-mo-rj-c0xffffff/photo.jpg" width="150px">
			</span>
			<span class="channel_title">
				하루한끼
			</span>
			<span class="channel_description">
					쉽고 맛있는 요리를 만들어 먹는 채널입니다. 모두 행복한 한 끼 되세요!
			</span>
		</div>
	</div> 
	-->
	<!-- 콘텐츠 블록 끝 -->
	<c:forEach items="${cList}" var="channels">
		<h1>
			<a href="/video/playlist?pid=${channels.playlistId}">
				<c:out value="${channels.channelName}"></c:out>
			</a>
		</h1>
	</c:forEach>
	
</body>
</html>