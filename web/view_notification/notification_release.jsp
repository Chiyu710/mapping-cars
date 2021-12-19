<%--
  Created by IntelliJ IDEA.
  User: 10102
  Date: 2021/11/19
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8"/>
    <title>MAPPING CARS MANAGE INDEX</title>
    <jsp:include page="../view/header.jsp"></jsp:include>

</head>

<!-- body start -->
<body class="loading" data-layout-mode="horizontal"
      data-layout='{"mode": "light", "width": "fluid", "menuPosition": "fixed", "sidebar": { "color": "light", "size": "default", "showuser": false}, "topbar": {"color": "dark"}, "showRightSidebarOnPageLoad": true}'>

<!-- Begin page -->
<div id="wrapper">

    <s:if test='#session.admin.position=="all"'>
        <jsp:include page="../view/nav_admin.jsp"></jsp:include>
    </s:if>
    <s:elseif test='#session.admin.position=="check"'>
        <jsp:include page="../view/nav_admin_check.jsp"></jsp:include>
    </s:elseif>
    <s:elseif test='#session.admin.position=="car"'>
        <jsp:include page="../view/nav_admin_car.jsp"></jsp:include>
    </s:elseif>
    <s:elseif test='#session.admin.position=="sta"'>
        <jsp:include page="../view/nav_admin_sta.jsp"></jsp:include>
    </s:elseif>
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
                            <h4 class="page-title text-center">通知发布</h4>
                        </div>
                    </div>
                </div>
                <!-- end page title -->

                <s:form action="SaveNot" method="POST" id="svNot">
                <div class="row">
                    <div class="col-lg-10 mmmd">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="mb-3 col-12">
                                        <label for="car-id" class="form-label">标题 <span
                                                class="text-danger">*</span></label>
                                        <input type="text" id="car-id" class="form-control" name="notification.title" maxlength="20" required>
                                    </div>

                                    <div class="mb-3 col-4">
                                        <label for="cph" class="form-label">接收部门 <span
                                                class="text-danger">*</span></label>
                                        <input type="text" id="cph" class="form-control" name="notification.recipient" maxlength="10" required>
                                    </div>

                                    <div class="mb-3 col-4">
                                        <label for="de" class="form-label">重要程度 <span
                                                class="text-danger">*</span></label>
                                        <div class="me-sm-3">
                                            <select class="form-select my-1 my-lg-0" id="de" name="notification.level">
                                                <option value="High" class="text-danger" >High</option>
                                                <option value="Medium" class="text-warning">Medium</option>
                                                <option value="low" class="text-info" >low</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="mb-3 col-4">
                                        <label for="rt" class="form-label">通知类型 <span
                                                class="text-danger">*</span></label>
                                        <div class="me-sm-3">
                                            <select class="form-select my-1 my-lg-0" id="rt" name="notification.type">
                                                <option value="车辆维护"  >车辆维护</option>
                                                <option value="保养通知" >保养通知</option>
                                                <option value="业务通知" >业务通知</option>
                                            </select>
                                        </div>

                                    </div>
                                    <div class="mb-3 col-12">
                                        <label for="example-textarea" class="form-label">通知内容</label>
                                        <textarea class="form-control" id="example-textarea" rows="5" name="notification.remarks" maxlength="200" required></textarea>
                                    </div>

                                </div>
                            </div> <!-- end card -->
                        </div> <!-- end col -->
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="text-center mb-3">
                                    <button type="submit" class="btn w-sm btn-success waves-effect waves-light">发布</button>
                                </s:form>
                            </div>
                        </div> <!-- end col -->
                    </div>
                    <!-- end row -->


                    <!-- file preview template -->
                    <div class="d-none" id="uploadPreviewTemplate">
                        <div class="card mt-1 mb-0 shadow-none border">
                            <div class="p-2">
                                <div class="row align-items-center">
                                    <div class="col-auto">
                                        <img data-dz-thumbnail src="#" class="avatar-sm rounded bg-light" alt="">
                                    </div>
                                    <div class="col ps-0">
                                        <a href="javascript:void(0);" class="text-muted fw-bold" data-dz-name></a>
                                        <p class="mb-0" data-dz-size></p>
                                    </div>
                                    <div class="col-auto">
                                        <!-- Button -->
                                        <a href="" class="btn btn-link btn-lg text-muted" data-dz-remove>
                                            <i class="dripicons-cross"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
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

    <!-- Dashboar 1 init js-->
    <script src="../assets/js/pages/dashboard-1.init.js"></script>

    <!-- App js-->
    <script src="../assets/js/app.min.js"></script>

</body>
</html>