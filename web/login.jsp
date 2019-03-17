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

    <script type="text/javascript"
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="<c:url value='resources/js/script.js'/>"></script>
</head>
<body>
    <div class="container">
        <form action="login" method="post">
            Username: <input name="username"/><br/>
            Password: <input type="password" name="password" /><br/>
            <input type="checkbox" value="true" name="remember" id="remember" /><label for="remember">Remember me</label><br />
            <input type="submit" value="Login" />
        </form>
    </div>
</body>
</html>
