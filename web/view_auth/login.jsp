<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8"/>
    <title>MAPPING CARS MANAGE INDEX</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description"/>
    <meta content="Coderthemes" name="author"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <!-- App favicon -->
    <link rel="shortcut icon" href="../assets/images/favicon.ico">

    <!-- Plugins css -->
    <link href="../assets/libs/flatpickr/flatpickr.min.css" rel="stylesheet" type="text/css"/>
    <link href="../assets/libs/selectize/css/selectize.bootstrap3.css" rel="stylesheet" type="text/css"/>

    <!-- App css -->
    <link href="../assets/css/config/creative/bootstrap.min.css" rel="stylesheet" type="text/css"
          id="bs-default-stylesheet"/>
    <link href="../assets/css/config/creative/app.min.css" rel="stylesheet" type="text/css"
          id="app-default-stylesheet"/>

    <link href="../assets/css/config/creative/bootstrap-dark.min.css" rel="stylesheet" type="text/css"
          id="bs-dark-stylesheet"/>
    <link href="../assets/css/config/creative/app-dark.min.css" rel="stylesheet" type="text/css"
          id="app-dark-stylesheet"/>

    <!-- icons -->
    <link href="../assets/css/icons.min.css" rel="stylesheet" type="text/css"/>

</head>

<!-- body start -->
<body class="loading authentication-bg authentication-bg-pattern">

<div class="account-pages mt-5 mb-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6 col-xl-4">
                <div class="card bg-pattern">

                    <div class="card-body p-4">

                        <div class="text-center w-75 m-auto">
                            <div class="auth-logo">
                                <a href="index.html" class="logo logo-dark text-center">
                                            <span class="logo-lg">
                                                <img src="../assets/images/logo-dark.png" alt="" height="100">
                                            </span>
                                </a>

                                <a href="index.html" class="logo logo-light text-center">
                                            <span class="logo-lg">
                                                <img src="../assets/images/logo-light.png" alt="" height="22">
                                            </span>
                                </a>
                            </div>
                            <p class="text-muted mb-4 mt-3">Enter your account and password to access.</p>
                        </div>
                       <s:form action="login" method="post">
                            <div class="mb-3">
                                <label for="account" class="form-label">账号</label>
                                <input class="form-control" type="text" id="account" required="" placeholder="Enter your account" name="user.id">
                            </div>

                            <div class="mb-3">
                                <label for="password" class="form-label">密码</label>
                                <div class="input-group input-group-merge">
                                    <input type="password" id="password" class="form-control" placeholder="Enter your password" name="user.password">
                                    <div class="input-group-text" data-password="false">
                                        <span class="password-eye"></span>
                                    </div>
                                </div>
                            </div>


                            <div class="text-center d-grid">
                                <button class="btn btn-primary" type="submit">登  陆 </button>
                            </div>

                       </s:form>


                    </div> <!-- end card-body -->
                </div>
                <!-- end card -->

                <div class="row mt-3">
                    <div class="col-12 text-center">
                        <p> <a href="auth-recoverpw.html" class="text-white-50 ms-1">Forgot your password?</a></p>
                    </div> <!-- end col -->
                </div>
                <!-- end row -->

            </div> <!-- end col -->
        </div>
        <!-- end row -->
    </div>
    <!-- end container -->
</div>
<!-- end page -->


<footer class="footer footer-alt">
    2015 - <script>document.write(new Date().getFullYear())</script> &copy; &copy; Mapping car management system by <a href="" class="text-white-50">Group 4</a>
</footer>

<!-- Vendor js -->
<script src="../assets/js/vendor.min.js"></script>

<!-- App js -->
<script src="../assets/js/app.min.js"></script>

</body>
</html>