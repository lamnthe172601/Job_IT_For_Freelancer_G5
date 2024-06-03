<%-- 
    Document   : lostpassword
    Created on : May 19, 2024, 8:56:48 PM
    Author     : tanng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/forgot-password.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:35:30 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
        <title>KLTTLJob</title>

        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">

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
                    <div class="container">

                        <div class="account-content">
                            <div class="align-items-center justify-content-center">
                                <div class="login-right">
                                    <div class="login-header text-center">
                                        <h2>Forgot Password</h2>
                                        <h3>Please enter your email address</h3>
                                    </div>
                                    <form action="lostpassword" method="post" onsubmit="return FormValidate();">
                                        <div class="input-block">
                                            <label class="focus-label">Email Address <span class="label-star"> *</span></label>
                                            <input oninput="checkEmail()" type="text" class="form-control floating" name="email" id="email">
                                            <div style="color: red" id="errorEmail">${mess}</div>
                                        </div>
                                        
                                        <button class="btn btn-primary w-100 btn-lg login-btn d-flex align-items-center justify-content-center mb-4" type="">Send Now<i class="feather-arrow-right ms-2"></i></button>
                                        <div class="row">
                                            <div class="col-sm-8 dont-have d-flex mt-0  align-items-center">Remember Password<a href="login" class="ms-2">Sign in?</a></div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </div>
                                        
<script>
    function FormValidate(){
        
         var email = document.getElementById('email').value.trim();
    var eEmail = document.getElementById('errorEmail');
    var reGexEmail = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
        if (email === null || email === '') {
        eEmail.innerHTML = 'Email are required fields.';
        return false;
    } else if (!reGexEmail.test(email)) {
        eEmail.innerHTML = 'Email is wrong format!';
        return false;
    } else {
        eEmail.innerHTML = '';
        return true;
    }
      
    }
                           
</script>

        <script src="assets/js/jsvalidate.js"></script>
        <script src="assets/js/jquery-3.7.1.min.js" type="45a1088af290e96a12659ad2-text/javascript"></script>

        <script src="assets/js/bootstrap.bundle.min.js" type="45a1088af290e96a12659ad2-text/javascript"></script>

        <script src="assets/js/slick.js" type="45a1088af290e96a12659ad2-text/javascript"></script>

        <script src="assets/js/script.js" type="45a1088af290e96a12659ad2-text/javascript"></script>
        <script src="../cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="45a1088af290e96a12659ad2-|49" defer></script></body>

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/forgot-password.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:35:30 GMT -->
</html>
