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
</head>
<body>
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
</body>
</html>
