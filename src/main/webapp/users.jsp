<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/27
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<table class="table table-bordered">
    <caption>用户管理界面</caption>
    <thead>
    <tr>
        <th>用户登录名</th>
        <th>用户名</th>
        <th>用户状态</th>
        <th>用户创建日期</th>
        <th>操作</th>
    </tr>
    </thead>

    <tbody id="tr1">
    <tr>

    </tr>
    </tbody>

</table>

<script>
    window.onload = function () { $.get("users/showAll","pageNum=1&size=5",function (res) {
        $("#tr1").empty();
        for (var i = 0 ; i < res.length; i++){
            var html = "<tr>";
            html+= "<td>"+res[i].uloginname +"</td>"
            html+= "<td>"+res[i].uname +"</td>"
            html+= "<td>"+res[i].ustate +"</td>"
            html+= "<td>"+res[i].udate+"</td>"
            html+="<td><div class='btn-group'><button type='button' class='btn btn-default'>修改</button><button type='button' class='btn btn-default'>删除</button></div>"
            html+="</tr>"
            $("#tr1").append(html);
        }

    }) }

</script>
</body>
</html>
