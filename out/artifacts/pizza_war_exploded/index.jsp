<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: julia
  Date: 2019-03-16
  Time: 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <table id="tbl_products">
      <thead>
      <tr>
          <th>Type</th>
          <th>Price</th>
          <th>Image</th>
      </tr>
      </thead>
      <tbody>
      <c:forEach items="${pizzas}" var="pizza">
          <tr>
              <td><c:out value="${pizza.type}" /></td>
              <td><c:out value="${pizza.price}" /></td>
              <td><img src="<c:url value="${pizza.imgURL}" />" ></td>
          </tr>
      </c:forEach>
      </tbody>
  </table>


  </body>
</html>
