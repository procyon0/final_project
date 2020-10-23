<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/includes/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find Id Result</title>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<link href="${path}/resources/css/findidresult.css" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
</head>
<script>
function resultId(){
	
	$.ajax({
		type:"post",
		url:"/member/findidresult",
		
		dataType:"text",
		data:{
			"findName" : $("#findName").val(),
			"findMail" : $("#findMail").val()},
		beforeSend:function(xhr){
			xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
			},

		success: function(data){
			if(data.length != 0){
			//alert("찾으시는 아이디는 "+data+" 입니다.");
				$(".result").html(data);
				consonle.log(data);
			}else{
				alert("일치하는 정보가 없습니다.");
				location.href="/member/findid";
			}
		}
	})
}

function moveLogin(){
	location.href="/secu/login";
	}
</script>
<body>
<div class="wrap_box">
<div class="box">
<h3>아이디 찾기</h3>
<div class="idbox">

<br><br><br><br>고객님의 아이디는 <div class="result"></div> 입니다.
</div>
<button type="button" name="login" onclick="moveLogin();">로그인</button>
</div>
</div>
</body>
</html>