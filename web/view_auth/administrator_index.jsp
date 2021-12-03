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
                            <h4 class="page-title">欢迎，<s:property value="#session.loginUser.name"/> 先生</h4>
                        </div>
                    </div>
                </div>
                <!-- end page title -->
                <div class="row">
                    <div class="col-xl-1"></div>
                    <div class="col-lg-4 col-xl-4">
                        <div class="card text-center">
                            <div class="card-body">
                                <h4 class="mb-0"><s:property value="#session.loginUser.name"/></h4>
                                <p class="text-muted"><s:property value="#session.loginUser.id"/></p>
                                <div class="text-start mt-3">
                                    <h4 class="font-13 text-uppercase">About Me :</h4>
                                    <p class="text-muted font-13 mb-3">
                                        Hi I'm Johnathn Deo,has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type.
                                    </p>
                                    <p class="text-muted mb-2 font-13"><strong>姓名 :</strong> <span class="ms-2"><s:property value="#session.loginUser.name"/></span></p>

                                    <p class="text-muted mb-2 font-13"><strong>电话 :</strong><span class="ms-2"><s:property value="#session.loginUser.age"/></span></p>

                                    <p class="text-muted mb-2 font-13"><strong>邮箱 :</strong> <span class="ms-2"><s:property value="#session.loginUser.email"/></span></p>

                                    <p class="text-muted mb-1 font-13"><strong>所属部门 :</strong> <span class="ms-2"><s:property value="#session.loginUser.department"/></span></p>
                                </div>

                            </div>
                        </div> <!-- end card -->
                    </div> <!-- end col-->
                    <div class="col-xl-1"></div>
                    <div class="col-lg-4 col-xl-6">
                        <div class="card text-center">
                            <div class="card-body">

                                <h4 class="header-title mb-0">未审核业务</h4>

                                <div id="cardCollpase4" class="collapse pt-3 show">
                                    <div class="table-responsive">
                                        <table class="table table-centered table-nowrap table-borderless mb-0">
                                            <thead class="table-light">
                                            <tr>
                                                <th>审核类型</th>
                                                <th>申请日期</th>
                                                <th>详情查看</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td>出车审核</td>
                                                <td>2021/11/19<br>14：01</td>
                                                <td>
                                                    <button type="button" class="btn btn-info waves-effect waves-light">
                                                    <i class="mdi mdi-alert-circle-outline"></i>
                                                    </button>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>出借审核</td>
                                                <td>2021/11/19<br>13：59</td>
                                                <td>
                                                    <button type="button" class="btn btn-info waves-effect waves-light">
                                                        <i class="mdi mdi-alert-circle-outline"></i>
                                                    </button>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div> <!-- .table-responsive -->
                                </div> <!-- end collapse-->
                            </div> <!-- end card-body-->
                        </div>
                    </div>
                    <div class="col-xl-1"></div>
                </div>
                <!-- end row-->

                <div class="row">
                    <div class="col-xl-4"></div>
                    <div class="col-xl-4 col-md-6">
                        <div class="card">
                            <div class="card-body">

                                <h4 class="header-title mb-0">出车单数</h4>

                                <div id="cardCollpase3" class="collapse pt-3 show">
                                    <div class="text-center">

                                        <div class="row mt-2">
                                            <div class="col-6">
                                                <h3 data-plugin="counterup">1280</h3>
                                                <p class="text-muted font-13 mb-0 text-truncate">今日出车单数</p>
                                            </div>
                                            <div class="col-6">
                                                <h3 data-plugin="counterup">1500</h3>
                                                <p class="text-muted font-13 mb-0 text-truncate">平均出车单数</p>
                                            </div>
                                        </div> <!-- end row -->

                                        <div  dir="ltr">
                                            <div id="statistics-chart" data-colors="#44cf9c" style="height: 270px;" class="morris-chart mt-3"></div>
                                        </div>

                                    </div>
                                </div> <!-- end collapse-->
                            </div> <!-- end card-body-->
                        </div> <!-- end card-->
                    </div> <!-- end col-->







                </div>
                <!-- end row -->

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
<script src="../assets/libs/morris.js06/morris.min.js"></script>
<script src="../assets/libs/raphael/raphael.min.js"></script>

<script src="../assets/libs/selectize/js/standalone/selectize.min.js"></script>

<!-- Dashboar 1 init js-->
<script src="../assets/js/pages/dashboard-4.init.js"></script>

<!-- App js-->
<script src="../assets/js/app.min.js"></script>

</body>
</html>