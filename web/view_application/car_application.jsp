<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8"/>
    <title>MAPPING CARS MANAGE INDEX</title>
    <jsp:include page="../view/header.jsp"></jsp:include>

    <style>
        #appCard {
            float: none;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
    </style>
    <script src="../assets/libs/toastr/node_modules/jquery/jquery.min.js"></script>
    <script type="text/javascript">

    $(document).ready(function() {
            const cars = document.getElementById("carSelect");
            $.ajax({
                url:"getFreeCarsAjax",
                type:"POST",
                dataType:"JSON",
                success:function (data){
                    for (var i=0;i<data.length;i++){
                        cars.innerHTML+='<option value=" '+data[i].id+ '"' + '>'+data[i].name+'</option>';
                    }
                    $("#CarName").val(data[0].name);
                    $("#CarType").val(data[0].model);
                    $("#LP").val(data[0].licensePlate);
                    $("#bsx").val(data[0].transmissionCase);
                }
            })
            $("#carSelect").change(function(){
                var carId = $(this).find("option:selected").attr("value"); //获取当前下拉框name属性的值
                $.ajax({
                    url:"getCarInfoAjax",
                    type : "POST",
                    dataType:"JSON",
                    data : {
                        carId:carId
                    },
                    success : function(data) {
                        $("#CarName").val(data.name);
                        $("#CarType").val(data.model);
                        $("#LP").val(data.licensePlate);
                        $("#bsx").val(data.transmissionCase);
                    },
                    error :function() {
                        alert("error!");
                    },
                });
            });
        })



    </script>

</head>

<!-- body start -->
<body class="loading" data-layout-mode="horizontal"
      data-layout='{"mode": "light", "width": "fluid", "menuPosition": "fixed", "sidebar": { "color": "light", "size": "default", "showuser": false}, "topbar": {"color": "dark"}, "showRightSidebarOnPageLoad": true}'>

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

                <!-- start page title -->
                <div class="row">
                    <div class="col-12">
                        <div class="page-title-box">
                            <div class="row">
                                <div class="col-xl-10" id="appCard">
                                    <div class="card">
                                        <div class="card-body">

                                            <h4 class="header-title mb-3">出车申请</h4>

                                            <form action="sendCommute.action" method="POST" id="carAp">
                                                <div id="table_wizard">

                                                    <ul class="nav nav-pills bg-light nav-justified form-wizard-header mb-3">
                                                        <li class="nav-item">
                                                            <a href="#account-2" data-bs-toggle="tab" data-toggle="tab" class="nav-link rounded-0 pt-2 pb-2">
                                                                <i class="mdi mdi-account-circle me-1"></i>
                                                                <span class="d-none d-sm-inline">出车信息</span>
                                                            </a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a href="#profile-tab-2" data-bs-toggle="tab" data-toggle="tab" class="nav-link rounded-0 pt-2 pb-2">
                                                                <i class="mdi mdi-face-profile me-1"></i>
                                                                <span class="d-none d-sm-inline">车辆选择</span>
                                                            </a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a href="#finish-2" data-bs-toggle="tab" data-toggle="tab" class="nav-link rounded-0 pt-2 pb-2">
                                                                <i class="mdi mdi-checkbox-marked-circle-outline me-1"></i>
                                                                <span class="d-none d-sm-inline">申请提交</span>
                                                            </a>
                                                        </li>
                                                    </ul>

                                                    <div class="tab-content b-0 mb-0 pt-0">

                                                        <div id="bar" class="progress mb-3" style="height: 7px;">
                                                            <div class="bar progress-bar progress-bar-striped progress-bar-animated bg-success"></div>
                                                        </div>
                                                        <div class="tab-pane" id="account-2">
                                                            <div class="row ms-3">
                                                                <div class="col-12">
                                                                    <div class="row mb-3 ">
                                                                        <label class="col-md-1 col-form-label" for="userName1">用车人</label>
                                                                        <div class="col-md-4">
                                                                            <input type="text" class="form-control " id="userName1" name="carApplication.userName" value="${session.user.name}" readonly>
                                                                        </div>
                                                                        <div class="col-md-1">
                                                                        </div>
                                                                        <label class="col-md-1 col-form-label" for="userID1">工号</label>
                                                                        <div class="col-md-4">
                                                                            <input type="text" class="form-control " id="userID1" name="carApplication.userID" value="${session.user.id}" readonly>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row mb-3">
                                                                        <label class="col-md-1 col-form-label" for="useTime1">用车时间</label>
                                                                        <div class="col-md-4">
                                                                            <input type="date" class="form-control " id="useTime1" name="carApplication.usingDate">
                                                                        </div>
                                                                        <div class="col-md-1"></div>
                                                                        <label class="col-md-1 col-form-label" for="appTime1">申请时间</label>
                                                                        <div class="col-md-4">
                                                                            <input type="date" class="form-control " id="appTime1" name="carApplication.applicationDate" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="row mb-3">
                                                                        <label class="col-md-1 col-form-label" for="work">业务编号</label>
                                                                        <div class="col-md-4">
                                                                            <input type="text" id="work" name="carApplication.workID" class="form-control" >
                                                                        </div>
                                                                    </div>
                                                                    <div class="row mb-3">
                                                                        <label class="col-md-1 col-form-label" for="destination">目的地</label>
                                                                        <div class="col-md-10">
                                                                            <input type="text" id="destination" name="carApplication.destination" class="form-control" >
                                                                        </div>
                                                                    </div>

                                                                    <div class="row mb-3">
                                                                        <label for="reason" class="mb-2">申请理由</label>
                                                                        <div class="col-md-11">
                                                                        <textarea class="form-control" id="reason" rows="5" name="carApplication.remarks"></textarea>
                                                                        </div>
                                                                    </div>
                                                                </div> <!-- end col -->
                                                            </div> <!-- end row -->
                                                        </div>

                                                        <div class="tab-pane" id="profile-tab-2">
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    <div class="row mb-3">
                                                                        <label class="col-md-3 col-form-label" for="carSelect" > 车辆选择</label>
                                                                        <select id="carSelect" class="form-select col-5" name="carApplication.carID">
                                                                        </select>
                                                                    </div>

                                                                    <hr>
                                                                    <h3 class="text-center mb-2">车辆信息</h3>
                                                                    <div class="row mb-3 ">
                                                                        <label class="col-md-1 col-form-label" for="CarName">车辆编号</label>
                                                                        <div class="col-md-4">
                                                                            <input type="text" class="form-control " id="CarName" name="CarId"  readonly>
                                                                        </div>
                                                                        <div class="col-md-2">
                                                                        </div>
                                                                        <label class="col-md-1 col-form-label" for="LP">车牌号</label>
                                                                        <div class="col-md-4">
                                                                            <input type="text" class="form-control " id="LP" name="CarId02"  readonly>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row mb-3">
                                                                        <label class="col-md-1 col-form-label" for="CarType" >车辆型号</label>
                                                                        <div class="col-md-4">
                                                                            <input type="text" class="form-control " id="CarType" name="CarType"  readonly>
                                                                        </div>
                                                                        <div class="col-md-2"></div>
                                                                        <label class="col-md-1 col-form-label" for="bsx" >变速箱</label>
                                                                        <div class="col-md-4">
                                                                            <input type="text" class="form-control " id="bsx" name="CarStatus"  readonly>
                                                                        </div>
                                                                    </div>
                                                                </div> <!-- end col -->
                                                            </div> <!-- end row -->
                                                        </div>

                                                        <div class="tab-pane" id="finish-2">
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    <div class="text-center">
                                                                        <h2 class="mt-0"><i class="mdi mdi-check-all"></i></h2>
                                                                        <h3 class="mt-0">Thank you !</h3>

                                                                        <p class="w-75 mb-2 mx-auto">
                                                                            您的申请已填写完成，请在提交后耐心等待审核完成</p>

                                                                        <div class="mb-3">
                                                                            <div class="form-check d-inline-block">
                                                                                <input type="checkbox" class="form-check-input" id="customCheck3" required>
                                                                                <label class="form-check-label" for="customCheck3">我已知悉出车相关流程</label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div> <!-- end col -->
                                                            </div> <!-- end row -->
                                                        </div>

                                                        <ul class="list-inline mb-0 wizard">
                                                            <li class="previous list-inline-item">
                                                                <a href="javascript:void(0)" class="btn btn-primary" disabled="">上一步</a>
                                                            </li>
                                                            <li class="next list-inline-item float-end">
                                                                <a href="javascript: void(0);" class="btn btn-primary">下一步</a>
                                                            </li>
                                                            <li class="finish list-inline-item float-end " id="commit"  >
                                                                <input class="btn btn-primary" type="submit"/>
                                                            </li>

                                                        </ul>
                                                    </div> <!-- tab-content -->
                                                </div> <!-- end #progressbarwizard-->
                                            </form>
                                        </div> <!-- end card-body -->
                                    </div> <!-- end card-->
                                </div> <!-- end col -->
                            </div>
                        </div>
                    </div>
                </div>
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
<script src="../assets/libs/twitter-bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>

<!-- Init js-->
<script src="../assets/js/pages/form-wizard.init.js"></script>

<!-- App js -->
<script src="../assets/js/app.min.js"></script>


<!-- App js-->
<script src="../assets/js/app.min.js"></script>


<script>
    $(document).ready(
        $(function () {
            $('#table_wizard').bootstrapWizard({
                tabClass: 'form-wizard-header',
                nextSelector: '.next',
                progressBarCurrent: true,
                previousSelector: '.previous',
                onTabClick: function (tab, navigation, index) {
                    return false;
                },
                //下一步事件绑定 index 从0开始
                onNext: function (tab, navigation, index) {
                    if (index == 1) {
                        //检验表单
                    }
                },
                onPrevious: function () {

                },
                onTabShow: function (tab, navigation, index) {
                    var $total = navigation.find('li').length;
                    var $current = index + 1;
                    var $percent = ($current / $total) * 100;
                    var wdt = 100 / $total;
                    var lft = wdt * index;
                    $('#table_wizard').find('.progress-bar').css({width: $percent + '%'});

                    // If it's the last tab then hide the last button and show the finish instead
                    if ($current >= $total) {
                        $('#table_wizard').find('.next').hide();
                        $('#table_wizard').find('.finish').show();
                    }
                    else {
                        $('#table_wizard').find('.finish').hide();
                        $('#table_wizard').find('.next').show();
                    }
                }
            });
        })
    );
</script>


</body>
</html>