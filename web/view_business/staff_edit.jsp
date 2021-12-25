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

<s:head/>

<!-- body start -->
<body class="loading" data-layout-mode="horizontal"
      data-layout='{"mode": "light", "width": "fluid", "menuPosition": "fixed", "sidebar": { "color": "light", "size": "default", "showuser": false}, "topbar": {"color": "dark"}, "showRightSidebarOnPageLoad": true}'>

<!-- Begin page -->


<div id="wrapper">

    <s:if test='#session.admin.position=="all"'>
        <jsp:include page="../view/nav_admin.jsp"></jsp:include>
    </s:if>
    <s:elseif test='#session.admin.position=="check"'>
        <jsp:include page="../view/nav_admin_check.jsp"></jsp:include>
    </s:elseif>
    <s:elseif test='#session.admin.position=="car"'>
        <jsp:include page="../view/nav_admin_car.jsp"></jsp:include>
    </s:elseif>
    <s:elseif test='#session.admin.position=="sta"'>
        <jsp:include page="../view/nav_admin_sta.jsp"></jsp:include>
    </s:elseif>
    <!-- ============================================================== -->
    <!-- Start Page Content here -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->

    <div class="content-page">
        <div class="content">

            <!-- Start Content-->
            <div class="container-fluid">

                <!-- start page title -->
                <div class="row">
                    <div class="col-12">
                        <div class="page-title-box">
                            <h4 class="page-title text-center">员工详情</h4>
                        </div>
                    </div>
                </div>
                <!-- end page title -->


                <div class="row">
                    <form action="saveStaff.action" method="POST" id="staffSave">
                    <div class="col-lg-10 mmmd">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="mb-3 col-4">
                                        <label for="car-id" class="form-label">ID <span class="text-danger">*</span></label>
                                        <input type="text" id="car-id" class="form-control" name="user.id" value="<s:property value="#request.staff.id"/>" readonly>
                                    </div>
                                    <div class="mb-3 col-4">
                                        <label for="de" class="form-label">密码 <span class="text-danger">*</span></label>
                                        <input type="text" id="pwd" class="form-control" name="user.password" value="<s:property value="#request.staff.password"/>">
                                    </div>
                                    <div class="mb-3 col-4">
                                        <label for="cph" class="form-label">姓名<span class="text-danger">*</span></label>
                                        <input type="text" id="cph" class="form-control" name="user.name" value="<s:property value="#request.staff.name"/>">
                                    </div>

                                    <div class="mb-3 col-4">
                                        <label for="de" class="form-label">所属部门 <span class="text-danger">*</span></label>
                                        <input type="text" id="de" class="form-control" name="user.department" value="<s:property value="#request.staff.department"/>">
                                    </div>

                                    <div class="mb-3 col-4">
                                        <label for="e" class="form-label">性别<span class="text-danger">*</span></label>
                                        <input type="text" id="e" class="form-control" name="user.sex" value="<s:property value="#request.staff.sex"/>">
                                    </div>

                                    <div class="mb-3 col-4">
                                        <label for="nm" class="form-label">年龄</label>
                                        <input type="text" id="nm" class="form-control" name="user.age" value="<s:property value="#request.staff.age"/>">
                                    </div>
                                    <div class="mb-3 col-4">
                                        <label for="rt" class="form-label">邮箱 <span class="text-danger">*</span></label>
                                        <input type="text" id="rt" class="form-control" name="user.email" value="<s:property value="#request.staff.email"/>">
                                    </div>
                                </div>
                            </div> <!-- end card -->
                        </div> <!-- end col -->
                    </div>
                    </form>
                    <div class="card col-10 mmmd">
                        <div class="card-body">
                    <div id="chart_percent" style="width:100%;height: 500px;">
                    </div>
                        </div>
                    </div>
                    <div class="card col-10 mmmd">
                        <div class="card-body">
                            <div id="chart" style="width:100%;height: 500px;">
                            </div>
                        </div>
                    </div>


                    <s:if test='#session.admin.position=="all" or #session.admin.position=="car"'>
                        <div class="row">
                            <div class="col-6">
                                <div class="text-end mb-3">
                                    <button onclick="document:staffsave.submit()" class="btn w-sm btn-success waves-effect waves-light" >Save or Update</button>
                                </div>
                            </div> <!-- end col -->
                            <div class="col-1">
                                <form onsubmit="return deleteConfirm()" action="deleteStaff.action" method="post">
                                    <div class="text-center mb-3">
                                        <input  name="user.id" value="<s:property value="#request.staff.id"/>" style="display: none">
                                        <button type="submit" class="btn w-sm btn-danger waves-effect waves-light">Delete</button>
                                    </div>
                                </form>
                            </div> <!-- end col -->
                        </div>
                    </s:if>
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
        <script src="../assets/libs/toastr/node_modules/jquery/jquery.min.js"></script>
        <script src="../assets/js/echarts.js"></script>
        <script type="text/javascript">

            var userid=${request.staff.id};
            var chartDom = document.getElementById('chart');
            var myChart = echarts.init(chartDom);

            var chartDom2= document.getElementById('chart_percent');
            var myChart2 = echarts.init(chartDom2);
            var option;
            var option2;
            var mycar_week=[];
            var myfix_week=[];
            var mylend_week=[];
            var i;
            $(document).ready(function () {
                $('#chart').hide();
                $('#chart_percent').hide();
                // myChart2.showLoading();
                // myChart.showLoading();
                $.ajax({
                    url: "getPersonalWeekBusinessAjax",
                    type: "POST",
                    dataType: "JSON",
                    data:{
                        appid:userid
                    },
                    success: function (data) {
                        $('#chart').show();
                        $('#chart_percent').show();
                        myChart.hideLoading();
                        myChart2.hideLoading();
                        var lack_num=data.carApp_num1-data.week_carApp;
                        option = {
                            title: {
                                text: '本周业绩'
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
                        option2={
                                title: {
                                    text: '员工本周任务完成度',
                                    subtext: '审核未通过以及未完成都计入统计',
                                    left: 'center'
                                },
                                tooltip: {
                                    trigger: 'item'
                                },
                            color: [ '#3CB371', '#708090'],
                                legend: {
                                    orient: 'vertical',
                                    left: 'left'
                                },
                                series: [
                                    {
                                        name: 'Access From',
                                        type: 'pie',
                                        radius: '50%',
                                        data: [
                                            { value: data.week_carApp, name: '已完成' },
                                            { value: lack_num, name: '未完成' },
                                        ],
                                        emphasis: {
                                            itemStyle: {
                                                shadowBlur: 10,
                                                shadowOffsetX: 0,
                                                shadowColor: 'rgba(0, 0, 0, 0.5)'
                                            }
                                        }
                                    }
                                ]
                            };
                        option && myChart.setOption(option);
                        option2&&myChart2.setOption(option2)
                    }
                })


            })

            function deleteConfirm(){
                msg = "确定删除该员工吗？";
                if (confirm(msg)==true){
                    return true;  //你也可以在这里做其他的操作
                }else{
                    return false;
                }
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