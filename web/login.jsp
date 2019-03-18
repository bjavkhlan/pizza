<%--
  Created by IntelliJ IDEA.
  User: jagaa
  Date: 3/16/19
  Time: 12:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login</title>
    <link href="resources/css/login.css" rel="stylesheet" />
    <script type="text/javascript"
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="<c:url value='resources/js/script.js'/>"></script>
</head>
<body>
<div class="container">
    <div class="logo">Login to Julia's Pizza</div>
    <div class="login-item">
        <form action="login" method="post" class="form form-login">
            <div class="form-field">
                <label class="user" for="login-username"
                ><span class="hidden">Username</span></label
                >
                <input
                        id="login-username"
                        type="text"
                        class="form-input"
                        placeholder="Username"
                        name="username"
                        required
                />
            </div>

            <div class="form-field">
                <label class="lock" for="login-password"
                ><span class="hidden">Password</span></label
                >
                <input
                        id="login-password"
                        type="password"
                        class="form-input"
                        placeholder="Password"
                        name="password"
                        required
                />
            </div>
            <div class="form-field">
            <span>
              <input
                      class="checkbox"
                      type="checkbox"
                      value="true"
                      name="remember"
                      id="remember"
              />
              <label for="remember">Remember me</label>
            </span>

                <input type="submit" value="Log in" />
            </div>
        </form>
    </div>
</div>
</body>
</html>
