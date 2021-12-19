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
                    <a href="../view_auth/administrator_index.jsp"  class="dropdown-item notify-item">
                        <i class="fe-user"></i>My Account
                    </a>

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

            <a href="../view_auth/administrator_index.jsp" class="logo logo-light text-center">
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
                        <s:form action="getAllApp" method="POST" id="allInfo">
                            <a class="nav-link"    onclick="document:allInfo.submit()" role="button">
                                <i class="ti-write me-1"></i>申请审核
                            </a>
                        </s:form>
                    </li>
                    <li class="nav-item dropdown">
                        <form action="takeAllCars.action" method="POST" id="carInfo">
                            <a class="nav-link"    onclick="document:carInfo.submit()" role="button">
                                <i class="ti-car me-1"></i>部门车辆
                            </a>
                        </form>
                    </li>


                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle arrow-none" id="topnav-components" role="button"
                           data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fe-layers me-1"></i> 部门业务
                            <div class="arrow-down"></div>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="topnav-components">
                            <a href="../view_business/order_statiscs.jsp" class="dropdown-item"><i class="ti-stats-up me-1"></i>业务统计</a>
                            <s:form action="getDriveLog" method="POST" id="DRILOG">
                            <a onclick="document:DRILOG.submit()" class="dropdown-item"><i class="fe-map me-1"></i>行车日志</a>
                            </s:form>
                            <s:form action="getVio" method="POST" id="VIO">
                            <a onclick="document:VIO.submit()" class="dropdown-item"><i class="fe-bookmark me-1"></i>违规记录</a>
                            </s:form>
                        </div>
                    </li>


                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle arrow-none"  id="topnav-apps" role="button"
                           data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fe-clipboard me-1"></i> 通知发布
                            <div class="arrow-down"></div>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="topnav-apps">
                            <s:form action="getNot" method="POST" id="NOT">
                                <a  class="dropdown-item" onclick="document:NOT.submit()">
                                <i class="fe-clipboard me-1"></i> 已发布通知
                                </a>
                            </s:form>
                                <a href="../view_notification/notification_release.jsp" class="dropdown-item"><i class="fe-clipboard"></i>  &nbsp;&nbsp;通知发布</a>
                        </div>
                    </li>

                    <li class="nav-item dropdown">
                        <s:form action="SaveVio" method="POST" id="svVio">
                            <a class="nav-link"    href="../view_log/violation_release.jsp" role="button">
                                <i class="ti-bookmark me-1"></i>违规记录发布
                            </a>
                        </s:form>
                    </li>

                </ul> <!-- end navbar-->
            </div> <!-- end .collapsed-->
        </nav>
    </div> <!-- end container-fluid -->
</div> <!-- end topnav-->