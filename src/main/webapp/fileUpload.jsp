<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/30
  Time: 12:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
 <form>
     <fieldset>
         <legend>文件上传</legend>
         <input type="file" name="uploadfile"><button>上传</button>
     </fieldset>
 </form>
<table class="table table-bordered">
    <tr>
        <th>序号</th>
        <th>文件名</th>
        <th>文件大小</th>
        <th>操作</th>
    </tr>
    <tr>
        <td>测试数据</td>
        <td>测试数据</td>
        <td>测试数据</td>
        <td><button class="btn btn-default">下载</button><button class="btn btn-danger">删除</button></td>
    </tr>
</table>
</body>
</html>
