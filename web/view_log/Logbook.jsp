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
                    <s:if test="#request.myDriveLog==null">
                        <h4 class="text-center mb-5 text-primary">似乎还没有出车日志哦...</h4>
                    </s:if>
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
                                                        <p class="mb-1">驾驶员工号</p>
                                                        <div class="d-flex align-items-start">
                                                            <div class="w-100">
                                                                <h5 class="mt-1 font-size-14" id="userID">
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
                                                <input type="button" class="btn" value="继续动画" id="resume" onclick="resumeAnimation()"/>
                                                <input type="button" class="btn" value="停止动画" id="stop" onclick="stopAnimation()"/>
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
                                                    <th data-priority="1">车辆号</th>
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
                                                            <button class="btn-xs btn-primary text-center" type="button" data-bs-toggle="modal" data-bs-target="#full-width-modal"  onclick="getDLInfo(this.value)" value="<s:property value="#DRIL.id"/>">查看详情</button>
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
<script src="../assets/libs/toastr/node_modules/jquery/jquery.min.js"></script>
<script type="text/javascript" src="https://webapi.amap.com/maps?v=1.4.15&key=b0af08c849bbffa3cab92acc26b93ebc&plugin=AMap.Driving"></script>
<script>

</script>
<script type="text/javascript">
    var marker, lineArr = [];
    var map;
    var passedPolyline;
    function getDLInfo(value){
        var userID=value;

        $.ajax({
            url:"getDLAjax",
            type : "POST",
            dataType:"JSON",
            data : {
                userID:userID
            },
            success : function(data) {
                $("#userName").text(data.username);
                $("#userID").text(data.userid);
                $("#starttime").text(data.starttime);
                $("#startlocation").text(data.startlocation);
                $("#destination").text(data.destination);
                $("#endtime").text(data.endtime);
                $("#carid").text(data.carid);
                $("#broke").text(data.broke);
                $("#illegal").text(data.illegal);
                var trackID=data.trackID;
                $.ajax({
                    url:"getTrackAjax",
                    type : "POST",
                    dataType:"JSON",
                    data : {
                        userID:trackID
                    },
                    success : function(tracks) {
                        //防止重复读写时上一次数据冗余 先进行清除
                        lineArr.splice(0,lineArr.length);
                        for (var i=0;i<tracks.length;i++){
                            lineArr.push([tracks[i].longitude,tracks[i].latitude]);
                        }

                         map = new AMap.Map("MAP", {
                            resizeEnable: true,
                            center: [tracks[0].longitude,tracks[0].latitude],
                            zoom: 16
                        });

                        marker = new AMap.Marker({
                            map: map,
                            position: [tracks[0].longitude,tracks[0].latitude],
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
                        passedPolyline = new AMap.Polyline({
                            map: map,
                            //path: lineArr,
                            strokeColor: "#AF5",  //线颜色
                            // strokeOpacity: 1,     //线透明度
                            strokeWeight: 6,      //线宽
                            // strokeStyle: "solid"  //线样式
                        });

                        marker.on('moving', function (e) {
                            passedPolyline.setPath(e.passedPath);
                        });
                        map.setFitView();
                    },
                    error :function(XMLHttpRequest, textStatus, errorThrown) {
                        alert("轨迹查询失败");
                        alert(XMLHttpRequest.status);
                    },
                });
            },
            error :function(XMLHttpRequest, textStatus, errorThrown) {
                alert("行车日志查询失败");
                alert(XMLHttpRequest.status);
                alert(textStatus);
            },
        });


    }
    function startAnimation () {
        marker.moveAlong(lineArr, 1000);
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