<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>MAPPING CARS MANAGE INDEX</title>
    <jsp:include page="../view/header.jsp"></jsp:include>
    <script src="../assets/libs/toastr/node_modules/jquery/jquery.min.js"></script>
    <style>
        .card{position: relative; left: 350px;}
        h5 span{color: red}
    </style>
    <script type="text/javascript">
        $(document).ready(function(){$("#promise").change(function() {
            //状态给出
            var flag=1;
            var a1=document.getElementsByName("focus");
            var a2=document.getElementsByName("contact");
            for (i=0; i<a1.length; i++) {
                if (a1[i].checked) {
                    if(a1[i].value=="yes") {
                        flag=0;
                        break;
                    }
                }
                if(a2[i].checked){
                    if(a2[i].value=="no") {
                        flag=0;
                        break;
                    }
                }
            }
            var a3=document.getElementsByName("a5");
            for (var k = 0; k < a3.length; k++) {
                if (a3[k].checked) {
                    if(a3[k].value=="1"){
                        flag=0;
                        break;
                    }
                }
            }
            if(flag) $("#yyy").val("正常");
            else $("#yyy").val("有风险");
        }
        );})

        function Ck(o) {
            var ckBoxs = document.getElementsByName("a5");
            if (o.value == 0) {
                if (o.checked) {
                    for (var i = 1; i < ckBoxs.length; i++) {
                        ckBoxs[i].disabled = true;
                    }
                }
                else {
                    for (var i = 1; i < ckBoxs.length; i++) {
                        ckBoxs[i].disabled = false;
                    }
                }

            }
            else {
                if(o.checked){ckBoxs[0].disabled = true;}
                else {
                    var flag=0;
                    for (var i = 1; i < ckBoxs.length; i++) {
                        if(ckBoxs[i].checked) flag=1;
                    }
                    if(!flag) ckBoxs[0].disabled=false;
                }

            }
        }


        function Check()
        {
            //数据完整性
            var flag=0;
            var r = document.getElementsByName("promise");

            for (var k = 0; k < r.length; k++) {
                if (r[k].checked) {
                    flag=1;
                }
            }
            var f=0;
            r = document.getElementsByName("a5");
            for (var k = 0; k < r.length; k++) {
                if (r[k].checked) {
                    f=1;
                }
            }
            if (!(f && flag)){
                alert("请将问卷填写完整！")
                return false;
            }

        }

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
                <main>
                        <div class="card  col-6 " >
                            <div class="card-header">
                                问题1
                            </div>
                            <div class="card-body">
                                <h5 class="h5"><span>*</span>本人近期（14天内）是否去过中高风险地区？</h5>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="focus" id="a11" value="yes" checked="checked" >
                                    <label class="form-check-label" for="a11">是</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio"  name="focus" id="a12" value="no" >
                                    <label class="form-check-label" for="a12">否</label>
                                </div>
                            </div>
                        </div>


                        <div class="card  col-6 ">
                            <div class="card-header">
                                问题3
                            </div>
                            <div class="card-body">
                                <h5 class="h5"><span>*</span>本人今日健康码是否为绿码？</h5>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio"  name="contact" id="a31" value="yes"  checked="checked" >
                                    <label class="form-check-label" for="a31">是</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio"  name="contact" id="a32" value="no" >
                                    <label class="form-check-label" for="a32">否</label>
                                </div>
                            </div>
                        </div>


                        <div class="card  col-6 ">
                            <div class="card-header">
                                问题5
                            </div>
                            <div class="card-body">
                                <h5 class="h5"><span>*</span>本人当前健康状况（若有以下状况，请在框内勾选）</h5>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="a51" name="a5" value="0" onclick="Ck(this)" checked="checked">
                                    <label class="form-check-label" for="a51">
                                        无异常
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox"id="a52" name="a5" value="1" onclick="Ck(this)" disabled>
                                    <label class="form-check-label" for="a52">
                                        发烧(≥37.3℃)
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox"id="a53" name="a5" value="1" onclick="Ck(this)" disabled>
                                    <label class="form-check-label" for="a53">
                                        乏力
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox"id="a54" name="a5" value="1" onclick="Ck(this)" disabled>
                                    <label class="form-check-label" for="a54">
                                        发烧(≥37.3℃)
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox"id="a55" name="a5" value="1" onclick="Ck(this)" disabled>
                                    <label class="form-check-label" for="a55">
                                        干咳
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox"id="a56" name="a5" value="1" onclick="Ck(this)" disabled>
                                    <label class="form-check-label" for="a56">
                                        鼻塞
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox"id="a57" name="a5" value="1" onclick="Ck(this)" disabled>
                                    <label class="form-check-label" for="a57">
                                        流涕
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox"id="a58" name="a5" value="1" onclick="Ck(this)" disabled>
                                    <label class="form-check-label" for="a58">
                                        腹泻
                                    </label>
                                </div>

                            </div>
                        </div>
                    <s:form action="healthyDeclaration" method="POST">
                        <div class="card  col-6 ">
                            <div class="card-header">
                                问题6
                            </div>
                            <div class="card-body">
                                <input class="form-check-input" type="checkbox" id="promise"  required> <label class="form-check-label">本人郑重承诺：填报信息真实，愿意承担相应的法律责任。</label>
                            </div>
                        </div>
                    <div class="card  col-6 ">
                        <div class="card-body">
                            <div class="mb-3">
                                <label for="yyy" class="form-label" >今日状态:</label>
                                <div class="input-group input-group-merge">
                                    <input type="text" class="form-control " id="userName1" name="user.id" value="${session.user.id}" style="display: none">
                                    <input type="text" id="yyy" class="form-control" name="user.healthy" readonly required>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card col-6">
                        <button type="submit" id="sub" class="btn btn-primary" >提交</button>
                    </div>
                </s:form>



                </main>

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