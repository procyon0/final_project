<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
login page<p>
<c:out value="${error}"/>
<c:out value="${logout}"/>

<form method='post' action='/home'>
아이디<input type="text" name="id" /><p>
비밀번호<input type="password" name="pwd" />
<input type="submit" value="로그인"/>
<input type="hidden" name="${_csrf.parameterName}" value="${__csrf.token}"/>
</form>
</body>
</html>