<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>人事管理系统</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        .navbar-collapse{
            padding-left: 5px;
            padding-right: 5px;
        }
        .nav>li{
            text-align: center;
        }
        .nav>li>a{
            color:#444;
            margin: 0 5px;
        }
        .nav-pills>li.active>a, .nav-pills>li.active>a:focus, .nav-pills>li.active>a:hover{
            background-color: #222222;
        }
        .dropdown-menu{
            min-width: 200px;
            margin-left: 40px;
            background-color: #E3E3E3;
        }
        .dropdown-menu>li>a{
            padding: 10px 15px;
        }

        body {
            width: 100%;
            height: 100%;
            margin: 0;
            overflow: hidden;
            background-color: #FFFFFF;
            font-family: "Microsoft YaHei", sans-serif;
        }
        .pageSidebar{
            width: 240px;
            height:100%;
            padding-bottom: 30px;
            overflow: auto;
            background-color: #e3e3e3;
        }
        .splitter {
            width: 5px;
            height: 100%;
            bottom: 0;
            left: 240px;
            position: absolute;
            overflow: hidden;
            background-color: #fff;
        }
        .pageContent{
            height: 100%;
            min-width: 768px;
            left: 246px;
            top: 0;
            right: 0;
            z-index: 3;
            padding-bottom: 30px;
            position: absolute;
        }
        .pageContainer{
            bottom: 0;
            left:0;
            right: 0;
            top: 53px;
            overflow: auto;
            position: absolute;
            width: 100%;
        }
        .footer {
            width: 100%;
            height: 30px;
            line-height: 30px;
            margin-top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            position: absolute;
            z-index: 10;
            background-color:#DFDFDF;
        }
    </style>
</head>
<body>
<!--顶部导航栏部分-->
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" title="logoTitle" href="#">Neo Yang</a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li role="presentation">
                    <a href="#">当前用户：<span class="badge">TestUser</span></a>
                </li>
                <li>
                    <a href="../login/logout">
                        <span class="glyphicon glyphicon-lock"></span>退出登录</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!-- 中间主体内容部分 -->
<div class="pageContainer">
    <!-- 左侧导航栏 -->
    <div class="pageSidebar">
        <ul class="nav nav-stacked nav-pills">
            <li role="presentation">
                <a href="#" target="mainFrame" >导航链接1</a>
            </li>
            <li role="presentation">
                <a href="#" target="mainFrame">导航链接2</a>
            </li>
            <li role="presentation">
                <a href="#" target="mainFrame">导航链接3</a>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    导航链接4<span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="#" target="mainFrame">导航链接4-1</a>
                    </li>
                    <li>
                        <a href="#" target="mainFrame">导航链接4-2</a>
                    </li>
                    <li>
                        <a href="#" target="mainFrame">导航链接4-3</a>
                    </li>
                </ul>
            </li>
            <li role="presentation">
                <a href="#" target="mainFrame">导航链接5</a>
            </li>
        </ul>
    </div>
    <!-- 左侧导航和正文内容的分隔线 -->
    <div class="splitter"></div>
    <!-- 正文内容部分 -->
    <div class="pageContent" style="height: 80%;width: 100%">
        <iframe src="index.html" id="mainFrame" name="mainFrame" frameborder="0" width="100%"  height="100%" frameBorder="0"></iframe>
    </div>
</div>
<!-- 底部页脚部分 -->
<div class="footer">
    <p class="text-center">
        2020 &copy; Chen.
    </p>
</div>

</body>
</html>