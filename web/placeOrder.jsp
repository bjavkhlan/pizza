<%--
  Created by IntelliJ IDEA.
  User: jagaa
  Date: 3/17/19
  Time: 8:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Place Order</title>
    <script type="text/javascript"
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="<c:url value='resources/js/order.js'/>"></script>
    <link href="resources/css/placeOrder.css" rel="stylesheet" >
</head>
<body>
    <div class="container">
        <h2>Your order</h2>
        <div id="cartItems">

        </div>
        <h2>Address info</h2>
        <div id="payment">
          <form action="order" method="post">
            <input type="text" name="address" placeholder="Address*" required/><br />
            <input type="text" name="address2" placeholder="Apt/Suite/Bldg" /><br />
            <input type="text" name="city" placeholder="City*" size="2"/>
            <input type="text" name="state" placeholder="State*"  size="2"/>
            <input type="number" name="zip" placeholder="Zip*"  size="2"/><br/>
            <input type="submit" value="Place Order"/>
          </form>
        </div>
    </div>
</body>
</html>
