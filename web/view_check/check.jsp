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

                                        <label class="btn btn-outline-primary" ><a href="#car">出车申请</a></label>


                                        <label class="btn btn-outline-primary"><a href="#lend">出借申请</a></label>


                                        <label class="btn btn-outline-primary" ><a href="#fix">报修申请</a></label>
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
                                            <tr id="car">
                                                <td><button class="btn btn-primary btn-sm">出车申请</button></td>
                                            </tr>
                                            <s:iterator value="#request.carAPP" var="ap">
                                            <tr>
                                                <td>出车申请</td>
                                                <td><s:property value="#ap.applicationDate"/> </td>
                                                <td><s:property value="#ap.status"/></td>
                                                <td><s:property value="#ap.userName"/><br><s:property value="#ap.userID"/></td>
                                                <td>
                                                    <form action="getSingleCAP.action">
                                                        <input value="<s:property value="#ap.id"/>" name="appid" style="display: none">
                                                        <button class="btn btn-info waves-effect waves-light" type="submit"><i class="mdi mdi-alert-circle-outline"></i></button>
                                                    </form>
                                                </td>
                                            </tr>
                                            </s:iterator>
                                            <tr id="lend">
                                                <td><button class="btn btn-primary btn-sm" >出借申请</button></td>
                                            </tr>
                                            <s:iterator value="#request.lendAPP" var="ap">
                                                <tr>
                                                    <td>出借申请</td>
                                                    <td><s:property value="#ap.applicationDate"/> </td>
                                                    <td><s:property value="#ap.status"/></td>
                                                    <td><s:property value="#ap.userName"/><br><s:property value="#ap.userID"/></td>
                                                    <td>
                                                        <form action="getSingleLAP.action">
                                                            <input value="<s:property value="#ap.id"/>" name="appid" style="display: none">
                                                            <button class="btn btn-info waves-effect waves-light" type="submit"><i class="mdi mdi-alert-circle-outline"></i></button>
                                                        </form>
                                                    </td>
                                                </tr>
                                            </s:iterator>
                                            <tr id="fix">
                                                <td><button class="btn btn-primary btn-sm">报修申请</button></td>
                                            </tr>
                                            <s:iterator value="#request.fixAPP" var="ap">
                                                <tr>
                                                    <td>报修申请</td>
                                                    <td><s:property value="#ap.applicationDate"/> </td>
                                                    <td><s:property value="#ap.status"/></td>
                                                    <td><s:property value="#ap.userName"/><br><s:property value="#ap.userID"/></td>
                                                    <td>
                                                        <form action="getSingleFAP.action">
                                                            <input value="<s:property value="#ap.id"/>" name="appid" style="display: none">
                                                            <button class="btn btn-info waves-effect waves-light" type="submit"><i class="mdi mdi-alert-circle-outline"></i></button>
                                                        </form>
                                                    </td>
                                                </tr>
                                            </s:iterator>


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
