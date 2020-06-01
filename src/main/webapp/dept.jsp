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

    <div class="modal fade" id="update" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">

        <div class="modal-dialog">

            <div class="modal-content">
                <!--标题-->
                <div class="modal-header">

                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

                    <h4 class="modal-title" id="myModalLabel">部门修改</h4>
                </div>



                <div class="modal-body">
                    <form action="dept/update" class="bs-example bs-example-form" method="get">
                        <div  class="form-group" style="display: none">
                            <input type="text" id="deptId" name="dId"/>
                        </div>


                        <div  class="form-group">
                            <label for="deptName" class="col-form-label">部门名称</label>
                            <input type="text" id="deptName" name="dName" class="form-control" placeholder=""/>
                        </div>

                        <div  class="form-group">
                            <label for="deptRemark" class="col-form-label">部门描述</label>
                            <input type="text" id="deptRemark" name="dRemark" class="form-control" placeholder=""/>
                        </div>

                    </form>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default"
                                data-dismiss="modal">关闭</button>
                        <button type="submit" class="btn btn-primary">提交更改</button>
                    </div>
            </div>
            </div>
        </div>
        </div>


<script>
    window.onload = function () {
        $.get("dept/showAll","pageNum=1&size=5",function (res) {
        $("tr1").empty();

        for (var i = 0 ; i < res.length; i++){
            var html = "<tr>";
            html+= "<td>"+res[i].did +"</td>"
            html+= "<td>"+res[i].dname +"</td>"
            html+= "<td>"+res[i].dremark +"</td>"
            html+="<td><div class='btn-group'><button type='button' data-toggle='modal' data-target='#update'  onclick='update(this)' class='btn btn-default'>修改</button><button type='button' class='btn btn-default'>删除</button></div>"
            html+="</tr>"
            $("#tr1").append(html);
        }
    }) }

    var xmlhttp
    if(window.XMLHttpRequest){
        xmlhttp = new XMLHttpRequest();
    }

    
    function update(obj) {
            var tr = obj.parentNode.parentNode.parentNode;
            var deptId = tr.childNodes[0].innerHTML;
            var deptName = tr.childNodes[1].innerHTML;
            var deptRemark = tr.childNodes[2].innerHTML;

            $("#deptId").val(deptId)
            $("#deptName").val(deptName)
            $("#deptRemark").val(deptRemark)
    }

</script>
</body>
</html>
