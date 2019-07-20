<%@ page import="com.jsp.model.Todo" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--
  Created by IntelliJ IDEA.
  User: apilia
  Date: 7/20/2019
  Time: 7:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

<%@ include file="navbar.jspf"%>

<h1>Hello ${sessionScope.user.login}!</h1>
<h2>Your todos:</h2>
<c:if test="${sessionScope.todos != null}">
    <c:forEach var="todo" items="${sessionScope.todos}">
        <c:out value="${todo.text}"></c:out>
        <br/>
    </c:forEach>
</c:if>
<form action="todos/add" method="post">
    Todo: <input type="text" name="todoText">
    <input type="submit" value="Add">
</form>
<form action="logout">
    <input type="submit" value="Log out">
</form>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
