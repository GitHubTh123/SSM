<%--
  Created by IntelliJ IDEA.
  User: 87311
  Date: 2020/7/20
  Time: 10:21
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
    <script type="text/javascript" src="js/jquery-3.5.1.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#btn").on("click", function () {
                window.location.href="all.jsp"
            })
        })
    </script>

    <h2>欢迎使用学生管理系统</h2>
    <input type="button" value="开始使用" id="btn">

</div>

</body>
</html>
