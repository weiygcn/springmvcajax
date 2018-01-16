<%--
  Created by IntelliJ IDEA.
  User: weiygcn
  Date: 2017/11/25
  Time: 18:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>checkName</title>
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#username').blur(function () {
                $.post("checkName.do", {username: $(this).val()}, function (data) {
                    alert(data)
                    if (data == 1) {
                        $('#username').css("border", "1px solid red");
                    } else {
                        $('#username').css("border", "1px solid green");
                    }
                },'json')
            });
        });
    </script>
</head>
<body>
用户名：<input type="text" id="username"/>
</body>
</html>
