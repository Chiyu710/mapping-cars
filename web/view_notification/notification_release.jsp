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

    <jsp:include page="../view/nav_admin.jsp"></jsp:include>
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


                <div class="row">
                    <div class="col-lg-10 mmmd">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="text-uppercase bg-light p-2 mt-0 mb-3">General</h5>
                                <div class="row">
                                    <div class="mb-3 col-12">
                                        <label for="car-id" class="form-label">标题 <span
                                                class="text-danger">*</span></label>
                                        <input type="text" id="car-id" class="form-control">
                                    </div>

                                    <div class="mb-3 col-4">
                                        <label for="cph" class="form-label">接收部门 <span
                                                class="text-danger">*</span></label>
                                        <input type="text" id="cph" class="form-control">
                                    </div>

                                    <div class="mb-3 col-4">
                                        <label for="de" class="form-label">重要程度 <span
                                                class="text-danger">*</span></label>
                                        <div class="me-sm-3">
                                            <select class="form-select my-1 my-lg-0" id="de">
                                                <option value="1" class="text-danger">High</option>
                                                <option value="2" class="text-warning">Medium</option>
                                                <option value="3" class="text-info" >low</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="mb-3 col-4">
                                        <label for="rt" class="form-label">通知类型 <span
                                                class="text-danger">*</span></label>
                                        <div class="me-sm-3">
                                            <select class="form-select my-1 my-lg-0" id="rt">
                                                <option value="1" >车辆维护</option>
                                                <option value="2" >业务信息</option>
                                                <option value="3" >一般通知</option>
                                            </select>
                                        </div>

                                    </div>
                                    <div class="mb-3 col-12">
                                        <label for="example-textarea" class="form-label">通知内容</label>
                                        <textarea class="form-control" id="example-textarea" rows="5"></textarea>
                                    </div>

                                </div>
                            </div> <!-- end card -->
                        </div> <!-- end col -->
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="text-center mb-3">

                                <button type="button" class="btn w-sm btn-light waves-effect">Cancel</button>


                                <s:form action="SaveNot" method="POST" id="svNot">
                                    <button type="button" class="btn w-sm btn-success waves-effect waves-light"
                                            onclick="document:svNot.submit()">Save
                                    </button>
                                </s:form>

                                <button type="button" class="btn w-sm btn-danger waves-effect waves-light">Delete
                                </button>
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