<%--
  Created by IntelliJ IDEA.
  User: 87311
  Date: 2020/7/20
  Time: 15:33
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
<form action="student/xiugai.do">
    编号：<input type="number" value="${stu.id}" readonly name="id"><br>
    姓名：<input type="text" name="name" value="${stu.name}"><br>
    年龄：<input type="number" name="age" value="${stu.age}"><br>
    <input type="submit" value="确认修改">
</form>

</body>
</html>
