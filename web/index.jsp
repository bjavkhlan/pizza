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
      <link href="resources/css/index.css" rel="stylesheet" />
      <script type="text/javascript"
              src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  </head>
  <body>
  <div class="header"></div>
  <div class="navbar"></div>
  <div class="main">
      <c:forEach items="${pizzas}" var="pizza">
          <div class="pizza" pizzaId="${pizza.id}">
              <div class="col-left">
                  <h3><c:out value="${pizza.type}" /></h3>
                  <p>
                      Enjoy this freshly prepared pizza for family dinner or a group
                      lunch, including pepperoni, seasoned pork, beef, mushrooms,
                      greenMore...
                  </p>
                  <div class="control">
                      <select class="control-inside size" price="${pizza.price}">
                          <c:forEach items="${size}" var="size">
                              <option value=${size} ><c:out value="${size}" /></option>
                          </c:forEach>
                      </select>
                      <br />
                      <select class="control-inside">
                          <c:forEach items="${pan}" var="pan">
                              <option value=${pan}><c:out value="${pan}" /></option>
                          </c:forEach>
                      </select>
                      <br />
                      <input type="submit" value="Add to cart" class="control-inside addToCart" />
                  </div>
              </div>
              <div class="col-right">
                  <img src="<c:url value="${pizza.imgURL}" />" >
                  <p>Price: $<span class="price"><c:out value="${pizza.price}" /></span></p>
              </div>
          </div>
      </c:forEach>
  </div>
  <div class="footer"></div>

    <script src="resources/js/index.js"></script>

  </body>
</html>
