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
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.5.1.js">
    </script>
</head>
<body>
<script type="text/javascript">
    var num = 1;

    function init() {
        $.ajax({
            url: "student/all.do",
            dataType: "json",
            success: function (data) {
                $("#tbd").empty()
                $.each(data, function (i, n) {
                    $("#tbd").append("<tr>")
                        .append("<td><input type='checkbox' id='ck" + num + "' value='" + n.id + "'></td>")
                        .append("<td>" + n.id + "</td>")
                        .append("<td>" + n.name + "</td>")
                        .append("<td>" + n.age + "</td>")
                        .append("<td><a href='student/xiugai.do?id=" + n.id + "'>" + "修改</a></td>")
                        .append("<td><a href='student/delete.do?id=" + n.id + "'>" + "删除</a></td>")

                        /* .append("<td>修改<input type=\"checkbox\" id=\"ck\" value=\"del\"></td>")*/
                        /*.append("<td>删除<input type=\"checkbox\" id=\"ck\" value=\"del\"></td>")*/
                        .append("</tr>")
                    num++;
                })
            }
        })
    }

    $(function () {
        init()
        $("#btn").on("click", function () {
            init()
        })
        $("#update").click(function () {
            var s = $(":checkbox:checked")
            if (s.length < 1) {
                alert("请选择要修改的记录")
            } else if (s.length > 1) {
                alert("对不起至多选择一条记录进行修改")
            } else {
                var id = s.val()
                window.location.href = "student/xiugai.do?id=" + id
            }
        })

        $("#ck").change(function () {
         $(":checkbox").attr("checked","checked")

        })
        $("#delete").click(function () {
            var val = $(":checkbox:checked");
            var array = new Array(val.length);
            for (var i = 0; i <val.length ; i++) {
               array[i]=val[i].value
            }
            window.location.href="student/delSome.do?arr="+array

        })


    })


</script>


<input type="button" value="刷新" id="btn">&nbsp;<input type="button" value="修改" id="update">&nbsp;<input type="button"
                                                                                                        value="删除"
                                                                                                        id="delete">&nbsp;
<table border="1px" width="80%">
    <tr id="tr1">
        <th><input type="checkbox" id="ck" value="0"></th>
        <th>编号</th>
        <th>姓名</th>
        <th>年龄</th>
        <th>***</th>
        <th>***</th>
    </tr>
    <tbody id="tbd">

    </tbody>
</table>
<a href="index.jsp">回到首页</a>
</body>
</html>
