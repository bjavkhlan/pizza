<%--
  Created by IntelliJ IDEA.
  User: jagaa
  Date: 3/18/19
  Time: 9:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>My Orders</title>
</head>
<body>
    <c:forEach items="${orders}" var="order" >
        <h2>Order: </h2>
        Invoice: $${order.cart.calculateTotalPrice()} <br />
        Address: ${order.address} <br />
        <ul>
            <c:forEach items="${order.cart.items}" var="item">
                <li>${item.pizza.type}  * ${item.quantity} = $${item.calculatePrice()}</li>
            </c:forEach>
        </ul>
    </c:forEach>
</body>
</html>
