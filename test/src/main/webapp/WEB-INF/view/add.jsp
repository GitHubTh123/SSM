<%--
  Created by IntelliJ IDEA.
  User: 87311
  Date: 2020/7/20
  Time: 15:19
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
<form action="student/add.do" method="post">
    姓名：<input type="text" name="name"><br>
    年龄：<input name="age" type="number"><br>
    <input type="submit" value="确认添加">
</form>

</body>
</html>
