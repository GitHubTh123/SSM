<%--
  Created by IntelliJ IDEA.
  User: 87311
  Date: 2020/7/17
  Time: 21:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="js/jquery-3.5.1.js"></script>
    <script type="text/javascript">
        function init() {
            $.ajax({
                dataType: "json",
                url: "all.do",
                success: function (data) {
                    $("#bd").empty()
                    $.each(data, function (i, n) {
                        $("#bd").append("<tr>")
                            .append("<td>" + n.id + "</td>")
                            .append("<td>" + n.name + "</td>")
                            .append("<td>" + n.shenghui + "</td>")
                            .append("<td>" + n.jiancheng + "</td>")
                            .append("<td> <a href='xiugai.do?id="+ n.id+"'a>"+"修改</a></td>")
                            .append("<td> <a href='delete.do?id="+ n.id+"'a>"+"删除</a></td>")
                            .append("</tr>")
                    })
                }
            })
        }

        $(function () {
            init()
            $("#btn").on("click", function () {
                init()
            })
        })
    </script>
</head>
<body>
<input type="button" id="btn" value="刷新">
<table cellpadding="1px" cellspacing="1px" border="1px">
    <tr>
        <th>编号</th>
        <th>城市</th>
        <th>省会</th>
        <th>简称</th>
        <th>---</th>
        <th>---</th>
    </tr>
    <tbody id="bd"></tbody>
</table>

</body>
</html>
