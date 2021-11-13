<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8"/>
    <title>MAPPING CARS MANAGE INDEX</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description"/>
    <meta content="Coderthemes" name="author"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <!-- App favicon -->
    <link rel="shortcut icon" href="../assets/images/favicon.ico">

    <!-- Plugins css -->
    <link href="../assets/libs/flatpickr/flatpickr.min.css" rel="stylesheet" type="text/css"/>
    <link href="../assets/libs/selectize/css/selectize.bootstrap3.css" rel="stylesheet" type="text/css"/>

    <!-- App css -->
    <link href="../assets/css/config/creative/bootstrap.min.css" rel="stylesheet" type="text/css"
          id="bs-default-stylesheet"/>
    <link href="../assets/css/config/creative/app.min.css" rel="stylesheet" type="text/css"
          id="app-default-stylesheet"/>

    <link href="../assets/css/config/creative/bootstrap-dark.min.css" rel="stylesheet" type="text/css"
          id="bs-dark-stylesheet"/>
    <link href="../assets/css/config/creative/app-dark.min.css" rel="stylesheet" type="text/css"
          id="app-dark-stylesheet"/>

    <!-- icons -->
    <link href="../assets/css/icons.min.css" rel="stylesheet" type="text/css"/>

    <style>
        #appCard {
            float: none;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
    </style>
</head>

<!-- body start -->
<body class="loading" data-layout-mode="horizontal"
      data-layout='{"mode": "light", "width": "fluid", "menuPosition": "fixed", "sidebar": { "color": "light", "size": "default", "showuser": false}, "topbar": {"color": "dark"}, "showRightSidebarOnPageLoad": true}'>

<!-- Begin page -->
<div id="wrapper">

    <!-- Topbar Start -->
    <div class="navbar-custom">
        <div class="container-fluid">
            <ul class="list-unstyled topnav-menu float-end mb-0">
                <li class="d-none d-lg-block">

                    <div class="app-search-box dropdown">
                    </div>
                    </form>
                </li>

                <!--icon-->
                <li class="dropdown d-none d-lg-inline-block">
                    <a class="nav-link dropdown-toggle arrow-none waves-effect waves-light" data-toggle="fullscreen"
                       href="#">
                        <i class="fe-maximize noti-icon"></i>
                    </a>
                </li>

                <!--通知栏-->
                <li class="dropdown notification-list topbar-dropdown">
                    <a class="nav-link dropdown-toggle waves-effect waves-light" data-bs-toggle="dropdown" href="#"
                       role="button" aria-haspopup="false" aria-expanded="false">
                        <i class="fe-bell noti-icon"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-end dropdown-lg">

                        <!-- item-->
                        <div class="dropdown-item noti-title">
                            <h5 class="m-0">
                            <span class="float-end">
                            </span>通知
                            </h5>
                        </div>

                        <div class="noti-scroll" data-simplebar>
                            <!-- item-->
                            <a href="javascript:void(0);" class="dropdown-item notify-item ">

                                <p class="notify-details mt-1">
                                <div>
                                    系统通知 <span class="badge badge-pill badge-outline-danger">重要</span>
                                </div>
                                </p>

                                <p class="text-primary mb-0 ">
                                    <small>您有一份违规急需处理</small>
                                </p>
                            </a>

                            <!-- item-->
                            <a href="javascript:void(0);" class="dropdown-item notify-item ">

                                <p class="notify-details mt-1">
                                <div>
                                    维修部-ALex <span class="badge badge-pill badge-outline-warning">警告</span>
                                </div>
                                </p>
                                <p class="text-primary mb-0 ">
                                    <small>你的车已经需要保养了</small>
                                </p>
                            </a>
                            <!-- All-->
                            <a href="javascript:void(0);"
                               class="dropdown-item text-center text-primary notify-item notify-all">
                                View all
                                <i class="fe-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                </li>

                <!-- 用户信息-->
                <li class="dropdown notification-list topbar-dropdown">
                    <a class="nav-link dropdown-toggle nav-user me-0 waves-effect waves-light" data-bs-toggle="dropdown"
                       href="#" role="button" aria-haspopup="false" aria-expanded="false">

                        <span class="pro-user-name ms-1">
                       理中客 <i class="mdi mdi-chevron-down"></i>
                    </span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-end profile-dropdown ">
                        <!-- item-->
                        <div class="dropdown-header noti-title">
                            <h6 class="text-overflow m-0">Welcome !</h6>
                        </div>

                        <!-- item-->
                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                            <i class="fe-user"></i>My Account
                        </a>

                        <!-- item-->
                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                            <i class="fe-settings"></i>
                            <span>Settings</span>
                        </a>

                        <div class="dropdown-divider"></div>

                        <!-- item-->
                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                            <i class="fe-log-out"></i>
                            <span>Logout</span>
                        </a>

                    </div>
                </li>


            </ul>

            <!-- LOGO -->
            <div class="logo-box">

                <a href="index.html" class="logo logo-light text-center">
                <span class="logo-sm">
                    <img src="../assets/images/logo-sm.png" alt="" height="22">
                </span>
                    <span class="logo-lg">
                    <img src="../assets/images/logo-light.png" alt="" height="80">
                </span>
                </a>
            </div>

            <ul class="list-unstyled topnav-menu topnav-menu-left m-0">
                <li>
                    <button class="button-menu-mobile waves-effect waves-light">
                        <i class="fe-menu"></i>
                    </button>
                </li>

                <li>
                    <!-- Mobile menu toggle (Horizontal Layout)-->
                    <a class="navbar-toggle nav-link" data-bs-toggle="collapse" data-bs-target="#topnav-menu-content">
                        <div class="lines">
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                    </a>
                    <!-- End mobile menu toggle-->
                </li>


            </ul>
            <div class="clearfix"></div>
        </div>
    </div>
    <!-- end Topbar -->

    <!--页面导航-->
    <div class="topnav">
        <div class="container-fluid">
            <nav class="navbar navbar-light navbar-expand-lg topnav-menu">

                <div class="collapse navbar-collapse" id="topnav-menu-content">
                    <ul class="navbar-nav">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle arrow-none" href="#" id="topnav-dashboard" role="button"
                               data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fe-airplay me-1"></i> 我的行程
                                <div class="arrow-down"></div>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="topnav-dashboard">
                                <a href="index.html" class="dropdown-item">查看当前行程</a>
                                <a href="dashboard-2.html" class="dropdown-item">查看历史行程</a>
                            </div>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle arrow-none" href="#" id="topnav-apps" role="button"
                               data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fe-grid me-1"></i> 业务办理
                                <div class="arrow-down"></div>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="topnav-apps">

                                <a href="apps-calendar.html" class="dropdown-item"><i class="ti-car me-1"></i>出车单填写</a>
                                <a href="apps-chat.html" class="dropdown-item"><i class="ti-bell me-1"></i>故障申报</a>
                                <a href="apps-chat.html" class="dropdown-item"><i class="fa-tools me-1"></i>车辆出借</a>

                                <div class="dropdown">
                                    <a class="dropdown-item dropdown-toggle arrow-none" href="#" id="topnav-task"
                                       role="button" data-bs-toggle="dropdown" aria-haspopup="true"
                                       aria-expanded="false">
                                        <i class="fe-clipboard me-1"></i> 申请情况查询
                                        <div class="arrow-down"></div>
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="topnav-task">
                                        <a href="task-list.html" class="dropdown-item">派车单</a>
                                        <a href="task-details.html" class="dropdown-item">派修单</a>
                                        <a href="task-kanban-board.html" class="dropdown-item">出借单</a>
                                    </div>
                                </div>

                            </div>
                        </li>


                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle arrow-none" href="#" id="topnav-components" role="button"
                               data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fe-layers me-1"></i> 行车记录
                                <div class="arrow-down"></div>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="topnav-components">

                                <a href="widgets.html" class="dropdown-item"><i class="fe-map me-1"></i> 行车日志</a>
                                <a href="widgets.html" class="dropdown-item"><i class="fe-bookmark me-1"></i> 违规记录</a>

                            </div>
                        </li>


                    </ul> <!-- end navbar-->
                </div> <!-- end .collapsed-->
            </nav>
        </div> <!-- end container-fluid -->
    </div> <!-- end topnav-->

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
                            <div class="row">
                                <div class="col-xl-10" id="appCard">
                                    <div class="card">
                                        <div class="card-body">

                                            <h4 class="header-title mb-3">出车申请</h4>

                                            <form>
                                                <div id="progressbarwizard">

                                                    <ul class="nav nav-pills bg-light nav-justified form-wizard-header mb-3">
                                                        <li class="nav-item">
                                                            <a href="#account-2" data-bs-toggle="tab" data-toggle="tab" class="nav-link rounded-0 pt-2 pb-2">
                                                                <i class="mdi mdi-account-circle me-1"></i>
                                                                <span class="d-none d-sm-inline">出车信息</span>
                                                            </a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a href="#profile-tab-2" data-bs-toggle="tab" data-toggle="tab" class="nav-link rounded-0 pt-2 pb-2">
                                                                <i class="mdi mdi-face-profile me-1"></i>
                                                                <span class="d-none d-sm-inline">车辆选择</span>
                                                            </a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a href="#finish-2" data-bs-toggle="tab" data-toggle="tab" class="nav-link rounded-0 pt-2 pb-2">
                                                                <i class="mdi mdi-checkbox-marked-circle-outline me-1"></i>
                                                                <span class="d-none d-sm-inline">申请提交</span>
                                                            </a>
                                                        </li>
                                                    </ul>

                                                    <div class="tab-content b-0 mb-0 pt-0">

                                                        <div id="bar" class="progress mb-3" style="height: 7px;">
                                                            <div class="bar progress-bar progress-bar-striped progress-bar-animated bg-success"></div>
                                                        </div>

                                                        <div class="tab-pane" id="account-2">
                                                            <div class="row ms-3">
                                                                <div class="col-12">
                                                                    <div class="row mb-3 ">
                                                                        <label class="col-md-1 col-form-label" for="userName1">用车人</label>
                                                                        <div class="col-md-4">
                                                                            <input type="text" class="form-control " id="userName1" name="userName1" value="Coderthemes" readonly>
                                                                        </div>
                                                                        <div class="col-md-1">
                                                                        </div>
                                                                        <label class="col-md-1 col-form-label" for="userID1">工号</label>
                                                                        <div class="col-md-4">
                                                                            <input type="text" class="form-control " id="userID1" name="userID1" value="001" readonly>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row mb-3">
                                                                        <label class="col-md-1 col-form-label" for="useTime1">用车时间</label>
                                                                        <div class="col-md-4">
                                                                            <input type="date" class="form-control " id="useTime1" name="useTime1">
                                                                        </div>
                                                                        <div class="col-md-1"></div>
                                                                        <label class="col-md-1 col-form-label" for="appTime1">申请时间</label>
                                                                        <div class="col-md-4">
                                                                            <input type="date" class="form-control " id="appTime1" name="appTime1" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="row mb-3">
                                                                        <label class="col-md-1 col-form-label" for="destination">目的地</label>
                                                                        <div class="col-md-10">
                                                                            <input type="text" id="destination" name="destination" class="form-control" >
                                                                        </div>
                                                                    </div>

                                                                    <div class="row mb-3">
                                                                        <label for="reason" class="mb-2">申请理由</label>
                                                                        <div class="col-md-11">
                                                                        <textarea class="form-control" id="reason" rows="5"></textarea>
                                                                        </div>
                                                                    </div>
                                                                </div> <!-- end col -->
                                                            </div> <!-- end row -->
                                                        </div>

                                                        <div class="tab-pane" id="profile-tab-2">
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    <div class="row mb-3">
                                                                        <label class="col-md-3 col-form-label" for="select"> 车辆选择</label>
                                                                        <select id="select" class="form-select col-5">
                                                                            <option value="1">查勘车1</option>
                                                                            <option value="2">查勘车2</option>
                                                                            <option value="3">查勘车3</option>
                                                                        </select>
                                                                    </div>

                                                                    <hr>
                                                                    <h3 class="text-center mb-2">车辆信息</h3>
                                                                    <div class="row mb-3 ">
                                                                        <label class="col-md-1 col-form-label" for="CarId">车辆编号</label>
                                                                        <div class="col-md-4">
                                                                            <input type="text" class="form-control " id="CarId" name="CarId" value="查勘车01" readonly>
                                                                        </div>
                                                                        <div class="col-md-2">
                                                                        </div>
                                                                        <label class="col-md-1 col-form-label" for="CarId02">车牌号</label>
                                                                        <div class="col-md-4">
                                                                            <input type="text" class="form-control " id="CarId02" name="CarId02" value="浙A88888" readonly>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row mb-3">
                                                                        <label class="col-md-1 col-form-label" for="CarType" >车辆型号</label>
                                                                        <div class="col-md-4">
                                                                            <input type="text" class="form-control " id="CarType" name="CarType" value=" 911 Turbo s" readonly>
                                                                        </div>
                                                                        <div class="col-md-2"></div>
                                                                        <label class="col-md-1 col-form-label" for="CarStatus" >车辆状况</label>
                                                                        <div class="col-md-4">
                                                                            <input type="text" class="form-control " id="CarStatus" name="CarStatus" value="良好" readonly>
                                                                        </div>
                                                                    </div>
                                                                </div> <!-- end col -->
                                                            </div> <!-- end row -->
                                                        </div>

                                                        <div class="tab-pane" id="finish-2">
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    <div class="text-center">
                                                                        <h2 class="mt-0"><i class="mdi mdi-check-all"></i></h2>
                                                                        <h3 class="mt-0">Thank you !</h3>

                                                                        <p class="w-75 mb-2 mx-auto">
                                                                            您的申请已填写完成，请在提交后耐心等待审核完成</p>

                                                                        <div class="mb-3">
                                                                            <div class="form-check d-inline-block">
                                                                                <input type="checkbox" class="form-check-input" id="customCheck3">
                                                                                <label class="form-check-label" for="customCheck3">我已知悉出车相关流程</label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div> <!-- end col -->
                                                            </div> <!-- end row -->
                                                        </div>

                                                        <ul class="list-inline mb-0 wizard">
                                                            <li class="previous list-inline-item">
                                                                <a href="javascript: void(0);" class="btn btn-primary">Previous</a>
                                                            </li>
                                                            <li class="next list-inline-item float-end">
                                                                <a href="javascript: void(0);" class="btn btn-primary">Next</a>
                                                            </li>
                                                        </ul>

                                                    </div> <!-- tab-content -->
                                                </div> <!-- end #progressbarwizard-->
                                            </form>

                                        </div> <!-- end card-body -->
                                    </div> <!-- end card-->
                                </div> <!-- end col -->
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end page title -->

                <div class="row">

                </div>

            </div> <!-- container -->

        </div> <!-- content -->

        <!-- Footer Start -->
        <footer class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                        <script>document.write(new Date().getFullYear())</script> &copy; Mapping car management system
                        by <a href="">第4小组</a>
                    </div>
                    <div class="col-md-6">
                        <div class="text-md-end footer-links d-none d-sm-block">
                            <a href="javascript:void(0);">About Us</a>
                            <a href="javascript:void(0);">Help</a>
                            <a href="javascript:void(0);">Contact Us</a>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- end Footer -->

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
<script src="../assets/libs/twitter-bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>

<!-- Init js-->
<script src="../assets/js/pages/form-wizard.init.js"></script>

<!-- App js -->
<script src="../assets/js/app.min.js"></script>


<!-- App js-->
<script src="../assets/js/app.min.js"></script>

</body>
</html>