<%-- 
    Document   : ProfileSettingFreelancer
    Created on : Jun 2, 2024, 1:34:33 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/freelancer-profile-settings.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:34:49 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
        <title>KofeJob</title>

        <link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

        <link rel="stylesheet" href="assets/plugins/feather/feather.css">

        <link rel="stylesheet" href="assets/plugins/select2/css/select2.min.css">

        <link rel="stylesheet" href="assets/css/bootstrap-datetimepicker.min.css">

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
                                        <li><a href="freelancer-favourites.html">Favourites</a></li>
                                        <li><a href="freelancer-membership.html">Membership</a></li>
                                        <li><a href="freelancer-change-password.html">Change Password</a></li>
                                        <li><a href="freelancer-chats.html">Chats</a></li>
                                        <li><a href="freelancer-review.html">Review</a></li>
                                        <li><a href="freelancer-withdraw-money.html">Payments</a></li>
                                        <li><a href="freelancer-verify-identity.html">Verify Identity</a></li>
                                        <li class="active"><a href="freelancer-profile-settings.html">Settings</a></li>
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
                                                <p><span class="__cf_email__" data-cfemail="81e8efe7eec1e3f3f4e2e4e3f4f2e9afe2eeec">[email&#160;protected]</span></p>
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


            <div class="content content-page">
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
                                                <a href="freelancer-dashboard.html" class="nav-link ">
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
                                                <a href="freelancer-favourites.html" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-03.svg" alt="Img"> Favourites
                                                    <span class="menu-arrow"></span>
                                                </a>
                                                <ul class="sub-menu-ul">
                                                    <li>
                                                        <a href="freelancer-favourites.html">Bookmarked Projects</a>
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
                                                <a href="freelancer-payout.html" class="nav-link ">
                                                    <img src="assets/img/icon/sidebar-icon-08.svg" alt="Img"> Payout
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="freelancer-statement.html" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-09.svg" alt="Img"> Statement
                                                </a>
                                            </li>
                                            <li class="nav-item submenu">
                                                <a href="freelancer-profile-settings.html" class="nav-link active">
                                                    <img src="assets/img/icon/sidebar-icon-10.svg" alt="Img"> Settings
                                                    <span class="menu-arrow"></span>
                                                </a>
                                                <ul class="sub-menu-ul">
                                                    <li>
                                                        <a class="active" href="freelancer-profile-settings.html">Profile Setting</a>
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
                            <div class="pro-pos">
                                <div class="setting-content">
                                    <form action="https://kofejob.dreamstechnologies.com/html/template/freelancer-profile.html">
                                        <div class="card">
                                            <div class="pro-head">
                                                <h3>Profile Setting</h3>
                                            </div>
                                            <div class="pro-body">
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <div class="form-row pro-pad pt-0 ps-0">
                                                            <div class="input-block col-md-6 pro-pic">
                                                                <label class="form-label">Profile Picture</label>
                                                                <div class="d-flex align-items-center">
                                                                    <div class="upload-images freelancer-pic-box">
                                                                        <img src="assets/img/icon/user-img.svg" alt id="blah">
                                                                    </div>
                                                                    <div class="ms-3 freelancer-pic-upload">
                                                                        <label class="file-upload image-upbtn">
                                                                            Upload Image <input type="file" id="imgInp">
                                                                        </label>
                                                                        <p>Max Image size 300*300</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-12">
                                                        <div class="mb-3">
                                                            <label class="form-label">First Name</label>
                                                            <input type="text" class="form-control">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-12">
                                                        <div class="mb-3">
                                                            <label class="form-label">Last Name</label>
                                                            <input type="text" class="form-control">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-12">
                                                        <div class="mb-3">
                                                            <label class="form-label">Phone Number</label>
                                                            <input type="text" class="form-control">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-12">
                                                        <div class="mb-3">
                                                            <label class="form-label">Email Address</label>
                                                            <input type="text" class="form-control">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4 col-md-12">
                                                        <div class="mb-3">
                                                            <label class="form-label">Date of Birth</label>
                                                            <input type="text" class="form-control">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4 col-md-12">
                                                        <div class="mb-3">
                                                            <label class="form-label">Your Job Title</label>
                                                            <input type="text" class="form-control">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4 col-md-12">
                                                        <div class="mb-3">
                                                            <label class="form-label">Type of Job</label>
                                                            <input type="text" class="form-control">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="pro-head">
                                                <h4 class="pro-titles mb-0">Overview</h4>
                                            </div>
                                            <div class="pro-body">
                                                <div class="row">
                                                    <div class="input-block col-md-12">
                                                        <label class="form-label">Description</label>
                                                        <textarea class="form-control" rows="5"></textarea>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="col-lg-12 w-100">
                                                <div class="card flex-fill mb-3">
                                                    <div class="pro-head">
                                                        <h4 class="pro-titles mb-0">Skills</h4>
                                                    </div>
                                                    <div class="pro-body  skill-info">
                                                        <div class="form-row align-items-center skill-cont">
                                                            <div class="input-block col-md-6">
                                                                <input type="text" class="form-control" value="Front End Developer">
                                                            </div>
                                                            <div class="input-block col-md-5">
                                                                <select class="form-control select">
                                                                    <option value="0">Basic</option>
                                                                    <option value="1">Intermediate</option>
                                                                    <option value="2">Expert</option>
                                                                </select>
                                                            </div>
                                                            <div class="input-block col-md-1">
                                                                <a href="javascript:void(0);" class="btn trash-icon"><i class="far fa-trash-alt"></i></a>
                                                            </div>
                                                        </div>
                                                        <div class="form-row align-items-center skill-cont">
                                                            <div class="input-block col-md-6">
                                                                <input type="text" class="form-control" value="UI UX Designer">
                                                            </div>
                                                            <div class="input-block col-md-5">
                                                                <select class="form-control select">
                                                                    <option value="0">Advanced</option>
                                                                    <option value="1">Intermediate</option>
                                                                    <option value="2">Expert</option>
                                                                </select>
                                                            </div>
                                                            <div class="input-block col-md-1">
                                                                <a href="javascript:void(0);" class="btn trash-icon"><i class="far fa-trash-alt"></i></a>
                                                            </div>
                                                        </div>
                                                        <div class="form-row align-items-center skill-cont">
                                                            <div class="input-block col-md-6">
                                                                <input type="text" class="form-control" value="React Developer">
                                                            </div>
                                                            <div class="input-block col-md-5">
                                                                <select class="form-control select">
                                                                    <option value="1">Intermediate</option>
                                                                    <option value="0">Basic</option>
                                                                    <option value="2">Expert</option>
                                                                </select>
                                                            </div>
                                                            <div class="input-block col-md-1">
                                                                <a href="javascript:void(0);" class="btn trash-icon"><i class="far fa-trash-alt"></i></a>
                                                            </div>
                                                        </div>
                                                        <div class="form-row align-items-center skill-cont">
                                                            <div class="input-block col-md-6">
                                                                <input type="text" class="form-control" value="React Developer">
                                                            </div>
                                                            <div class="input-block col-md-5">
                                                                <select class="form-control select">
                                                                    <option value="1">Intermediate</option>
                                                                    <option value="0">Basic</option>
                                                                    <option value="2">Expert</option>
                                                                </select>
                                                            </div>
                                                            <div class="input-block col-md-1">
                                                                <a href="javascript:void(0);" class="btn fund-btn skill-add add-btn-profile"><i class="feather-plus"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 w-100">
                                                <div class="card flex-fill mb-3">
                                                    <div class="pro-head">
                                                        <h4 class="pro-titles without-border mb-0">Education</h4>
                                                    </div>
                                                    <div class="pro-body  ">
                                                        <div class="form-row align-items-center skill-cont">
                                                            <div class="input-block col-lg-3">
                                                                <label class="form-label">Degree Name</label>
                                                                <input type="text" class="form-control" value="BE CSE">
                                                            </div>
                                                            <div class="input-block col-lg-3">
                                                                <label class="form-label">University Name</label>
                                                                <input type="text" class="form-control" value="Brington">
                                                            </div>
                                                            <div class="col-md-3 input-block floating-icon">
                                                                <label class="form-label">Start Date</label>
                                                                <input type="text" class="form-control datetimepicker" placeholder="Choose">
                                                                <span><i class="feather-calendar"></i></span>
                                                            </div>
                                                            <div class="col-md-2 input-block floating-icon">
                                                                <label class="form-label">End Date</label>
                                                                <input type="text" class="form-control datetimepicker" placeholder="Choose">
                                                                <span><i class="feather-calendar"></i></span>
                                                            </div>
                                                            <div class="input-block col-lg-1 mb-0">
                                                                <a href="javascript:void(0);" class="btn trash-icon"><i class="far fa-trash-alt"></i></a>
                                                            </div>
                                                            <div id="education_add_row" class="w-100"></div>
                                                            <a href="javascript:void(0)" class="add-btn-form add-edu w-100 d-block text-end"><i class="feather-plus-circle me-2"></i>Add New</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 w-100">
                                                <div class="card flex-fill mb-3">
                                                    <div class="pro-head">
                                                        <h4 class="pro-titles without-border mb-0">Certification</h4>
                                                    </div>
                                                    <div class="pro-body  ">
                                                        <div class="form-row align-items-center skill-cont">
                                                            <div class="input-block col-lg-4">
                                                                <label class="form-label">Certification or Award</label>
                                                                <input type="text" class="form-control" value="Feast of UI">
                                                            </div>
                                                            <div class="input-block col-lg-4">
                                                                <label class="form-label">Certified from</label>
                                                                <input type="text" class="form-control" value="PSD Technologies">
                                                            </div>
                                                            <div class="col-lg-3 input-block floating-icon">
                                                                <label class="form-label">Year</label>
                                                                <input type="text" class="form-control datetimepicker" placeholder="Choose">
                                                                <span><i class="feather-calendar"></i></span>
                                                            </div>
                                                            <div class="input-block col-lg-1 mb-0">
                                                                <a href="javascript:void(0);" class="btn trash-icon"><i class="far fa-trash-alt"></i></a>
                                                            </div>
                                                            <div id="certi_add_row" class=" w-100"></div>
                                                            <a href="javascript:void(0)" class="add-btn-form add-certi w-100 d-block text-end"><i class="feather-plus-circle me-2"></i>Add New</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 w-100">
                                                <div class="card flex-fill mb-3">
                                                    <div class="pro-head">
                                                        <h4 class="pro-titles without-border mb-0">Experience</h4>
                                                    </div>
                                                    <div class="pro-body  ">
                                                        <div class="form-row align-items-center skill-cont">
                                                            <div class="input-block col-lg-3">
                                                                <label class="form-label">Company Name</label>
                                                                <input type="text" class="form-control">
                                                            </div>
                                                            <div class="input-block col-lg-3">
                                                                <label class="form-label">Position</label>
                                                                <input type="text" class="form-control">
                                                            </div>
                                                            <div class="col-md-3 input-block floating-icon">
                                                                <label class="form-label">Start Date</label>
                                                                <input type="text" class="form-control datetimepicker" placeholder="Choose">
                                                                <span><i class="feather-calendar"></i></span>
                                                            </div>
                                                            <div class="col-md-2 input-block floating-icon">
                                                                <label class="form-label">End Date</label>
                                                                <input type="text" class="form-control datetimepicker" placeholder="Choose">
                                                                <span><i class="feather-calendar"></i></span>
                                                            </div>
                                                            <div class="input-block col-lg-1 mb-0">
                                                                <a href="javascript:void(0);" class="btn trash-icon"><i class="far fa-trash-alt"></i></a>
                                                            </div>
                                                            <div id="exp_add_row" class=" w-100"></div>
                                                            <a href="javascript:void(0)" class="add-btn-form add-exp w-100 d-block text-end"><i class="feather-plus-circle me-2"></i>Add New</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 w-100">
                                                <div class="card flex-fill mb-3">
                                                    <div class="pro-head">
                                                        <h4 class="pro-titles mb-0">Language</h4>
                                                    </div>
                                                    <div class="pro-body  ">
                                                        <div class="form-row align-items-center skill-cont">
                                                            <div class="input-block col-md-6">
                                                                <label class="form-label">Language</label>
                                                                <input type="text" class="form-control">
                                                            </div>
                                                            <div class="input-block col-md-5">
                                                                <label class="form-label">Language Fluency</label>
                                                                <select class="form-control select">
                                                                    <option value="0">Select</option>
                                                                    <option value="1">Intermediate</option>
                                                                    <option value="2">Expert</option>
                                                                </select>
                                                            </div>
                                                            <div class="input-block col-md-1 mb-0">
                                                                <a href="javascript:void(0);" class="btn trash-icon"><i class="far fa-trash-alt"></i></a>
                                                            </div>
                                                        </div>
                                                        <div class="form-row align-items-center skill-cont">
                                                            <div class="input-block col-md-6">
                                                                <label class="form-label">Language</label>
                                                                <input type="text" class="form-control">
                                                            </div>
                                                            <div class="input-block col-md-5">
                                                                <label class="form-label">Language Fluency</label>
                                                                <select class="form-control select">
                                                                    <option value="0">Select</option>
                                                                    <option value="1">Intermediate</option>
                                                                    <option value="2">Expert</option>
                                                                </select>
                                                            </div>
                                                            <div class="input-block col-md-1 mb-0">
                                                                <a href="javascript:void(0);" class="btn trash-icon"><i class="far fa-trash-alt"></i></a>
                                                            </div>
                                                        </div>
                                                        <div class="form-row align-items-center skill-cont">
                                                            <div class="input-block col-md-6">
                                                                <label class="form-label">Language</label>
                                                                <input type="text" class="form-control">
                                                            </div>
                                                            <div class="input-block col-md-5">
                                                                <label class="form-label">Language Fluency</label>
                                                                <select class="form-control select">
                                                                    <option value="0">Select</option>
                                                                    <option value="1">Intermediate</option>
                                                                    <option value="2">Expert</option>
                                                                </select>
                                                            </div>
                                                            <div class="input-block col-md-1 mb-0">
                                                                <a href="javascript:void(0);" class="btn trash-icon"><i class="far fa-trash-alt"></i></a>
                                                            </div>
                                                        </div>
                                                        <div class="form-row align-items-center skill-cont">
                                                            <div class="input-block col-md-6">
                                                                <label class="form-label">Language</label>
                                                                <input type="text" class="form-control">
                                                            </div>
                                                            <div class="input-block col-md-5">
                                                                <label class="form-label">Language Fluency</label>
                                                                <select class="form-control select">
                                                                    <option value="0">Select</option>
                                                                    <option value="1">Intermediate</option>
                                                                    <option value="2">Expert</option>
                                                                </select>
                                                            </div>
                                                            <div class="input-block col-md-1 mb-0">
                                                                <a href="javascript:void(0)" class="btn fund-btn lang-add add-btn-profile mb-0"><i class="feather-plus"></i></a>
                                                            </div>
                                                            <div id="lang_add_row" class=" w-100"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 w-100">
                                                <div class="card flex-fill mb-3">
                                                    <div class="pro-head">
                                                        <h4 class="pro-titles mb-0">Social Media</h4>
                                                    </div>
                                                    <div class="pro-body  ">
                                                        <div class="form-row align-items-center skill-cont">
                                                            <div class="input-block col-lg-4">
                                                                <label class="form-label">Facebook</label>
                                                                <input type="text" class="form-control">
                                                            </div>
                                                            <div class="input-block col-lg-4">
                                                                <label class="form-label">Instagram </label>
                                                                <input type="text" class="form-control">
                                                            </div>
                                                            <div class="input-block col-lg-4">
                                                                <label class="form-label">LinkedIn</label>
                                                                <input type="text" class="form-control">
                                                            </div>
                                                            <div class="input-block col-lg-4">
                                                                <label class="form-label">Behance</label>
                                                                <input type="text" class="form-control">
                                                            </div>
                                                            <div class="input-block col-lg-4">
                                                                <label class="form-label">Pinterest </label>
                                                                <input type="text" class="form-control">
                                                            </div>
                                                            <div class="input-block col-lg-4">
                                                                <label class="form-label">Twitter</label>
                                                                <input type="text" class="form-control">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <div class="card flex-fill mb-3">
                                                    <div class="pro-head">
                                                        <h4 class="pro-titles mb-0">Personal Website</h4>
                                                    </div>
                                                    <div class="pro-body  ">
                                                        <div class="form-row align-items-center skill-cont">
                                                            <div class="input-block col-lg-12">
                                                                <label class="form-label">Website Url</label>
                                                                <input type="text" class="form-control">
                                                            </div>
                                                            <div class="input-block col-lg-3">
                                                                <label class="form-label">City</label>
                                                                <input type="text" class="form-control">
                                                            </div>
                                                            <div class="input-block col-lg-3">
                                                                <label class="form-label">State / Province</label>
                                                                <input type="text" class="form-control">
                                                            </div>
                                                            <div class="input-block col-lg-3">
                                                                <label class="form-label">ZIP / Post Code</label>
                                                                <input type="text" class="form-control">
                                                            </div>
                                                            <div class="input-block col-md-3">
                                                                <label class="form-label">Country</label>
                                                                <select class="form-control select">
                                                                    <option value="0">Select</option>
                                                                    <option value="1">USA</option>
                                                                    <option value="2">UK</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <h4 class="mb-3">Working Hours</h4>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="input-block d-flex">
                                                <div class="form-check form-switch d-inline-block work-check position-relative">
                                                    <input type="checkbox" class="form-check-input" id="check_hour" checked>
                                                </div>
                                                <label class="form-label ms-2">Same Every Day</label>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="checkout-hour" style>
                                                <div class="other-info-list">
                                                    <ul>
                                                        <li class="active-hour">Mon</li>
                                                        <li class="active-hour">Tue</li>
                                                        <li class="active-hour">Wed</li>
                                                        <li class="active-hour">Thr</li>
                                                        <li class="active-hour">Fri</li>
                                                        <li>Sat</li>
                                                        <li>Sun</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="check-hour" style="display: none;">
                                                <div class="col-md-12">
                                                    <h4>Select Days</h4>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="row align-items-center">
                                                            <div class="col-md-1">
                                                                <div class="other-info-list">
                                                                    <ul>
                                                                        <li class="active-hour m-0">Mon</li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-5">
                                                                <div class="input-block">
                                                                    <label class="form-label">Start Time </label>
                                                                    <input type="text" class="form-control" value="8:00">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-5">
                                                                <div class="input-block">
                                                                    <label class="form-label">End Time </label>
                                                                    <input type="text" class="form-control" value="20:00">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="row align-items-center">
                                                            <div class="col-md-1">
                                                                <div class="other-info-list">
                                                                    <ul>
                                                                        <li class="active-hour m-0">Tue</li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-5">
                                                                <div class="input-block">
                                                                    <label class="form-label">Start Time </label>
                                                                    <input type="text" class="form-control" value="8:00">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-5">
                                                                <div class="input-block">
                                                                    <label class="form-label">End Time </label>
                                                                    <input type="text" class="form-control" value="20:00">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="row align-items-center">
                                                            <div class="col-md-1">
                                                                <div class="other-info-list">
                                                                    <ul>
                                                                        <li class="active-hour m-0">Wed</li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-5">
                                                                <div class="input-block">
                                                                    <label class="form-label">Start Time </label>
                                                                    <input type="text" class="form-control" value="8:00">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-5">
                                                                <div class="input-block">
                                                                    <label class="form-label">End Time </label>
                                                                    <input type="text" class="form-control" value="20:00">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="row align-items-center">
                                                            <div class="col-md-1">
                                                                <div class="other-info-list">
                                                                    <ul>
                                                                        <li class="active-hour m-0">Thur</li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-5">
                                                                <div class="input-block">
                                                                    <label class="form-label">Start Time </label>
                                                                    <input type="text" class="form-control" value="8:00">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-5">
                                                                <div class="input-block">
                                                                    <label class="form-label">End Time </label>
                                                                    <input type="text" class="form-control" value="20:00">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="row align-items-center">
                                                            <div class="col-md-1">
                                                                <div class="other-info-list">
                                                                    <ul>
                                                                        <li class="active-hour m-0">Fri</li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-5">
                                                                <div class="input-block">
                                                                    <label class="form-label">Start Time </label>
                                                                    <input type="text" class="form-control" value="8:00">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-5">
                                                                <div class="input-block">
                                                                    <label class="form-label">End Time </label>
                                                                    <input type="text" class="form-control" value="20:00">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="row align-items-center">
                                                            <div class="col-md-1">
                                                                <div class="other-info-list">
                                                                    <ul>
                                                                        <li class="m-0">Fri</li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-5">
                                                                <div class="input-block">
                                                                    <label class="form-label">Start Time </label>
                                                                    <input type="text" class="form-control" value="8:00">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-5">
                                                                <div class="input-block">
                                                                    <label class="form-label">End Time </label>
                                                                    <input type="text" class="form-control" value="20:00">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="row align-items-center">
                                                            <div class="col-md-1">
                                                                <div class="other-info-list">
                                                                    <ul>
                                                                        <li class="m-0">Sun</li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-5">
                                                                <div class="input-block">
                                                                    <label class="form-label">Start Time </label>
                                                                    <input type="text" class="form-control" value="8:00">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-5">
                                                                <div class="input-block">
                                                                    <label class="form-label">End Time </label>
                                                                    <input type="text" class="form-control" value="20:00">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card text-end border-0">
                                            <div class="pro-body">
                                                <button class="btn btn-secondary click-btn btn-plan">Cancel</button>
                                                <button class="btn btn-primary click-btn btn-plan" type="submit">Update</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <footer class="footer">
                <div class="footer-top ">
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


        <script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-3.7.1.min.js" type="4558dd39f62761c94e962170-text/javascript"></script>

        <script src="assets/js/bootstrap.bundle.min.js" type="4558dd39f62761c94e962170-text/javascript"></script>

        <script src="assets/plugins/select2/js/select2.min.js" type="4558dd39f62761c94e962170-text/javascript"></script>

        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js" type="4558dd39f62761c94e962170-text/javascript"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js" type="4558dd39f62761c94e962170-text/javascript"></script>

        <script src="assets/js/moment.min.js" type="4558dd39f62761c94e962170-text/javascript"></script>
        <script src="assets/js/bootstrap-datetimepicker.min.js" type="4558dd39f62761c94e962170-text/javascript"></script>

        <script src="assets/js/profile-settings.js" type="4558dd39f62761c94e962170-text/javascript"></script>

        <script src="assets/js/script.js" type="4558dd39f62761c94e962170-text/javascript"></script>
        <script src="assets/cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="4558dd39f62761c94e962170-|49" defer></script></body>

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/freelancer-profile-settings.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:34:50 GMT -->
</html>