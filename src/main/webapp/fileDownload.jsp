<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/30
  Time: 17:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<c:if test="${empty filelist}">
<c:redirect url="/document/showAll"></c:redirect>
</c:if>
<head>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Title</title>
</head>
<body>
<table class="table table-bordered">
<tr>
    <th>序号</th>
    <th>文件名</th>
    <th>上传者</th>
    <th>操作</th>
</tr>
<c:forEach items="${filelist}" var="t">
    <tr id="${t.dId}">
        <td>${t.dId}</td>
        <td>${t.dFilename}</td>
        <td>${t.dCreatedate}</td>
        <td>${t.uId}</td>
        <td>
           <a href="../${t.dFilepath}">下载</a>
            <button class="btn btn-danger" onclick="deleteDocument(${t.dId})">删除</button></td>
        </td>
    </tr>
</c:forEach>
</table>
<script>
    function deleteDocument(id) {
        $.get("../document/delete","id="+id,function (res) {
            // console.log(res)
            // $(this).parent().empty();
            // $("body").remove(this.parent())
            window.alert("删除成功")
            location.reload();
        })
    }
</script>
</body>
</html>
