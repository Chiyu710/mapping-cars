<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>MAPPING CARS MANAGE INDEX</title>
    <jsp:include page="../view/header.jsp"></jsp:include>
    <script src="../assets/libs/toastr/node_modules/jquery/jquery.min.js"></script>
    <script type="text/javascript">

        $(document).ready(function (){
                const NF = document.getElementById("NF");
                let size = 0;
                var carID = ${session.user.id};
                $.ajax({
                    url:"takeBrief",
                    type:"POST",
                    dataType:"JSON",
                    data : {
                        userID:carID
                    },
                    success:function (data){
                        size=data.length;
                        if(data.length>5) {size=5;}
                        var s1=' <div class="row"><div class="col-3"><label>';
                        var level='';
                        var date='';
                        var s2='  </label></div><div class="col-9 mb-2"><ul class="list-inline"><li class="list-inline-item pe-2"><i class="mdi font-16 me-1"></i>';
                        var s3=' </li><li class="list-inline-item"><i class="mdi mdi-tune font-16 me-1"></i>';
                        var s4='</li><li class="list-inline-item">';
                        var s5='</li></ul></div></div>';
                        for (var i=0;i<size;i++){

                            if(data[i].level=="High"){level='<span class="badge badge-soft-danger">High</span>';}
                            else if(data[i].level=="Low"){level='<span class="badge badge-soft-success">Low</span>';}
                            else {level='<span class="badge badge-soft-info">Medium</span>';}
                            date=data[i].time;
                            date=date.substring(5,10)+' '+date.substring(11,16);
                            NF.innerHTML+=s1+data[i].type+s2+date+s3+data[i].sender+s4+level+s5;
                        }
                    }
                })
            }

        )
    </script>


</head>

<!-- body start -->
<body class="loading" data-layout-mode="horizontal"
      data-layout='{"mode": "light", "width": "fluid", "menuPosition": "fixed", "sidebar": { "color": "light", "size": "default", "showuser": false}, "topbar": {"color": "dark"}, "showRightSidebarOnPageLoad": true}'>

<!-- Begin page -->
<div id="wrapper">

    <jsp:include page="../view/nav.jsp"></jsp:include>

    <!-- ============================================================== -->
    <!-- Start Page Content here -->
    <!-- ============================================================== -->

    <div class="content-page">
        <div class="content">

            <!-- Start Content-->
            <div class="container-fluid">

                <!-- start page title -->
                <div class="row">
                    <div class="col-12">
                        <div class="page-title-box">
                            <h4 class="page-title">欢迎，<s:property value="#session.user.name"/> 先生</h4>
                        </div>
                    </div>
                </div>
                <!-- end page title -->
                <div class="row">
                    <div class="col-lg-4 col-xl-4">
                        <div class="card text-center">
                            <div class="card-body">
                                <h3 class="mb-2"><s:property value="#session.user.name"/></h3>
                                <p class="text-muted">Staff-ID-<s:property value="#session.user.id"/></p>

                                <s:if test='#session.user.status=="无法出车"'>
                                    <button type="button" class="btn btn-danger btn waves-effect mb-2 waves-light" style="width: 350px">无法出车</button>
                                </s:if>
                                <s:elseif test='#session.user.status=="休假"'>
                                    <button type="button" class="btn btn-secondary btn waves-effect mb-2 waves-light " style="width: 350px">休假中</button>
                                </s:elseif>
                                <s:else>
                                    <button type="button" class="btn btn-success btn waves-effect mb-2 waves-light " style="width: 350px">可以出车</button>
                                </s:else>
                                <div class="text-start mt-3">
                                    <h4 class="font-17 text-uppercase">About Me :</h4>
                                    <p class="text-muted mb-2 font-17"><strong>姓名 :</strong> <span class="ms-2"><s:property value="#session.user.name"/></span></p>

                                    <p class="text-muted mb-2 font-17"><strong>电话 :</strong><span class="ms-2"><s:property value="#session.user.age"/></span></p>

                                    <p class="text-muted mb-2 font-17"><strong>邮箱 :</strong> <span class="ms-2"><s:property value="#session.user.email"/></span></p>

                                    <p class="text-muted mb-1 font-17"><strong>所属部门 :</strong> <span class="ms-2"><s:property value="#session.user.department"/></span></p>
                                </div>

                            </div>
                        </div> <!-- end card -->
                    </div> <!-- end col-->
                    <div class="col-lg-4 col-xl-4">
                        <div class="card text-center">
                            <h4 class="mt-4">状态切换</h4>
                            <div class="card-body">
                                <div>
                                    <s:form action="changeStatus" method="POST">
                                        <div class="btn-group" role="group" aria-label="Basic radio toggle button group">
                                            <input   name="user.id" value="${session.user.id}" style="display: none">
                                            <input   name="statusLog.oldStatus" value="${session.user.status}" style="display: none">
                                            <input type="radio" class="btn-check" name="user.status" id="btnradio1" value="可以出车" autocomplete="off" checked>
                                            <label class="btn btn-outline-success" for="btnradio1">可以出车</label>

                                            <input type="radio" class="btn-check" name="user.status" id="btnradio2" value="无法出车" autocomplete="off">
                                            <label class="btn btn-outline-danger" for="btnradio2">无法出车</label>

                                            <input type="radio" class="btn-check" name="user.status" id="btnradio3"  value="休假" autocomplete="off">
                                            <label class="btn btn-outline-secondary" for="btnradio3">休假</label>
                                        </div>
                                        <div class="m-3">
                                            <label for="reason" class="mb-2">备注</label>
                                            <div class="mt-2">
                                                <textarea class="form-control" id="reason" rows="3" name="statusLog.remarks" placeholder="简单描述切换理由(不超过30字)" maxlength="30"></textarea>
                                            </div>
                                        </div>
                                        <div>
                                            <input class="btn btn-primary text-center" type="submit" value="切换状态">
                                        </div>
                                    </s:form>
                                </div>

                            </div> <!-- end card -->
                        </div>
                    </div>
                    <div class="col-lg-4 col-xl-4">
                        <div class="card text-center">
                            <h4 class="mt-4">我的通知</h4>
                            <div class="card-body">
                                <div>
                                    <div class="collapse show" id="NF">
                                        <%--notification--%>
                                    </div>
                                    <!--end list-->
                                </div>
                                <form action="getAllNF.action" method="POST" id="GetAllNF">
                                    <a onclick="document:GetAllNF.submit()" class="dropdown-item text-center text-primary notify-item notify-all">
                                        <input value="${session.user.id}" name="userID" style="display: none">
                                        查看通知详情
                                        <i class="fe-arrow-right"></i>
                                    </a>
                                </form>
                            </div> <!-- end card -->
                        </div>
                    </div>
                </div>
                <!-- end row-->


                <!-- end row -->

            </div> <!-- container -->

        </div> <!-- content -->

        <jsp:include page="../view/footer.jsp"></jsp:include>

    </div>

    <!-- ============================================================== -->
    <!-- End Page content -->
    <!-- ============================================================== -->
</div>
<!-- END wrapper -->



<!-- Vendor js -->
<script src="../assets/js/vendor.min.js"></script>

<!-- Plugins js-->
<script src="../assets/libs/flatpickr/flatpickr.min.js"></script>
<script src="../assets/libs/apexcharts/apexcharts.min.js"></script>

<script src="../assets/libs/selectize/js/standalone/selectize.min.js"></script>

<!-- Dashboar 1 init js-->
<script src="../assets/js/pages/dashboard-1.init.js"></script>

<!-- App js-->
<script src="../assets/js/app.min.js"></script>

</body>
</html>