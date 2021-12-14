<%--
  Created by IntelliJ IDEA.
  User: 10753
  Date: 2021-11-19
  Time: 15:04
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
                            <h4 class="page-title">审核批准</h4>
                        </div>
                    </div>
                </div>
                <!-- end page title -->
                <div class="row">
                    <div class="card d-block">
                        <div class="card-body">
                            <div class="dropdown float-end">
                                <a href="#" class="dropdown-toggle arrow-none text-muted" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="mdi mdi-dots-horizontal font-18"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-end">
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item"> <i class="mdi mdi-attachment me-1"></i>Attachment </a>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item"> <i class="mdi mdi-pencil-outline me-1"></i>Edit </a>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item"> <i class="mdi mdi-content-copy me-1"></i>Mark as Duplicate </a>
                                    <div class="dropdown-divider"></div>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item text-danger"> <i class="mdi mdi-delete-outline me-1"></i>Delete </a>
                                </div>
                                <!-- end dropdown menu-->
                            </div>
                            <!-- end dropdown-->
                            <!-- end form-check-->
                            <div class="clearfix"></div>
                                <h4><button type="button" class="btn btn-warning me-2">审核中</button>申请单号：fix-<s:property value="#request.FAP.id"/></h4>
                            <div class="row">
                                <div class="col-md-4">
                                    <!-- assignee -->
                                    <p class="mt-2 mb-1 text-muted">责任人</p>
                                    <div class="d-flex align-items-start">
                                        <div class="w-100">
                                            <h5 class="mt-1 font-size-14">
                                                <s:property value="#request.FAP.userName"/>
                                            </h5>
                                        </div>
                                    </div>
                                    <!-- end assignee -->
                                </div>
                                <!-- end col -->

                                <div class="col-md-4">
                                    <!-- start due date -->
                                    <p class="mt-2 mb-1 text-muted">勘察车号</p>
                                    <div class="d-flex align-items-start">
                                        <div class="w-100">
                                            <h5 class="mt-1 font-size-14">
                                                <s:property value="#request.FAP.carID"/>
                                            </h5>
                                        </div>
                                    </div>
                                    <!-- end due date -->
                                </div>
                                <div class="col-md-4">
                                    <!-- start due date -->
                                    <p class="mt-2 mb-1 text-muted">维修类型</p>
                                    <div class="d-flex align-items-start">
                                        <div class="w-100">
                                            <h5 class="mt-1 font-size-14">
                                                <s:property value="#request.FAP.type"/>
                                            </h5>
                                        </div>
                                    </div>
                                    <!-- end due date -->
                                </div>

                                <!-- end col -->

                                <!-- end col -->

                                <div class="col-md-4">
                                    <!-- start due date -->
                                    <p class="mt-2 mb-1 text-muted">申请日期</p>
                                    <div class="d-flex align-items-start">
                                        <i class="mdi mdi-calendar-month-outline font-18 text-success me-1"></i>
                                        <div class="w-100">
                                            <h5 class="mt-1 font-size-14">
                                                <s:property value="#request.FAP.applicationDate"/>
                                            </h5>
                                        </div>
                                    </div>
                                    <!-- end due date -->
                                </div>

                                <div class="col-md-4">
                                    <!-- start due date -->
                                    <p class="mt-2 mb-1 text-muted">维修地点</p>
                                    <div class="d-flex align-items-start">
                                        <i class="mdi mdi-map-marker font-18 text-primary me-1"></i>
                                        <div class="w-100">
                                            <h5 class="mt-1 font-size-14">
                                                <s:property value="#request.FAP.location"/>
                                            </h5>
                                        </div>
                                    </div>
                                    <!-- end due date -->
                                </div>
                                <!-- end col -->
                                <div>
                                    <h5 class="mt-3">备注:</h5>
                                    <s:property value="#request.FAP.remarks"/>
                                    <p class="text-muted mb-2">
                                    </p>
                                </div>
                            </div>
                            <!-- end row -->
                            <hr class="mt-3">
                            <s:form action="checkFix" method="POST">
                            <div class="row mt-3 mb-1">
                                <input name="fixApplication.id" value="${request.FAP.id}" style="display: none">
                                <input name="fixApplication.carID" value="${request.FAP.carID}" style="display: none">
                                <label class="col-md-1 col-form-label" for="handler">管理员签名</label>
                                <div class="col-md-2">
                                    <input type="text" class="form-control " id="handler" name="fixApplication.handler" placeholder="请输入你的名字" maxlength="10" required>
                                </div>
                                <div class="col-md-1"></div>
                                <div class="btn-group col-md-3" role="group" aria-label="Basic radio toggle button group">
                                    <input type="radio" class="btn-check" name="fixApplication.status" value="已通过" id="btnradio1"  checked>
                                    <label class="btn btn-outline-primary" for="btnradio1" >通过</label>
                                    <input type="radio" class="btn-check" name="fixApplication.status" value="未通过" id="btnradio2" autocomplete="off">
                                    <label class="btn btn-outline-primary" for="btnradio2">不予通过</label>
                                </div>
                                <div class="col-md-1"></div>
                                <label class="col-md-1 col-form-label" for="work">管理员意见</label>
                                <div class="col-md-3">
                                    <input type="text" id="work" name="123" class="form-control"  >
                                </div>
                                <hr class="mt-3">
                                <div class="mt-2">
                                    <input class="btn btn-primary text-center" type="submit" value="提交" style="width: 500px; height: 40px; font-size: 20px;float: none;display: block;margin-left: auto;margin-right: auto;">
                                </div>
                                </s:form>

                        </div>
                        <!-- end card-body-->
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