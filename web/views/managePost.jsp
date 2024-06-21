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

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/dashboard.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:30:15 GMT -->
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

        <link rel="stylesheet" href="assets/css/style.css">



        <style>

            .filter-section {
                background-color: #fff;
                border: 1px solid #e0e0e0;
                border-radius: 4px;
                padding: 20px;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.08);
            }

            .description::after {
                content: '...';
            }
            .dataTables_wrapper .dataTables_paginate .paginate_button {
                padding: 2px 6px; /* Giảm kích thước padding để nút nhỏ lại */
                margin-left: 2px;
                margin-right: 2px;
                font-size: 12px;
                color: #333;
                background-color: #fff;
                border: 1px solid #ddd;
                border-radius: 3px;
                cursor: pointer;
            }

            /* Tùy chỉnh nút được chọn */
            .dataTables_wrapper .dataTables_paginate .paginate_button.current,
            .dataTables_wrapper .dataTables_paginate .paginate_button.current:hover {
                background-color: orange;
                color: white !important;
                border: 1px solid orange;
            }

            /* Thay đổi màu nút khi hover */
            .dataTables_wrapper .dataTables_paginate .paginate_button:hover {
                background-color: orange;
                color: white;
                border: 1px solid orange;
            }

            /* Đảm bảo chiều cao cố định cho bảng và phần phân trang */
            .dataTables_wrapper {
                display: flex;
                flex-direction: column;
                justify-content: space-between;
                min-height: 500px; /* Đặt chiều cao tối thiểu phù hợp với nội dung của bạn */
            }

            .dataTables_wrapper .dataTables_info {
                order: 2;
                text-align: center;
                margin-top: 10px;
            }

            .dataTables_wrapper .dataTables_paginate {
                order: 1;
                margin-bottom: 10px;
            }


            .skill-container {
                display: flex;
                flex-wrap: wrap;
            }

            .skill {
                margin-right: 10px; /* Khoảng cách giữa các kỹ năng */
                padding: 5px 10px;
                background-color: #f1f1f1;
                border-radius: 3px;
            }


        </style>

        <!-- DataTables CSS -->
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css">

        <!-- jQuery -->
        <script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.5.1.js"></script>

        <!-- DataTables JS -->
        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.js"></script>

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


            <div class="content content-page">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-3 col-lg-4 theiaStickySidebar">
                            <div class="settings-widget">
                                <div class="settings-header d-sm-flex flex-row flex-wrap text-center text-sm-start align-items-center">
                                    <a href="freelancer-profile.html"><img alt="profile image" src="assets/img/user/table-avatar-03.jpg" class="avatar-lg rounded-circle"></a>
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
                                        <a class="nav-link active" href="manageJobsPosts">Manage jobs</a>
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



                            <div class="page-header user-active">
                                <div class="row align-items-center">
                                    <div class="col">
                                        <h3 class="page-title">All Post</h3>
                                       
                                    </div>
                                    <div class="col-auto">
                                        <a class="btn filter-btn" href="javascript:void(0);" id="filter_search">
                                            <i class="fas fa-filter"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>

                            <div  class="filter-section" style="display: none;">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="nameFilter">Name</label>
                                            <input type="text" class="form-control" id="nameFilter" placeholder="Enter name">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="jobTypeFilter">Job type</label>
                                            <select class="form-control" id="jobTypeFilter">
                                                <option value="">All</option>
                                                <c:forEach items="${alljobtype}" var="alljobtype">
                                                    <option value="${alljobtype.jobName}">${alljobtype.jobName}</option>
                                                </c:forEach>

                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="durationFilter">Duration</label>
                                            <select class="form-control" id="durationFilter">
                                                <option value="">All</option>
                                                <c:forEach items="${allDuration}" var="allDuration">
                                                    <option value="${allDuration.durationName}">${allDuration.durationName}</option>
                                                </c:forEach>

                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="skillFlter">Skill</label>
                                            <select class="form-control" id="skillFlter">

                                                <option value="">All</option>
                                                <c:forEach items="${skill}" var="skill">
                                                    <option value="${skill.skill_set_name}">${skill.skill_set_name}</option>
                                                </c:forEach>
                                            </select>

                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="statusFilter">Status</label>
                                            <select class="form-control" id="statusFilter">
                                                <option value="">All</option>
                                                <option value="ongoing">On going</option>
                                                <option value="reject">Reject</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="checkingFilter">Checking</label>
                                            <select class="form-control" id="checkingFilter">
                                                <option value="">All</option>
                                                <option value="pending">Pending</option>
                                                <option value="approve">Approve</option>
                                                <option value="reject">Reject</option>
                                                <option value="suspended">Suspended</option>
                                            </select>
                                        </div>
                                    </div>

                                </div>
                            </div>



                            <div class="my-projects-view">
                                <div class="row">
                                    <div class="col-lg-12">

                                        <div class="table-responsive table-box manage-projects-table">
                                            <table class="table table-center table-hover datatable ">
                                                <thead class="thead-pink">
                                                    <tr>
                                                        <th>Title</th>
                                                        <th>Job Type</th>
                                                        <th>Start date</th>
                                                        <th>Skill</th>
                                                        <th>Duration</th>
                                                        <th>Proposals</th>
                                                        <th>Status</th>
                                                        <th>Checking</th>
                                                        <th style="text-align: center;">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach items="${listpost}" var="list">
                                                        <tr>
                                                            <td class="titleList">
                                                                <div class="title">${list.title}</div>
                                                            </td>
                                                            <td class="jobTypeList">
                                                                <div class="jobType">${list.jobTypeID.jobName}</div>
                                                            </td>
                                                            <td > 
                                                                <div class="datePost">${list.datePost}</div>
                                                            </td>

                                                            <td class="skillList" >
                                                                <div class="skill-container">
                                                                    <c:forEach var="skill" items="${list.skill.split(',')}">
                                                                        <div class="skill">${skill.trim()}</div>
                                                                    </c:forEach>
                                                                </div>
                                                            </td>
                                                            <td class="durationList ">
                                                                <div class="duration">${list.durationID.durationName}</div>
                                                            </td>
                                                            <td > 
                                                                <div class="quantity">${list.quantity}</div>
                                                            </td>
                                                            <td class="StatusList">
                                                                <span class="badge status ${list.status ? 'badge-pill bg-success-light' : 'badge-pill bg-danger-light'}">
                                                                    ${list.status ? 'On going' : 'Reject'}
                                                                </span>
                                                            </td>
                                                            <td class="CheckingList">
                                                                <span class="badge checked  badge-pill ${list.checking == 0 ? 'bg-warning-light' : (list.checking == 1 ? 'bg-success-light' : 'bg-warning-light')}">
                                                                    ${list.checking == 0 ? 'Pending' : (list.checking == 1 ? 'Approve' : 'Suspended')}
                                                                </span>
                                                            </td>

                                                            <td class="three-dots">
                                                                <div class="action-table-data">
                                                                    <div class="edit-delete-action">
                                                                        <a href="#edit-milestone${list.postID}" class="me-2" data-bs-toggle="modal"><i class="feather-edit-2"></i></a>
                                                                    </div>
                                                                    <input type="hidden" class="user-id" id="${list.postID}">
                                                                    <a href="javascript:void(0);" class=" nav-link three-dot " data-bs-toggle="dropdown"><i class="fas fa-ellipsis-v" ></i></a>
                                                                    <div class="dropdown-menu user-menu-list typeChange">                                                                      
                                                                        <c:if test='${list.status == true}'>
                                                                            <a class="dropdown-item typeChange btn btn-sm " data-bs-toggle="modal" data-bs-target="#Suspend_user">
                                                                                <img class="me-2" src="adminAssets/img/icon/icon-04.svg" alt="Img"> Reject Post
                                                                            </a>
                                                                        </c:if>
                                                                        <c:if test='${list.status == false}'>
                                                                            <a class="dropdown-item typeChange btn btn-sm " data-bs-toggle="modal" data-bs-target="#Activate_user">
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
                                                                                                <div class="col-lg-4">
                                                                                                    <div class="input-block">
                                                                                                        <label class="focus-label">Jobs Type</label>
                                                                                                        <select name="jobsType" class="form-control select">
                                                                                                            <c:forEach items="${alljobtype}" var="jobtype">
                                                                                                                <option value="${jobtype.jobTypeID}" <c:if test="${jobtype.jobTypeID == list.jobTypeID.jobTypeID}">selected=""</c:if>>${jobtype.jobName}</option>
                                                                                                            </c:forEach>
                                                                                                        </select>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="col-lg-4">
                                                                                                    <div class="input-block">
                                                                                                        <label class="focus-label">Project Duration</label>
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
                                                                                                        <label class="focus-label">From ($)</label>
                                                                                                        <input type="text" class="form-control" name="budgetFrom" value="${list.budget}">
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="row">
                                                                                                    <c:forEach items="${skill}" var="skillSet">
                                                                                                        <div class="col-md-4">
                                                                                                            <div class="input-block">
                                                                                                                <input type="checkbox" name="skill" value="${skillSet.skill_set_name}" ${fn:contains(list.skill, skillSet.skill_set_name) ? 'checked' : ''}>
                                                                                                                <label>${skillSet.skill_set_name}</label>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </c:forEach>
                                                                                                </div>
                                                                                                <div class="col-lg-4">
                                                                                                    <div class="input-block">
                                                                                                        <label class="focus-label">Categories Name</label>
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




            
        </div>

        <script>
            $(document).ready(function () {
                $('#filter_search').click(function () {
                    $('.filter-section').toggle();
                });
            });
        </script>

        <script>
            // Lấy các phần tử lọc
            const nameFilter = document.getElementById('nameFilter');
            const jobTypeFilter = document.getElementById('jobTypeFilter');
            const skillFilter = document.getElementById('skillFlter');
            const durationFilter = document.getElementById('durationFilter');

            const statusFilter = document.getElementById('statusFilter');
            const checkingFilter = document.getElementById('checkingFilter');

// Lấy danh sách các dòng trong bảng
            const rows = document.querySelectorAll('.table tbody tr');

// Hàm để lọc các dòng
            function filterRows() {
                const nameValue = nameFilter.value.toLowerCase();
                const jobTypeValue = jobTypeFilter.value.toLowerCase();
                const skillValue = skillFilter.value.toLowerCase();
                const durationValue = durationFilter.value.toLowerCase();

                const statusValue = statusFilter.value.toLowerCase();
                const checkingValue = checkingFilter.value.toLowerCase();
                rows.forEach(row => {
                    const title = row.querySelector('.title').textContent.toLowerCase();
                    const jobType = row.querySelector('.jobType').textContent.toLowerCase();
                    const skill = row.querySelector('.skill').textContent.toLowerCase();
                    const duration = row.querySelector('.duration').textContent.toLowerCase();
                    const status = row.querySelector('.status').textContent.toLowerCase();
                    const checking = row.querySelector('.checked').textContent.toLowerCase();

                    const showRow =
                            (!nameValue || title.includes(nameValue)) &&
                            (!jobTypeValue || jobType.includes(jobTypeValue)) &&
                            (!durationValue || duration.includes(durationValue)) &&
                            (!skillValue || skill.includes(skillValue)) &&
                            (!statusValue || status.includes(statusValue)) &&
                            (!checkingValue || checking.includes(checkingValue));

                    row.style.display = showRow ? '' : 'none';
                });
            }

// Gán sự kiện lọc cho các trường lọc
            nameFilter.addEventListener('input', filterRows);
            jobTypeFilter.addEventListener('change', filterRows);
            durationFilter.addEventListener('change', filterRows);
            skillFilter.addEventListener('change', filterRows);
            statusFilter.addEventListener('change', filterRows);
            checkingFilter.addEventListener('change', filterRows);
        </script>
        <script>
            $(document).ready(function () {
                $('.datatable').DataTable({
                    "paging": true,
                    "pageLength": 10, // Số lượng bài post mặc định mỗi trang là 10
                    "lengthMenu": [10, 25, 50, 100], // Các tùy chọn số lượng mục hiển thị mỗi trang
                    "searching": true,
                    "ordering": true,
                    "info": true,
                    "dom": '<"top"l>rt<"bottom"ip><"clear">' // Cấu trúc DOM để di chuyển phần hiển thị số lượng mục xuống dưới
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

        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="adminAssets/js/notification.js"></script>
        <script data-cfasync="false" src="assets/scripts/5c5dd728/cloudflare-static/email-decode.min.js">

        </script><script src="assets/js/jquery-3.7.1.min.js" ></script>

        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js" ></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js" ></script>

        <script src="assets/js/script.js" type="50c5e983c70b40808b575f53-text/javascript"></script>
       
        <script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="assets/plugins/datatables/datatables.min.js"></script>
    </body>
</html>
