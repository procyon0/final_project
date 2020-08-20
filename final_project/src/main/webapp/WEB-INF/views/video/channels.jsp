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