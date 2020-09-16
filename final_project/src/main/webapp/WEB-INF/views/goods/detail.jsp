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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<%@ include file="../includes/header.jsp" %>

</head>
<body>
    <div id="detail_goods">
        <img src='<c:out value="${detail.image}"/>' width="430" heigth="552"/>
        <div id="description">    
            <p class="goods_name">   
                <strong class="goods_name"><c:out value="${detail.goodsName}"/></strong>
                <span class="desc"><c:out value="${detail.ex}"/></span>
            </p>
            <p class="goods_price">    
                <span class="price"><c:out value="${detail.price}"/>원</span>
            </p>
        	<div class="goods_info">
                <dl class="list"> 
                    <dt class="tit">판매단위</dt>
                    <dd class="desc">1박스</dd>
                </dl>             
                <dl class="list">
                    <dt class="tit">중량/용량</dt>
                    <dd class="desc"><c:out value="${detail.weight}"/></dd>
                </dl>
                <!--웹크롤링후에 table수정하면서 페이지 확인하기  -->
                <dl class="list"> 
                    <dt class="tit">판매단위</dt>
                    <dd class="desc">1박스</dd>
                </dl>             
                <dl class="list">
                    <dt class="tit">중량/용량</dt>
                    <dd class="desc"><c:out value="${detail.weight}"/></dd>
                </dl>                
                <dl class="list"> 
                    <dt class="tit">판매단위</dt>
                    <dd class="desc">1박스</dd>
                </dl>             
                <dl class="list">
                    <dt class="tit">중량/용량</dt>
                    <dd class="desc"><c:out value="${detail.weight}"/></dd>
                </dl>              
            </div> 
        </div> 
        <!-- 장바구니에 담기버튼 -->
        <div>
        	<input type="submit" value="장바구니담기">
        </div>
        
        
        
            
    </div>
</body>
</html>