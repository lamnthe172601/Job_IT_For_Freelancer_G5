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

            <header class="header header-bg">
                <div class="container">
                    <nav class="navbar navbar-expand-lg header-nav">
                        <div class="navbar-header">
                            <a id="mobile_btn" href="javascript:void(0);">
                                <span class="bar-icon">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </span>
                            </a>
                            <a href="index.html" class="navbar-brand logo">
                                <img src="assets/img/logo.svg" class="img-fluid" alt="Logo">
                            </a>
                        </div>
                        <div class="main-menu-wrapper">
                            <div class="menu-header">
                                <a href="index.html" class="menu-logo">
                                    <img src="assets/img/logo.svg" class="img-fluid" alt="Logo">
                                </a>
                                <a id="menu_close" class="menu-close" href="javascript:void(0);">
                                    <i class="fas fa-times"></i>
                                </a>
                            </div>
                            <ul class="main-nav">
                                <li class="has-submenu">
                                    <a href="index.html">Home <i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        <li><a href="index.html">Home</a></li>
                                        <li><a href="index-2.html">Home 2</a></li>
                                        <li><a href="index-3.html">Home 3</a></li>
                                        <li><a href="index-4.html">Home 4</a></li>
                                        <li><a href="index-5.html">Home 5</a></li>
                                    </ul>
                                </li>
                                <li class="has-submenu">
                                    <a href="javascript:void(0);">For Employers<i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        <li class="has-submenu">
                                            <a href="javascript:void(0);">Freelancer</a>
                                            <ul class="submenu">
                                                <li><a href="developer.html">Freelancer</a></li>
                                                <li><a href="developer-details.html">Freelancer Details</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="dashboard.html">Dashboard</a></li>
                                        <li><a href="company-profile.html">My Profile</a></li>
                                        <li><a href="company-details.html">Company Details</a></li>
                                        <li><a href="manage-projects.html">Projects</a></li>
                                        <li><a href="favourites.html">Favourites</a></li>
                                        <li><a href="membership-plans.html">Membership</a></li>
                                        <li><a href="milestones.html">Milestones</a></li>
                                        <li><a href="chats.html">Chats</a></li>
                                        <li><a href="review.html">Review</a></li>
                                        <li><a href="deposit-funds.html">Payments</a></li>
                                        <li><a href="verify-identity.html">Verify Identity</a></li>
                                        <li><a href="profile-settings.html">Settings</a></li>
                                    </ul>
                                </li>
                                <li class="has-submenu">
                                    <a href="javascript:void(0);">For Freelancer<i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        <li class="has-submenu">
                                            <a href="javascript:void(0);">Projects</a>
                                            <ul class="submenu">
                                                <li><a href="project.html">Projects</a></li>
                                                <li><a href="project-details.html">Project Details</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="freelancer-dashboard.html">Dashboard</a></li>
                                        <li><a href="developer-profile.html">My Profile</a></li>
                                        <li><a href="developer-details.html">Freelancer Details</a></li>
                                        <li><a href="freelancer-project-proposals.html">Projects</a></li>
                                        <li><a href="freelancer-favourites.html">Favourites</a></li>
                                        <li><a href="freelancer-membership.html">Membership</a></li>
                                        <li><a href="freelancer-change-password.html">Change Password</a></li>
                                        <li><a href="freelancer-chats.html">Chats</a></li>
                                        <li><a href="freelancer-review.html">Review</a></li>
                                        <li><a href="freelancer-withdraw-money.html">Payments</a></li>
                                        <li><a href="freelancer-verify-identity.html">Verify Identity</a></li>
                                        <li><a href="freelancer-profile-settings.html">Settings</a></li>
                                    </ul>
                                </li>
                                <li class="has-submenu active">
                                    <a href="javascript:void(0);">Pages <i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        <li><a href="about.html">About us</a></li>
                                        <li><a href="blank-page.html">Starter Page</a></li>
                                        <li><a href="404-page.html">404 Page</a></li>
                                        <li><a href="login.html">Login</a></li>
                                        <li><a href="register.html">Register</a></li>
                                        <li><a href="onboard-screen.html">Onboard Screen</a></li>
                                        <li><a href="forgot-password.html">Forgot Password</a></li>
                                        <li class="active"><a href="change-passwords.html">Change Password</a></li>
                                    </ul>
                                </li>
                                <li class="has-submenu">
                                    <a href="javascript:void(0);">Blog <i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        <li><a href="blog-list.html">Blog List</a></li>
                                        <li><a href="blog-grid.html">Blog Grid</a></li>
                                        <li><a href="blog-details.html">Blog Details</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="admin/index.html" target="_blank">Freelancer</a>
                                </li>
                            </ul>
                        </div>
                        <ul class="nav header-navbar-rht">
                            <li><a href="chats.html"><img src="assets/img/icon/message-chat-icon.svg" alt="Img"></a></li>
                            <li class="dropdown">
                                <a data-bs-toggle="dropdown" href="javascript:void(0);"><img src="assets/img/icon/notification-bell-icon.svg" alt="Img"></a>
                                <div class="dropdown-menu notifications">
                                    <div class="topnav-dropdown-header">
                                        <div class="notification-title">Notifications<span class="msg-count-badge">2</span></div>
                                        <a href="javascript:void(0)" class="clear-noti d-flex align-items-center">Mark all as read <i class="fe fe-check-circle"></i></a>
                                    </div>
                                    <div class="noti-content">
                                        <ul class="notification-list">
                                            <li class="notification-message">
                                                <a href="notification.html">
                                                    <div class="d-flex">
                                                        <span class="avatar avatar-md active">
                                                            <img class="avatar-img rounded-circle" alt="avatar-img" src="assets/img/avatar/avatar-2.jpg">
                                                        </span>
                                                        <div class="media-body">
                                                            <span class="noti-title">Edward Curr</span>
                                                            <p class="noti-details">Notifications inform you when someone likes, reacts</p>
                                                            <p class="noti-time"><span class="notification-time">Yesterday at 11:42 PM</span></p>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li class="notification-message">
                                                <a href="notification.html">
                                                    <div class="d-flex">
                                                        <span class="avatar avatar-md active">
                                                            <img class="avatar-img rounded-circle" alt="avatar-img" src="assets/img/avatar/avatar-1.jpg">
                                                        </span>
                                                        <div class="media-body">
                                                            <span class="noti-title">Maria Hill</span>
                                                            <p class="noti-details"> Notifications alert you to new messages in your Kofejob inbox.</p>
                                                            <div class="notification-btn">
                                                                <span class="btn btn-primary">Accept</span>
                                                                <span class="btn btn-outline-primary">Reject</span>
                                                            </div>
                                                            <p class="noti-time"><span class="notification-time">Today at 9:42 AM</span></p>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li class="notification-message">
                                                <a href="notification.html">
                                                    <div class="d-flex">
                                                        <span class="avatar avatar-md">
                                                            <img class="avatar-img rounded-circle" alt="avatar-img" src="assets/img/avatar/avatar-3.jpg">
                                                        </span>
                                                        <div class="media-body">
                                                            <span class="noti-title">Maria Hill</span>
                                                            <p class="noti-details"> Notifications alert you to new messages in your Kofejob inbox.</p>
                                                            <p class="noti-time"><span class="notification-time">Yesterday at 5:42 PM</span></p>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li class="notification-message">
                                                <a href="notification.html">
                                                    <div class="d-flex">
                                                        <span class="avatar avatar-md">
                                                            <img class="avatar-img rounded-circle" alt="avatar-img" src="assets/img/avatar/avatar-4.jpg">
                                                        </span>
                                                        <div class="media-body">
                                                            <span class="noti-title">Edward Curr</span>
                                                            <p class="noti-details">Notifications inform you when someone likes, reacts</p>
                                                            <p class="noti-time"><span class="notification-time">Last Wednesday at 11:15 AM</span></p>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="topnav-dropdown-footer text-center">
                                        <a href="notification.html">View All Notification</a>
                                    </div>
                                </div>
                            </li>
                            <li><a href="post-project.html" class="login-btn">Post a Project <i class="feather-plus ms-1"></i></a></li>
                            <li class="nav-item dropdown account-item">
                                <a href="javascript:void(0);" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
                                    <span class="user-img">
                                        <img src="assets/img/user/table-avatar-03.jpg" alt="Img">
                                    </span>
                                    <span>Walter Griffin</span>
                                </a>
                                <div class="dropdown-menu emp">
                                    <div class="drop-head">
                                        <a href="javascript:void(0);" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
                                            <span class="user-img">
                                                <img src="assets/img/user/table-avatar-03.jpg" alt="Img">
                                            </span>
                                            <div>
                                                <span>Walter Griffin</span>
                                                <p><span class="__cf_email__" data-cfemail="31585f575e7146505d4554435643585757585f1f525e5c">[email&#160;protected]</span></p>
                                            </div>
                                        </a>
                                    </div>
                                    <a class="dropdown-item" href="company-profile.html"><img src="assets/img/icon/user-dropdown-icon--01.svg" alt="Img"> My Profile</a>
                                    <a class="dropdown-item" href="manage-projects.html"><img src="assets/img/icon/user-dropdown-icon--02.svg" alt="Img"> My Projects</a>
                                    <a class="dropdown-item" href="favourites.html"><img src="assets/img/icon/user-dropdown-icon--03.svg" alt="Img">My Subscription</a>
                                    <a class="dropdown-item" href="deposit-funds.html"><img src="assets/img/icon/user-dropdown-icon--04.svg" alt="Img">My Statement</a>
                                    <a class="dropdown-item" href="chats.html"><img src="assets/img/icon/user-dropdown-icon--05.svg" alt="Img"> Message</a>
                                    <a class="dropdown-item" href="profile-settings.html"><img src="assets/img/icon/user-dropdown-icon--06.svg" alt="Img"> Profile Settings</a>
                                    <a class="dropdown-item" href="login.html"><img src="assets/img/icon/user-dropdown-icon--07.svg" alt="Img"> Logout</a>
                                </div>
                            </li>
                        </ul>
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
                                        <span>Change New Password</span>
                                    </div>
                                    <form action="changePass" method="post">
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
