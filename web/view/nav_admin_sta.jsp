<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: 10102
  Date: 2021/11/19
  Time: 13:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Topbar Start -->
<div class="navbar-custom">
    <div class="container-fluid">
        <ul class="list-unstyled topnav-menu float-end mb-0">
            <li class="d-none d-lg-block">
                <div class="app-search-box dropdown">
                </div>
            </li>

            <!--icon-->
            <li class="dropdown d-none d-lg-inline-block">
                <a class="nav-link dropdown-toggle arrow-none waves-effect waves-light" data-toggle="fullscreen"
                   href="#">
                    <i class="fe-maximize noti-icon"></i>
                </a>
            </li>

            <!-- 用户信息-->
            <li class="dropdown notification-list topbar-dropdown">
                <a class="nav-link dropdown-toggle nav-user me-0 waves-effect waves-light" data-bs-toggle="dropdown"
                   href="#" role="button" aria-haspopup="false" aria-expanded="false">

                        <span class="pro-user-name ms-1">
                      <s:property value="#session.admin.name"/> <i class="mdi mdi-chevron-down"></i>
                    </span>
                </a>
                <div class="dropdown-menu dropdown-menu-end profile-dropdown ">
                    <!-- item-->
                    <div class="dropdown-header noti-title">
                        <h6 class="text-overflow m-0">Welcome !</h6>
                    </div>

                    <!-- item-->

                    <!-- item-->
                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                        <i class="fe-settings"></i>
                        <span>Settings</span>
                    </a>

                    <div class="dropdown-divider"></div>

                    <!-- item-->
                    <a href="../view_auth/login.jsp" class="dropdown-item notify-item">
                        <i class="fe-log-out"></i>
                        <span>Logout</span>
                    </a>

                </div>
            </li>


        </ul>

        <!-- LOGO -->
        <div class="logo-box">

            <a href="#" class="logo logo-light text-center">
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

                    <li class="nav-item dropdown">
                        <form action="takeAllCars.action" method="POST" id="carInfo">
                            <a class="nav-link"    onclick="document:carInfo.submit()" role="button">
                                <i class="ti-car me-1"></i>部门车辆
                            </a>
                        </form>
                    </li>


                    <li class="nav-item dropdown">
                        <a href="../view_business/order_statiscs.jsp" class="nav-link"><i class="ti-stats-up me-1"></i>业务统计</a>
                    </li>

                    <li class="nav-item dropdown">
                        <s:form action="getDriveLog" method="POST" id="DRILOG">
                            <a onclick="document:DRILOG.submit()" class="nav-link btn"><i class="fe-map me-1"></i>行车日志查看</a>
                        </s:form>
                    </li>

                    <li class="nav-item dropdown">
                        <s:form action="getVio" method="POST" id="VIO">
                            <a onclick="document:VIO.submit()" class="nav-link btn"><i class="fe-bookmark me-1"></i>违规记录查看</a>
                        </s:form>
                    </li>

                    <li class="nav-item dropdown">
                        <s:form action="getDriveLog" method="POST" id="StaffManage">
                            <a onclick="document:StaffManage.submit()" class="nav-link btn"><i class="fe-users me-1"></i>部门员工</a>
                        </s:form>
                    </li>

                </ul> <!-- end navbar-->
            </div> <!-- end .collapsed-->
        </nav>
    </div> <!-- end container-fluid -->
</div> <!-- end topnav-->