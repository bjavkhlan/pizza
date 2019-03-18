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
    <link href ="resources/css/order.css" rel="stylesheet">
</head>
<body>
    <c:forEach items="${orders}" var="order" >
        <div class="container">
            <h2>Order:</h2>
            <div id="order">
                <table>
                    <tr>
                        <th>Pizza Type</th>
                        <th>Size</th>
                        <th>Pan</th>
                        <th>Quantity</th>
                    </tr>
                    <c:forEach items="${order.cart.items}" var="item">
                        <tr>
                            <td>${item.pizza.type}</td>
                            <td>${item.size}</td>
                            <td>${item.pan}</td>
                            <td>${item.quantity}</td>
                        </tr>

                    </c:forEach>
                    </table>
                <table>
                    <tr>
                        <th><strong>Invoice</strong></th>
                        <th><strong>Address</strong></th>
                    </tr>

                    <tr>
                        <td>$${order.cart.calculateTotalPrice()}</td>
                        <td>${order.address}</td>
                    </tr>

                </table>
            </div>
        </div>
    </c:forEach>
</body>
</html>
