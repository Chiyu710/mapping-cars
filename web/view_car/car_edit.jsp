<%--
  Created by IntelliJ IDEA.
  User: 10102
  Date: 2021/11/19
  Time: 15:55
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
                            <h4 class="page-title text-center">车辆具体信息</h4>
                        </div>
                    </div>
                </div>
                <!-- end page title -->


                <div class="row">
                    <form action="saveOrUpdateCars.action" method="POST" id="carsave">
                    <div class="col-lg-10 mmmd">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="text-uppercase bg-light p-2 mt-0 mb-3">General</h5>
                                <div class="row">
                                    <div class="mb-3 col-4">
                                        <label for="car-id" class="form-label">查勘车号 <span class="text-danger">*</span></label>
                                        <input type="text" id="car-id" class="form-control" name="car.id" value="<s:property value="#request.car.id"/>">
                                        <input  name="car.pic" value="<s:property value="#request.car.pic"/>" style="display: none">
                                    </div>

                                    <div class="mb-3 col-4">
                                        <label for="cph" class="form-label">车牌号 <span class="text-danger">*</span></label>
                                        <input type="text" id="cph" class="form-control" name="car.licensePlate" value="<s:property value="#request.car.licensePlate"/>">
                                    </div>

                                    <div class="mb-3 col-4">
                                        <label for="de" class="form-label">所属部门 <span class="text-danger">*</span></label>
                                        <input type="text" id="de" class="form-control" name="car.department" value="<s:property value="#request.car.department"/>">
                                    </div>

                                    <div class="mb-3 col-4">
                                        <label for="e" class="form-label">当前状态 <span class="text-danger">*</span></label>
                                        <select class="form-select my-1 my-lg-0" id="e" name="car.status" value="<s:property value="#request.car.status"/>">
                                            <option value="空闲" class="text-success" >空闲</option>
                                            <option value="工作中" class="text-danger">工作中</option>
                                            <option value="停用" class="text-secondary" >停用</option>
                                        </select>
                                    </div>

                                    <div class="mb-3 col-4">
                                        <label for="nm" class="form-label">别名</label>
                                        <input type="text" id="nm" class="form-control" name="car.name" value="<s:property value="#request.car.name"/>">
                                    </div>
                                    <div class="mb-3 col-4">
                                    </div>
                                    <div class="mb-3 col-4">
                                        <label for="rt" class="form-label">入库时间 <span class="text-danger">*</span></label>
                                        <input type="text" id="rt" class="form-control" name="car.purchase" value="<s:property value="#request.car.Purchase"/>">
                                    </div>

                                    <div class="mb-3 col-4">
                                        <label for="cl" class="form-label">车龄<span class="text-danger">*</span></label>
                                        <input type="text" id="cl" class="form-control" name="car.age" value="<s:property value="#request.car.age"/>">
                                    </div>

                                    <div class="mb-3 col-4">
                                        <label for="bs" class="form-label">变速箱类型 <span
                                                class="text-danger">*</span></label>
                                        <input type="text" id="bs" class="form-control"name="car.transmissionCase" value="<s:property value="#request.car.transmissionCase"/>">
                                    </div>

                                    <div class="mb-3 col-8">
                                        <label for="xh" class="form-label">车辆型号 <span class="text-danger">*</span></label>
                                        <input type="text" id="xh" class="form-control"name="car.model" value="<s:property value="#request.car.model"/>">
                                    </div>
                                    <div class="mb-3 col-4">
                                        <label for="xhd" class="form-label">车辆品牌</label>
                                        <input type="text" id="xhd" class="form-control"name="car.brand" value="<s:property value="#request.car.brand"/>">
                                    </div>
                                </div>
                            </div> <!-- end card -->
                        </div> <!-- end col -->
                    </div>
                    </form>
                    <div class="col-lg-10 mmmd">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="text-uppercase bg-light p-2 mt-0 mb-3">维修记录</h5>
                                <div class="responsive-table-plugin">
                                    <div class="table-rep-plugin">
                                        <div class="table-responsive" data-pattern="priority-columns">
                                            <table id="tech-companies-1" class="table table-striped">
                                                <thead>
                                                <tr>
                                                    <th>维修单号</th>
                                                    <th data-priority="1">责任人</th>
                                                    <th data-priority="3">送修时间</th>
                                                    <th data-priority="3">内容</th>
                                                    <th data-priority="3">维修金额</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <s:iterator value="#request.fixlog" var="f">
                                                    <tr>
                                                        <th><s:property value="#f.fixapplicationid"/></th>
                                                        <td><s:property value="#f.username"/></td>
                                                        <td><s:property value="#f.time"/></td>
                                                        <th><s:property value="#f.remarks"/></th>
                                                        <td><s:property value="#f.cost"/></td>
                                                    </tr>
                                                </s:iterator>
                                                </tbody>
                                            </table>
                                        </div> <!-- end .table-responsive -->

                                    </div> <!-- end .table-rep-plugin-->
                                </div> <!-- end .responsive-table-plugin-->
                            </div> <!-- end card -->
                        </div> <!-- end col -->

                    <!-- end row -->
                    </div>
                    <div class="col-lg-10 mmmd">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="text-uppercase bg-light p-2 mt-0 mb-3">保养记录</h5>
                                <div class="responsive-table-plugin">
                                    <div class="table-rep-plugin">
                                        <div class="table-responsive" data-pattern="priority-columns">
                                            <table id="tech-companies-2" class="table table-striped">
                                                <thead>
                                                <tr>
                                                    <th>保养单号</th>
                                                    <th data-priority="1">责任人</th>
                                                    <th data-priority="3">保养时间</th>
                                                    <th data-priority="3">保养内容</th>
                                                    <th data-priority="3">保养金额</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <s:iterator value="#request.Mlog" var="m">
                                                <tr>
                                                    <th><s:property value="#m.fixapplicationid"/></th>
                                                    <td><s:property value="#m.username"/></td>
                                                    <td><s:property value="#m.time"/></td>
                                                    <th><s:property value="#m.remarks"/></th>
                                                    <td><s:property value="#m.cost"/></td>
                                                </tr>
                                                </s:iterator>
                                                </tbody>
                                            </table>
                                        </div> <!-- end .table-responsive -->

                                    </div> <!-- end .table-rep-plugin-->
                                </div> <!-- end .responsive-table-plugin-->
                            </div> <!-- end card -->
                        </div> <!-- end col -->

                        <!-- end row -->
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="text-center mb-3">
                                <button onclick="document:carsave.submit()" class="btn w-sm btn-success waves-effect waves-light" >Save</button>
                                <button type="button" class="btn w-sm btn-danger waves-effect waves-light">Delete</button>
                            </div>
                        </div> <!-- end col -->
                    </div>
                    <!-- end row -->


                    <!-- file preview template -->
                    <div class="d-none" id="uploadPreviewTemplate">
                        <div class="card mt-1 mb-0 shadow-none border">
                            <div class="p-2">
                                <div class="row align-items-center">
                                    <div class="col ps-0">
                                        <a href="javascript:void(0);" class="text-muted fw-bold" data-dz-name></a>
                                        <p class="mb-0" data-dz-size></p>
                                    </div>
                                    <div class="col-auto">
                                        <!-- Button -->
                                        <a href="javascript:void(0);" class="btn btn-link btn-lg text-muted" data-dz-remove>
                                            <i class="dripicons-cross"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
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