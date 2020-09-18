<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
<style>
* {
	margin:0 auto;
}
</style>
</head>
<body>
	<h1>Hello world!</h1>

	<P>The time on the server is ${serverTime}.</P>

	<div>	
		<h1>
			<a href="/index">메인 페이지로</a>
		</h1>
		<h1><a href="/login">로그인 페이지로</a></h1>
	</div>

</body>
</html>
