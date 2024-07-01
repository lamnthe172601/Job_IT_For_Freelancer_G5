<%-- 
    Document   : dashboard
    Created on : Jun 8, 2024, 11:05:23 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/milestones.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:32:13 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
        <title>KofeJob</title>

        <link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

        <link rel="stylesheet" href="assets/plugins/feather/feather.css">

        <link rel="stylesheet" href="assets/css/bootstrap-datetimepicker.min.css">

        <link rel="stylesheet" href="assets/plugins/summernote/dist/summernote-lite.css">

        <link rel="stylesheet" href="assets/plugins/datatables/datatables.min.css">

        <link rel="stylesheet" href="assets/plugins/select2/css/select2.min.css">

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
                            <ul class="main-nav">
                                <li class="active has-submenu">
                                    <a href="home">Home <i class="fas "></i></a>

                                </li>

                                <c:if test="${sessionScope.account.roleID.getRoleID() == 3 || sessionScope.account.roleID.getRoleID() == null}">
                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">For Freelancer<i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu"> 

                                            <li><a href="PostFavourites">Jobs Favourites</a></li>

                                            <li><a href="jobsApply">Jobs Apply</a></li>
                                            <li><a href="jobforyou">Jobs For you</a></li>
                                        </ul>
                                    </li>

                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">For Jobs<i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">

                                            <li><a href="ListPost">Jobs List</a></li>                                        
                                            <li><a href="SreachJob">Find Jobs</a></li>  
                                            <li><a href="company">Company</a></li>
                                        </ul>
                                    </li>
                                </c:if>
                                <c:if test="${sessionScope.account.roleID.getRoleID() == 4}">
                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">Find Freelancer<i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">

                                            <li><a href="jobsList">Top Freelancer</a></li>
                                            <li><a href="newsJobs">Skills</a></li>

                                        </ul>
                                    </li>
                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">My Post<i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">

                                            <li><a href="myListJobProject">My List Post</a></li>
                                            <li><a href="newsJobs">Reviews</a></li>

                                        </ul>
                                    </li>
                                </c:if>
                                <li class="has-submenu">
                                    <a href="javascript:void(0);">About<i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">                                                                           
                                        <li><a href="About">About us</a></li>
                                        <li><a href="ContactUs">Contact us</a></li>
                                    </ul>
                                </li>
                                <li class="has-submenu"> <li><a href="blogGrid">Blog</a></li></li>


                            </ul>
                        </div>
                        <ul class="nav header-navbar-rht">

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
                                                <a href="notification">
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
                                                <a href="notification">
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
                                        <a href="notification">View All Notification</a>
                                    </div>
                                </div>
                            </li>
                            <li><a href="CreatePost" class="login-btn">Post a Project <i class="feather-plus ms-1"></i></a></li>
                            <li class="nav-item dropdown account-item">
                                <a href="javascript:void(0);" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
                                    <span class="user-img">
                                        <img src="${recruiter.image}" alt="Img">
                                    </span>
                                    <span>${recruiter.fullName()}</span>
                                </a>
                                <div class="dropdown-menu emp">
                                    <div class="drop-head">
                                        <a href="javascript:void(0);" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
                                            <span class="user-img">
                                                <img src="${recruiter.image}" alt="Img">
                                            </span>
                                            <div>
                                                <span>${recruiter.fullName()}</span>
                                                <p><span  data-cfemail="81e8efe7eec1e3f3f4e2e4e3f4f2e9afe2eeec">@${sessionScope.account.username}</span></p>
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


            <div class="content">
                <div class="container">
                    <div class="row">

                        <div class="col-xl-3 col-lg-4 theiaStickySidebar">
                            <div class="settings-widget">
                                <div class="settings-header d-sm-flex flex-row flex-wrap text-center text-sm-start align-items-center">
                                    <a href="freelancer-profile.html"><img alt="profile image" src="${recruiter.image}" class="avatar-lg rounded-circle"></a>
                                    <div class="ms-sm-3 ms-md-0 ms-lg-3 mt-2 mt-sm-0 mt-md-2 mt-lg-0">
                                        <h3 class="mb-0"><a href="profile-settings.html">${recruiter.fullName()}</a><img src="assets/img/icon/verified-badge.svg" class="ms-1" alt="Img"></h3>
                                        <p class="mb-0">@${sessionScope.account.username}</p>
                                    </div>
                                </div>
                                <div class="settings-menu">
                                    <div id="sidebar-menu" class="sidebar-menu">
                                        <ul>
                                            <li class="nav-item">
                                                <a href="Dashboard" class="nav-link ">
                                                    <img src="assets/img/icon/sidebar-icon-01.svg" alt="Img"> Dashboard
                                                </a>
                                            </li>
                                            <li class="nav-item submenu active">
                                                <a href="manageJobsPosts" class="nav-link ">
                                                    <img src="assets/img/icon/sidebar-icon-02.svg" alt="Img"> Projects
                                                    <span class="menu-arrow"></span>
                                                </a>
                                                <ul class="sub-menu-ul">
                                                    <li>
                                                        <a href="manageJobsPosts" class="active">Manage jobs</a>
                                                    </li>
                                                    <li>
                                                        <a href="ManageApplication">All applicants</a>
                                                    </li>
                                                    <li>
                                                        <a href="CompletedProjects">Completed Projects</a>
                                                    </li>
                                                    <li>
                                                        <a href="ExpiredProjects">Expired Projects</a>
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
                                                        <a href="favourites.html">Bookmarked Projects</a>
                                                    </li>
                                                    <li>
                                                        <a href="invited-favourites.html">Invitations</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="nav-item">
                                                <a href="review.html" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-04.svg" alt="Img"> Reviews
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="chats.html" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-06.svg" alt="Img"> Chat
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="deposit-funds.html" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-07.svg" alt="Img"> Payments
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="javascript:void(0);" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-10.svg" alt="Img"> Settings
                                                    <span class="menu-arrow"></span>
                                                </a>
                                                <ul class="sub-menu-ul">
                                                    <li>
                                                        <a href="profile-settings.html">Profile</a>
                                                    </li>
                                                    <li>
                                                        <a href="membership-plans.html">Plan & Billing</a>
                                                    </li>
                                                    <li>
                                                        <a href="verify-identity.html">Verify Identity</a>
                                                    </li>
                                                    <li>
                                                        <a href="change-password.html">Change Password</a>
                                                    </li>
                                                    <li>
                                                        <a href="delete-account.html">Delete Account</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="nav-item">
                                                <a href="logout" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-11.svg" alt="Img"> Logout
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-9 col-lg-8">

                            <nav class="user-tabs mb-4">
                                <ul class="nav nav-tabs nav-tabs-bottom nav-justified">

                                    <li class="nav-item">
                                        <a class="active nav-link" href="manageJobsPosts">Manage jobs</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link " href="ManageApplication">All applicants</a>
                                    </li>

                                    <li class="nav-item">
                                        <a class="nav-link " href="CompletedProjects">Completed Projects</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="ExpiredProjects">Expired Projects</a>
                                    </li>
                                </ul>
                            </nav>

                            <div class="my-projects-view">
                                <div class="row">
                                    <div class="col-lg-12">

                                        <div class="table-responsive table-box manage-projects-table">
                                            <table class="table table-center table-hover datatable no-sort">
                                                <thead class="thead-pink">
                                                    <tr>                                         
                                                        <th style="text-align: center;">Action</th>                                                       
                                                        <th>TITLE</th>
                                                        <th>APPLICANTS</th>
                                                        <th>POSTED</th>
                                                        <th>EXPIRED</th>
                                                        <th>STATUS</th>
                                                        <th>kkk</th>                                                        
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach items="${listpost}" var="list">
                                                        <tr>
                                                            
                                                            <td class="three-dots">
                                                                <div class="action-table-data">
                                                                    <div class="edit-delete-action">
                                                                        <a href="#edit-milestone${list.postID}" class="me-2" data-bs-toggle="modal"><i class="feather-edit-2"></i></a>
                                                                    </div>
                                                                    <input type="hidden" class="user-id" id="${list.postID}">
                                                                    <a href="javascript:void(0);" class=" nav-link three-dot " data-bs-toggle="dropdown"><i class="fas fa-ellipsis-v" ></i></a>
                                                                    <div class="dropdown-menu user-menu-list typeChange">                                                                      
                                                                        <c:if test='${list.status == 1}'>
                                                                            <a class="dropdown-item typeChange btn btn-sm" data-bs-toggle="modal" data-bs-target="#Suspend_user">
                                                                                <img class="me-2" src="adminAssets/img/icon/icon-04.svg" alt="Img"> Reject Post
                                                                            </a>
                                                                            
                                                                        </c:if>
                                                                        <c:if test='${list.status == 0}'>
                                                                            <a class="dropdown-item typeChange btn btn-sm" data-bs-toggle="modal" data-bs-target="#Activate_user">
                                                                                <img class="me-2" src="adminAssets/img/icon/icon-04.svg" alt="Img"> Ongoing Post
                                                                            </a>
                                                                        </c:if>
                                                                        <c:if test='${list.status == 3}'>
                                                                            <a class="dropdown-item typeChange btn btn-sm" data-bs-toggle="modal" data-bs-target="#Activate_user">
                                                                                <img class="me-2" src="adminAssets/img/icon/icon-04.svg" alt="Img"> Ongoing Post
                                                                            </a>
                                                                        </c:if>
                                                                        <c:if test='${list.status == 2}'>
                                                                            <a class="dropdown-item typeChange btn btn-sm" data-bs-toggle="modal" data-bs-target="#Activate_user">
                                                                                <img class="me-2" src="adminAssets/img/icon/icon-04.svg" alt="Img"> Ongoing Post
                                                                            </a>
                                                                        </c:if>
                                                              
                                                                    </div>



                                                                    <div class="modal custom-modal fade" id="Suspend_user" role="dialog">
                                                                        <div class="modal-dialog modal-dialog-centered">
                                                                            <div class="modal-content">
                                                                                <div class="modal-body">
                                                                                    <div class="form-header">
                                                                                        <input type="hidden" class="user-id1" id="${list.postID}">
                                                                                        <h3>Status</h3>
                                                                                        <p>Are you sure want to Reject post?</p>
                                                                                    </div>
                                                                                    <div class="modal-btn Suspend-action" >
                                                                                        <div class="row">
                                                                                            <div class="col-6">
                                                                                                <a href="javascript:void(0);" class="user-suspend-link btn btn-primary change-status-btn" > Reject Post</a>
                                                                                            </div>
                                                                                            <div class="col-6">
                                                                                                <a href="javascript:void(0);" data-bs-dismiss="modal" class="btn btn-primary cancel-btn">Cancel</a>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>       

                                                                    <div class="modal custom-modal fade" id="Activate_user" role="dialog">
                                                                        <div class="modal-dialog modal-dialog-centered">
                                                                            <div class="modal-content">
                                                                                <div class="modal-body">
                                                                                    <div class="form-header">
                                                                                        <input type="hidden" class="user-id1" id="${lisd.postID}">
                                                                                        <h3>Status</h3>
                                                                                        <p>Are you sure want to Ongoing post?</p>
                                                                                    </div>
                                                                                    <div class="modal-btn Activate-action">
                                                                                        <div class="row">
                                                                                            <div class="col-6">
                                                                                                <a href="javascript:void(0);" class="user-activate-link btn btn-primary change-status-btn" >Ongoing Post</a>
                                                                                            </div>
                                                                                            <div class="col-6">
                                                                                                <a href="javascript:void(0);" data-bs-dismiss="modal" class="btn btn-primary cancel-btn">Cancel</a>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>                    

                                                                    <div class="modal fade edit-proposal-modal" id="edit-milestone${list.postID}">
                                                                        <div class="modal-dialog modal-dialog-centered modal-md">
                                                                            <div class="modal-content">
                                                                                <div class="modal-header">
                                                                                    <h4 class="modal-title">Edit Post a new Jobs</h4>
                                                                                    <span class="modal-close"><a href="javascript:void(0);" data-bs-dismiss="modal" aria-label="Close"><i class="feather-x"></i></a></span>
                                                                                </div>
                                                                                <div class="modal-body">
                                                                                    <form action="manageJobsPosts" method="post" enctype="multipart/form-data" id="jobsForm">
                                                                                        <div class="modal-info">
                                                                                            <div class="row">
                                                                                                <div hidden class="col-lg-6">
                                                                                                    <div class="input-block">
                                                                                                        <label class="form-label">Project ID</label>
                                                                                                        <input type="text" name="postID" class="form-control" value="${list.postID}">
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="col-lg-6">
                                                                                                    <div class="input-block">
                                                                                                        <label class="form-label">Project Title</label>
                                                                                                        <input type="text" name="title" class="form-control" value="${list.title}">
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class=" col-lg-6  d-flex align-items-center">
                                                                                                    <div class="upload-images freelancer-pic-box">
                                                                                                        <img style="width: 80px; height: 80px;" src="${list.image}" alt id="blah">
                                                                                                    </div>
                                                                                                    <div class="ms-3 freelancer-pic-upload">
                                                                                                        <label class="image-upbtn">
                                                                                                            Upload Image <input type="file" id="imgInp" name="profileImage">
                                                                                                        </label>
                                                                                                        <p>Max Image size 300*300</p>
                                                                                                    </div>
                                                                                                </div>
                                                                                                    <div style="margin-top: 30px" class="col-lg-4">
                                                                                                    <div class="input-block">
                                                                                                        <label class="focus-label">Level</label>
                                                                                                        <select name="jobsType" class="form-control select">
                                                                                                            <c:forEach items="${alljobtype}" var="jobtype">
                                                                                                                <option value="${jobtype.jobTypeID}" <c:if test="${jobtype.jobTypeID == list.jobTypeID.jobTypeID}">selected=""</c:if>>${jobtype.jobName}</option>
                                                                                                            </c:forEach>
                                                                                                        </select>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div style="margin-top: 30px" class="col-lg-4">
                                                                                                    <div class="input-block">
                                                                                                        <label class="focus-label">Work Time</label>
                                                                                                        <select name="Duration" class="form-control select">
                                                                                                            <c:forEach items="${allDuration}" var="allDuration">
                                                                                                                <option value="${allDuration.durationID}" <c:if test="${allDuration.durationID == list.durationID.durationID}">selected=""</c:if>>${allDuration.durationName}</option>
                                                                                                            </c:forEach>
                                                                                                        </select>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="col-lg-4">
                                                                                                    <div class="input-block">
                                                                                                        <div class="mb-3">
                                                                                                            <label class="focus-label">Target</label>
                                                                                                            <input value="${list.quantity}" type="text" class="form-control" name="target">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="col-lg-8">
                                                                                                    <div class="input-block">
                                                                                                        <div class="mb-3">
                                                                                                            <label class="focus-label">Location</label>
                                                                                                            <input value="${list.location}" type="text" class="form-control" name="Location">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="col-lg-3 ">
                                                                                                    <div class="input-block mb-3">
                                                                                                        <label class="focus-label">From($)/hours</label>
                                                                                                        <input type="text" class="form-control" name="budgetFrom" value="${list.budget}">
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="col-lg-4 col-md-12">
                                                                                                    <div class="mb-3">
                                                                                                        <label class="focus-label">Skill</label>
                                                                                                        <div class="title-content p-0">
                                                                                                            <div class="title-detail">
                                                                                                                <c:forEach items="${ExpertiseSkill}" var="du">
                                                                                                                    <div class="expertise-group">
                                                                                                                        <h3>
                                                                                                                            <input type="checkbox" id="expertise-${du.expertiseName}" class="form-check-input expertise-checkbox">
                                                                                                                            <label class="form-check-label" for="expertise-${du.expertiseName}">${du.expertiseName}</label>
                                                                                                                        </h3>
                                                                                                                        <div class="d-flex flex-wrap skill-checkboxes d-none">
                                                                                                                            <c:forEach items="${du.getAllExpertiseSkillSet()}" var="i">
                                                                                                                                <div class="form-check me-3 mb-2">
                                                                                                                                    <input class="form-check-input" type="checkbox" id="skill-${i.skillSetID.skill_set_ID}" name="skill" value="${i.skillSetID.skill_set_name}" ${fn:contains(list.skill, i.skillSetID.skill_set_name) ? 'checked' : ''}>
                                                                                                                                    <label class="form-check-label" for="skill-${i.skillSetID.skill_set_ID}">
                                                                                                                                        ${i.skillSetID.skill_set_name}
                                                                                                                                    </label>
                                                                                                                                </div>
                                                                                                                            </c:forEach>
                                                                                                                        </div>
                                                                                                                    </div>
                                                                                                                </c:forEach>
                                                                                                                
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>

                                                                                                <div class="col-lg-4">
                                                                                                    <div class="input-block">
                                                                                                        <label class="focus-label">Position</label>
                                                                                                        <select class="form-control select" name="Categories">
                                                                                                            <c:forEach items="${allCate}" var="allcate">
                                                                                                                <option value="${allcate.caID}" <c:if test="${allcate.caID == list.caID.caID}">selected=""</c:if>>${allcate.categoriesName}</option>
                                                                                                            </c:forEach>
                                                                                                        </select>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="col-lg-12">
                                                                                                    <div class="input-block">
                                                                                                        <label class="form-label">Description</label>
                                                                                                        <textarea name="description" class="form-control summernote">${list.description}</textarea>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="submit-section text-end">
                                                                                            <a href="javascript:void(0);" data-bs-dismiss="modal" aria-label="Close" class="btn btn-cancel">Cancel</a>
                                                                                            <button type="submit" class="btn btn-primary submit-btn">Update</button>
                                                                                        </div>
                                                                                    </form>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                            </td>

                                                            <td class="titleList">
                                                                <div class="title">${list.title}</div>
                                                            </td>
                                                            <td class="APPLICANTS">                      
                                                                
                                                                <div class="APPLICANTS">${list.cout()}/${list.quantity}</div>
                                                                
                                                            </td>
                                                            <td> 
                                                                <div class="datePost">${list.datePost}</div>
                                                            </td>
                                                            <td> 
                                                                <div class="datePost">${list.expired}</div>
                                                            </td>      
                                                            <td class="StatusList">
                                                                <span class="badge status ${
                                                                      list.status == 0 ? 'badge-pill bg-warning-light' :
                                                                          list.status == 1 ? 'badge-pill bg-success-light' :
                                                                          list.status == 2 ? 'badge-pill bg-purple-light' :
                                                                          list.status == 3 ? 'badge-pill bg-warning-light' : ''
                                                                      }">
                                                                    ${
                                                                    list.status == 0 ? 'Delete' :
                                                                        list.status == 1 ? 'On-going' :
                                                                        list.status == 2 ? 'Completed' :
                                                                        list.status == 3 ? 'Expired' : ''
                                                                    }
                                                                </span>
                                                            </td>                                                     
                                                            <td class="CheckingList">
                                                                <span class="badge checked  badge-pill ${list.checking == 0 ? 'bg-warning-light' : (list.checking == 1 ? 'bg-success-light' : 'bg-warning-light')}">
                                                                    ${list.checking == 0 ? 'Pending' : (list.checking == 1 ? 'Approve' : 'Suspended')}
                                                                </span>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
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

        <script>
            document.addEventListener('DOMContentLoaded', function () {
                var expertiseCheckboxes = document.querySelectorAll('.expertise-checkbox');

                expertiseCheckboxes.forEach(function (checkbox) {
                    checkbox.addEventListener('change', function () {
                        var skillCheckboxes = this.closest('.expertise-group').querySelector('.skill-checkboxes');
                        if (this.checked) {
                            skillCheckboxes.classList.remove('d-none');
                            skillCheckboxes.classList.add('d-flex');
                        } else {
                            skillCheckboxes.classList.remove('d-flex');
                            skillCheckboxes.classList.add('d-none');
                        }
                    });
                });
            });
        </script>   

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
            $(document).ready(function () {
                $('.typeChange').on('click', function (e) {
                    e.preventDefault(); // Ngăn chặn hành vi mặc định của liên kết

                    var postID = $(this).closest('tr').find('.user-id').attr('id');
                    var action = $(this).text().trim().toLowerCase();
                    console.log(postID);
                    console.log(action);
                    if (action === "reject post") {
                        // Hiển thị popup xác nhận suspend user
                        $('#Suspend_user').find('.user-id1').val(postID);
                        $('#Suspend_user').modal('show');
                    } else if (action === "ongoing post") {
                        // Hiển thị popup xác nhận activate user
                        $('#Activate_user').find('.user-id1').val(postID);
                        $('#Activate_user').modal('show');
                    }
                });

                $('.user-suspend-link').on('click', function () {
                    var postID = $(this).closest('.modal-body').find('.user-id1').val();
                    console.log(postID);
                    suspendUser(postID);

                });

                $('.user-activate-link').on('click', function () {
                    var postID = $(this).closest('.modal-body').find('.user-id1').val();
                    console.log(postID);
                    activateUser(postID);
                });
            });

            function suspendUser(postID) {
                $.ajax({
                    url: '/Job_IT_For_Freelancer_G5/ChangeStatusPost', // URL của servlet xử lý suspend user
                    type: 'POST',
                    data: {postID: postID, type: "reject"},
                    success: function (response) {
                        // Xử lý khi suspend user thành công
                        var statusCell = $('.user-id#' + postID).closest('tr').find('.StatusList');
                        statusCell.html('<span class="badge status badge-pill bg-danger-light">Reject</span>');

                        var threeDotCell = $('.user-id#' + postID).closest('tr').find('.three-dots');
                        threeDotCell.find('.typeChange').html('<a class="dropdown-item typeChange" data-bs-toggle="modal" data-bs-target="#Activate_user"><img class="me-2" src="adminAssets/img/icon/icon-04.svg" alt="Img">Ongoing Post</a>');

                        $('#Suspend_user').modal('hide');
                        showSuccessNotification('Suspend user successfully!');
                    },
                    error: function (xhr, status, error) {
                        // Xử lý khi có lỗi xảy ra
                        console.error(error);
                    }
                });
            }

            function activateUser(postID) {
                $.ajax({
                    url: '/Job_IT_For_Freelancer_G5/ChangeStatusPost', // URL của servlet xử lý activate user
                    type: 'POST',
                    data: {postID: postID, type: "ongoing"},
                    success: function (response) {
                        // Xử lý khi activate user thành công
                        var statusCell = $('.user-id#' + postID).closest('tr').find('.StatusList');
                        statusCell.html('<span class="badge status badge-pill bg-success-light">On going</span>');

                        var threeDotCell = $('.user-id#' + postID).closest('tr').find('.three-dots');
                        threeDotCell.find('.typeChange').html('<a class="dropdown-item typeChange" data-bs-toggle="modal" data-bs-target="#Suspend_user"><img class="me-2" src="adminAssets/img/icon/icon-04.svg" alt="Img"> Reject Post</a>');

                        $('#Activate_user').modal('hide');
                        showSuccessNotification('Activate user successfully!');
                    },
                    error: function (xhr, status, error) {

                        console.error(error);
                    }
                });
            }
        </script>


        <script>
// Hàm cắt ngắn chuỗi chỉ lấy 3 từ đầu tiên rồi thêm dấu ba chấm
            function shortenTitle(title) {
                // Tách chuỗi thành các từ
                const words = title.split(' ');

                // Kiểm tra nếu số lượng từ lớn hơn 3 thì cắt ngắn và thêm dấu ba chấm
                if (words.length > 2) {
                    return words.slice(0, 2).join(' ') + '...';
                } else {
                    return title; // Trường hợp chuỗi có ít hơn hoặc bằng 3 từ
                }
            }

// Lấy tất cả các phần tử có class 'title' và áp dụng hàm cắt ngắn
            document.addEventListener('DOMContentLoaded', function () {
                document.querySelectorAll('.title').forEach(function (element) {
                    const originalTitle = element.textContent;
                    const shortenedTitle = shortenTitle(originalTitle);
                    element.textContent = shortenedTitle;
                });
            });
        </script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="adminAssets/js/notification.js"></script>
        <script data-cfasync="false" src="assets/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-3.7.1.min.js" type="b9b8f1fa285a150b1a70a944-text/javascript"></script>

        <script src="assets/js/bootstrap.bundle.min.js" type="b9b8f1fa285a150b1a70a944-text/javascript"></script>

        <script src="assets/plugins/select2/js/select2.min.js" type="b9b8f1fa285a150b1a70a944-text/javascript"></script>

        <script src="assets/js/moment.min.js" type="b9b8f1fa285a150b1a70a944-text/javascript"></script>
        <script src="assets/js/bootstrap-datetimepicker.min.js" type="b9b8f1fa285a150b1a70a944-text/javascript"></script>

        <script src="assets/plugins/datatables/jquery.dataTables.min.js" type="b9b8f1fa285a150b1a70a944-text/javascript"></script>
        <script src="assets/plugins/datatables/datatables.min.js" type="b9b8f1fa285a150b1a70a944-text/javascript"></script>

        <script src="assets/plugins/summernote/dist/summernote-lite.min.js" type="b9b8f1fa285a150b1a70a944-text/javascript"></script>

        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js" type="b9b8f1fa285a150b1a70a944-text/javascript"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js" type="b9b8f1fa285a150b1a70a944-text/javascript"></script>

        <script src="assets/js/script.js" type="b9b8f1fa285a150b1a70a944-text/javascript"></script>
        <script src="assets/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="b9b8f1fa285a150b1a70a944-|49" defer></script></body>

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/milestones.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:32:21 GMT -->
</html>
