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
                            <h4 class="page-title text-center">违规记录发布</h4>
                        </div>
                    </div>
                </div>
                <!-- end page title -->

                <s:form action="SaveVio" method="POST" id="svVio">
                <div class="row">
                    <div class="col-lg-10 mmmd">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="mb-3 col-3">
                                        <label for="type" class="form-label">违规类型 <span
                                                class="text-danger">*</span></label>
                                        <input type="text" id="type" class="form-control" name="violation.type">
                                    </div>
                                    <div class="mb-3 col-3">
                                        <label for="userid" class="form-label">违规人id <span
                                                class="text-danger">*</span></label>
                                        <input type="text" id="userid" class="form-control" name="violation.userid">
                                    </div>
                                    <div class="mb-3 col-3">
                                        <label for="appId" class="form-label">派车单号 <span
                                                class="text-danger">*</span></label>
                                        <input type="text" id="appId" class="form-control" name="violation.applicationid">
                                    </div>
                                    <div class="mb-3 col-3">
                                        <label for="fine" class="form-label">罚款金额 <span
                                                class="text-danger">*</span></label>
                                        <input type="text" id="fine" class="form-control" name="violation.fine">
                                    </div>
                                    <div class="mb-3 col-4">
                                        <label for="location" class="form-label">违规地点 <span
                                                class="text-danger">*</span></label>
                                        <input type="text" id="location" class="form-control" name="violation.location">
                                    </div>

                                    <div class="mb-3 col-4">
                                        <label for="vioDate" class="form-label">违规时间 <span
                                                class="text-danger">*</span></label>
                                        <div class="me-sm-3">
                                            <input type="date" id="vioDate" class="form-control" name="violation.vioDate">
                                        </div>
                                    </div>

                                    <div class="mb-3 col-4">
                                        <label for="endDate" class="form-label">违规截止时间 <span
                                                class="text-danger">*</span></label>
                                        <div class="me-sm-3">
                                            <input type="date" id="endDate" class="form-control" name="violation.endDate">
                                        </div>
                                    </div>

                                    </div>
                                    <div class="mb-3 col-12">
                                        <label for="details" class="form-label">违规内容</label>
                                        <textarea class="form-control" id="details" rows="5" name="violation.details"></textarea>
                                    </div>

                                </div>
                            </div> <!-- end card -->
                        </div> <!-- end col -->
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="text-center mb-3">
                                    <button type="button" class="btn w-sm btn-success waves-effect waves-light"
                                            onclick="document:svVio.submit()">Save
                                    </button>
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