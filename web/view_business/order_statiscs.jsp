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
                            <h4 class="page-title">业务统计</h4>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-xl-4 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="card-widgets">
                                    <a href="javascript: void(0);" data-toggle="reload"><i class="mdi mdi-refresh"></i></a>
                                    <a data-bs-toggle="collapse" href="#cardCollpase3" role="button" aria-expanded="false" aria-controls="cardCollpase3"><i class="mdi mdi-minus"></i></a>
                                    <a href="javascript: void(0);" data-toggle="remove"><i class="mdi mdi-close"></i></a>
                                </div>
                                <h4 class="header-title mb-0">出车单数</h4>

                                <div id="cardCollpase3" class="collapse pt-3 show">
                                    <div class="text-center">
                                        <div id="total-users" data-colors="#3283f6,#43bee1,#e3eaef,#fcc015"></div>
                                        <div class="row mt-3">
                                            <div class="col-4">
                                                <p class="text-muted font-15 mb-1 text-truncate">今日</p>
                                                <h4 id="car_today"></h4>
                                            </div>
                                            <div class="col-4">
                                                <p class="text-muted font-15 mb-1 text-truncate">本周</p>
                                                <h4 id="car_week"></h4>
                                            </div>
                                            <div class="col-4">
                                                <p class="text-muted font-15 mb-1 text-truncate">本月</p>
                                                <h4 id="car_month"></h4>
                                            </div>
                                        </div> <!-- end row -->
                                    </div>
                                </div> <!-- collapsed end -->
                            </div> <!-- end card-body -->
                        </div> <!-- end card-->
                    </div> <!-- end col-->

                    <div class="col-xl-4 col-md-12">
                        <!-- Portlet card -->
                        <div class="card">
                            <div class="card-body">
                                <div class="card-widgets">
                                    <a href="javascript: void(0);" data-toggle="reload"><i class="mdi mdi-refresh"></i></a>
                                    <a data-bs-toggle="collapse" href="#cardCollpase1" role="button" aria-expanded="false" aria-controls="cardCollpase1"><i class="mdi mdi-minus"></i></a>
                                    <a href="javascript: void(0);" data-toggle="remove"><i class="mdi mdi-close"></i></a>
                                </div>
                                <h4 class="header-title mb-0">维修单数</h4>

                                <div id="cardCollpase1" class="collapse pt-3 show">
                                    <div class="text-center">
                                        <div id="lifetime-sales" data-colors="#3283f6,#6658dd"></div>

                                        <div class="row mt-3">
                                            <div class="col-4">
                                                <p class="text-muted font-15 mb-1 text-truncate">今日</p>
                                                <h4 id="fix_today"></h4>
                                            </div>
                                            <div class="col-4">
                                                <p class="text-muted font-15 mb-1 text-truncate">本周</p>
                                                <h4 id="fix_week"></h4>
                                            </div>
                                            <div class="col-4">
                                                <p class="text-muted font-15 mb-1 text-truncate">本月</p>
                                                <h4 id="fix_month"></h4>
                                            </div>
                                        </div> <!-- end row -->

                                    </div>
                                </div> <!-- collapsed end -->
                            </div> <!-- end card-body -->
                        </div> <!-- end card-->
                    </div> <!-- end col-->

                    <div class="col-xl-4 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="card-widgets">
                                    <a href="javascript: void(0);" data-toggle="reload"><i class="mdi mdi-refresh"></i></a>
                                    <a data-bs-toggle="collapse" href="#cardCollpase2" role="button" aria-expanded="false" aria-controls="cardCollpase2"><i class="mdi mdi-minus"></i></a>
                                    <a href="javascript: void(0);" data-toggle="remove"><i class="mdi mdi-close"></i></a>
                                </div>
                                <h4 class="header-title mb-0">出借单数</h4>

                                <div id="cardCollpase2" class="collapse pt-3 show">
                                    <div class="text-center">
                                        <div id="income-amounts" data-colors="#44cf9c"></div>
                                        <div class="row mt-3">
                                            <div class="col-4">
                                                <p class="text-muted font-15 mb-1 text-truncate">今日</p>
                                                <h4 id="lend_today"></h4>
                                            </div>
                                            <div class="col-4">
                                                <p class="text-muted font-15 mb-1 text-truncate">本周</p>
                                                <h4 id="lend_week"></h4>
                                            </div>
                                            <div class="col-4">
                                                <p class="text-muted font-15 mb-1 text-truncate">本月</p>
                                                <h4 id="lend_month"></h4>
                                            </div>
                                        </div> <!-- end row -->
                                    </div>
                                </div> <!-- collapsed end -->
                            </div> <!-- end card-body -->
                        </div> <!-- end card-->
                    </div> <!-- end col-->
                    <div class="card">
                    <div class="card-body">
                        <div id="chart" style="width:100%;height: 500px;" >

                        </div>
                    </div>
                </div>
                </div>
                <!-- end row -->


            </div> <!-- content -->

            <jsp:include page="../view/footer.jsp"></jsp:include>

        </div>

        <!-- ============================================================== -->
        <!-- End Page content -->
        <!-- ============================================================== -->


    </div>
    <!-- END wrapper -->
        <script src="../assets/libs/toastr/node_modules/jquery/jquery.min.js"></script>
        <script src="../assets/js/echarts.js"></script>
        <script type="text/javascript">
            var chartDom = document.getElementById('chart');
            var myChart = echarts.init(chartDom);
            var option;
            var mycar_week=[];
            var myfix_week=[];
            var mylend_week=[];
            var i;
            $(document).ready(function () {
                myChart.showLoading();
                $.ajax({
                    url: "getBusinessAjax",
                    type: "POST",
                    dataType: "JSON",
                    success: function (data) {
                        myChart.hideLoading();
                        $('#car_today').text(data.carApp_num1);
                        $("#car_week").text(data.week_carApp);
                        $("#car_month").text(data.month_carApp);
                        $('#fix_today').text(data.fixApp_num1);
                        $("#fix_week").text(data.week_fixApp);
                        $("#fix_month").text(data.month_fixApp);
                        $('#lend_today').text(data.lendApp_num1);
                        $("#lend_week").text(data.week_lendApp);
                        $("#lend_month").text(data.month_lendApp);
                        option = {
                            title: {
                                text: '过去7天业务一览'
                            },
                            tooltip: {
                                trigger: 'axis'
                            },
                            legend: {
                                data: ['出车单数', '派修单数', '借车单数']
                            },
                            grid: {
                                left: '3%',
                                right: '4%',
                                bottom: '3%',
                                containLabel: true
                            },
                            toolbox: {
                                feature: {
                                    saveAsImage: {}
                                }
                            },
                            xAxis: {
                                type: 'category',
                                boundaryGap: false,
                                data: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']
                            },
                            yAxis: {
                                type: 'value'
                            },
                            series: [
                                {
                                    name: '出车单数',
                                    type: 'line',
                                    stack: 'Total',
                                    data: data.past_week_carApp
                                },
                                {
                                    name: '派修单数',
                                    type: 'line',
                                    stack: 'Total',
                                    data: data.past_week_fixApp
                                },
                                {
                                    name: '借车单数',
                                    type: 'line',
                                    stack: 'Total',
                                    data: data.past_week_lendApp
                                }
                            ]
                        };

                        option && myChart.setOption(option);
                    }
                })
            })
        </script>



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
