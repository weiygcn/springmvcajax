<%--
  Created by IntelliJ IDEA.
  User: weiygcn
  Date: 2017/11/26
  Time: 13:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>list</title>
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#btn').click(function () {
                $.post("list.do", function (data) {
                    var html = "";
                    for (var i = 0; i < data.length; i++) {
                        html += "<tr><td>" + data[i].id + "</td><td>" + data[i].name + "</td><td>" + data[i].age + "</td></tr>";
                    }
                    $("#content").html(html);
                });
            });
        });
    </script>
</head>
<body>
<input type="button" id="btn" value="获取数据"/>
<table width="80%" align="center">
    <tr>
        <td>编号</td>
        <td>姓名</td>
        <td>年龄</td>
    </tr>
    <tbody id="content"></tbody>
</table>
</body>
</html>
