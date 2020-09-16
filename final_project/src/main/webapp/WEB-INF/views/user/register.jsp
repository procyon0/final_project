<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
</head>
<body>
	<h2>회원 가입</h2>
	<hr>
	<div id="register-div">
		<form action="/register" method="POST">
			<div>
			<label for="userID">아이디</label>
			<input type="text" id="userID"><br>
			<small>4~16글자, 영어·숫자만 가능, 특수문자 X</small>
			</div>
		</form>
	</div>
</body>
</html>