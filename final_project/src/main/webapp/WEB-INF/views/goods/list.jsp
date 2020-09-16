<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/goodsList.css">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Lemonada&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<title>list_page</title>

<%@ include file="../includes/header.jsp"%>

<div id="search">
	<form id="searchForm" action="/goods/list" method="GET">
		<input id="search_S" type="search" title="검색" placeholder="상품 및 브랜드를 검색하세요!" name="keyword"> 
		
		
<%-- 		<input type="hidden" name='pageNum' value="${pageMaker.cri.pageNum}"> 
		<input type="hidden" name='amount' value="${pageMaker.cri.amount}"> 
		<input type="hidden" name='keyword' value='<c:out value="${pageMaker.cri.keyword}"/>'> --%>
		
		
		<button id="search_button">검색</button>
	</form>
</div>

	<script type="text/javascript">
	    var searchForm =$("#searchForm");
	    $('#searchForm button').on("click", function(e){
	    	//debugger;  
	    	var keyword=$('#search_S').val();
	    	
	    	console.log("keyword=" + keyword );
	    	
	    	if(searchForm.find("type[name= 'keyword' ]").val()){
	    		alert("키워드를입력");
	    		return false;
	    	}
	    	searchForm.find("input[name= 'pageNum' ]").val("1");
	    	e.preventDefault();
	    	
	    	searchForm.submit();
	    });
	    

	</script>
</head>
<body>	
<div class="container">
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#all"> 전체 </a></li>
	    <li><a data-toggle="tab" href="#meal"> 밀키트 </a></li>
	    <li><a data-toggle="tab" href="#fast"> 간편식 </a></li>
	    <li><a data-toggle="tab" href="#sub"> 소분재료 </a></li>
 
  </ul>

	  <div class="tab-content">
	    <div id="all" class="tab-pane fade in active">    
	      <h3>전체</h3>
	      <div id="list_goods">
			<ul>
				<c:forEach items="${list}" var="goods">
					<li id="goods"><a href='/goods/detail?goodsId=<c:out value="${goods.goodsId}"/>'>
						<img src='<c:out value="${goods.image}"/>' width="249" height="320"></a>
							<div id="info_goods">
								<p id="title">
									<a href='/goods/detail?goodsId=<c:out value="${goods.goodsId}"/>'>
									<c:out value="${goods.manufacturer}"/> <c:out value="${goods.goodsName}"/></a>
								</p>
								<p id="price">
									<c:out value="${goods.price}"/>원
								</p>
								<p id="desc">
									<c:out value="${goods.ex}"/>
								</p>
							</div>
					</li>
				</c:forEach>
			</ul>
		</div>
    </div>
    <div id="meal" class="tab-pane fade">
      <h3>밀키트</h3>
      <div id="list_goods">
		<ul>
			<c:forEach items="${list}" var="goods">
				<c:if test="${goods.category eq 'M'}">
					<li id="goods"><a href='/goods/detail?goodsId=<c:out value="${goods.goodsId}"/>'>
						<img src='<c:out value="${goods.image}"/>' width="249" height="320"></a>
							<div id="info_goods">
								<p id="title">
									<a href='/goods/detail?goodsId=<c:out value="${goods.goodsId}"/>'>
									<c:out value="${goods.manufacturer}"/> <c:out value="${goods.goodsName}"/></a>
								</p>
								<p id="price">
									<c:out value="${goods.price}"/>원
								</p>
								<p id="desc">
									<c:out value="${goods.ex}"/>
								</p>
							</div>
					</li>
				</c:if>
			</c:forEach>	
		</ul>
	</div> 
    </div>
    <div id="fast" class="tab-pane fade">
      <h3>간편식</h3>
      <div id="list_goods">
		<ul>
			<c:forEach items="${list}" var="goods">
				<c:if test="${goods.category eq 'F'}">
					<li id="goods"><a href='/goods/detail?goodsId=<c:out value="${goods.goodsId}"/>'>
						<img src='<c:out value="${goods.image}"/>' width="249" height="320"></a>
							<div id="info_goods">
								<p id="title">
									<a href='/goods/detail?goodsId=<c:out value="${goods.goodsId}"/>'>
									<c:out value="${goods.manufacturer}"/> <c:out value="${goods.goodsName}"/></a>
								</p>
								<p id="price">
									<c:out value="${goods.price}"/>원
								</p>
								<p id="desc">
									<c:out value="${goods.ex}"/>
								</p>
							</div>
					</li>
				</c:if>	
				</c:forEach>
		</ul>
	</div>
    </div>
    <div id="sub" class="tab-pane fade">
      <h2>소분재료</h2>
      <div id="list_goods">
		<ul>
			<c:forEach items="${list}" var="goods">
				<c:if test="${goods.category eq 'S'}">
					<li id="goods"><a href='/goods/detail?goodsId=<c:out value="${goods.goodsId}"/>'>
						<img src='<c:out value="${goods.image}"/>' width="249" height="320"></a>
							<div id="info_goods">
								<p id="title">
									<a href='/goods/detail?goodsId=<c:out value="${goods.goodsId}"/>'>
									<c:out value="${goods.manufacturer}"/> <c:out value="${goods.goodsName}"/></a>
								</p>
								<p id="price">
									<c:out value="${goods.price}"/>원
								</p>
								<p id="desc">
									<c:out value="${goods.ex}"/>
								</p>
							</div>
					</li>
				</c:if> 
			</c:forEach>
		</ul>
	   </div>
    </div>
  </div>
</div>

</body>
</html>