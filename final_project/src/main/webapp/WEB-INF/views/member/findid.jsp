<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/includes/header.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find ID</title>
<link href="${path}/resources/css/findid.css" rel="stylesheet" />
</head>
<body>
<div class="wrap_box">
<div class="box">
<h3>아이디 찾기</h3>
<form action="/findid" method="post">
<label>이름</label><p>
<input type="text" id="userId" name="userId" placeholder="고객님의 이름을 입력해주세요"/><p>
<label>이메일</label><p>
<input type="text" id="mailaddress" name="mailaddress" placeholder="가입시 등록하신 이메일주소를 입력해주세요" /><p>
<input type="submit" value="찾기"/>
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>
</div>
</div>
</body>
</html>