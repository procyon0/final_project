<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
logout page
<form action="/home" method="post">
<input type="hidden" name="${_csrf.parameterName}" value="${__csrf.token}"/>
<button>logout</button>
</form>
</body>
</html>