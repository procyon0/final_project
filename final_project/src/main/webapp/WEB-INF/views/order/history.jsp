<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 목록</title>
<script src="/resources/js/jquery-3.5.1.js"></script>
<link rel="stylesheet" href="/resources/css/bootstrap.css">
<script type="text/javascript" src="/resources/js/bootstrap.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	<jsp:include page="../includes/header.jsp"></jsp:include>
	<div class="jumbotron jumbotron-fluid"
		style="background-color: navajowhite;">
		<div class="container" style="text-align: center;">
			<h1 class="h1" id="title">주문 내역</h1>
		</div>
	</div>
	<div class="container">
		<table class="table">
			<thead class="text-center table-warning">
				<tr>
					<td>주문일</td>
					<td>주문 번호</td>
					<td>주문 상품</td>
					<td>주문 금액</td>
					<td>배송 상태</td>
				</tr>
			</thead>
			<tbody class="text-center align-middle">
				<tr>
					<td>2020-09-23</td>
					<td>11111111</td>
					<td>고라파덕 외</td>
					<td>6,500원</td>
					<td>배송 준비</td>
				</tr>
				<tr>
					<td>2020-09-22</td>
					<td>22222222</td>
					<td>파이리</td>
					<td>1,500원</td>
					<td>배송중</td>
				</tr>
				<tr>
					<td>2020-09-21</td>
					<td>33333333</td>
					<td>피카츄</td>
					<td>500원</td>
					<td>배송 완료</td>
				</tr>
			</tbody>
		</table>
		<!--페이징 처리 해야함-->
	</div>
</body>
</html>