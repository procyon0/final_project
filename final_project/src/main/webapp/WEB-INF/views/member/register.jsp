<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/includes/header.jsp"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register page</title>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Lemonada&display=swap" rel="stylesheet">
<link href="${path}/resources/css/register.css" rel="stylesheet" />
</head>
<style>-
.bt1{
	border-bottom:0.1px solid black;
}
</style>
<body>
	<div class="wrap_box">
		<div class="box">
			<h2>회원가입</h2>
			<div id="sub">*</div>
			<div class="sub2">필수입력사항</div>
			<form name="signup" action="/member/register" method="post">
				<p class="bt1">
				<table width="640" height="600">
					<tr>
						<th align="left">아이디<span>*</span></th>
						<td align="center"><input type="text" name="userId" id="userId" placeholder="아이디를 입력해주세요"/></td>
						<td align="center"><button type="button">중복확인</button>
					</tr>
					<tr>
						<th align="left">비밀번호<span>*</span></th>
						<td align="center"><input type="password" name="userPwd" id="userPwd" placeholder="비밀번호를 입력해주세요"/>
						</td>
					</tr>
					<tr>
						<th align="left">비밀번호 확인<span>*</span></th>
						<td align="center"><input type="password" name="rePwd" id="rePwd" placeholder="비밀번호를 한번 더 입력해주세요"/>
					</tr>
					<tr>
						<th align="left">이름<span>*</span></th>
						<td align="center"><input type="text" name="userName" id="userName" placeholder="이름을 입력해주세요"/>
						</td>
					</tr>
					<tr>
						<th align="left">이메일<span>*</span></th>
						<td align="center"><input type="text" name="mailAddress" id="mailAddress" placeholder="예:recipe@recipe.com"/>
						</td>
					</tr>
					<tr>
						<th align="left">주소<span>*</span></th>
						<td align="center"><input type="text" name="address" id="address" placeholder="주소를 입력해주세요"/>
						</td>
					</tr>
					<tr>
						<td colspan="3" align="center"><input type="submit" value="가입하기" name="signup" /></td>
					</tr>
				</table>
				<input type="hidden" name="authority" value="ROLE_MEMBER" /> <input
					type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			</form>
		</div>
	</div>
</body>
</html>