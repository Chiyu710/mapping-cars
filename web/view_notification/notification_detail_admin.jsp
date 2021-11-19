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
                    <!-- start page title -->
                    <div class="row">
                        <div class="col-12">
                            <div class="page-title-box">
                                <h4 class="page-title">已发布通知</h4>
                            </div>
                        </div>
                    </div>
                    <!-- end page title -->
                    <div class="row">
                        <div class="col-lg-18 order-lg-1 order-2">
                            <div class="card mb-2">
                                <div class="card-body">
                                    <div class="row">
                                        <form class="d-flex flex-wrap align-items-center">
                                            <label for="inputPassword2" class="visually-hidden">Search</label>
                                            <div class="me-3">
                                                <input type="search" class="form-control my-1 my-md-0 col-4" id="inputPassword2" placeholder="Search...">
                                            </div>

                                            <div class="col-6 me-4"></div>
                                            &nbsp;
                                            <label for="status-select" class="me-2">Sort By</label>
                                            <div class="me-3 col-2">
                                                <select class="form-select my-1 my-md-0" id="status-select">
                                                    <option selected="">All</option>
                                                    <option value="1">Hot</option>
                                                    <option value="2">Cold</option>
                                                    <option value="3">In Progress</option>
                                                    <option value="4">Lost</option>
                                                    <option value="5">Won</option>
                                                </select>
                                            </div>
                                        </form>
                                    </div>
                                </div> <!-- end card-body-->
                            </div> <!-- end card-->

                            <div class="card mb-2">
                                <div class="card-body">
                                    <div class="row align-items-center">
                                        <div class="col-sm-11 ">
                                            <div class="d-flex align-items-start mb-2">
                                                <div class="w-100">
                                                    <b class="mt-2 mb-4 me-2 font-16">车辆保养提醒</b> <text class="mb-0 me-2 text-muted">2021年11月19日11：30</text>
                                                        <div class="badge font-14 bg-soft-danger text-danger p-1">High</div>
                                                </div>
                                            </div>
                                            <span class="mb-2 mt-2 me-2 text-primary">收件人:staff-1</span>
                                            <p class="mt-2">1234号机动车驾驶人您驾驶的机动车已经n年n月n天没有进行保养维修了，请尽快申请车辆保养维修
                                                ，以免车辆发生故障。出于安全考虑，若您于n年n月n日前还没有进行车辆维修，您的出车申请将被冻结
                                        </div>
                                    </div> <!-- end row -->
                                </div>
                            </div> <!-- end card-->







                        </div> <!-- end col -->

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
