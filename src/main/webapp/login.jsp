<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/18
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>人事管理登陆</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style="" background="imgs/7.png">
<div class="container">
    <h1 align="center" class="font-weight-bolder">人事管理系统登陆</h1>
    <div class="container" style="background-color: #FFFFFF;height: 500px;margin-left: 28%;width: 40%;">
        <div style="padding: 100px 100px 10px;">
            <form class="bs-example bs-example-form" role="form" action="/users/login" method="get">
                <p>用户名:</p>
                <div class="input-group" >
                    <span class="input-group-addon">@</span>
                    <input type="text" class="form-control" placeholder="用户名" name="uLoginname">
                </div>
                <br>
                <p>密码:</p>
                <div class="input-group">
                    <span class="input-group-addon">$</span>
                    <input type="password" class="form-control" placeholder="密码" name="uPass">
                </div>
                <br />

                <button type="submit" class="btn btn-primary">登陆</button>
                <button type="button" class="btn btn-primary" onclick="history.go(-1)">取消</button>
            </form>
        </div>
    </div>
</div>
<script>
</script>
</body>
</html>
