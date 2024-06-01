<%-- 
    Document   : login
    Created on : May 18, 2024, 2:59:55 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:35:03 GMT -->
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
                    <a href="home" class="navbar-brand logo">
                        <img style="margin: 20px;" src="assets/img/logo.svg" class="img-fluid" alt="Logo">
                    </a>                                                               
                </div>
            </header>

            <div class="login-wrapper">
                <div class="content">

                    <div class="account-content">
                        <div class="align-items-center justify-content-center">
                            <div class="login-right">
                                <div class="login-header text-center">
                                    <h3>Change your password</h3>
                                </div>
                                <form action="changePassword" method="post" onsubmit="return FormValidate();">
                                    <div class="input-block">
                                        <label class="focus-label">New Password <span class="label-star"> *</span></label>
                                        <div class="position-relative">
                                            <input oninput="checkpass()" name="newPass" type="password" class="form-control floating pass-input" id="password">
                                        </div>
                                        <div style="color: red" id="errorPass"></div>
                                    </div>
                                    <div class="input-block">
                                        <label class="focus-label">Confirm Password <span class="label-star"> *</span></label>
                                        <div class="position-relative">
                                            <input oninput="checkpass()" name="confirmPass" type="password" class="form-control floating pass-input" id="repassword">
                                        </div>
                                        <div style="color: red" id="errorRepass">${mess}</div>
                                    </div>
                                    <button style="margin-bottom: 20px" class="btn btn-primary w-100 btn-lg login-btn d-flex align-items-center justify-content-center" type="submit">Change Password</button>
                                </form>
                                    
                                  
                                
                            </div>
                        </div>
                    </div>

                </div>
            </div>


            

        </div>


        <script src="assets/js/jquery-3.7.1.min.js" type="4bfb9e18a84f35f1be6270cc-text/javascript"></script>

        <script src="assets/js/bootstrap.bundle.min.js" type="4bfb9e18a84f35f1be6270cc-text/javascript"></script>

        <script src="assets/js/slick.js" type="4bfb9e18a84f35f1be6270cc-text/javascript"></script>

        <script src="assets/js/script.js" type="4bfb9e18a84f35f1be6270cc-text/javascript"></script>
        <script src="../cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="4bfb9e18a84f35f1be6270cc-|49" defer></script></body>
        <script src="assets/js/checkform_0.js"></script>
        <script src="assets/js/jsvalidate.js"></script> 
    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:35:08 GMT -->
</html>
