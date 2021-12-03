<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8"/>
    <title>MAPPING CARS MANAGE INDEX</title>
  <jsp:include page="../view/header.jsp"></jsp:include>
    <link rel="stylesheet" href="https://a.amap.com/jsapi_demos/static/demo-center/css/demo-center.css"/>
    <style type="text/css">
        #MAP {
            width: auto;
            height: 350px;
        }
        p{
            font-size: 10px;
        }
    </style>
  <script src="../assets/libs/toastr/node_modules/jquery/jquery.min.js"></script>

</head>



<!-- body start -->
<body class="loading" data-layout-mode="horizontal" data-layout='{"mode": "light", "width": "fluid", "menuPosition": "fixed", "sidebar": { "color": "light", "size": "default", "showuser": false}, "topbar": {"color": "dark"}, "showRightSidebarOnPageLoad": true}'>

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
                <div class="row">
                    <div class="col-12">
                        <div class="page-title-box">
                            <h4 class="page-title">行车日志</h4>
                        </div>
                    </div>
                </div>
                <!-- end page title -->

                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
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
                                                <tr>
                                                    <th>GOOG <span class="co-name">Google Inc.</span></th>
                                                    <td>597.74</td>
                                                    <td>12:12PM</td>
                                                    <td>14.81 (2.54%)</td>
                                                    <td>582.93</td>
                                                    <td>597.95</td>
                                                    <td>597.73 x 100</td>
                                                    <td>597.91 x 300</td>
                                                    <td>
                                                        <form>  <input class="btn-xs btn-primary text-center" type="button" value="查看详情"data-bs-toggle="modal" data-bs-target="#full-width-modal"></form>
                                                    </td>

                                                </tr>
                                                <tr>
                                                    <th>AAPL <span class="co-name">Apple Inc.</span></th>
                                                    <td>378.94</td>
                                                    <td>12:22PM</td>
                                                    <td>5.74 (1.54%)</td>
                                                    <td>373.20</td>
                                                    <td>381.02</td>
                                                    <td>378.92 x 300</td>
                                                    <td>378.99 x 100</td>
                                                    <td>505.94</td>
                                                </tr>
                                                <tr>
                                                    <th>AMZN <span class="co-name">Amazon.com Inc.</span></th>
                                                    <td>191.55</td>
                                                    <td>12:23PM</td>
                                                    <td>3.16 (1.68%)</td>
                                                    <td>188.39</td>
                                                    <td>194.99</td>
                                                    <td>191.52 x 300</td>
                                                    <td>191.58 x 100</td>
                                                    <td>240.32</td>
                                                </tr>
                                                <!-- Repeat -->
                                                <tr>
                                                    <th>GOOG <span class="co-name">Google Inc.</span></th>
                                                    <td>597.74</td>
                                                    <td>12:12PM</td>
                                                    <td>14.81 (2.54%)</td>
                                                    <td>582.93</td>
                                                    <td>597.95</td>
                                                    <td>597.73 x 100</td>
                                                    <td>597.91 x 300</td>
                                                    <td>731.10</td>
                                                </tr>
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

<script type="text/javascript"
        src="https://webapi.amap.com/maps?v=1.4.15&key=b0af08c849bbffa3cab92acc26b93ebc&plugin=AMap.Driving"></script>
<script>
    var marker, lineArr = [[116.478935,39.997761],[116.478939,39.997825],[116.478912,39.998549],[116.478912,39.998549],[116.478998,39.998555],[116.478998,39.998555],[116.479282,39.99856],[116.479658,39.998528],[116.480151,39.998453],[116.480784,39.998302],[116.480784,39.998302],[116.481149,39.998184],[116.481573,39.997997],[116.481863,39.997846],[116.482072,39.997718],[116.482362,39.997718],[116.483633,39.998935],[116.48367,39.998968],[116.484648,39.999861]];

    var map = new AMap.Map("MAP", {
        resizeEnable: true,
        center: [116.478935,39.997761],
        zoom: 14
    });

    marker = new AMap.Marker({
        map: map,
        position: [116.478935,39.997761],
        icon: "https://webapi.amap.com/images/car.png",
        offset: new AMap.Pixel(-26, -13),
        autoRotation: true,
        angle:-90,
    });

    // 绘制轨迹
    var polyline = new AMap.Polyline({
        map: map,
        path: lineArr,
        showDir:true,
        strokeColor: "#28F",  //线颜色
        // strokeOpacity: 1,     //线透明度
        strokeWeight: 6,      //线宽
        // strokeStyle: "solid"  //线样式
    });

    var passedPolyline = new AMap.Polyline({
        map: map,
        // path: lineArr,
        strokeColor: "#AF5",  //线颜色
        // strokeOpacity: 1,     //线透明度
        strokeWeight: 6,      //线宽
        // strokeStyle: "solid"  //线样式
    });


    marker.on('moving', function (e) {
        passedPolyline.setPath(e.passedPath);
    });

    map.setFitView();

    function startAnimation () {
        marker.moveAlong(lineArr, 1500);
    }

    function pauseAnimation () {
        marker.pauseMove();
    }

    function resumeAnimation () {
        marker.resumeMove();
    }

    function stopAnimation () {
        marker.stopMove();
    }
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