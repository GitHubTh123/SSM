<%--
  Created by IntelliJ IDEA.
  User: 87311
  Date: 2020/7/18
  Time: 14:03
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
<div align="center">
    <h3>欢迎</h3>
    <a href="add.jsp">增加</a>
    <a href="all.jsp">总览</a>
</div>

</body>
</html>
