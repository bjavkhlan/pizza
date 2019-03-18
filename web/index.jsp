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
    <title>Pizza Delivery</title>
      <link href="resources/css/index.css" rel="stylesheet" />
      <link href="resources/css/header.css" rel="stylesheet" >
      <script type="text/javascript"
              src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  </head>
  <body>
  <div class="header">
      <div class="headerContent">
          <div class="menuItem leftMenu">
              <a href ="/"><img src="resources/images/logo2.png" /></a>

          </div>
          <div class = "rightMenu">
              <div class="menuItem userMenu">
                  <c:if test="${user==null}"><a href="/login">Login</a></c:if>
                  <c:if test="${user!=null}">
                      Hello, ${user.username}!<br />
                      <a href="/logout">(logout)</a>
                  </c:if>
              </div>
              <div class="menuItem">
                  <a href="/order">Orders</a>
              </div>
              <div class="menuItem">
                  <a href ="/placeOrder.jsp"><img src ="resources/images/white-cart.png" /></a>
                  [${cart.items.size()}]
              </div>
          </div>
      </div>
  </div>
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
                      <select class="control-inside pan">
                          <c:forEach items="${pan}" var="pan">
                              <option value=${pan}><c:out value="${pan}" /></option>
                          </c:forEach>
                      </select>
                      <br />
                      <div class="control-inside">
                          <select class="quantity">
                              <c:forEach var="i" begin="1" end="10">
                                  <option value=${i}><c:out value="${i}" /></option>
                              </c:forEach>
                          </select>
                          <input type="submit" value="Add to cart" class="addToCart" />
                      </div>
                      </div>

              </div>
              <div class="col-right">
                  <img src="<c:url value="${pizza.imgURL}" />" >
                  <p>Price: $<span class="price"><c:out value="${pizza.price}" /></span></p>
              </div>
          </div>
      </c:forEach>
  </div>

  <div class="footer">
      Made by Jack & Julia
  </div>

    <script src="resources/js/index.js"></script>

  </body>
</html>
