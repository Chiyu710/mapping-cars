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
                            <h4 class="page-title">审核批准</h4>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <!-- Portlet card -->
                        <div class="card">
                            <div class="card-body">

                                <div id="cardCollpase4" class="collapse pt-3 show">
                                    <div class="">
                                        <span class="me-2">类型选择</span>
                                        <input type="checkbox" class="btn-check" id="btncheck1" autocomplete="off">
                                        <label class="btn btn-outline-primary" for="btncheck1">出车申请</label>

                                        <input type="checkbox" class="btn-check" id="btncheck2" autocomplete="off">
                                        <label class="btn btn-outline-primary" for="btncheck2">出借申请</label>

                                        <input type="checkbox" class="btn-check" id="btncheck3" autocomplete="off">
                                        <label class="btn btn-outline-primary" for="btncheck3">报修申请</label>
                                    </div>
                                    <br>
                                    <div class="table-responsive">
                                        <table class="table table-centered table-nowrap table-borderless mb-0">
                                            <thead class="table-light">
                                            <tr>
                                                <th>申请类型</th>
                                                <th>申请时间</th>
                                                <th>申请状态</th>
                                                <th>申请人/工号</th>
                                                <th>详情查看</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td>出车申请</td>
                                                <td>2021/11/19<br>14:52</td>
                                                <td>审核中</td>
                                                <td>程璐<br>107569</td>
                                                <td>
                                                    <button type="button" class="btn btn-info waves-effect waves-light">
                                                    <i class="mdi mdi-alert-circle-outline"></i>
                                                    </button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>出借申请</td>
                                                <td>2021/11/19<br>14:49</td>
                                                <td>已通过</td>
                                                <td>程璐<br>107569</td>
                                                <td>
                                                    <button type="button" class="btn btn-info waves-effect waves-light">
                                                        <i class="mdi mdi-alert-circle-outline"></i>
                                                    </button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>报修申请</td>
                                                <td>2021/11/19<br>13:59</td>
                                                <td>未通过</td>
                                                <td>程璐<br>107569</td>
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
                        </div> <!-- end card-->
                    </div> <!-- end col-->
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
