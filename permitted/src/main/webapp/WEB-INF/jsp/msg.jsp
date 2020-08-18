<%--
  Created by IntelliJ IDEA.
  User: 87311
  Date: 2020/7/18
  Time: 14:16
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
${msg}<br>
<a href="index.jsp">返回主页</a>

</body>
</html>
