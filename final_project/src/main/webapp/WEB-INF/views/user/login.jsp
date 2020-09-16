<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="/resources/js/jquery-3.5.1.js"></script>
<link rel="stylesheet" href="/resources/css/user-login.css">
<title>로그인</title>
</head>
<body>
	<h1>로그인</h1>
	<h2>
		<c:out value="${error}"></c:out>
	</h2>
	<h2>
		<c:out value="${logout}"></c:out>
	</h2>
	<div id="login">
		<form action="/login" method="POST">
			<div>
				<input type="text" name="username" value="아이디">
			</div>
			<div>
				<input type="password" name="password" value="비밀번호">
			</div>
			<div>
				<input type="submit">
			</div>
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}">
		</form>
	</div>
</body>
</html>