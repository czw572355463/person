<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/28
  Time: 19:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Title</title>
</head>
<body>
<table class="table table-bordered">
    <caption>部门管理界面</caption>
    <thead>
    <tr>
        <th>部门id</th>
        <th>部门名称</th>
        <th>部门描述</th>
        <th>操作</th>
    </tr>
    </thead>

    <tbody id="tr1">

    </tbody>

</table>
<script>
    window.onload = function () {
        $.get("dept/showAll","pageNum=1&size=5",function (res) {
        $("tr1").empty();

        for (var i = 0 ; i < res.length; i++){
            var html = "<tr>";
            html+= "<td>"+res[i].did +"</td>"
            html+= "<td>"+res[i].dname +"</td>"
            html+= "<td>"+res[i].dremark +"</td>"
            html+="<td><div class='btn-group'><button type='button' class='btn btn-default'>修改</button><button type='button' class='btn btn-default'>删除</button></div>"
            html+="</tr>"
            $("#tr1").append(html);
        }
    }) }

</script>
</body>
</html>
