<%@ page import="com.jsp.model.Todo" %>
<%@ page import="java.util.List" %><%--
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
<%
    List<Todo> todos = (List<Todo>) request.getSession().getAttribute("todos");
    if (todos != null){
        for(Todo todo : todos){
%>
    <%= todo.getText() %>
    <br/>
<%
        }
    }
%>
<form action="todos/add" method="post">
    Todo: <input type="text" name="todoText">
    <input type="submit" value="Add">
</form>
<form action="logout">
    <input type="submit" value="Log out">
</form>
</body>
</html>
