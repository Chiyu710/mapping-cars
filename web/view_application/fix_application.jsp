<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>



<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8"/>
    <title>MAPPING CARS MANAGE INDEX</title>
   <jsp:include page="../view/header.jsp"></jsp:include>
    <script src="../assets/libs/toastr/node_modules/jquery/jquery.min.js"></script>
    <script>
        $(document).ready(function() {
            const cars = document.getElementById("carID");
            $("#carID").change(function(){
                var carId = $(carID).val(); //获取当前下拉框name属性的值
                $.ajax({
                    url:"takeCarInfoAjax",
                    type : "POST",
                    dataType:"JSON",
                    data : {
                        carId:carId
                    },
                    success : function(data) {
                        //alert(data.status);
                        if (!(data.status==="空闲") ){
                            alert("该车目前无法使用,请检查车辆信息");
                            $("#carID").val("");
                            $("#mile").val("");
                            $("#LP").val("");
                        }
                        else {
                            $("#mile").val(data.mileage);
                            $("#LP").val(data.licensePlate);
                        }
                    },
                    error :function() {
                        alert("未找到车辆");
                    },
                });
            });});
    </script>
    <style>
        #appCard {
            float: none;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
    </style>
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
、
    <div class="content-page">
        <div class="content">

            <!-- Start Content-->
            <div class="container-fluid">

                <!-- start page title -->
                <div class="container-fluid">

                    <!-- start page title -->
                    <div class="row">
                        <div class="col-12">
                            <div class="page-title-box">
                                <div class="page-title-right">
                                </div>
                                <h4 class="page-title">车辆保养维修申请</h4>
                            </div>
                        </div>
                    </div>
                    <!-- end page title -->

                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">

                                    <div class="row">
                                        <div class="col-lg-12">
                                            <s:form action="sendFix" method="POST">
                                                <div class="row">
                                                    <div class="mb-3 col-md-4">
                                                        <label for="user" class="form-label">责任人</label>
                                                        <input type="text" id="user" class="form-control"  name="fixApplication.userName" value="${session.user.name}" readonly>
                                                    </div>
                                                    <div class="mb-3 col-md-4">
                                                        <label for="userid" class="form-label">工号</label>
                                                        <input type="text" id="userid" class="form-control" name="fixApplication.userID" value="${session.user.id}" readonly>
                                                    </div>
                                                    <div class="mb-3 col-md-4">
                                                        <label for="fix_t" class="form-label">维修类型</label>
                                                        <select class="form-select" id="fix_t" name="fixApplication.type">
                                                            <option value="正常维修">正常维修</option>
                                                            <option value="事故维修">事故维修</option>
                                                            <option value="保养">保养</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="mb-3 col-md-4">
                                                        <label for="carID" class="form-label">车辆号</label>
                                                        <input type="text" id="carID" class="form-control" name="fixApplication.carID" required>
                                                    </div>
                                                    <div class="mb-3 col-md-4">
                                                        <label for="LP" class="form-label">车牌号</label>
                                                        <input type="text" id="LP" class="form-control" name="fixApplication.LicensePlate" readonly required>
                                                    </div>
                                                    <div class="mb-3 col-md-4">
                                                        <label for="mile" class="form-label">保养间隔里程数</label>
                                                        <input type="text" id="mile" class="form-control" name="fixApplication.mileage" readonly required>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="mb-3 col-md-12">
                                                        <label for="fix_d" class="form-label">维修地点</label>
                                                        <input type="text" id="fix_d" class="form-control" name="fixApplication.location" maxlength="30" required>
                                                    </div>
                                                </div>


                                                <div class="row">
                                                    <div class="mb-3 col-md-12">
                                                        <label for="extra_t" class="form-label">情况说明</label>
                                                        <textarea class="form-control" id="extra_t" rows="5" name="fixApplication.remarks" maxlength="100"></textarea>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="mb-3 col-md-5">

                                                    </div>
                                                    <div class="mb-3 col-md-2">
                                                    <input class="btn btn-primary text-center" type="submit" value="提交维修单">
                                                    </div>
                                                </div>

                                            </s:form>
                                        </div> <!-- end col -->

                                    </div>
                                    <!-- end row-->

                                </div> <!-- end card-body -->
                            </div> <!-- end card -->
                        </div><!-- end col -->
                    </div>


                </div> <!-- container -->

            </div>
            <!-- end page title -->

                <div class="row">

                </div>

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
<script src="../assets/libs/twitter-bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>

<!-- Init js-->
<script src="../assets/js/pages/form-wizard.init.js"></script>

<!-- App js -->
<script src="../assets/js/app.min.js"></script>


<!-- App js-->
<script src="../assets/js/app.min.js"></script>

</body>
</html>