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
                            <h4 class="page-title">今日业务</h4>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <!-- Portlet card -->
                            <div class="card">
                                <div class="card-body">
                                    <div id="cardCollpase4" class="collapse pt-3 show">

                                        <div class="row">
                                            <form class="d-flex flex-wrap align-items-center">
                                                <label for="inputPassword2" class="visually-hidden">Search</label>
                                                <div class="me-3">
                                                    <input type="search" class="form-control my-1 my-md-0 col-4"
                                                           id="inputPassword2" placeholder="Search...">
                                                </div>
                                            </form>
                                        </div>
                                        <br>

<%--                                        yewu--%>
                                        <div class="row">

                                            <div class="col-12">
                                                <div class="page-title-box">
                                                    <h4 class="page-title">业务统计</h4>
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-xl-3">
                                                <div class="widget-rounded-circle card">
                                                    <div class="card-body">
                                                        <div class="row">
                                                            <div class="col-6">
                                                                <div class="avatar-lg rounded-circle bg-soft-success border-success border">
                                                                    <i class="fe-shopping-cart font-22 avatar-title text-success"></i>
                                                                </div>
                                                            </div>
                                                            <div class="col-6">
                                                                <div class="text-end">
                                                                    <h3 class="text-dark mt-1"><span
                                                                            data-plugin="counterup">127</span></h3>
                                                                    <p class="text-muted mb-1 text-truncate">出车单数</p>
                                                                </div>
                                                            </div>
                                                        </div> <!-- end row-->
                                                    </div>
                                                </div> <!-- end widget-rounded-circle-->
                                            </div> <!-- end col-->

                                            <div class="col-md-6 col-xl-3">
                                                <div class="widget-rounded-circle card">
                                                    <div class="card-body">
                                                        <div class="row">
                                                            <div class="col-6">
                                                                <div class="avatar-lg rounded-circle bg-soft-info border-info border">
                                                                    <i class="fe-bar-chart-line- font-22 avatar-title text-info"></i>
                                                                </div>
                                                            </div>
                                                            <div class="col-6">
                                                                <div class="text-end">
                                                                    <h3 class="text-dark mt-1"><span
                                                                            data-plugin="counterup">13</span></h3>
                                                                    <p class="text-muted mb-1 text-truncate">维修单数</p>
                                                                </div>
                                                            </div>
                                                        </div> <!-- end row-->
                                                    </div>
                                                </div> <!-- end widget-rounded-circle-->
                                            </div> <!-- end col-->

                                            <div class="col-md-6 col-xl-3">
                                                <div class="widget-rounded-circle card">
                                                    <div class="card-body">
                                                        <div class="row">
                                                            <div class="col-6">
                                                                <div class="avatar-lg rounded-circle bg-soft-warning border-warning border">
                                                                    <i class="fe-eye font-22 avatar-title text-warning"></i>
                                                                </div>
                                                            </div>
                                                            <div class="col-6">
                                                                <div class="text-end">
                                                                    <h3 class="text-dark mt-1"><span
                                                                            data-plugin="counterup">10</span></h3>
                                                                    <p class="text-muted mb-1 text-truncate">出借单数</p>
                                                                </div>
                                                            </div>
                                                        </div> <!-- end row-->
                                                    </div>
                                                </div> <!-- end widget-rounded-circle-->
                                            </div> <!-- end col-->
                                        </div>
                                        <!-- end row-->

                                        <br>
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="page-title-box">
                                                    <h4 class="page-title">出车业务详情</h4>
                                                </div>
                                            </div>
                                            <div class="card d-block ">
                                                <div class="card-body">
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <!-- assignee -->
                                                            <p class="mt-2 mb-1 text-muted ">业务状态</p>
                                                            <div class="d-flex align-items-start">
                                                                <div class="w-100">
                                                                    <h5 class="mt-1 font-size-14 text-warning">
                                                                        未到达在路上
                                                                    </h5>
                                                                </div>
                                                            </div>
                                                            <!-- end assignee -->
                                                        </div>
                                                        <!-- end col -->

                                                        <div class="col-md-4">
                                                            <!-- start due date -->
                                                            <p class="mt-2 mb-1 text-muted">业务号</p>
                                                            <div class="d-flex align-items-start">
                                                                <div class="w-100">
                                                                    <h5 class="mt-1 font-size-14">
                                                                        yw-125
                                                                    </h5>
                                                                </div>
                                                            </div>
                                                            <!-- end due date -->
                                                        </div>

                                                        <div class="col-md-2">
                                                            <!-- start due date -->
                                                            <p class="mt-2 mb-1 text-muted">开始时间</p>
                                                            <div class="d-flex align-items-start">
                                                                <i class="mdi mdi-calendar-month-outline font-18 text-success me-1"></i>
                                                                <div class="w-100">
                                                                    <h5 class="mt-1 font-size-14">
                                                                        2021/11/14
                                                                        <br>
                                                                        12:30
                                                                    </h5>
                                                                </div>
                                                            </div>
                                                            <!-- end due date -->
                                                        </div>
                                                        <div class="col-md-2">
                                                            <!-- start due date -->
                                                            <p class="mt-2 mb-1 text-muted">结束时间</p>
                                                            <div class="d-flex align-items-start">
                                                                <i class="mdi mdi-calendar-month-outline font-18 text-danger me-1"></i>
                                                                <div class="w-100">
                                                                    <h5 class="mt-1 font-size-14">

                                                                    </h5>
                                                                </div>
                                                            </div>
                                                            <!-- end due date -->
                                                        </div>
                                                        <!-- end col -->

                                                        <div class="col-md-4">
                                                            <!-- assignee -->
                                                            <p class="mt-2 mb-1 text-muted">员工姓名/工号</p>
                                                            <div class="d-flex align-items-start">
                                                                <div class="w-100">
                                                                    <h5 class="mt-1 font-size-14">
                                                                        程璐
                                                                        <br>
                                                                        102869
                                                                    </h5>
                                                                </div>
                                                            </div>
                                                            <!-- end assignee -->
                                                        </div>
                                                        <!-- end col -->

                                                        <div class="col-md-4">
                                                            <!-- start due date -->
                                                            <p class="mt-2 mb-1 text-muted">查勘车牌号</p>
                                                            <div class="d-flex align-items-start">
                                                                <div class="w-100">
                                                                    <h5 class="mt-1 font-size-14">
                                                                        沪A·000000
                                                                    </h5>
                                                                </div>
                                                            </div>
                                                            <!-- end due date -->
                                                        </div>

                                                        <div class="col-md-4">
                                                            <!-- start due date -->
                                                            <p class="mt-2 mb-1 text-muted">事故地点</p>
                                                            <div class="d-flex align-items-start">
                                                                <i class="mdi mdi-map-marker font-18 text-primary me-1"></i>
                                                                <div class="w-100">
                                                                    <h5 class="mt-1 font-size-14">
                                                                        浙江省杭州市西湖区留和路288号
                                                                    </h5>
                                                                </div>
                                                            </div>
                                                            <!-- end due date -->
                                                        </div>
                                                        <!-- end col -->

                                                        <div class="col-md-4">
                                                            <!-- start due date -->
                                                            <p class="mt-2 mb-1 text-muted">事故类型</p>
                                                            <div class="d-flex align-items-start">
                                                                <div class="w-100">
                                                                    <h5 class="mt-1 font-size-14">
                                                                        追尾
                                                                    </h5>
                                                                </div>
                                                            </div>
                                                            <!-- end due date -->
                                                        </div>

                                                        <div class="col-md-4">
                                                            <!-- start due date -->
                                                            <p class="mt-2 mb-1 text-muted">距离目的地</p>
                                                            <div class="d-flex align-items-start">
                                                                <div class="w-100">
                                                                    <h5 class="mt-1 font-size-14">
                                                                        3km
                                                                    </h5>
                                                                </div>
                                                            </div>
                                                            <!-- end due date -->
                                                        </div>

                                                        <div class="row">
                                                            <div class="col-xl-3"></div>
                                                            <div class="col-xl-6 col-md-6">
                                                                <div class="card">
                                                                    <div class="card-body">

                                                                        <h4 class="header-title mb-0">车辆实时定位</h4>

                                                                        <div id="cardCollpase3" class="collapse pt-3 show">
                                                                            <div class="text-center">


                                                                                <div dir="ltr">
                                                                                    <div id="statistics-chart"
                                                                                         data-colors="#44cf9c"
                                                                                         style="height: 270px;"
                                                                                         class="morris-chart mt-3"></div>
                                                                                </div>

                                                                            </div>
                                                                        </div> <!-- end collapse-->
                                                                    </div> <!-- end card-body-->
                                                                </div> <!-- end card-->
                                                            </div> <!-- end col-->


                                                        </div>
                                                        <!-- end row -->
                                                    </div>
                                                    <!-- end card-body-->
                                                </div>

                                            </div> <!-- end collapse-->
                                        </div>

                                        <br>
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="page-title-box">
                                                    <h4 class="page-title">维修业务详情</h4>
                                                </div>
                                            </div>
                                            <div class="card d-block">
                                                <div class="card-body ">
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <!-- assignee -->
                                                            <p class="mt-2 mb-1 text-muted ">业务状态</p>
                                                            <div class="d-flex align-items-start">
                                                                <div class="w-100">
                                                                    <h5 class="mt-1 font-size-14 text-warning">
                                                                        正在维修
                                                                    </h5>
                                                                </div>
                                                            </div>
                                                            <!-- end assignee -->
                                                        </div>
                                                        <!-- end col -->

                                                        <div class="col-md-4">
                                                            <!-- start due date -->
                                                            <p class="mt-2 mb-1 text-muted">业务号</p>
                                                            <div class="d-flex align-items-start">
                                                                <div class="w-100">
                                                                    <h5 class="mt-1 font-size-14">
                                                                        yw-126
                                                                    </h5>
                                                                </div>
                                                            </div>
                                                            <!-- end due date -->
                                                        </div>

                                                        <div class="col-md-2">
                                                            <!-- start due date -->
                                                            <p class="mt-2 mb-1 text-muted">开始时间</p>
                                                            <div class="d-flex align-items-start">
                                                                <i class="mdi mdi-calendar-month-outline font-18 text-success me-1"></i>
                                                                <div class="w-100">
                                                                    <h5 class="mt-1 font-size-14">
                                                                        2021/11/14
                                                                        <br>
                                                                        12:30
                                                                    </h5>
                                                                </div>
                                                            </div>
                                                            <!-- end due date -->
                                                        </div>
                                                        <div class="col-md-2">
                                                            <!-- start due date -->
                                                            <p class="mt-2 mb-1 text-muted">结束时间</p>
                                                            <div class="d-flex align-items-start">
                                                                <i class="mdi mdi-calendar-month-outline font-18 text-danger me-1"></i>
                                                                <div class="w-100">
                                                                    <h5 class="mt-1 font-size-14">

                                                                    </h5>
                                                                </div>
                                                            </div>
                                                            <!-- end due date -->
                                                        </div>
                                                        <!-- end col -->

                                                        <div class="col-md-4">
                                                            <!-- assignee -->
                                                            <p class="mt-2 mb-1 text-muted">员工姓名/工号</p>
                                                            <div class="d-flex align-items-start">
                                                                <div class="w-100">
                                                                    <h5 class="mt-1 font-size-14">
                                                                        程璐
                                                                        <br>
                                                                        102869
                                                                    </h5>
                                                                </div>
                                                            </div>
                                                            <!-- end assignee -->
                                                        </div>
                                                        <!-- end col -->

                                                        <div class="col-md-4">
                                                            <!-- start due date -->
                                                            <p class="mt-2 mb-1 text-muted">查勘车牌号</p>
                                                            <div class="d-flex align-items-start">
                                                                <div class="w-100">
                                                                    <h5 class="mt-1 font-size-14">
                                                                        沪A·000000
                                                                    </h5>
                                                                </div>
                                                            </div>
                                                            <!-- end due date -->
                                                        </div>

                                                        <div class="col-md-4">
                                                            <!-- start due date -->
                                                            <p class="mt-2 mb-1 text-muted">维修费用</p>
                                                            <div class="d-flex align-items-start">

                                                                <div class="w-100">
                                                                    <h5 class="mt-1 font-size-14">
                                                                        125元
                                                                    </h5>
                                                                </div>
                                                            </div>
                                                            <!-- end due date -->
                                                        </div>
                                                        <!-- end col -->

                                                        <div class="col-md-4">
                                                            <!-- start due date -->
                                                            <p class="mt-2 mb-1 text-muted">维修类型</p>
                                                            <div class="d-flex align-items-start">
                                                                <div class="w-100">
                                                                    <h5 class="mt-1 font-size-14">
                                                                        换胎
                                                                    </h5>
                                                                </div>
                                                            </div>
                                                            <!-- end due date -->
                                                        </div>


                                                    </div>
                                                    <!-- end card-body-->
                                                </div>

                                            </div> <!-- end collapse-->
                                        </div> <!-- end card-body-->

                                        <br>
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="page-title-box">
                                                    <h4 class="page-title">出借业务详情</h4>
                                                </div>
                                            </div>

                                            <div class="card d-block">
                                                <div class="card-body">
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <!-- assignee -->
                                                            <p class="mt-2 mb-1 text-muted ">业务状态</p>
                                                            <div class="d-flex align-items-start">
                                                                <div class="w-100">
                                                                    <h5 class="mt-1 font-size-14 text-warning">
                                                                        正在出借
                                                                    </h5>
                                                                </div>
                                                            </div>
                                                            <!-- end assignee -->
                                                        </div>
                                                        <!-- end col -->

                                                        <div class="col-md-4">
                                                            <!-- start due date -->
                                                            <p class="mt-2 mb-1 text-muted">业务号</p>
                                                            <div class="d-flex align-items-start">
                                                                <div class="w-100">
                                                                    <h5 class="mt-1 font-size-14">
                                                                        yw-127
                                                                    </h5>
                                                                </div>
                                                            </div>
                                                            <!-- end due date -->
                                                        </div>

                                                        <div class="col-md-2">
                                                            <!-- start due date -->
                                                            <p class="mt-2 mb-1 text-muted">开始时间</p>
                                                            <div class="d-flex align-items-start">
                                                                <i class="mdi mdi-calendar-month-outline font-18 text-success me-1"></i>
                                                                <div class="w-100">
                                                                    <h5 class="mt-1 font-size-14">
                                                                        2021/11/14
                                                                        <br>
                                                                        12:30
                                                                    </h5>
                                                                </div>
                                                            </div>
                                                            <!-- end due date -->
                                                        </div>
                                                        <div class="col-md-2">
                                                            <!-- start due date -->
                                                            <p class="mt-2 mb-1 text-muted">结束时间</p>
                                                            <div class="d-flex align-items-start">
                                                                <i class="mdi mdi-calendar-month-outline font-18 text-danger me-1"></i>
                                                                <div class="w-100">
                                                                    <h5 class="mt-1 font-size-14">

                                                                    </h5>
                                                                </div>
                                                            </div>
                                                            <!-- end due date -->
                                                        </div>
                                                        <!-- end col -->

                                                        <div class="col-md-4">
                                                            <!-- assignee -->
                                                            <p class="mt-2 mb-1 text-muted">员工姓名/工号</p>
                                                            <div class="d-flex align-items-start">
                                                                <div class="w-100">
                                                                    <h5 class="mt-1 font-size-14">
                                                                        程璐
                                                                        <br>
                                                                        102869
                                                                    </h5>
                                                                </div>
                                                            </div>
                                                            <!-- end assignee -->
                                                        </div>
                                                        <!-- end col -->

                                                        <div class="col-md-4">
                                                            <!-- start due date -->
                                                            <p class="mt-2 mb-1 text-muted">查勘车牌号</p>
                                                            <div class="d-flex align-items-start">
                                                                <div class="w-100">
                                                                    <h5 class="mt-1 font-size-14">
                                                                        沪A·000000
                                                                    </h5>
                                                                </div>
                                                            </div>
                                                            <!-- end due date -->
                                                        </div>

                                                        <div class="col-md-4">
                                                            <!-- start due date -->
                                                            <p class="mt-2 mb-1 text-muted">出借人信息</p>
                                                            <div class="d-flex align-items-start">

                                                                <div class="w-100">
                                                                    <h5 class="mt-1 font-size-14">

                                                                    </h5>
                                                                </div>
                                                            </div>
                                                            <!-- end due date -->
                                                        </div>
                                                        <!-- end col -->




                                                    </div>
                                                    <!-- end card-body-->
                                                </div>

                                            </div> <!-- end collapse-->
                                        </div> <!-- end card-body-->


                                    </div> <!-- end card-body-->
                                </div>


                            </div>
                        </div> <!-- end card-->
                    </div> <!-- end col-->
                </div>

            </div>
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
