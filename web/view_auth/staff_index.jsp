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
                            <h4 class="page-title">欢迎，<s:property value="#session.user.name"/> 先生</h4>
                        </div>
                    </div>
                </div>
                <!-- end page title -->
                <div class="row">
                    <div class="col-lg-4 col-xl-4">
                        <div class="card text-center">
                            <div class="card-body">
                                <h3 class="mb-2"><s:property value="#session.user.name"/></h3>
                                <p class="text-muted">Staff-ID-<s:property value="#session.user.id"/></p>

                                <s:if test='#session.user.status=="无法出车"'>
                                    <button type="button" class="btn btn-danger btn waves-effect mb-2 waves-light" style="width: 350px">无法出车</button>
                                </s:if>
                                <s:elseif test='#session.user.status=="休假"'>
                                    <button type="button" class="btn btn-secondary btn waves-effect mb-2 waves-light " style="width: 350px">休假中</button>
                                </s:elseif>
                                <s:else>
                                    <button type="button" class="btn btn-success btn waves-effect mb-2 waves-light " style="width: 350px">可以出车</button>
                                </s:else>
                                <div class="text-start mt-3">
                                    <h4 class="font-17 text-uppercase">About Me :</h4>
                                    <p class="text-muted mb-2 font-17"><strong>姓名 :</strong> <span class="ms-2"><s:property value="#session.user.name"/></span></p>

                                    <p class="text-muted mb-2 font-17"><strong>电话 :</strong><span class="ms-2"><s:property value="#session.user.age"/></span></p>

                                    <p class="text-muted mb-2 font-17"><strong>邮箱 :</strong> <span class="ms-2"><s:property value="#session.user.email"/></span></p>

                                    <p class="text-muted mb-1 font-17"><strong>所属部门 :</strong> <span class="ms-2"><s:property value="#session.user.department"/></span></p>
                                </div>

                            </div>
                        </div> <!-- end card -->
                    </div> <!-- end col-->
                    <div class="col-lg-4 col-xl-4">
                        <div class="card text-center">
                            <h4 class="mt-4">状态切换</h4>
                            <div class="card-body">
                                <div>
                                    <form>
                                        <div class="btn-group" role="group" aria-label="Basic radio toggle button group">
                                            <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked>
                                            <label class="btn btn-outline-success" for="btnradio1">可以出车</label>

                                            <input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off">
                                            <label class="btn btn-outline-danger" for="btnradio2">无法出车</label>

                                            <input type="radio" class="btn-check" name="btnradio" id="btnradio3" autocomplete="off">
                                            <label class="btn btn-outline-secondary" for="btnradio3">休假</label>
                                        </div>
                                        <div class="m-3">
                                            <label for="reason" class="mb-2">备注</label>
                                            <div class="mt-2">
                                                <textarea class="form-control" id="reason" rows="5"></textarea>
                                            </div>
                                        </div>
                                        <div>
                                            <input class="btn btn-primary text-center" type="submit" value="切换状态">
                                        </div>
                                    </form>
                                </div>

                            </div> <!-- end card -->
                        </div>
                    </div>
                    <div class="col-lg-4 col-xl-4">
                        <div class="card text-center">
                            <h4 class="mt-4">我的通知</h4>
                            <div class="card-body">
                                <div>
                                    <div class="collapse show" id="todayTasks">
                                        <!-- task -->
                                        <div class="row justify-content-sm-between">
                                            <div class="col-lg-4 mb-2 mt-1">
                                                <label class="form-check-label">保养通知</label>
                                                <!-- end checkbox -->
                                            </div>
                                            <!-- end col -->
                                            <div class="col-lg-8 mb-2">
                                                <div class="d-sm-flex justify-content-between">
                                                    <div class="mt-3 mt-sm-0">
                                                        <ul class="list-inline font-13 text-sm-end">
                                                            <li class="list-inline-item pe-1">
                                                                <i class="mdi font-16 me-1"></i>
                                                                2021-11-14
                                                            </li>
                                                            <li class="list-inline-item pe-1">
                                                                <i class="mdi mdi-tune font-16 me-1"></i>
                                                                车辆管理部
                                                            </li>
                                                            <li class="list-inline-item">
                                                                <span class="badge badge-soft-danger p-1">High</span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <!-- end .d-flex-->
                                            </div>
                                            <!-- end col -->
                                        </div>
                                        <!-- end task -->
                                        <div class="row justify-content-sm-between">
                                            <div class="col-lg-4 mb-2 mt-1">
                                                <label class="form-check-label">保养通知</label>
                                                <!-- end checkbox -->
                                            </div>
                                            <!-- end col -->
                                            <div class="col-lg-8 mb-2">
                                                <div class="d-sm-flex justify-content-between">
                                                    <div class="mt-3 mt-sm-0">
                                                        <ul class="list-inline font-13 text-sm-end">
                                                            <li class="list-inline-item pe-1">
                                                                <i class="mdi font-16 me-1"></i>
                                                                2021-11-14
                                                            </li>
                                                            <li class="list-inline-item pe-1">
                                                                <i class="mdi mdi-tune font-16 me-1"></i>
                                                                车辆管理部
                                                            </li>
                                                            <li class="list-inline-item">
                                                                <span class="badge badge-soft-danger p-1">High</span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <!-- end .d-flex-->
                                            </div>
                                            <!-- end col -->
                                        </div>
                                    </div>
                                    <!--end list-->
                                </div>
                                <a href="../view_notification/notification_detail.jsp"
                                   class="dropdown-item text-center text-primary notify-item notify-all">
                                    查看通知详情
                                    <i class="fe-arrow-right"></i>
                                </a>
                            </div> <!-- end card -->
                        </div>
                    </div>
                </div>
                <!-- end row-->


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