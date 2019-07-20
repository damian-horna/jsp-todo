<%--
  Created by IntelliJ IDEA.
  User: apilia
  Date: 7/20/2019
  Time: 7:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>

  <% if(session.getAttribute("user") != null) {
    response.sendRedirect("todos.jsp");
  }%>
  <form action="login" method="post">
    Login: <input name="login" type="text">
    <br/>
    Password: <input name="password" type="password">
    <br/>
    <input type="submit" value="submit">
  </form>
  </body>
</html>
