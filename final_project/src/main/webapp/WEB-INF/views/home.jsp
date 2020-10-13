<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>Hello world!</h1>

	<P>The time on the server is ${serverTime}.</P>
	<h1>
		<a href="/index">인덱스 페이지로</a>
	</h1>
	<h1>
		<a href="/secu/login">로그인 페이지로</a>
	</h1>
</body>
</html>
