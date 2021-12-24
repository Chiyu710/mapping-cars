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
                <!-- start page title -->
                <div class="row">
                    <div class="col-12">
                        <div class="page-title-box">
                            <h4 class="page-title">部门员工</h4>
                        </div>
                    </div>
                </div>
                <!-- end page title -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="responsive-table-plugin">
                                    <div class="table-rep-plugin">
                                        <div class="table-responsive" data-pattern="priority-columns">
                                            <table id="tech-companies-1" class="table table-striped">
                                                <thead>
                                                <tr>
                                                    <th>出车单号</th>
                                                    <th data-priority="1">ID</th>
                                                    <th data-priority="1">姓名</th>
                                                    <th data-priority="3">性别</th>
                                                    <th data-priority="3">年龄</th>
                                                    <th data-priority="3">部门</th>
                                                    <th data-priority="3">当前状态</th>
                                                    <th data-priority="6">状态分数</th>
                                                    <th data-priority="6">今日健康状态</th>
                                                    <th></th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <s:iterator var="DRIL" value="#request.myDriveLog">
                                                <tr>
                                                    <th><s:property value="#DRIL.id"/></th>
                                                    <td><s:property value="#DRIL.carid"/></td>
                                                    <td><s:property value="#DRIL.username"/></td>
                                                    <td><s:property value="#DRIL.starttime"/></td>
                                                    <td><s:property value="#DRIL.endtime"/></td>
                                                    <td><s:property value="#DRIL.illegal"/></td>
                                                    <td><s:property value="#DRIL.broke"/></td>
                                                    <td><s:property value="#DRIL.applicationid"/></td>
                                                    <s:if test='#session.admin.position=="sta"'>
                                                        <td>
                                                            <input name="car.id" value="<s:property value="#car.id"/>" style="display: none">
                                                            <button onclick="document:carsave.submit()" class="btn btn-sm btn-primary">查看业绩</button>
                                                        </td>
                                                    </s:if>
                                                </tr>
                                                </s:iterator>
                                                </tbody>
                                            </table>
                                        </div> <!-- end .table-responsive -->

                                    </div> <!-- end .table-rep-plugin-->
                                </div> <!-- end .responsive-table-plugin-->
                            </div>
                        </div> <!-- end card -->
                    </div> <!-- end col -->
                </div>
                <!-- end row -->
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
<script src="../assets/libs/toastr/node_modules/jquery/jquery.min.js"></script>
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