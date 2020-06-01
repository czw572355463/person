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
        <th>创建者</th>
        <th>操作</th>
    </tr>
    </thead>

    <tbody id="tr1">

    </tbody>

    <div class="modal fade" id="update" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">公告更改</h4>
                </div>

                <div class="modal-body">

                    <form action="notice/update" class="bs-example bs-example-form" method="get">
                        <div  class="form-group" style="display: none">
                            <input type="text" id="noticeId" name="nId"/>
                        </div>


                        <div  class="form-group">
                            <label for="noticeTitle" class="col-form-label">公告标题</label>
                            <input type="text" id="noticeTitle" name="ntitle" class="form-control" placeholder=""/>
                        </div>

                        <div  class="form-group">
                            <label for="noticecontent" class="col-form-label">公告内容</label>
                            <input type="text" id="noticecontent" name="nContent" class="form-control" placeholder=""/>
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

</table>
<script>
    window.onload = function () {
        $.get("notice/showAll",function (res){
                $("tr1").empty();
                console.log(res)
                for (var i = 0 ; i < res.length; i++){
                    var html = "<tr>";
                    html+= "<td>"+res[i].nid +"</td>"
                    html+= "<td>"+res[i].ntitle +"</td>"
                    html+= "<td>"+res[i].ncontent +"</td>"
                    html+= "<td>"+res[i].dCreatedate +"</td>"
                    html+= "<td>"+res[i].users.uname+"</td>"
                    html+="<td><div class='btn-group'><button type='button' onclick='update(this)' data-toggle='modal' data-target='#update' class='btn btn-default'>修改</button><button type='button' class='btn btn-default'>删除</button></div>"
                    html+="</tr>"
                    $("#tr1").append(html);
                }

        })

    }

    function update(obj) {
        var tr = obj.parentNode.parentNode.parentNode;
        var noticeId = tr.childNodes[0].innerHTML;
        var noticeTitle = tr.childNodes[1].innerHTML;
        var noticecontent = tr.childNodes[2].innerHTML;


        $("#noticeId").val(noticeId)
        $("#noticeTitle").val(noticeTitle)
        $("#noticecontent").val(noticecontent)
    }


</script>
</body>
</html>
