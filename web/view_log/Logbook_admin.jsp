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
                <!-- start page title -->
                <div class="row">
                    <div class="col-12">
                        <div class="page-title-box">
                            <h4 class="page-title">行车日志</h4>
                        </div>
                    </div>
                </div>
                <!-- end page title -->

                <div class="row">
                    <s:if test="#request.myDriveLog==null">
                        <h4 class="text-center mb-5 text-primary">似乎还没有出车日志哦...</h4>
                    </s:if>
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <form class="d-flex flex-wrap align-items-center">
                                        <label for="inputPassword2" class="visually-hidden">Search</label>
                                        <div class="me-3">
                                            <input type="search" class="form-control my-1 my-md-0 col-4"
                                                   id="inputPassword2" placeholder="Search...">
                                        </div>
                                    </form>
                                </div>


                                <div id="full-width-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="fullWidthModalLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-full-width">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h2 class="modal-title" id="fullWidthModalLabel">出车详情</h2>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="row">
                                                    <div class="col-4">
                                                        <!-- assignee -->
                                                        <p class=" mb-1">驾驶员姓名</p>
                                                        <div class="d-flex align-items-start">
                                                            <div class="w-100">
                                                                <h5 class="mt-1 font-size-14" id="userName">
                                                                    ${request.myDriveLog[0].username}
                                                                </h5>
                                                            </div>
                                                        </div>
                                                        <!-- end assignee -->
                                                    </div>
                                                    <div class="col-4">
                                                        <!-- start due date -->
                                                        <p class=" mb-1">驾驶员工号</p>
                                                        <div class="d-flex align-items-start">
                                                            <div class="w-100">
                                                                <h5 class="mt-1 font-size-14" id="userID">
                                                                    123
                                                                </h5>
                                                            </div>
                                                        </div>
                                                        <!-- end due date -->
                                                    </div>
                                                    <div class="col-4">
                                                        <!-- start due date -->
                                                        <p class=" mb-1">出车时间:</p>
                                                        <div class="d-flex align-items-start">
                                                            <div class="w-100">
                                                                <h5 class="mt-1 font-size-14" id="starttime">
                                                                    123
                                                                </h5>
                                                            </div>
                                                        </div>
                                                        <!-- end due date -->
                                                    </div>
                                                    <div class="col-4">
                                                        <!-- assignee -->
                                                        <p class=" mb-1">出车地址</p>
                                                        <div class="d-flex align-items-start">
                                                            <div class="w-100">
                                                                <h5 class="mt-1 font-size-14" id="startlocation">
                                                                    123
                                                                </h5>
                                                            </div>
                                                        </div>
                                                        <!-- end assignee -->
                                                    </div>
                                                    <div class="col-4">
                                                        <!-- start due date -->
                                                        <p class=" mb-1">定损目的地</p>
                                                        <div class="d-flex align-items-start">
                                                            <div class="w-100">
                                                                <h5 class="mt-1 font-size-14" id="destination">
                                                                    123
                                                                </h5>
                                                            </div>
                                                        </div>
                                                        <!-- end due date -->
                                                    </div>
                                                    <div class="col-4">
                                                        <!-- start due date -->
                                                        <p class=" mb-1">结束时间</p>
                                                        <div class="d-flex align-items-start">
                                                            <div class="w-100">
                                                                <h5 class="mt-1 font-size-14" id="endtime">
                                                                    123
                                                                </h5>
                                                            </div>
                                                        </div>
                                                        <!-- end due date -->
                                                    </div>
                                                    <div class="col-4">
                                                        <!-- assignee -->
                                                        <p class=" mb-1">驾驶车辆</p>
                                                        <div class="d-flex align-items-start">
                                                            <div class="w-100">
                                                                <h5 class="mt-1 font-size-14" id="carid">
                                                                    123
                                                                </h5>
                                                            </div>
                                                        </div>
                                                        <!-- end assignee -->
                                                    </div>
                                                    <div class="col-4">
                                                        <!-- start due date -->
                                                        <p class=" mb-1">车辆损坏情况</p>
                                                        <div class="d-flex align-items-start">
                                                            <div class="w-100">
                                                                <h5 class="mt-1 font-size-14" id=“broke">
                                                                    123
                                                                </h5>
                                                            </div>
                                                        </div>
                                                        <!-- end due date -->
                                                    </div>
                                                    <div class="col-4">
                                                        <!-- start due date -->
                                                        <p class=" mb-1">违规情况</p>
                                                        <div class="d-flex align-items-start">
                                                            <div class="w-100">
                                                                <h5 class="mt-1 font-size-14" id="illegal">
                                                                    123
                                                                </h5>
                                                            </div>
                                                        </div>
                                                        <!-- end due date -->
                                                    </div>
                                                </div>
                                                <p></p>
                                                <hr>
                                                <h6>轨迹回放</h6>
                                                <div id="MAP">

                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <input type="button" class="btn" value="开始动画" id="start" onclick="startAnimation()"/>
                                                <input type="button" class="btn" value="暂停动画" id="pause" onclick="pauseAnimation()"/>
                                            </div>
                                        </div><!-- /.modal-content -->
                                    </div><!-- /.modal-dialog -->
                                </div><!-- /.modal -->
                                <div class="responsive-table-plugin">
                                    <div class="table-rep-plugin">
                                        <div class="table-responsive" data-pattern="priority-columns">
                                            <table id="tech-companies-1" class="table table-striped">
                                                <thead>
                                                <tr>
                                                    <th>出车单号</th>
                                                    <th data-priority="1">车牌号</th>
                                                    <th data-priority="1">驾驶员</th>
                                                    <th data-priority="3">开始时间</th>
                                                    <th data-priority="3">结束时间</th>
                                                    <th data-priority="3">违规记录</th>
                                                    <th data-priority="3">损坏记录</th>
                                                    <th data-priority="6">业务编号</th>
                                                    <th data-priority="6">具体信息</th>
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
                                                    <td>
                                                        <form>  <input class="btn-xs btn-primary text-center" type="button" value="查看详情"data-bs-toggle="modal" data-bs-target="#full-width-modal"></form>
                                                    </td>


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