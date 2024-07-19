<%-- 
    Document   : dashboard
    Created on : Jun 8, 2024, 11:05:23 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.text.ParseException" %>

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
        <style>
            table {
                width: 100%;
                border-collapse: collapse;
            }

            th {
                background-color: #f2f2f2;
                position: relative;
            }
            .filter-form {
                position: absolute;
                background-color: white;
                border: 1px solid #ddd;
                padding: 10px;
                z-index: 1000;
                display: none;
            }
            button {
                cursor: pointer;
            }

            .search-form {
                margin-bottom: 20px;
            }

            .search-form input[type="text"] {
                padding: 10px;
                width: 300px;
                border: 1px solid #ccc;
                border-radius: 4px;
                font-size: 10px;
            }

            .search-form button {
                padding: 10px 20px;
                background-color: #E65425;
                color: white;
                border: none;
                cursor: pointer;
                border-radius: 4px;
                font-size: 10px;
            }
        </style>
        <style>
            .filter-form {
                display: none;
                position: absolute;
                background-color: white;
                padding: 15px;
                border: 1px solid #ccc;
                box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
                border-radius: 5px;
            }
            .filter-button {
                display: none;
                background-color: #E65425;
                color: white;
                border: none;
                padding: 5px 10px;
                cursor: pointer;
                font-size: 14px;
                margin-left: 5px;
                border-radius: 5px;
            }
            .filter-button:hover {
                background-color: #45a049;
            }
            .apply-button {
                background-color: #E65425;
                color: white;
                border: none;
                padding: 7px 15px;
                cursor: pointer;
                font-size: 14px;
                border-radius: 5px;
                transition: background-color 0.3s;
            }
            .apply-button:hover {
                background-color: #0056b3;
            }
            .filter-form input[type="date"] {
                padding: 5px;
                font-size: 14px;
                margin-bottom: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }
        </style>
        <script>
            document.addEventListener("DOMContentLoaded", function () {
                document.addEventListener("click", function (event) {
                    var postedButton = document.getElementById("postedButton");
                    var expiredButton = document.getElementById("expiredButton");
                    var postedForm = document.getElementById("postedForm");
                    var expiredForm = document.getElementById("expiredForm");

                    if (!event.target.closest("th") && !event.target.closest(".filter-form") && !event.target.closest(".filter-button")) {
                        postedButton.style.display = "none";
                        expiredButton.style.display = "none";
                        postedForm.style.display = "none";
                        expiredForm.style.display = "none";
                    }
                });
            });

            function toggleForm(formId) {
                var form = document.getElementById(formId);
                if (form.style.display === "none" || form.style.display === "") {
                    form.style.display = "block";
                } else {
                    form.style.display = "none";
                }
            }

            function showButton(buttonId) {
                var button = document.getElementById(buttonId);
                button.style.display = "inline";
            }
        </script>
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

                                             <li><a href="ListFreelancer">List Freelancer</a></li>

                                        </ul>
                                    </li>
                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">My Post<i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">

                                            <li><a href="myListJobProject">My List Post</a></li>
                                            

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
                                    <a class="dropdown-item" href="Dashboard"><img src="assets/img/icon/user-dropdown-icon--04.svg" alt="Img"> Dashboard</a>
                                    <a class="dropdown-item" href="companydetail"><img src="assets/img/icon/user-dropdown-icon--01.svg" alt="Img"> My Profile</a>
                                    <a class="dropdown-item" href="manageJobsPosts"><img src="assets/img/icon/user-dropdown-icon--03.svg" alt="Img">My Project</a>
                                    <a class="dropdown-item" href="RecruiterFavourites"><img src="assets/img/icon/user-dropdown-icon--05.svg" alt="Img">My Favourites</a>             
                                    <a class="dropdown-item" href="recruitersetting"><img src="assets/img/icon/user-dropdown-icon--06.svg" alt="Img"> Profile Settings</a>
                                    <a class="dropdown-item" href="logout"><img src="assets/img/icon/user-dropdown-icon--07.svg" alt="Img"> Logout</a>
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
                                                        <a href="manageJobsPosts" >Manage project</a>
                                                    </li>
                                                    <li>
                                                        <a href="ManageApplication">All applicants</a>
                                                    </li>
                                                    <li>
                                                        <a href="CompletedProjects" class="active">Completed Projects</a>
                                                    </li>
                                                    <li>
                                                        <a href="ExpiredProjects">Freelancer Approved</a>
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
                                                    
                                                </ul>
                                            </li>
                                            <li class="nav-item">
                                                <a href="review.html" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-04.svg" alt="Img"> Reviews
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
                                                        <a href="change-password.html">Change Password</a>
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
                                        <a class=" nav-link" href="manageJobsPosts">Manage jobs</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link " href="ManageApplication">All applicants</a>
                                    </li>

                                    <li class="nav-item">
                                        <a class="active nav-link " href="CompletedProjects">Completed Projects</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="ExpiredProjects">Freelancer Approved</a>
                                    </li>
                                </ul>
                            </nav>

                            <div class="my-projects-view">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="title-head d-flex justify-content-between align-items-center mb-4">
                                            <div class="search-form">
                                                <input type="text" id="searchInput" placeholder="Search...">
                                            </div>
                                                                                     

                                        </div>
                                        <div class="table-responsive table-box manage-projects-table">
                                            <table class="table table-center table-hover datatable no-sort">
                                                <thead class="thead-pink">
                                                    <tr>                                         
                                                                                                              
                                                        <th>TITLE</th>
                                                        <th>APPLICANTS</th>
                                                        <th onclick="showButton('postedButton')">
                                                            POSTED
                                                            <button id="postedButton" class="filter-button" onclick="toggleForm('postedForm')">Filter</button>
                                                            <div id="postedForm" class="filter-form">
                                                                <form onsubmit="filterByDate('posted');
                                                                        return false;">
                                                                    <input type="date" id="postedDate" name="date">
                                                                    <button class="apply-button" type="submit">Apply</button>
                                                                </form>
                                                            </div>
                                                        </th>
                                                        <th onclick="showButton('expiredButton')">
                                                            EXPIRED
                                                            <button id="expiredButton" class="filter-button" onclick="toggleForm('expiredForm')">Filter</button>
                                                            <div id="expiredForm" class="filter-form">
                                                                <form onsubmit="filterByDate('expired'); return false;">
                                                                    <input type="date" id="expiredDate" name="date">
                                                                    <button class="apply-button" type="submit">Apply</button>
                                                                </form>
                                                            </div>
                                                        </th>
                                                        <th>STATUS</th>
                                                        <th>CHECKED</th>    
                                                        <th style="text-align: center;">ACTION</th> 
                                                    </tr>
                                                </thead>
                                                <tbody id="postTable">
                                                    <c:forEach items="${listpost}" var="list">
                                                        <tr>
                                                            

                                                            <td class="titleList">
                                                                <div class="title applied">${list.title}</div>
                                                            </td>
                                                            <td class="APPLICANTS">                      

                                                                <div style="margin-left: 30px" class="APPLICANTS">${list.cout()}/${list.quantity}</div>

                                                            </td>
                                                            <td> 
                                                                <div class="datePost">${list.datePost}</div>
                                                            </td>
                                                            <td> 
                                                                <div class="datePost">${list.expired}</div>
                                                            </td>      
                                                            <td class="StatusList">
                                                                <c:choose>
                                                                    <c:when test="${list.status == 3}">
                                                                        <span class="badge status badge-pill bg-warning-light">Expired</span>
                                                                    </c:when>
                                                                    <c:when test="${list.status == 0}">
                                                                        <span class="badge status badge-pill bg-danger-light">Rejected</span>
                                                                    </c:when>
                                                                    <c:when test="${list.status == 1}">
                                                                        <span class="badge status badge-pill bg-success-light">On-going</span>
                                                                    </c:when>
                                                                    <c:when test="${list.status == 2}">
                                                                        <span class="badge status badge-pill bg-purple-light">Completed</span>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <span class="badge status"></span>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </td>
                                                            <td class="CheckingList">
                                                                <span class="badge checked  badge-pill ${list.checking == 0 ? 'bg-warning-light' : (list.checking == 1 ? 'bg-success-light' : 'bg-warning-light')}">
                                                                    ${list.checking == 0 ? 'Pending' : (list.checking == 1 ? 'Approve' : 'Suspended')}
                                                                </span>
                                                            </td>
                                                            <td class="three-dots">
                                                                <div class="action-table-data">
                                                                    <div class="edit-delete-action">
                                                                        <a style="background: #22cc62; margin-left: 0px" href="#edit-milestone${list.postID}" data-bs-toggle="modal"
                                                                           class="btn btn-request"><i style="color: white" class="fa fa-edit"></i></a>
                                                                        
                                                                    </div>
                                                                    <input type="hidden" class="user-id" id="${list.postID}">
                                                                    
                                                                     <a style="background: #6c757d; margin-left: 0px;" href="javascript:void(0);" data-bs-toggle="dropdown"
                                                                           class="btn btn-request"><i style="color: white" class="nav-link  fa fa-align-justify"></i></a>
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
                                                                            <a class="dropdown-item typeChange btn btn-sm" href="javascript:void(0);">
                                                                                Expired
                                                                            </a>
                                                                        </c:if>
                                                                        <c:if test='${list.status == 2}'>
                                                                            <a class="dropdown-item typeChange btn btn-sm" href="javascript:void(0);">
                                                                                Completed
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
                                                                                    <h4 class="modal-title">Edit Post a new Project</h4>
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
                                                                                                        
                                                                                                    </div>
                                                                                                </div>
                                                                                                    <div style="margin-top: 35px;" class="col-lg-4">
                                                                                                    <div class="input-block">
                                                                                                        <label class="focus-label">Level</label>
                                                                                                        <select name="jobsType" class="form-control select">
                                                                                                            <c:forEach items="${alljobtype}" var="jobtype">
                                                                                                                <option value="${jobtype.jobTypeID}" <c:if test="${jobtype.jobTypeID == list.jobTypeID.jobTypeID}">selected=""</c:if>>${jobtype.jobName}</option>
                                                                                                            </c:forEach>
                                                                                                        </select>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div style="margin-top: 35px;" class="col-lg-4">
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
                                                                                                                <div class="error" id="error-skill"></div>
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


            <jsp:include page="footter.jsp" />

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
                        statusCell.html('<span class="badge status badge-pill bg-danger-light">Rejected</span>');

                        var threeDotCell = $('.user-id#' + postID).closest('tr').find('.three-dots');
                        threeDotCell.find('.typeChange').html('<a class="dropdown-item typeChange" data-bs-toggle="modal" data-bs-target="#Activate_user"><img class="me-2" src="adminAssets/img/icon/icon-04.svg" alt="Img">Ongoing Post</a>');

                        $('#Suspend_user').modal('hide');
                        showSuccessNotification('Reject project successfully!');
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
                        showSuccessNotification('On-going project successfully!');
                    },
                    error: function (xhr, status, error) {

                        console.error(error);
                    }
                });
            }
        </script>

       
        <script>
            function toggleForm(formId) {
                var form = document.getElementById(formId);
                form.style.display = form.style.display === 'none' ? 'block' : 'none';
            }

            function filterByDate(column) {
                var filterDate = document.getElementById(column + 'Date').value;
                var rows = document.getElementById('postTable').getElementsByTagName('tr');

                for (var i = 0; i < rows.length; i++) {
                    var cells = rows[i].getElementsByTagName('td');
                    var dateCell;
                    if (column === 'posted') {
                        dateCell = cells[3]; // POSTED là cột thứ 3 (index 2)
                    } else if (column === 'expired') {
                        dateCell = cells[4]; // EXPIRED là cột thứ 4 (index 3)
                    }

                    if (dateCell) {
                        var rowDate = dateCell.querySelector('.datePost').textContent.trim();

                        // Chuyển đổi định dạng ngày
                        rowDate = formatDate(rowDate);

                        console.log('Filter date:', filterDate);
                        console.log('Row date:', rowDate);

                        if (rowDate === filterDate) {
                            rows[i].style.display = '';
                        } else {
                            rows[i].style.display = 'none';
                        }
                    }
                }
            }

            function formatDate(dateString) {
                // Giả sử định dạng ban đầu là YYYY-MM-DD
                var parts = dateString.split('-');
                if (parts.length === 3) {
                    // Đảm bảo định dạng YYYY-MM-DD
                    return parts[0] + '-' + parts[1].padStart(2, '0') + '-' + parts[2].padStart(2, '0');
                }
                return dateString; // Trả về nguyên bản nếu không khớp định dạng
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

        <script>
            document.addEventListener('DOMContentLoaded', function () {
                // Lắng nghe sự kiện khi người dùng nhập vào ô tìm kiếm
                document.getElementById('searchInput').addEventListener('input', function () {
                    var searchValue = this.value.toLowerCase(); // Lấy giá trị nhập vào và chuyển thành chữ thường

                    // Lặp qua từng hàng trong tbody để tìm kiếm và ẩn hiện các hàng thỏa mãn
                    var rows = document.getElementById('postTable').getElementsByTagName('tr');
                    for (var i = 0; i < rows.length; i++) {
                        var row = rows[i];
                        var titleElement = row.querySelector('.applied'); // Lấy phần tử span chứa tiêu đề

                        // Kiểm tra nếu tiêu đề chứa chuỗi tìm kiếm
                        if (titleElement.textContent.toLowerCase().includes(searchValue)) {
                            row.style.display = '';
                        } else {
                            row.style.display = 'none';
                        }
                    }
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
