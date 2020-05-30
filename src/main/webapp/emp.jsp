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
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style>
        .table-bordered{
            width: 90%;
        }
    </style>
</head>
<body>


<table class="table table-bordered table-condensed">
    <caption>用户管理系统</caption>
    <thead>
    <tr>
        <th>职员id</th>
        <th>员工名称</th>
        <th>员工性别</th>
        <th>职位名称</th>
        <th>部门名称</th>
        <th>员工身份id</th>
        <th>员工住址</th>
        <th>员工电话</th>
        <th>员工邮箱</th>
        <th>入职日期</th>
        <th>操作</th>
    </tr>
    </thead>

    <tbody id="tr1">

    </tbody>
<script>
    window.onload= function () {
        $.get("emp/showAll","pageNum=1&size=5",function (res) {
            $("#tr1").empty();

            for (var i = 0 ; i < res.length; i++){
                var html = "<tr>";
                html+= "<td>"+res[i].eid +"</td>"
                html+= "<td>"+res[i].ename +"</td>"
                html+= "<td>"+res[i].esex +"</td>"
                html+= "<td>"+res[i].job.jname +"</td>"
                html+= "<td>"+res[i].dept.dname +"</td>"
                html+= "<td>"+res[i].ecardid +"</td>"
                html+= "<td>"+res[i].eaddress +"</td>"
                html+= "<td>"+res[i].ephone +"</td>"
                html+= "<td>"+res[i].eemail +"</td>"
                html+= "<td>"+res[i].ecreatedate +"</td>"
                html+="<td><div class='btn-group'><button type='button' class='btn btn-default'>修改</button><button type='button' class='btn btn-default'>删除</button></div>"
                html+="</tr>"
                $("#tr1").append(html);
            }
        })
    }
</script>
</table>
</body>
</html>
