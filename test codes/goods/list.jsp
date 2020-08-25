<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/goodsList.css">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lemonada&display=swap" rel="stylesheet">

<%@ include file="../includes/header.jsp" %>
    <div id ="search">
        <form action="/goods/detail" method="GET">
            <input type="search" title="검색" placeholder="상품을 검색해보세요!">
            <button id="button">검색</button> 
        </form>
    </div>
    <div id="categoryBox">
        <button id ="M_button"><a href="#">밀키트</a></button>
        <button id ="F_button"><a href="#">간편식</a></button>
        <button id ="s_button"><a href="#">소분재료</a></button>
    </div>
</head> 
<body>
    <div id="list_goods">
        <ul>
        	<c:forEach items="${list}" var="goods">
            <li id="goods">
               <a href='/goods/detail?goodsId=<c:out value="${goods.goodsId}"/>'><img src='<c:out value="${goods.image}"/>' width="249" height="320"></a>                                                        
                <div id="info_goods">
                    <p id="title"><a href='/goods/detail?goodsId=<c:out value="${goods.goodsId}"/>'><c:out value="${goods.manufacturer}"/> <c:out value="${goods.goodsName}"/></a></p>
                    <p id="price"><c:out value="${goods.price }"/>원</p>
                    <p id="desc"><c:out value="${goods.ex}"/></p>
                </div>                
            </li>
            </c:forEach>
        </ul>   
    </div>     
</body>
</html>