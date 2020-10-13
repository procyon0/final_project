<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 상세</title>
<script src="/resources/js/jquery-3.5.1.js"></script>
<link rel="stylesheet" href="/resources/css/bootstrap.css">
<script type="text/javascript" src="/resources/js/bootstrap.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	<jsp:include page="../includes/header.jsp"></jsp:include>
	<div class="jumbotron jumbotron-fluid" style="background-color: navajowhite;">
        <div class="container text-center">
            <h1 class="h1">주문 상세</h1>
        </div>
    </div>
    <div class="container">
        <h3 class="h3">주문 상세 정보</h3>
        <div class="col-sm-12">
            <table class="table table-bordered">
                <tr class="text-center">
                    <td colspan="2">주문 번호</td>
                    <td colspan="2">11111111</td>
                </tr>
                <tr>
                    <td>주문 일시</td>
                    <td>2020년 9월 23일 15시 50분 01초</td>
                    <td>결제 일시</td>
                    <td>2020년 9월 23일 15시 50분 01초</td>
                </tr>
                <tr>
                    <td>주문자</td>
                    <td>김용용</td>
                    <td>연락처</td>
                    <td>010-0000-0000</td>
                </tr>
                <tr>
                    <td>배송 주소</td>
                    <td colspan="3">(08226)서울특별시 금천구 벚꽃로 309 가산디지털단지역</td>
                </tr>
                <tr>
                    <td>배송 메시지</td>
                    <td colspan="3">부재시 경비실에 맡겨주세요.</td>
                </tr>
            </table>
        </div>
        <br>
        <h3 class="h3">주문 상품 정보</h3>
        <table class="table">
            <thead style="text-align: center;">
                <tr>
                    <td colspan="2">상품 이름</td>
                    <td>수량</td>
                    <td>상품 금액</td>
                    <td>합계</td>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td width="10%" class="text-center align-middle"><img src="../img/gora.png" width="100px"></td>
                    <td class="align-middle">고라파덕</td>
                    <td class="text-center align-middle w-25">2</td>
                    <td class="text-center align-middle">1,000원</td>
                    <td class="text-center align-middle">2,000원</td>
                </tr>
                <tr>
                    <td width="10%" class="text-center align-middle"><img src="../img/boogi.png" width="100px"></td>
                    <td class="align-middle">꼬부기</td>
                    <td class="text-center align-middle w-25">3</td>
                    <td class="text-center align-middle">1,500원</td>
                    <td class="text-center align-middle">4,500원</td>
                </tr>
            </tbody>
            <tfoot>
                <tr class="table-warning">
                    <td colspan="2">
                        <h3 class="h3 text-center">합계</h3>
                    </td>
                    <td></td>
                    <td colspan="2" class="text-center align-middle">
                        <h3 class="h3">6,500원</h3>
                    </td>
                </tr>
            </tfoot>
        </table>
        <br>
        <h3 class="h3">결제 정보</h3>
        <hr>
        <div class="w-25 text-center">
            <table class="table table-bordered">
                <tr>
                    <td class="font-weight-bold">결제 방법</td>
                    <td>신용카드</td>
                </tr>
                <tr>
                    <td>결제 금액</td>
                    <td>6,500 원</td>
                </tr>
            </table>
        </div>
    </div>
    <div class="container text-center">
        <button class="btn btn-warning">목록으로</button>
    </div>
</body>
</html>