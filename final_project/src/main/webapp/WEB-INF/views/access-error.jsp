<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>접근할 수 없음</title>
</head>
<body>
	<h1>접근할 수 없는 페이지입니다.</h1>
	<h2><c:out value="${SPRING_SECURITY_403_EXCEPTION.getMessage()}"></c:out></h2>
	<h2><c:out value="${msg}"></c:out></h2>
</body>
</html>