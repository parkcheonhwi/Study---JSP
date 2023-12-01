<%@page import="com.app.vo.ProductVO"%>
<%@page import="java.util.List"%>
<%@page import="com.app.dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
</head>
<body>
	<button onclick="location.href='/mvc/list.product'">주문하러 가기</button>
	<table>
		<tr>
			<th>주문 번호</th>
			<th>회원 이름</th>
			<th>상품명</th>
			<th>상품가격</th>
			<th>주문수량</th>
			<th>주문가격</th>
		</tr>
		<c:forEach var="order" items="${orderList}">
			<tr>
				<td><c:out value="${order.id}"/></td>
				<td><c:out value="${order.memberName}"/></td>
				<td><c:out value="${order.productName}"/></td>
				<td><c:out value="${order.productPrice}"/></td>
				<td><c:out value="${order.productCount}"/></td>
				<td><c:out value="${order.totalPrice}"/></td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>












