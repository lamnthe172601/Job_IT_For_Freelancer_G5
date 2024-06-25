<%-- 
    Document   : login
    Created on : May 18, 2024, 2:59:55 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/change-passwords.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:35:30 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
        <title>KofeJob</title>

        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/plugins/feather/feather.css">

        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body class="account-page">

        <div class="main-wrapper">

            <header class="header header-two">

                <div class="container">
                    <nav class="navbar navbar-expand-lg header-nav p-0">
                        <div class="navbar-header header-select">
                            <a id="mobile_btn" href="javascript:void(0);">
                                <span class="bar-icon">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </span>
                            </a>
                            <a href="home" class="navbar-brand logo">
                                <img src="assets/img/logo.svg" class="img-fluid" alt="Logo">
                            </a>

                        </div>
                        <div class="main-menu-wrapper">
                            <div class="menu-header">
                                <a href="home" class="menu-logo">
                                    <img src="assets/img/logo.svg" class="img-fluid" alt="Logo">
                                </a>
                                <a id="menu_close" class="menu-close" href="javascript:void(0);">
                                    <i class="fas fa-times"></i>
                                </a>
                            </div>

                            <jsp:include page="header.jsp" />
                    </nav>
                </div>
            </header>

            <%String msg = (String) request.getAttribute("errorPass");%>

            <div class="login-wrapper">
                <div class="content w-100">
                    <div class="container">

                        <div class="account-content">
                            <div class="align-items-center justify-content-center">
                                <div class="login-right">
                                    <div class="login-header text-center">
                                        <h2>Password Change</h2>

                                    </div>
                                    <!--                                    <form action="changePass" method="post">
                                                                            <div class="input-block">
                                                                                <label class="focus-label">Current Password <span class="label-star"> *</span></label>
                                                                                <div class="position-relative">
                                                                                    <input type="password" class="form-control floating pass-input" name="currentPassword" required>
                                                                                    
                                                                                    <div class="password-icon ">
                                                                                        <span class="fas toggle-password fa-eye-slash"></span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="input-block">
                                                                                <label class="focus-label">New Password <span class="label-star"> *</span></label>
                                                                                <div class="position-relative">
                                                                                    <input type="password" class="form-control floating pass-inputs" name="newPassword" required>
                                                                                    
                                                                                    <div class="password-icon ">
                                                                                        <span class="fas toggle-passwords fa-eye-slash"></span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="input-block">
                                                                                <label class="focus-label">Confirm New Password <span class="label-star"> *</span></label>
                                                                                <div class="position-relative">
                                                                                    <input type="password" class="form-control floating pass-input1" name="confirmPassword" required>
                                                                                    
                                                                                    <div class="password-icon ">
                                                                                        <span class="fas toggle-password1 fa-eye-slash"></span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            
                                    <c:if test="${not empty errorPass}">
                                        <div class="alert alert-danger">${errorPass}</div>
                                    </c:if>
                                    <button class="btn btn-primary btn-lg login-btn d-flex align-items-center justify-content-center w-100" type="submit">Password Change<i class="feather-arrow-right ms-2"></i></button>
                                </form>-->
                                    <form action="changePass" method="post">
                                        <div class="input-block">
                                            <label class="focus-label">Current Password <span class="label-star"> *</span></label>
                                            <div class="position-relative">
                                                <input type="password" class="form-control floating pass-input" name="currentPassword" required value="${currentPassword}">

                                                <div class="password-icon ">
                                                    <span class="fas toggle-password fa-eye-slash"></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="input-block">
                                            <label class="focus-label">New Password <span class="label-star"> *</span></label>
                                            <div class="position-relative">
                                                <input type="password" class="form-control floating pass-inputs" name="newPassword" required value="${newPassword}">

                                                <div class="password-icon ">
                                                    <span class="fas toggle-passwords fa-eye-slash"></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="input-block">
                                            <label class="focus-label">Confirm New Password <span class="label-star"> *</span></label>
                                            <div class="position-relative">
                                                <input type="password" class="form-control floating pass-input1" name="confirmPassword" required value="${confirmPassword}">

                                                <div class="password-icon ">
                                                    <span class="fas toggle-password1 fa-eye-slash"></span>
                                                </div>
                                            </div>
                                        </div>

                                        <c:if test="${not empty errorPass}">
                                            <div class="alert alert-danger">${errorPass}</div>
                                        </c:if>
                                        <button class="btn btn-primary btn-lg login-btn d-flex align-items-center justify-content-center w-100" type="submit">Password Change<i class="feather-arrow-right ms-2"></i></button>
                                    </form>


                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>


            <script data-cfasync="false" src="assets/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-3.7.1.min.js" type="a94bc7fdfce2d7745705eb4b-text/javascript"></script>

            <script src="assets/js/bootstrap.bundle.min.js" type="a94bc7fdfce2d7745705eb4b-text/javascript"></script>

            <script src="assets/js/slick.js" type="a94bc7fdfce2d7745705eb4b-text/javascript"></script>

            <script src="assets/js/script.js" type="a94bc7fdfce2d7745705eb4b-text/javascript"></script>
            <script src="assets/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="a94bc7fdfce2d7745705eb4b-|49" defer></script></body>

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/change-passwords.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:35:30 GMT -->
</html>
