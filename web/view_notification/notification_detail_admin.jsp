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
                            <s:iterator var="NF" value="#request.NFS">
                                <div class="card mb-2">
                                    <div class="card-body mb-2">
                                        <div class="row align-items-center">
                                            <div class="col-sm-11">
                                                <div class="d-flex align-items-start">
                                                    <div class="w-100">
                                                        <b class="mt-0 mb-1 me-2 font-18 text-dark"><s:property value="#NF.title"/></b> <text class="mb-0 me-2 text-muted"><s:property value="#NF.time"/></text>
                                                        <s:if test='#NF.level=="High"'>
                                                            <div class="badge font-14 bg-soft-danger text-danger p-1">High</div>
                                                        </s:if>
                                                        <s:elseif test='#NF.level=="Medium"'>
                                                            <div class="badge font-14 bg-soft-warning text-warning p-1">Medium</div>
                                                        </s:elseif>
                                                        <s:elseif test='#NF.level=="Low"'>
                                                            <div class="badge font-14 bg-soft-success text-success p-1">Low</div>
                                                        </s:elseif>
                                                        <h5 class="font-13 ">发送人: <ss class="text-info"><s:property value="#NF.sender"/></ss></h5>
                                                    </div>
                                                </div>
                                                <hr class="mt-0">
                                                <p class="mb-0 font-15"><s:property value="#NF.remarks"/>
                                                    <s:if test='#NF.type=="保养通知"'>
                                                    <a href="../view_application/fix_application.jsp"> &nbsp;>>申请保养</a></p>
                                                </s:if>
                                                <s:elseif test='#NF.type=="业务通知"'>
                                                    <a href="../view_application/car_application.jsp"> &nbsp;>>立即出车</a></p>
                                                </s:elseif>
                                                <s:else>
                                                </s:else>
                                            </div>
                                            <div class="text-sm-end col-sm-1">
                                                <div class="text-sm-end text-center mt-2 mt-sm-0">
                                                    <a href="javascript:void(0);" class="action-icon"> <i class="mdi mdi-delete"></i></a>
                                                </div>
                                            </div> <!-- end col-->
                                        </div> <!-- end row -->
                                    </div>
                                </div> <!-- end card-->
                            </s:iterator>







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
