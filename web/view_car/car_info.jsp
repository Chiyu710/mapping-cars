<%--
  Created by IntelliJ IDEA.
  User: 10102
  Date: 2021/11/19
  Time: 14:03
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
    <script src="../assets/libs/toastr/node_modules/jquery/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            const cars = document.getElementById("allcars");
            $.ajax({
                url:"#",
                type:"POST",
                dataType:"JSON",
                success:function (data){
                }
            })

        })
    </script>
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
                            <h4 class="page-title">部门现有车辆</h4>
                            <div id="allcars">

                            </div>
                        </div>
                    </div>
                </div>
                <!-- end page title -->

                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="row justify-content-between">
                                    <div class="col-auto">
                                        <form class="d-flex flex-wrap align-items-center">
                                            <label for="status-select" class="me-2">Sort By</label>
                                            <div class="me-sm-3">
                                                <select class="form-select my-1 my-lg-0" id="status-select">
                                                    <option selected="">All</option>
                                                    <option value="1">车辆型号</option>
                                                    <option value="2">车辆年龄</option>
                                                    <option value="3">车辆状况</option>
                                                </select>
                                            </div>
                                        </form>

                                    </div>
                                    <div class="col-auto">
                                        <span class="me-2">车辆选择</span>
                                        <input type="checkbox" class="btn-check" id="btncheck1" autocomplete="off">
                                        <label class="btn btn-outline-primary" for="btncheck1">空闲车辆</label>

                                        <input type="checkbox" class="btn-check" id="btncheck2" autocomplete="off">
                                        <label class="btn btn-outline-primary" for="btncheck2">忙碌车辆</label>

                                        <input type="checkbox" class="btn-check" id="btncheck3" autocomplete="off">
                                        <label class="btn btn-outline-primary" for="btncheck3">停用车辆</label>
                                    </div>
                                    <div class="col-auto">
                                        <div class="text-lg-end my-1 my-lg-0">
                                            <a href="ecommerce-product-edit.html" class="btn btn-danger waves-effect waves-light"><i class="mdi mdi-plus-circle me-1"></i> Add New</a>
                                        </div>
                                    </div><!-- end col-->
                                </div> <!-- end row -->
                            </div>
                        </div> <!-- end card -->
                    </div> <!-- end col-->
                </div>
                <!-- end row-->

                <div class="row" >
                    <s:iterator value="#request.cars" status="car">
                            <div class="col-md-6 col-xl-3">
                                <div class="card product-box">
                                    <div class="card-body">
                                        <div class="bg-light">
                                            <img src="../assets/images/products/product-1.png" alt="product-pic" class="img-fluid" />
                                        </div>

                                        <div class="product-info">
                                            <div class="row align-items-center">
                                                <div class="col">
                                                    <h5 class="font-16 mt-2 sp-line-1"><a href="#" class="text-dark"><s:property value="#car.id"/></a> </h5>
                                                    <div class="text-warning mb-2 font-13">
                                                        <span class="badge bg-soft-danger text-danger"><s:property value="#car.status"/></span>
                                                    </div>
                                                </div>
                                                <div class="col-auto">
                                                    <div class="product-price-tag">
                                                        <s:property value="#car.licensePlate"/>
                                                    </div>
                                                </div>
                                            </div> <!-- end row -->
                                            <h5 class="mt-2"> <span class="text-muted"> <s:property value="#car.model"/></span></h5>
                                            <h5 class="mt-2"> <span class="text-muted"> 使用年数: <s:property value="#car.age"/></span></h5>
                                            <h5 class="mt-2"> <span class="text-muted"> 距离上次保养里程数: <s:property value="#car.mileage"/>KM</span></h5>
                                            <div class="row">
                                                <div class="col-6">
                                                    <h5> <span class="text-muted"> 维修次数：<s:property value="#car.fixTimes"/></span></h5>
                                                    <h5> <span class="text-muted"> 违规记录：<s:property value="#car.maintenanceTimes"/></span></h5>
                                                </div>
                                                <div class="col-6">
                                                    <form>
                                                        <input class="btn btn-outline-primary rounded-pill mt-2 ms-4"  type="submit" value="详细信息"> </input>
                                                    </form>
                                                </div>
                                            </div>

                                        </div> <!-- end product info-->


                                    </div>
                                </div> <!-- end card-->
                            </div> <!-- end col-->
                        </s:iterator>
                    <div class="col-md-6 col-xl-3">
                        <div class="card product-box">
                            <div class="card-body">
                                <div class="product-action">
                                    <a href="javascript: void(0);" class="btn btn-success btn-xs waves-effect waves-light"><i class="mdi mdi-pencil"></i></a>
                                    <a href="javascript: void(0);" class="btn btn-danger btn-xs waves-effect waves-light"><i class="mdi mdi-close"></i></a>
                                </div>

                                <div class="bg-light">
                                    <img src="../assets/images/products/product-1.png" alt="product-pic" class="img-fluid" />
                                </div>

                                <div class="product-info">
                                    <div class="row align-items-center">
                                        <div class="col">
                                            <h5 class="font-16 mt-2 sp-line-1"><a href="ecommerce-product-detail.html" class="text-dark">CK-01</a> </h5>
                                            <div class="text-warning mb-2 font-13">
                                                <span class="badge bg-soft-danger text-danger">工作中</span>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <div class="product-price-tag">
                                                浙A 888888
                                            </div>
                                        </div>
                                    </div> <!-- end row -->
                                    <h5 class="mt-2"> <span class="text-muted"> Porsche 911 Turbo S</span></h5>
                                    <h5 class="mt-2"> <span class="text-muted"> 使用年数: 9年</span></h5>
                                    <h5 class="mt-2"> <span class="text-muted"> 距离上次保养里程数: 2000KM</span></h5>
                                    <div class="row">
                                        <div class="col-6">
                                            <h5> <span class="text-muted"> 维修次数：0</span></h5>
                                            <h5> <span class="text-muted"> 违规记录：0</span></h5>
                                        </div>
                                        <div class="col-6">
                                            <form>
                                                <input class="btn btn-outline-primary rounded-pill mt-2 ms-4"  type="submit" value="详细信息"> </input>
                                            </form>
                                        </div>
                                    </div>

                                </div> <!-- end product info-->


                            </div>
                        </div> <!-- end card-->
                    </div> <!-- end col-->
                </div>
                <!-- end row-->
                <!-- end row-->

                <div class="row">
                    <div class="col-12">
                        <ul class="pagination pagination-rounded justify-content-end mb-3">
                            <li class="page-item">
                                <a class="page-link" href="javascript: void(0);" aria-label="Previous">
                                    <span aria-hidden="true">«</span>
                                    <span class="visually-hidden">Previous</span>
                                </a>
                            </li>
                            <li class="page-item active"><a class="page-link" href="javascript: void(0);">1</a></li>
                            <li class="page-item"><a class="page-link" href="javascript: void(0);">2</a></li>
                            <li class="page-item"><a class="page-link" href="javascript: void(0);">3</a></li>
                            <li class="page-item"><a class="page-link" href="javascript: void(0);">4</a></li>
                            <li class="page-item"><a class="page-link" href="javascript: void(0);">5</a></li>
                            <li class="page-item">
                                <a class="page-link" href="javascript: void(0);" aria-label="Next">
                                    <span aria-hidden="true">»</span>
                                    <span class="visually-hidden">Next</span>
                                </a>
                            </li>
                        </ul>
                    </div> <!-- end col-->
                </div>
                <!-- end row-->

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