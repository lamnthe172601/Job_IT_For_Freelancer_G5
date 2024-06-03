<%-- 
    Document   : register
    Created on : May 23, 2024, 10:55:00 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:35:08 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
        <title>KofeJob</title>

        <link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/plugins/feather/feather.css">

        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body class="account-page">

        <div class="main-wrapper">


            <header class="header">
                <div class="container">
                    <nav class="navbar navbar-expand-lg header-nav p-0">
                        <div class="navbar-header">
                            <a id="mobile_btn" href="javascript:void(0);">
                                <span class="bar-icon">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </span>
                            </a>
                            <a href="home" class="navbar-brand logo">
                                <img style="margin: 20px;" src="assets/img/logo.svg" class="img-fluid" alt="Logo">
                            </a>
                        </div>
                        <div class="main-menu-wrapper">
                            <div class="menu-header">
                                <a href="home" class="menu-logo">
                                    <img  src="assets/img/logo.svg" class="img-fluid" alt="Logo">
                                </a>
                                <a id="menu_close" class="menu-close" href="javascript:void(0);">
                                    <i class="fas fa-times"></i>
                                </a>
                            </div>
                           
                        </div>
                        
                    </nav>
                </div>
            </header>

            <div class="login-wrapper">
                <div class="content w-100">

                    <div class="account-content">
                        <div class="align-items-center justify-content-center">
                            <div class="login-right">
                                <div class="login-header text-center">
                                    <a href="index.html"><img src="assets/img/logo.svg" alt="logo" class="img-fluid"></a>
                                    <h3>We love to see you joining our community</h3>
                                </div>
                                <div class="tab-content pt-0">
                                    <div role="tabpanel" id="developer" class="tab-pane fade active show">
                                        <form id="from" action="Register" method="post" onsubmit="return FormValidate();">
                                            <div class="input-block ">
                                                <label class="focus-label">User Name <span class="label-star"> *</span></label>
                                                <input oninput="checkUsername()" type="text" class="form-control floating" id="username" name="username">
                                                <div style="color: red" id="errorUsername">${mess1}</div>
                                            </div>
                                            <div class="input-block ">
                                                <label class="focus-label">Email Address<span class="label-star"> *</span></label>
                                                <input oninput="checkEmail()" type="text" class="form-control floating" id="email" name="email">
                                                <div style="color: red" id="errorEmail">${mess2}</div>
                                            </div>
                                            <div class="input-block ">
                                                <label class="focus-label">Password <span class="label-star"> *</span></label>
                                                <div class="position-relative">
                                                    <input oninput="checkpass()" type="password" class="form-control floating pass-input" id="password" name="password">                                                  
                                                    <div class="password-icon ">
                                                        <span style="cursor: pointer;" class="fas toggle-password fa-eye-slash"></span>
                                                    </div>
                                                    <div style="color: red" id="errorPass"></div>
                                                </div>
                                            </div>
                                            <div class="input-block  mb-0">
                                                <label class="focus-label">Confirm Password <span class="label-star"> *</span></label>
                                                <div class="position-relative">
                                                    <input oninput="checkpass()" type="password" class="form-control floating pass-inputs" id="repassword" name="repassword">
                                                    <div class="password-icons">
                                                        <span style="cursor: pointer;" class="fas toggle-passwords fa-eye-slash"></span>
                                                    </div>
                                                    <div style="color: red" id="errorRepass"></div>
                                                </div>
                                            </div>
                                            
                                            <div class="dont-have">
                                                <label class="custom_check">
                                                    <input type="checkbox" name="rem_password">

                                                </label>
                                            </div>
                                            <button class="btn btn-primary w-100 btn-lg login-btn d-flex align-items-center justify-content-center" type="submit">Sign In Now<i class="feather-arrow-right ms-2"></i></button>

                                            <div class="row">
                                                <div class="col-sm-8 dont-have d-flex  align-items-center">Already have account <a href="login.html" class="ms-2">Sign in?</a></div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

          

        </div>
                                             
        <script src="assets/js/jquery-3.7.1.min.js" type="60ab19134118e3e714333e43-text/javascript"></script>

        <script src="assets/js/bootstrap.bundle.min.js" type="60ab19134118e3e714333e43-text/javascript"></script>

        <script src="assets/js/slick.js" type="60ab19134118e3e714333e43-text/javascript"></script>

        <script src="assets/js/script.js" type="60ab19134118e3e714333e43-text/javascript"></script>
        <script src="assets/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="60ab19134118e3e714333e43-|49" defer></script>
        <script src="assets/js/checkfrom.js"></script>
        <script src="assets/js/jsvalidate.js"></script>
            
    </body>
        

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:35:08 GMT -->
</html>
