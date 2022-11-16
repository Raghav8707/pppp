<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="beanDao" class="com.Infinite.inventoryproject.OrderDAO"/>
	<c:set var="user" value="${userName }"/>
	<table border="5" align="center">
		<tr>
			<th>Stock Id</th>
			<th>Quantity</th>
			<th>Item Name</th>
			<th>Price</th>	
		</tr>
		<c:forEach var="Order" items="${beanDao.showorder(user)}">	
			<tr>
				<td>${Order.stockId}</td>
				<td>${Order.quantityOrder}</td>	
			</tr>
		</c:forEach>
	
	</table>
</body>
</html>