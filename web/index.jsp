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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="${pageContext.request.contextPath}/resources/css/styles.css" type="text/css" rel="stylesheet">
  </head>
  <body>

  <% if(session.getAttribute("user") != null) {
    response.sendRedirect("todos.jsp");
  }%>

  <div class="login-form">
    <form action="login" method="post">
      <h2 class="text-center">Log in</h2>
      <div class="form-group">
        <input type="text" name="login" class="form-control" placeholder="Login" required="required">
      </div>
      <div class="form-group">
        <input type="password" name="password" class="form-control" placeholder="Password" required="required">
      </div>
      <div class="form-group">
        <input type="submit" class="btn btn-primary btn-block">Log in</input>
      </div>
      <div class="clearfix">
        <label class="pull-left checkbox-inline"><input type="checkbox"> Remember me</label>
        <a href="#" class="pull-right">Forgot Password?</a>
      </div>
    </form>
    <p class="text-center"><a href="#">Create an Account</a></p>
  </div>

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
