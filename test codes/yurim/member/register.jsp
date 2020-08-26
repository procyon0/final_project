<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>sign up</h1>
<form name="signup" action="/member/register" method="post"><p>
아이디:<input type="text" name="userId" id="userId"/><p>
비밀번호:<input type="password" name="userPwd" id="userPwd"/><p>
비밀번호 확인:<input type="password" name="rePwd" id="rePwd"/><p>
이름:<input type="text" name="userName" id="userName"/><p>
이메일:<input type="text" name="mailAddress" id="mailAddress"/><p>
주소:<input type="text" name="address" id="address"/><p>
<input type="submit" value="회원가입" name="signup"/>
</form>
</body>
</html>