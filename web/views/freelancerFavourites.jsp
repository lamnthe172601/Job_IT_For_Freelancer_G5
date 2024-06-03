<%-- 
    Document   : PopularPost
    Created on : May 28, 2024, 1:28:46 PM
    Author     : DUC MINH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/freelancer-favourites.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:34:46 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
        <title>KofeJob</title>

        <link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/plugins/feather/feather.css">

        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

        <link rel="stylesheet" href="assets/plugins/select2/css/select2.min.css">

        <link rel="stylesheet" href="assets/plugins/datatables/datatables.min.css">

        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body class="dashboard-page">

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
                                <li class="has-submenu active">
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
                                        <li><a href="freelancer-project-proposals.html">Projects</a></li>
                                        <li class="active"><a href="freelancer-favourites.html">Favourites</a></li>
                                        <li><a href="freelancer-membership.html">Membership</a></li>
                                        <li><a href="freelancer-change-password.html">Change Password</a></li>
                                        <li><a href="freelancer-chats.html">Chats</a></li>
                                        <li><a href="freelancer-review.html">Review</a></li>
                                        <li><a href="freelancer-portfolio.html">Portfolio</a></li>
                                        <li><a href="freelancer-withdraw-money.html">Payments</a></li>
                                        <li><a href="freelancer-verify-identity.html">Verify Identity</a></li>
                                        <li><a href="freelancer-profile-settings.html">Settings</a></li>
                                    </ul>
                                </li>
                                <li class="has-submenu">
                                    <a href="javascript:void(0);">Pages <i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        <li><a href="about.html">About us</a></li>
                                        <li><a href="blank-page.html">Starter Page</a></li>
                                        <li><a href="404-page.html">404 Page</a></li>
                                        <li><a href="login.html">Login</a></li>
                                        <li><a href="register.html">Register</a></li>
                                        <li><a href="onboard-screen.html">Onboard Screen</a></li>
                                        <li><a href="forgot-password.html">Forgot Password</a></li>
                                        <li><a href="change-passwords.html">Change Password</a></li>
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
                                    <a href="admin/index.html" target="_blank">Admin</a>
                                </li>
                            </ul>
                        </div>
                        <ul class="nav header-navbar-rht">
                            <li><a href="freelancer-chats.html"><img src="assets/img/icon/message-chat-icon.svg" alt="Img"></a></li>
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
                                        <img src="assets/img/user/avatar-1.jpg" alt="Img">
                                    </span>
                                    <span>Bruce Bush</span>
                                </a>
                                <div class="dropdown-menu emp">
                                    <div class="drop-head">
                                        <a href="javascript:void(0);" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
                                            <span class="user-img">
                                                <img src="assets/img/user/avatar-1.jpg" alt="Img">
                                            </span>
                                            <div>
                                                <span>Bruce Bush</span>
                                                <p><span class="__cf_email__" data-cfemail="553c3b333a1537272036303720263d7b363a38">[email&#160;protected]</span></p>
                                            </div>
                                        </a>
                                    </div>
                                    <a class="dropdown-item" href="developer-profile.html"><img src="assets/img/icon/user-dropdown-icon--01.svg" alt="Img"> My Profile</a>
                                    <a class="dropdown-item" href="freelancer-project-proposals.html"><img src="assets/img/icon/user-dropdown-icon--02.svg" alt="Img"> My Projects</a>
                                    <a class="dropdown-item" href="freelancer-favourites.html"><img src="assets/img/icon/user-dropdown-icon--03.svg" alt="Img">My Subscription</a>
                                    <a class="dropdown-item" href="freelancer-statement.html"><img src="assets/img/icon/user-dropdown-icon--04.svg" alt="Img">My Statement</a>
                                    <a class="dropdown-item" href="freelancer-chats.html"><img src="assets/img/icon/user-dropdown-icon--05.svg" alt="Img"> Message</a>
                                    <a class="dropdown-item" href="freelancer-profile-settings.html"><img src="assets/img/icon/user-dropdown-icon--06.svg" alt="Img"> Profile Settings</a>
                                    <a class="dropdown-item" href="login.html"><img src="assets/img/icon/user-dropdown-icon--07.svg" alt="Img"> Logout</a>
                                </div>
                            </li>
                        </ul>
                    </nav>
                </div>
            </header>


            <div class="content content-page bookmark">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-3 col-lg-4 theiaStickySidebar">
                            <div class="settings-widget">
                                <div class="settings-header d-sm-flex flex-row flex-wrap text-center text-sm-start align-items-center">
                                    <a href="freelancer-profile.html"><img alt="profile image" src="assets/img/user/avatar-1.jpg" class="avatar-lg rounded-circle"></a>
                                    <div class="ms-sm-3 ms-md-0 ms-lg-3 mt-2 mt-sm-0 mt-md-2 mt-lg-0">
                                        <h3 class="mb-0"><a href="freelancer-profile.html">Bruce Bush</a><img src="assets/img/icon/verified-badge.svg" class="ms-1" alt="Img"></h3>
                                        <p class="mb-0">@brucebush</p>
                                    </div>
                                </div>
                                <div class="settings-menu">
                                    <div id="sidebar-menu" class="sidebar-menu">
                                        <ul>
                                            <li class="nav-item">
                                                <a href="freelancer-dashboard.html" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-01.svg" alt="Img"> Dashboard
                                                </a>
                                            </li>
                                            <li class="nav-item submenu">
                                                <a href="freelancer-project-proposals.html" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-02.svg" alt="Img"> Projects
                                                    <span class="menu-arrow"></span>
                                                </a>
                                                <ul class="sub-menu-ul">
                                                    <li>
                                                        <a href="freelancer-project-proposals.html">My Proposal</a>
                                                    </li>
                                                    <li>
                                                        <a href="freelancer-ongoing-projects.html">Ongoing Projects</a>
                                                    </li>
                                                    <li>
                                                        <a href="freelancer-completed-projects.html">Completed Projects</a>
                                                    </li>
                                                    <li>
                                                        <a href="freelancer-cancelled-projects.html">Cancelled Projects</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="nav-item submenu">
                                                <a href="freelancer-favourites.html" class="nav-link active">
                                                    <img src="assets/img/icon/sidebar-icon-03.svg" alt="Img"> Favourites
                                                    <span class="menu-arrow"></span>
                                                </a>
                                                <ul class="sub-menu-ul">
                                                    <li>
                                                        <a class="active" href="freelancer-favourites.html">Bookmarked Projects</a>
                                                    </li>
                                                    <li>
                                                        <a href="freelancer-invitations.html">Invitations</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="nav-item">
                                                <a href="freelancer-review.html" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-04.svg" alt="Img"> Reviews
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="freelancer-portfolio.html" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-05.svg" alt="Img"> Portfolio
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="freelancer-chats.html" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-06.svg" alt="Img"> Chat
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="freelancer-withdraw-money.html" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-07.svg" alt="Img"> Payments
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="freelancer-payout.html" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-08.svg" alt="Img"> Payout
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="freelancer-withdraw-money.html" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-09.svg" alt="Img"> Statement
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="javascript:void(0);" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-10.svg" alt="Img"> Settings
                                                    <span class="menu-arrow"></span>
                                                </a>
                                                <ul class="sub-menu-ul">
                                                    <li>
                                                        <a href="freelancer-profile-settings.html">Profile Setting</a>
                                                    </li>
                                                    <li>
                                                        <a href="freelancer-membership.html">Plan & Billing</a>
                                                    </li>
                                                    <li>
                                                        <a href="freelancer-verify-identity.html">Verify Identity</a>
                                                    </li>
                                                    <li>
                                                        <a href="freelancer-change-password.html">Changes Password</a>
                                                    </li>
                                                    <li>
                                                        <a href="freelancer-delete-account.html">Delete Account</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="nav-item">
                                                <a href="index.html" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-11.svg" alt="Img"> Logout
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-9 col-lg-8">
                            <div class="dashboard-sec freelance-favourites">
                                <div class="page-title">
                                    <h3>Favourites</h3>
                                </div>
                                <div class="row row-gap">
                                    <div class="col-md-6 col-lg-12 col-xl-4">
                                        <div class="freelance-widget widget-author">
                                            <div class="freelance-content">
                                                <div class="freelance-top-content d-flex">
                                                    <span> <i class="feather-clock me-1"></i>Posted Just Now</span>
                                                    <a href="javascript:void(0);" class="favourite color-active"><i class="feather-heart"></i></a>
                                                </div>
                                                <div class="author-heading">
                                                    <div class="profile-img">
                                                        <span class="project-verified"><i class="fas fa-check-circle"></i></span>
                                                        <a href="project-details.html">
                                                            <img src="assets/img/company/img-1.png" alt="author">
                                                        </a>
                                                    </div>
                                                    <div class="profile-name">
                                                        <div class="author-location"><a href="project-details.html">Amaze Tech </a></div>
                                                    </div>
                                                    <div class="freelance-info">
                                                        <h3><a href="javascript:void(0);">UI/UX Developer</a></h3>
                                                        <div class="freelance-location"><i class="feather-map-pin me-1"></i>Alabama, USA</div>
                                                    </div>
                                                    <div class="freelance-tags">
                                                        <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Web Design</span></a>
                                                        <a href="javascript:void(0);"><span class="badge badge-pill badge-design">UI Design</span></a>
                                                        <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Node Js</span></a>
                                                    </div>
                                                    <div class="freelancers-price">$40-$500</div>
                                                </div>
                                                <div class="counter-stats">
                                                    <ul>
                                                        <li>
                                                            <h5>Expiry</h5>
                                                            <h3 class="counter-value">4 Days Left</h3>
                                                        </li>
                                                        <li>
                                                            <h5>Proposals</h5>
                                                            <h3 class="counter-value">15</h3>
                                                        </li>
                                                        <li>
                                                            <h5>Job Type</h5>
                                                            <h3 class="counter-value"><span class="jobtype">Full Time</span></h3>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="cart-hover">
                                                <a href="project-details.html" class="btn-cart" tabindex="-1">View Profile</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-12 col-xl-4">
                                        <div class="freelance-widget widget-author">
                                            <div class="freelance-content">
                                                <div class="freelance-top-content d-flex">
                                                    <span> <i class="feather-clock me-1"></i>1 min ago</span>
                                                    <a href="javascript:void(0);" class="favourite color-active"><i class="feather-heart"></i></a>
                                                </div>
                                                <div class="author-heading">
                                                    <div class="profile-img">
                                                        <span class="project-verified"><i class="fas fa-check-circle"></i></span>
                                                        <a href="project-details.html">
                                                            <img src="assets/img/company/img-2.png" alt="author">
                                                        </a>
                                                    </div>
                                                    <div class="profile-name">
                                                        <div class="author-location"><a href="project-details.html">Park INC </a></div>
                                                    </div>
                                                    <div class="freelance-info">
                                                        <h3><a href="javascript:void(0);">PHP Developer</a></h3>
                                                        <div class="freelance-location"><i class="feather-map-pin me-1"></i>California, USA</div>
                                                    </div>
                                                    <div class="freelance-tags">
                                                        <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Web Design</span></a>
                                                        <a href="javascript:void(0);"><span class="badge badge-pill badge-design">UI Design</span></a>
                                                        <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Node Js</span></a>
                                                    </div>
                                                    <div class="freelancers-price">$30-$300</div>
                                                </div>
                                                <div class="counter-stats">
                                                    <ul>
                                                        <li>
                                                            <h5>Expiry</h5>
                                                            <h3 class="counter-value">5 Days Left</h3>
                                                        </li>
                                                        <li>
                                                            <h5>Proposals</h5>
                                                            <h3 class="counter-value">15</h3>
                                                        </li>
                                                        <li>
                                                            <h5>Job Type</h5>
                                                            <h3 class="counter-value"><span class="jobtype">Full Time</span></h3>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="cart-hover">
                                                <a href="project-details.html" class="btn-cart" tabindex="-1">View Profile</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-12 col-xl-4">
                                        <div class="freelance-widget widget-author">
                                            <div class="freelance-content">
                                                <div class="freelance-top-content d-flex">
                                                    <span> <i class="feather-clock me-1"></i>30 mins ago</span>
                                                    <a href="javascript:void(0);" class="favourite color-active"><i class="feather-heart"></i></a>
                                                </div>
                                                <div class="author-heading">
                                                    <div class="profile-img">
                                                        <span class="project-verified"><i class="fas fa-check-circle"></i></span>
                                                        <a href="project-details.html">
                                                            <img src="assets/img/company/img-3.png" alt="author">
                                                        </a>
                                                    </div>
                                                    <div class="profile-name">
                                                        <div class="author-location"><a href="project-details.html">Tech Zone</a> </div>
                                                    </div>
                                                    <div class="freelance-info">
                                                        <h3><a href="javascript:void(0);">Graphic Designer</a></h3>
                                                        <div class="freelance-location"><i class="feather-map-pin me-1"></i>New York, USA</div>
                                                    </div>
                                                    <div class="freelance-tags">
                                                        <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Web Design</span></a>
                                                        <a href="javascript:void(0);"><span class="badge badge-pill badge-design">UI Design</span></a>
                                                        <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Node Js</span></a>
                                                    </div>
                                                    <div class="freelancers-price">$15-$500</div>
                                                </div>
                                                <div class="counter-stats">
                                                    <ul>
                                                        <li>
                                                            <h5>Expiry</h5>
                                                            <h3 class="counter-value">4 Days Left</h3>
                                                        </li>
                                                        <li>
                                                            <h5>Proposals</h5>
                                                            <h3 class="counter-value">15</h3>
                                                        </li>
                                                        <li>
                                                            <h5>Job Type</h5>
                                                            <h3 class="counter-value"><span class="jobtype">Full Time</span></h3>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="cart-hover">
                                                <a href="project-details.html" class="btn-cart" tabindex="-1">View Profile</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-12 col-xl-4">
                                        <div class="freelance-widget widget-author">
                                            <div class="freelance-content">
                                                <div class="freelance-top-content d-flex">
                                                    <span> <i class="feather-clock me-1"></i>1 day ago</span>
                                                    <a href="javascript:void(0);" class="favourite color-active"><i class="feather-heart"></i></a>
                                                </div>
                                                <div class="author-heading">
                                                    <div class="profile-img">
                                                        <span class="project-verified"><i class="fas fa-check-circle"></i></span>
                                                        <a href="project-details.html">
                                                            <img src="assets/img/company/img-4.png" alt="author">
                                                        </a>
                                                    </div>
                                                    <div class="profile-name">
                                                        <div class="author-location"><a href="project-details.html">ABC Software</a> </div>
                                                    </div>
                                                    <div class="freelance-info">
                                                        <h3><a href="javascript:void(0);">iOS Developer</a></h3>
                                                        <div class="freelance-location"><i class="feather-map-pin me-1"></i>Florida, USA</div>
                                                    </div>
                                                    <div class="freelance-tags">
                                                        <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Web Design</span></a>
                                                        <a href="javascript:void(0);"><span class="badge badge-pill badge-design">UI Design</span></a>
                                                        <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Node Js</span></a>
                                                    </div>
                                                    <div class="freelancers-price">$25-$250</div>
                                                </div>
                                                <div class="counter-stats">
                                                    <ul>
                                                        <li>
                                                            <h5>Expiry</h5>
                                                            <h3 class="counter-value">1 Days Left</h3>
                                                        </li>
                                                        <li>
                                                            <h5>Proposals</h5>
                                                            <h3 class="counter-value">13</h3>
                                                        </li>
                                                        <li>
                                                            <h5>Job Type</h5>
                                                            <h3 class="counter-value"><span class="jobtype">Full Time</span></h3>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="cart-hover">
                                                <a href="project-details.html" class="btn-cart" tabindex="-1">View Profile</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-12 col-xl-4">
                                        <div class="freelance-widget widget-author">
                                            <div class="freelance-content">
                                                <div class="freelance-top-content d-flex">
                                                    <span> <i class="feather-clock me-1"></i>3 days ago</span>
                                                    <a href="javascript:void(0);" class="favourite color-active"><i class="feather-heart"></i></a>
                                                </div>
                                                <div class="author-heading">
                                                    <div class="profile-img">
                                                        <span class="project-verified"><i class="fas fa-check-circle"></i></span>
                                                        <a href="project-details.html">
                                                            <img src="assets/img/company/img-5.png" alt="author">
                                                        </a>
                                                    </div>
                                                    <div class="profile-name">
                                                        <div class="author-location"><a href="project-details.html">Host Technologies</a></div>
                                                    </div>
                                                    <div class="freelance-info">
                                                        <h3><a href="javascript:void(0);">SEO Developer</a></h3>
                                                        <div class="freelance-location"><i class="feather-map-pin me-1"></i>Texas, USA</div>
                                                    </div>
                                                    <div class="freelance-tags">
                                                        <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Web Design</span></a>
                                                        <a href="javascript:void(0);"><span class="badge badge-pill badge-design">UI Design</span></a>
                                                        <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Node Js</span></a>
                                                    </div>
                                                    <div class="freelancers-price">$50-$700</div>
                                                </div>
                                                <div class="counter-stats">
                                                    <ul>
                                                        <li>
                                                            <h5>Expiry</h5>
                                                            <h3 class="counter-value">6 Days Left</h3>
                                                        </li>
                                                        <li>
                                                            <h5>Proposals</h5>
                                                            <h3 class="counter-value">18</h3>
                                                        </li>
                                                        <li>
                                                            <h5>Job Type</h5>
                                                            <h3 class="counter-value"><span class="jobtype">Full Time</span></h3>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="cart-hover">
                                                <a href="project-details.html" class="btn-cart" tabindex="-1">View Profile</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-12 col-xl-4">
                                        <div class="freelance-widget widget-author">
                                            <div class="freelance-content">
                                                <div class="freelance-top-content d-flex">
                                                    <span> <i class="feather-clock me-1"></i>1 week ago</span>
                                                    <a href="javascript:void(0);" class="favourite color-active"><i class="feather-heart"></i></a>
                                                </div>
                                                <div class="author-heading">
                                                    <div class="profile-img">
                                                        <span class="project-verified"><i class="fas fa-check-circle"></i></span>
                                                        <a href="project-details.html">
                                                            <img src="assets/img/company/img-6.png" alt="author">
                                                        </a>
                                                    </div>
                                                    <div class="profile-name">
                                                        <div class="author-location"><a href="project-details.html">Alfred Tech</a> </div>
                                                    </div>
                                                    <div class="freelance-info">
                                                        <h3><a href="javascript:void(0);">SM Developer</a></h3>
                                                        <div class="freelance-location"><i class="feather-map-pin me-1"></i>Virginia, USA</div>
                                                    </div>
                                                    <div class="freelance-tags">
                                                        <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Web Design</span></a>
                                                        <a href="javascript:void(0);"><span class="badge badge-pill badge-design">UI Design</span></a>
                                                        <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Node Js</span></a>
                                                    </div>
                                                    <div class="freelancers-price">$42-$100</div>
                                                </div>
                                                <div class="counter-stats">
                                                    <ul>
                                                        <li>
                                                            <h5>Expiry</h5>
                                                            <h3 class="counter-value">2 Days Left</h3>
                                                        </li>
                                                        <li>
                                                            <h5>Proposals</h5>
                                                            <h3 class="counter-value">15</h3>
                                                        </li>
                                                        <li>
                                                            <h5>Job Type</h5>
                                                            <h3 class="counter-value"><span class="jobtype">Full Time</span></h3>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="cart-hover">
                                                <a href="project-details.html" class="btn-cart" tabindex="-1">View Profile</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-12 col-xl-4">
                                        <div class="freelance-widget widget-author">
                                            <div class="freelance-content">
                                                <div class="freelance-top-content d-flex">
                                                    <span> <i class="feather-clock me-1"></i>3 week ago</span>
                                                    <a href="javascript:void(0);" class="favourite color-active"><i class="feather-heart"></i></a>
                                                </div>
                                                <div class="author-heading">
                                                    <div class="profile-img">
                                                        <span class="project-verified"><i class="fas fa-check-circle"></i></span>
                                                        <a href="project-details.html">
                                                            <img src="assets/img/company/img-7.png" alt="author">
                                                        </a>
                                                    </div>
                                                    <div class="profile-name">
                                                        <div class="author-location"><a href="project-details.html">Kind Softwares</a> </div>
                                                    </div>
                                                    <div class="freelance-info">
                                                        <h3><a href="javascript:void(0);">Network Engineer</a></h3>
                                                        <div class="freelance-location"><i class="feather-map-pin me-1"></i>Delaware, USA</div>
                                                    </div>
                                                    <div class="freelance-tags">
                                                        <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Web Design</span></a>
                                                        <a href="javascript:void(0);"><span class="badge badge-pill badge-design">UI Design</span></a>
                                                        <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Node Js</span></a>
                                                    </div>
                                                    <div class="freelancers-price">$12-$320</div>
                                                </div>
                                                <div class="counter-stats">
                                                    <ul>
                                                        <li>
                                                            <h5>Expiry</h5>
                                                            <h3 class="counter-value">5 Days Left</h3>
                                                        </li>
                                                        <li>
                                                            <h5>Proposals</h5>
                                                            <h3 class="counter-value">24</h3>
                                                        </li>
                                                        <li>
                                                            <h5>Job Type</h5>
                                                            <h3 class="counter-value"><span class="jobtype">Full Time</span></h3>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="cart-hover">
                                                <a href="project-details.html" class="btn-cart" tabindex="-1">View Profile</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-12 col-xl-4">
                                        <div class="freelance-widget widget-author">
                                            <div class="freelance-content">
                                                <div class="freelance-top-content d-flex">
                                                    <span> <i class="feather-clock me-1"></i>1 month ago</span>
                                                    <a href="javascript:void(0);" class="favourite color-active"><i class="feather-heart"></i></a>
                                                </div>
                                                <div class="author-heading">
                                                    <div class="profile-img">
                                                        <span class="project-verified"><i class="fas fa-check-circle"></i></span>
                                                        <a href="project-details.html">
                                                            <img src="assets/img/company/img-8.png" alt="author">
                                                        </a>
                                                    </div>
                                                    <div class="profile-name">
                                                        <div class="author-location"><a href="project-details.html">Particles INC </a></div>
                                                    </div>
                                                    <div class="freelance-info">
                                                        <h3><a href="javascript:void(0);">Business Analyst</a></h3>
                                                        <div class="freelance-location"><i class="feather-map-pin me-1"></i>Kentucky, USA</div>
                                                    </div>
                                                    <div class="freelance-tags">
                                                        <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Web Design</span></a>
                                                        <a href="javascript:void(0);"><span class="badge badge-pill badge-design">UI Design</span></a>
                                                        <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Node Js</span></a>
                                                    </div>
                                                    <div class="freelancers-price">$35-$520</div>
                                                </div>
                                                <div class="counter-stats">
                                                    <ul>
                                                        <li>
                                                            <h5>Expiry</h5>
                                                            <h3 class="counter-value">4 Days Left</h3>
                                                        </li>
                                                        <li>
                                                            <h5>Proposals</h5>
                                                            <h3 class="counter-value">15</h3>
                                                        </li>
                                                        <li>
                                                            <h5>Job Type</h5>
                                                            <h3 class="counter-value"><span class="jobtype">Full Time</span></h3>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="cart-hover">
                                                <a href="project-details.html" class="btn-cart" tabindex="-1">View Profile</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-12 col-xl-4">
                                        <div class="freelance-widget widget-author">
                                            <div class="freelance-content">
                                                <div class="freelance-top-content d-flex">
                                                    <span> <i class="feather-clock me-1"></i>2 month ago</span>
                                                    <a href="javascript:void(0);" class="favourite color-active"><i class="feather-heart"></i></a>
                                                </div>
                                                <div class="author-heading">
                                                    <div class="profile-img">
                                                        <span class="project-verified"><i class="fas fa-check-circle"></i></span>
                                                        <a href="project-details.html">
                                                            <img src="assets/img/company/img-9.png" alt="author">
                                                        </a>
                                                    </div>
                                                    <div class="profile-name">
                                                        <div class="author-location"><a href="project-details.html">Soft Technologies</a> </div>
                                                    </div>
                                                    <div class="freelance-info">
                                                        <h3><a href="project-details.html">IT Project Manager</a></h3>
                                                        <div class="freelance-location"><i class="feather-map-pin me-1"></i>Kansas, USA</div>
                                                    </div>
                                                    <div class="freelance-tags">
                                                        <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Web Design</span></a>
                                                        <a href="javascript:void(0);"><span class="badge badge-pill badge-design">UI Design</span></a>
                                                        <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Node Js</span></a>
                                                    </div>
                                                    <div class="freelancers-price">$10-$300</div>
                                                </div>
                                                <div class="counter-stats">
                                                    <ul>
                                                        <li>
                                                            <h5>Expiry</h5>
                                                            <h3 class="counter-value">1 Days Left</h3>
                                                        </li>
                                                        <li>
                                                            <h5>Proposals</h5>
                                                            <h3 class="counter-value">12</h3>
                                                        </li>
                                                        <li>
                                                            <h5>Job Type</h5>
                                                            <h3 class="counter-value"><span class="jobtype">Full Time</span></h3>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="cart-hover">
                                                <a href="project-details.html" class="btn-cart" tabindex="-1">View Profile</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <ul class="paginations list-pagination">
                                            <li class="page-item"><a href="javascript:void(0);"><i class="feather-chevron-left"></i></a>
                                            </li>
                                            <li class="page-item"><a href="javascript:void(0);" class="active">1</a></li>
                                            <li class="page-item"><a href="javascript:void(0);">2</a></li>
                                            <li class="page-item"><a href="javascript:void(0);">3</a></li>
                                            <li class="page-item"><a href="javascript:void(0);">...</a></li>
                                            <li class="page-item"><a href="javascript:void(0);">10</a></li>
                                            <li class="page-item"><a href="javascript:void(0);"><i class="feather-chevron-right"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>


            <footer class="footer">
                <div class="footer-top">
                    <div class="container">
                        <div class="row">
                            <div class=" col-lg-4 col-md-12">
                                <div class="footer-bottom-logo">
                                    <a href="index.html" class="menu-logo">
                                        <img src="assets/img/logo.svg" class="img-fluid" alt="Logo">
                                    </a>
                                    <p>We’re always in search for talented and motivated people. Don’t be shy introduce yourself!</p>
                                    <ul>
                                        <li>
                                            <a href="javascript:void(0);"><i class="fa-brands fa-facebook-f" aria-hidden="true"></i></a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);"><i class="fa-brands fa-twitter" aria-hidden="true"></i></a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);"><i class="fa-brands fa-instagram" aria-hidden="true"></i></a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);"><i class="fa-brands fa-linkedin" aria-hidden="true"></i></a>
                                        </li>
                                    </ul>
                                    <a href="javascript:void(0);" class="btn btn-connectus">Contact with us</a>
                                </div>
                            </div>
                            <div class=" col-lg-8 col-md-12">
                                <div class="row">
                                    <div class="col-xl-3 col-md-6">
                                        <div class="footer-widget footer-menu">
                                            <h2 class="footer-title">Useful Links</h2>
                                            <ul>
                                                <li><a href="about.html"><i class="fas fa-angle-right me-1"></i>About Us</a></li>
                                                <li><a href="blog-list.html"><i class="fas fa-angle-right me-1"></i>Blog</a></li>
                                                <li><a href="login.html"><i class="fas fa-angle-right me-1"></i>Login</a></li>
                                                <li><a href="register.html"><i class="fas fa-angle-right me-1"></i>Register</a></li>
                                                <li><a href="forgot-password.html"><i class="fas fa-angle-right me-1"></i>Forgot Password</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-md-6">
                                        <div class="footer-widget footer-menu">
                                            <h2 class="footer-title">Help & Support</h2>
                                            <ul>
                                                <li><a href="javascript:void(0);"><i class="fas fa-angle-right me-1"></i>Browse Candidates</a></li>
                                                <li><a href="javascript:void(0);"><i class="fas fa-angle-right me-1"></i>Employers Dashboard</a></li>
                                                <li><a href="javascript:void(0);"><i class="fas fa-angle-right me-1"></i>Job Packages</a></li>
                                                <li><a href="javascript:void(0);"><i class="fas fa-angle-right me-1"></i>Jobs Featured</a></li>
                                                <li><a href="javascript:void(0);"><i class="fas fa-angle-right me-1"></i>Post A Job</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-md-6">
                                        <div class="footer-widget footer-menu">
                                            <h2 class="footer-title">Other Links</h2>
                                            <ul>
                                                <li><a href="freelancer-dashboard.html"><i class="fas fa-angle-right me-1"></i>Freelancers</a></li>
                                                <li><a href="freelancer-portfolio.html"><i class="fas fa-angle-right me-1"></i>Freelancer Details</a></li>
                                                <li><a href="project.html"><i class="fas fa-angle-right me-1"></i>Project</a></li>
                                                <li><a href="project-details.html"><i class="fas fa-angle-right me-1"></i>Project Details</a></li>
                                                <li><a href="post-project.html"><i class="fas fa-angle-right me-1"></i>Post Project</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-md-6">
                                        <div class="footer-widget footer-menu">
                                            <h2 class="footer-title">Connect With Us</h2>
                                            <ul>
                                                <li><a href="freelancer-chats.html"><i class="fas fa-angle-right me-1"></i>Chat</a></li>
                                                <li><a href="faq.html"><i class="fas fa-angle-right me-1"></i>Faq</a></li>
                                                <li><a href="freelancer-review.html"><i class="fas fa-angle-right me-1"></i>Reviews</a></li>
                                                <li><a href="privacy-policy.html"><i class="fas fa-angle-right me-1"></i>Privacy Policy</a></li>
                                                <li><a href="term-condition.html"><i class="fas fa-angle-right me-1"></i>Terms of use</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="footer-bottom">
                    <div class="container">

                        <div class="copyright">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="copyright-text text-center">
                                        <p class="mb-0">Copyright 2024 © KofeJob. All right reserved.</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </footer>

        </div>


        <div class="modal fade" id="bookmark">
            <div class="modal-dialog modal-dialog-centered modal-md">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">INVITE FREELANCER</h4>
                        <span class="modal-close"><a href="javascript:void(0);" data-bs-dismiss="modal" aria-label="Close"><i class="far fa-times-circle orange-text"></i></a></span>
                    </div>
                    <div class="modal-body">
                        <form action="#">
                            <div class="modal-info">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="average-bids">
                                            <p>Contact <span class="text-highlight">John Doe </span> about your Project</p>
                                        </div>
                                        <div class="input-block">
                                            <label class="form-label">Invite title</label>
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="input-block">
                                            <label class="form-label">Send a private message</label>
                                            <textarea class="form-control" rows="5">Hi  John Doe, I noticed your profile and would like to offer you my project. We can discuss any details over chat.</textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="input-block">
                                            <label class="form-label">Hire for</label>
                                            <div class="radio">
                                                <label class="custom_radio">
                                                    <input type="radio" value="fix" name="fix" checked>
                                                    <span class="checkmark"></span> Fixed Price
                                                </label>
                                                <label class="custom_radio">
                                                    <input type="radio" value="fix" name="fix">
                                                    <span class="checkmark"></span> Hourly Rate
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="input-block">
                                            <label class="form-label">Hire for</label>
                                            <div class="radio">
                                                <label class="custom_radio">
                                                    <input type="radio" value="fix" name="fix">
                                                    <span class="checkmark"></span> Fixed Price
                                                </label>
                                                <label class="custom_radio">
                                                    <input type="radio" value="fix" name="fix">
                                                    <span class="checkmark"></span> Hourly Rate
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="input-block">
                                            <label class="form-label">Budget</label>
                                            <div class="form-row">
                                                <div class="col-6">
                                                    <div class="input-group">
                                                        <div class="input-group-prepend bg-pink">
                                                            <span class="input-group-text" id="basic-add">$</span>
                                                        </div>
                                                        <input type="text" class="form-control" placeholder="20.00">
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <select class="form-control select">
                                                        <option value="0">USD</option>
                                                        <option value="0">USD</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="input-block">
                                            <label class="form-label">Budget</label>
                                            <div class="form-row">
                                                <div class="col-6">
                                                    <div class="input-group form-inline">
                                                        <div class="input-group-prepend bg-pink">
                                                            <span class="input-group-text" id="basic-addon">$</span>
                                                        </div>
                                                        <input type="text" class="form-control me-1" placeholder="20.00"> <label class="form-label">/ hr</label>
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <select class="form-control select">
                                                        <option value="0">USD</option>
                                                        <option value="0">USD</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="input-block">
                                            <label class="form-label">Project</label>
                                            <select class="form-control select">
                                                <option value="0">3D Renders and Amazon Product Store images/Video</option>
                                                <option value="0">3D Renders and Amazon Product Store Video</option>
                                                <option value="0">3D Renders and Amazon Product Store images</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="submit-section text-end">
                                <button type="submit" class="btn btn-primary submit-btn">Send Invite</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>


        <div class="modal fade" id="rating">
            <div class="modal-dialog modal-dialog-centered modal-md">
                <div class="modal-content">
                    <div class="modal-header d-block b-0 pb-0">
                        <span class="modal-close float-end"><a href="javascript:void(0);" data-bs-dismiss="modal" aria-label="Close"><i class="far fa-times-circle orange-text"></i></a></span>
                    </div>
                    <div class="modal-body">
                        <form action="https://kofejob.dreamstechnologies.com/html/template/project.html">
                            <div class="modal-info">
                                <div class="text-center pt-0 mb-5">
                                    <h3>Please login to Favourite Freelancers</h3>
                                </div>
                                <div class="submit-section text-center">
                                    <button data-bs-dismiss="modal" class="btn btn-primary black-btn click-btn">Cancel</button>
                                    <button type="submit" class="btn btn-primary click-btn">Submit</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>


        <script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-3.7.1.min.js" type="e07a54eb38ecbc80607f458c-text/javascript"></script>

        <script src="assets/js/bootstrap.bundle.min.js" type="e07a54eb38ecbc80607f458c-text/javascript"></script>

        <script src="assets/plugins/select2/js/select2.min.js" type="e07a54eb38ecbc80607f458c-text/javascript"></script>

        <script src="assets/plugins/datatables/jquery.dataTables.min.js" type="e07a54eb38ecbc80607f458c-text/javascript"></script>
        <script src="assets/plugins/datatables/datatables.min.js" type="e07a54eb38ecbc80607f458c-text/javascript"></script>

        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js" type="e07a54eb38ecbc80607f458c-text/javascript"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js" type="e07a54eb38ecbc80607f458c-text/javascript"></script>

        <script src="assets/js/script.js" type="e07a54eb38ecbc80607f458c-text/javascript"></script>
        <script src="../../cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="e07a54eb38ecbc80607f458c-|49" defer></script></body>

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/freelancer-favourites.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:34:46 GMT -->
</html>
