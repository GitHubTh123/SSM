<%--
  Created by IntelliJ IDEA.
  User: 87311
  Date: 2020/7/17
  Time: 21:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="update.do">
    编号：<input type="number" name="id" readonly value="${pro.id}"><br>
    城市：<input type="text" name="name" value="${pro.name}"><br>
    省会：<input name="shenghui" type="text" value="${pro.shenghui}"><br>
    简称：<input type="text" name="jiancheng" value="${pro.jiancheng}"><br>
    <input type="submit" value="确认修改">

</form>

</body>
</html>
