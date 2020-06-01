<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
</table>

    <!--更新-->
    <div class="modal fade" id="update" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">职员修改</h4>
                </div>

                <div class="modal-body">
                    <form action="emp/update" class="bs-example bs-example-form" method="get">

                        <div  class="form-group">
                            <label for="empId" class="col-form-label"></label>
                            <input type="hidden" id="empId" name="eId" class="form-control" placeholder=""/>
                        </div>

                        <div  class="form-group">
                            <label for="empName" class="col-form-label">员工名称</label>
                            <input type="text" id="empName" name="eName" class="form-control" placeholder=""/>
                        </div>

                        <div  class="form-group">
                            <label for="empSex" class="col-form-label">员工性别</label>
                            <input type="" id="empSex" name="eSex" class="form-control" placeholder=""/>
                        </div>

                        <div  class="form-group">
                            <label for="empJob" class="col-form-label">员工职位</label>
                               <select id="empJob">

                               </select>
                            </input>
                        </div>

                        <label for="empDept" class="col-form-label">员工部门</label>
                        <select id="empDept">

                        </select>

                        <div  class="form-group">
                            <label for="empCardid" class="col-form-label">员工身份证</label>
                            <input type="text" id="empCardid" name="eCardid" class="form-control" placeholder=""/>
                        </div>

                        <div  class="form-group">
                            <label for="empAddress" class="col-form-label">员工住址</label>
                            <input type="text" id="empAddress" name="eAddress" class="form-control" placeholder=""/>
                        </div>

                        <div  class="form-group">
                            <label for="empPhone" class="col-form-label">员工电话</label>
                            <input type="text" id="empPhone" name="ePhone" class="form-control" placeholder=""/>
                        </div>

                        <div  class="form-group">
                            <label for="empEmail" class="col-form-label">员工邮箱</label>
                            <input type="text" id="empEmail" name="eEmail" class="form-control" placeholder=""/>
                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-default"
                                    data-dismiss="modal">关闭</button>
                            <button type="submit" class="btn btn-primary">提交更改</button>
                        </div>
                    </form>
                </div>
                </div>
        </div>
    </div>
            </div>

<script>

    function addEmp(obj){
        console.log("test")
    }

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
                html+="<td><div class='btn-group'><button type='button'  data-toggle='modal' data-target='#update' onclick='update(this)' class='btn btn-default'>修改</button><button type='button' class='btn btn-default'>删除</button></div>"
                html+="</tr>"
                $("#tr1").append(html);
            }
        })
    }

    function update(obj) {
        $.get("emp/showAllJob",function (res) {
            $("#empJob").empty();

            for(var i = 0 ; i < res.length ; i++){
                $("#empJob").append("<option value='"+res[i].jid+"'>"+ res[i].jname+"</option>")
            }
        })

        $.get("emp/showAllDept",function (res) {
            $("#empDept").empty();

            for(var i = 0 ; i < res.length ; i++){
                $("#empDept").append("<option value='"+res[i].did+"'>"+ res[i].dname+"</option>")
            }
        })

        var nodes = obj.parentNode.parentNode.parentNode.childNodes;



        var empId = nodes[0].innerHTML
        var empName = nodes[1].innerHTML
        var empSex = nodes[2].innerHTML
        var empCardId = nodes[5].innerHTML
        var empAddress = nodes[6].innerHTML
        var empPhone = nodes[7].innerHTML
        var empEmail = nodes[8].innerHTML

        $("#empName").val(empName)
        $("#empSex").val(empSex)
        $("#empCardid").val(empCardId)
        $("#empAddress").val(empAddress)
        $("#empPhone").val(empPhone)
        $("#empEmail").val(empEmail)
        $("#empId").val(empId)
    }


</script>

</body>
</html>
