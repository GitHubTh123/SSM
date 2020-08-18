<%--
  Created by IntelliJ IDEA.
  User: 87311
  Date: 2020/7/20
  Time: 10:54
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
<script type="text/javascript" src="js/jquery-3.5.1.js">
</script>
<script type="text/javascript">
    function init() {
        $.ajax({
            url: "student/main.do",
            dataType: "json",
            async:false,
            success: function (data) {
                $("#tbd").empty()
                $.each(data, function (i, n) {
                    $("#tbd").append("<tr>")
                        .append("<td><input type='checkbox' name='flag' value='" + n.id + "'></td>")
                        .append("<td>" + n.id + "</td>")
                        .append("<td>" + n.name + "</td>")
                        .append("<td>" + n.age + "</td>")
                        .append("<td><a href='student/toxiugai.do?id=" + n.id + "'>" + "修改</a></td>")
                        .append("<td><a href='student/delete.do?id=" + n.id + "'>" + "删除</a></td>")
                        .append("</tr>")

                    //过滤器：[name=value]：左边表示属性，；右边是属性对应的值；表示选择；

                })
            }
        })
    }

    $(function () {
        init()
        $("input[name=flag]").click(function () {

            $("#ck").prop("checked", $("input[name=flag]").length == $("input[name=flag]:checked").length);
        })

        $("#btn").on("click", function () {
            init()
        })

        //默认上，我们使用的色块，组成是rgb；red,green,blue；一共六位，#FFFFFF；前面两位是红色占比；中间是绿色；后面是蓝色；
        //#add它默认成为rgb色块中的一部分了；add000;
        //增加学生

        $("#add").on("click", function () {
            window.location.href = "student/toadd.do"
        })
        //复选框修改
        $("#update").click(function () {
            var $checkbox = $(":checkbox:checked");
            if ($checkbox.length > 1) {
                alert("至多只能选择一条记录进行修改")
            } else if ($checkbox.length < 1) {
                alert("请选择要修改的记录")
            } else {
                var id = $checkbox.val();
                window.location.href = "student/toxiugai.do?id=" + id
            }
        })
        //全选  目前不会撤销。。。。property属性；可以

        //access:表示入口，或者是通道，英文的意义是表示一种接近状态；接近某种事物的过程；
        //本质上，attribute和property调用的函数是一样的；
        //用法：是jQuery函数，有两种用法：
        //1.只需要一个参数，表示的是对应的属性的值；意思就是返回一个结果
        //2.添加两个参数，第一个参数表示的是属性；第二个参数表示的是赋值给第一参数的值；
        //比如下面的$("#ck").prop("checked")，这种意思表示的就是返回的是true或者是false；

        //假设是一个input标签，类型是text，那么他的value值可以使用以下的方式进行赋值
        //$("#text").prop("value","你是傻逼吗？")


        $("#ck").click(function () {
            $("input[name=flag]").prop("checked", this.checked)
        })


//多选删除
        $("#delete").click(function () {
            var num = $(":checkbox:checked");
            var array = new Array(num.length);
            for (var i = 0; i < num.length; i++) {
                array[i] = num[i].value
            }
            window.location.href = "student/delSome.do?arr=" + array;
        })

    })
</script>
<table align="center" width="80%" cellpadding="8" cellspacing="0">
    <tr align="center">
        <td><h3>欢迎使用学生管理系统</h3></td>
    </tr>
    <tr>
        <td><input type="button" id="btn" value="刷新">
            <input type="button" id="add" value="添加">&nbsp;
            <input type="button" id="update" value="修改">

            <input type="button" id="delete" value="删除">&nbsp;

        </td>
    </tr>
</table>

<table align="center" width="80%" border="1px" cellpadding="8" cellspacing="0">
    <tr>
        <th><input type="checkbox" id="ck" value="0">全选</th>
        <th>编号</th>
        <th>姓名</th>
        <th>年龄</th>
        <th>---</th>
        <th>---</th>
    </tr>
    <tbody id="tbd">

    </tbody>
</table>

</body>
</html>
