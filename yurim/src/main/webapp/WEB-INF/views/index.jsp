<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ page import="org.springframework.security.core.Authentication" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>index</h1>
<sec:authorize access="isAnonymous()">
   <a href="/login">로그인</a>
</sec:authorize>
<sec:authorize access="isAuthenticated()">
   <a href="/logout">로그아웃</a>
   <!-- sec:authentication 태그 이용해 인증 했을 시 사용자의 정보가져오기 -->
   <p><sec:authentication property="principal.username"/>님, 반갑습니다.</p>
   
</sec:authorize>

</body>
</html>