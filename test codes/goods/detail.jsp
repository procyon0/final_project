<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/goodsDetail.css">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lemonada&display=swap" rel="stylesheet">

<%@ include file="../includes/header.jsp" %>
</head>
<body>
    <!-- <div id ="search">
        <form action="goodsDetail.html" method="GET">
            <input type="search" title="검색" placeholder="상품을 검색해보세요!">
            <button id="button">검색</button> 
        </form>
    </div> -->

    <div id="detail_goods">
        <img src='<c:out value="${detail.image}"/>' width="430" heigth="552"/>
        <div id="description">    
            <p class="goods_name">
                <strong class="goods_name">'<c:out value="${detail.goodsName}"/>'</strong>
                <span class="desc">'<c:out value="${detail.ex}"/>'</span>
            </p>
            <p class="goods_price">    
                <span class="price">'<c:out value="${detail.price}"/>'원</span>
            </p>
        </div> 
            <div class="goods_info">
                <dl class="list"> 
                    <dt class="tit">판매단위</dt>
                    <dd class="desc">1박스</dd>
                </dl>             
                <dl class="list">
                    <dt class="tit">중량/용량</dt>
                    <dd class="desc">제품별상이(컨텐츠참조)</dd>
                </dl>
            </div>
        
    </div>
</body>
</html>