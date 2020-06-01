<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/1
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Title</title>
</head>
<body>
<table class="table table-bordered">
    <caption>职位管理界面</caption>
    <thead>
    <tr>
        <th>公告ID</th>
        <th>公告标题</th>
        <th>公告内容</th>
        <th>公告创建日期</th>
        <th>操作</th>
    </tr>
    </thead>

    <tbody id="tr1">

    </tbody>

</table>
<script>
    window.onload = function () {
        $.get("notice/showAll",function (res){
                $("tr1").empty();
                for (var i = 0 ; i < res.length; i++){
                    var html = "<tr>";
                    html+= "<td>"+res[i].nid +"</td>"
                    html+= "<td>"+res[i].ntitle +"</td>"
                    html+= "<td>"+res[i].ncontent +"</td>"
                    html+= "<td>"+res[i].uers.uname +"</td>"
                    html+="<td><div class='btn-group'><button type='button' onclick='update(this)' class='btn btn-default'>修改</button><button type='button' class='btn btn-default'>删除</button></div>"
                    html+="</tr>"
                    $("#tr1").append(html);
                }

        })

    }

</script>
</body>
</html>
