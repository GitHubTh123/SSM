<%--
  Created by IntelliJ IDEA.
  User: 87311
  Date: 2020/7/18
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>Title</title>
</head>
<body>
<form action="student/add.do">
    姓名：<input type="text" name="name"><br>
    年龄：<input type="number" name="age"><br>
    <input type="submit" value="注册">
</form>


</body>
</html>
