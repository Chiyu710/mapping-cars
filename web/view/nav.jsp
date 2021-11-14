<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                    <a href="javascript:void(0);"  class="dropdown-item notify-item">
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
                    <img src="../assets/images/logo-light.png" alt="" height="80" >
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
                    <li class="nav-item">
                        <a class="nav-link " href="Logbook.html" role="button">
                            <i class="fe-airplay me-1"></i>我的行程
                        </a>
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
                                    <a href="../tempo/task-list.html" class="dropdown-item">派车单</a>
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