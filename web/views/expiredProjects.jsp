<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

        <link rel="stylesheet" href="assets/css/bootstrap-datetimepicker.min.css">

        <link rel="stylesheet" href="assets/plugins/summernote/dist/summernote-lite.css">

        <link rel="stylesheet" href="assets/plugins/datatables/datatables.min.css">

        <link rel="stylesheet" href="assets/plugins/select2/css/select2.min.css">

        <link rel="stylesheet" href="assets/css/style.css">
        <style>
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
                                <a data-bs-toggle="dropdown" href="javascript:void(0);"><img
                                        src="assets/img/icon/notification-bell-icon.svg" alt="Img"></a>
                                <div class="dropdown-menu notifications">
                                    <div class="topnav-dropdown-header">
                                        <div class="notification-title">Notifications<span
                                                class="msg-count-badge">2</span></div>
                                        <a href="javascript:void(0)"
                                           class="clear-noti d-flex align-items-center">Mark all as read <i
                                                class="fe fe-check-circle"></i></a>
                                    </div>
                                    <div class="noti-content">
                                        <ul class="notification-list">
                                            <li class="notification-message">
                                                <a href="#">
                                                    <div class="d-flex">
                                                        <span class="avatar avatar-md active">
                                                            <img class="avatar-img rounded-circle" alt="avatar-img"
                                                                 src="assets/img/avatar/avatar-2.jpg">
                                                        </span>
                                                        <div class="media-body">
                                                            <span class="noti-title">Edward Curr</span>
                                                            <p class="noti-details">Notifications inform you when
                                                                someone likes, reacts</p>
                                                            <p class="noti-time"><span
                                                                    class="notification-time">Yesterday at 11:42
                                                                    PM</span></p>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li class="notification-message">
                                                <a href="#">
                                                    <div class="d-flex">
                                                        <span class="avatar avatar-md active">
                                                            <img class="avatar-img rounded-circle" alt="avatar-img"
                                                                 src="assets/img/avatar/avatar-1.jpg">
                                                        </span>
                                                        <div class="media-body">
                                                            <span class="noti-title">Maria Hill</span>
                                                            <p class="noti-details"> Notifications alert you to new
                                                                messages in your Kofejob inbox.</p>
                                                            <div class="notification-btn">
                                                                <span class="btn btn-primary">Accept</span>
                                                                <span class="btn btn-outline-primary">Reject</span>
                                                            </div>
                                                            <p class="noti-time"><span
                                                                    class="notification-time">Today at 9:42
                                                                    AM</span></p>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li class="notification-message">
                                                <a href="notification">
                                                    <div class="d-flex">
                                                        <span class="avatar avatar-md">
                                                            <img class="avatar-img rounded-circle" alt="avatar-img"
                                                                 src="assets/img/avatar/avatar-3.jpg">
                                                        </span>
                                                        <div class="media-body">
                                                            <span class="noti-title">Maria Hill</span>
                                                            <p class="noti-details"> Notifications alert you to new
                                                                messages in your Kofejob inbox.</p>
                                                            <p class="noti-time"><span
                                                                    class="notification-time">Yesterday at 5:42
                                                                    PM</span></p>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li class="notification-message">
                                                <a href="notification">
                                                    <div class="d-flex">
                                                        <span class="avatar avatar-md">
                                                            <img class="avatar-img rounded-circle" alt="avatar-img"
                                                                 src="assets/img/avatar/avatar-4.jpg">
                                                        </span>
                                                        <div class="media-body">
                                                            <span class="noti-title">Edward Curr</span>
                                                            <p class="noti-details">Notifications inform you when
                                                                someone likes, reacts</p>
                                                            <p class="noti-time"><span
                                                                    class="notification-time">Last Wednesday at
                                                                    11:15 AM</span></p>
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
                            <li><a href="CreatePost" class="login-btn">Post a Project <i
                                        class="feather-plus ms-1"></i></a></li>
                            <li class="nav-item dropdown account-item">
                                <a href="javascript:void(0);" class="dropdown-toggle nav-link"
                                   data-bs-toggle="dropdown">
                                    <span class="user-img">
                                        <img src="${recruiter.image}" alt="Img">
                                    </span>
                                    <span>${recruiter.fullName()}</span>
                                </a>
                                <div class="dropdown-menu emp">
                                    <div class="drop-head">
                                        <a href="javascript:void(0);" class="dropdown-toggle nav-link"
                                           data-bs-toggle="dropdown">
                                            <span class="user-img">
                                                <img src="${recruiter.image}" alt="Img">
                                            </span>
                                            <div>
                                                <span>${recruiter.fullName()}</span>
                                                <p><span
                                                        data-cfemail="81e8efe7eec1e3f3f4e2e4e3f4f2e9afe2eeec">@${sessionScope.account.username}</span>
                                                </p>
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


            <div class="content content-page">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-3 col-lg-4 theiaStickySidebar">
                            <div class="settings-widget">
                                <div
                                    class="settings-header d-sm-flex flex-row flex-wrap text-center text-sm-start align-items-center">
                                    <a href="companydetail"><img alt="profile image"
                                                                 src="${recruiter.image}" class="avatar-lg rounded-circle"></a>
                                    <div class="ms-sm-3 ms-md-0 ms-lg-3 mt-2 mt-sm-0 mt-md-2 mt-lg-0">
                                        <h3 class="mb-0"><a
                                                href="companydetail">${recruiter.fullName()}</a><img
                                                src="assets/img/icon/verified-badge.svg" class="ms-1" alt="Img">
                                        </h3>
                                        <p class="mb-0">@${sessionScope.account.username}</p>
                                    </div>
                                </div>
                                <div class="settings-menu">
                                    <div id="sidebar-menu" class="sidebar-menu">
                                        <ul>
                                            <li class="nav-item">
                                                <a href="Dashboard" class="nav-link ">
                                                    <img src="assets/img/icon/sidebar-icon-01.svg" alt="Img">
                                                    Dashboard
                                                </a>
                                            </li>
                                            <li class="nav-item submenu active">
                                                <a href="milestones.html" class="nav-link active">
                                                    <img src="assets/img/icon/sidebar-icon-02.svg" alt="Img">
                                                    Projects
                                                    <span class="menu-arrow"></span>
                                                </a>
                                                <ul class="sub-menu-ul">
                                                    <li>
                                                        <a href="manageJobsPosts">Manage Projects</a>
                                                    </li>
                                                    <li>
                                                        <a href="ManageApplication">All
                                                            applicants</a>
                                                    </li>
                                                    <li>
                                                        <a href="CompletedProjects">Completed Projects</a>
                                                    </li>
                                                    <li>
                                                        <a href="ExpiredProjects"  class="active">Freelancer Approved</a>
                                                    </li>


                                                </ul>
                                            </li>
                                            <li class="nav-item submenu">
                                                <a href="RecruiterFavourites" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-03.svg" alt="Img">
                                                    Favourites
                                                    <span class="menu-arrow"></span>
                                                </a>
                                                <ul class="sub-menu-ul">
                                                    <li>
                                                        <a href="RecruiterFavourites">Bookmarked Projects</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="nav-item">
                                                <a href="#" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-04.svg" alt="Img">
                                                    Reviews
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="javascript:void(0);" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-10.svg" alt="Img">
                                                    Settings
                                                    <span class="menu-arrow"></span>
                                                </a>
                                                <ul class="sub-menu-ul">
                                                    <li>
                                                        <a href="companydetail">Profile</a>
                                                    </li>

                                                    <li>
                                                        <a href="changePassword">Change Password</a>
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
                                        <a class="nav-link " href="manageJobsPosts">Manage projects</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link " href="ManageApplication">All applicants</a>
                                    </li>

                                    <li class="nav-item">
                                        <a class="nav-link " href="CompletedProjects">Completed Projects</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link active" href="ExpiredProjects">Freelancer Approved</a>
                                    </li>
                                </ul>
                            </nav>

                            <div class="my-projects-view">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div
                                            class="title-head d-flex justify-content-between align-items-center mb-4">
                                            <div class="search-form">
                                                <input type="text" id="searchInput" placeholder="Search...">
                                            </div>
                                            <div style="margin-bottom: 16px" class="filter-status">

                                                <select class="form-select" id="filterSelect">
                                                    <option value="">All</option>
                                                    <option value="0">Pending</option>
                                                    <option value="1">Approved</option>
                                                    <option value="2">Refused</option>
                                                </select>
                                            </div>

                                        </div>
                                        <div class="table-responsive table-box manage-projects-table">


                                            <table class="table table-center table-hover datatable no-sort">
                                                <thead class="thead-pink">
                                                    <tr>
                                                        <th>NAME</th>
                                                        <th>RESUME</th>
                                                        <th>STATUS</th>
                                                        <th>INFORMATION</th>
                                                        <th style="padding-left: 40px">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="tableBody">
                                                    <c:forEach items="${listapply}" var="listapply">
                                                        <tr>
                                                            <td>
                                                                <a
                                                                    href="PostDetails?postID=${listapply.post.postID}">${listapply.freelancer.name()}</a><br>
                                                                <div class="applied">Applied:<a
                                                                        href="PostDetails?postID=${listapply.post.postID}"
                                                                        target="_blank">
                                                                        <span>${listapply.post.title}</span>
                                                                        <i class="fas fa-external-link-alt"></i>
                                                                    </a>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="action-table-data">
                                                                    <a id="Download${listapply.applyID}"
                                                                       style="margin-left: 20px"
                                                                       href="${listapply.resume}"
                                                                       class="download-icon me-2" download>
                                                                        <i class="feather-download"></i>
                                                                    </a>
                                                                </div>
                                                                <script>
                                                                    document.addEventListener("DOMContentLoaded", function () {
                                                                        var downloadLinks = document.querySelectorAll(".download-icon");

                                                                        downloadLinks.forEach(function (link) {
                                                                            link.addEventListener("click", function (event) {
                                                                                var applyID = this.id.replace("Download", "");
                                                                                downloadFile(applyID);
                                                                            });
                                                                        });
                                                                    });

                                                                    function downloadFile(applyID) {
                                                                        var downloadLink = document.getElementById("Download" + applyID);
                                                                        if (downloadLink) {
                                                                            // Perform any additional operations here if needed
                                                                            downloadLink.click();
                                                                        } else {
                                                                            console.error("Download link not found for applyID: " + applyID);
                                                                        }
                                                                    }

                                                                </script>        
                                                            </td>
                                                            <td class="status-cell">
                                                                <span id="status-${listapply.applyID}"
                                                                      class="badge checked badge-pill ${listapply.status == 0 ? 'bg-warning-light' : (listapply.status == 1 ? 'bg-success-light' : 'bg-danger-light')}"
                                                                      data-status="${listapply.status}">
                                                                    ${listapply.status == 0 ? 'Pending' :
                                                                      (listapply.status == 1 ? 'Approved' :
                                                                      'Refused')}
                                                                </span>
                                                                <br>
                                                                <span class="applied-time">Applied:
                                                                    ${listapply.dateApply}</span>
                                                            </td>
                                                            <td>${listapply.freelancer.phone}
                                                                <br>${listapply.freelancer.email}
                                                            </td>
                                                            <td>
                                                                <div class="action-table-data">
                                                                    <div style="margin-left: 30px; "  id="ApproveAndRefuse${listapply.applyID}">
                                                                        <a style="background: #22cc62" href="#Approve${listapply.applyID}"
                                                                           data-bs-toggle="modal"
                                                                           class="btn btn-request"><i class="fa fa-user-plus"></i></a>
                                                                        <br/>
                                                                        <a style="background: #6c757d; margin-top: 8px;"
                                                                           href="#Refuse${listapply.applyID}"
                                                                           data-bs-toggle="modal"
                                                                           class="btn btn-request"><i class="fa fa-user-xmark"></i></a>
                                                                    </div>

                                                                    <div style="display: none;"
                                                                         id="connectedBtn${listapply.applyID}">
                                                                        <a style="background: violet;margin-left: 30px;"
                                                                           href="javascript:void(0);"
                                                                           data-bs-toggle="modal"
                                                                           class="btn btn-request"><i class="fa fa-user-check"></i></a>
                                                                    </div>

                                                                    <div class="modal fade edit-proposal-modal success-modal"
                                                                         id="success-milestone${listapply.applyID}">
                                                                        <div
                                                                            class="modal-dialog modal-dialog-centered modal-lg">
                                                                            <div class="modal-content">
                                                                                <div
                                                                                    class="modal-header justify-content-end">
                                                                                    <span class="modal-close">
                                                                                        <a href="javascript:void(0);"
                                                                                           data-bs-dismiss="modal"
                                                                                           aria-label="Close">
                                                                                            <i
                                                                                                class="feather-x"></i>
                                                                                        </a>
                                                                                    </span>
                                                                                </div>
                                                                                <div class="modal-body">
                                                                                    <form
                                                                                        id="emailForm${listapply.applyID}"
                                                                                        method="post"
                                                                                        action="ManageApplication">
                                                                                        <div class="form-group">
                                                                                            <label
                                                                                                for="emailSubject">Subject</label>
                                                                                            <input type="text"
                                                                                                   class="form-control"
                                                                                                   id="emailSubject"
                                                                                                   name="emailSubject"
                                                                                                   placeholder="Enter email subject"
                                                                                                   required>
                                                                                        </div>
                                                                                        <div class="form-group">
                                                                                            <label
                                                                                                for="emailRecipient">Recipient</label>
                                                                                            <input type="email"
                                                                                                   class="form-control"
                                                                                                   id="emailRecipient"
                                                                                                   name="emailRecipient"
                                                                                                   value="${listapply.freelancer.email}"
                                                                                                   required>
                                                                                        </div>
                                                                                        <div class="form-group">
                                                                                            <label
                                                                                                for="emailContent">Content</label>
                                                                                            <textarea
                                                                                                class="form-control"
                                                                                                id="emailContent"
                                                                                                name="emailContent"
                                                                                                rows="10"
                                                                                                placeholder="Enter email content"
                                                                                                required></textarea>
                                                                                        </div>
                                                                                        <div class="text-center">
                                                                                            <button type="submit"
                                                                                                    class="btn btn-primary mt-3">Send
                                                                                                Email</button>
                                                                                        </div>
                                                                                    </form>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>





                                                                    <div class="modal fade edit-proposal-modal success-modal"
                                                                         id="Refuse${listapply.applyID}">
                                                                        <div
                                                                            class="modal-dialog modal-dialog-centered modal-md">
                                                                            <div class="modal-content">
                                                                                <div
                                                                                    class="modal-header justify-content-end">
                                                                                    <span class="modal-close">
                                                                                        <a href="javascript:void(0);"
                                                                                           data-bs-dismiss="modal"
                                                                                           aria-label="Close">
                                                                                            <i
                                                                                                class="feather-x"></i>
                                                                                        </a>
                                                                                    </span>
                                                                                </div>
                                                                                <div class="modal-body">
                                                                                    <div
                                                                                        class="confirmation-msg-content text-center">
                                                                                        <input type="hidden"
                                                                                               class="apply-id"
                                                                                               value="${listapply.applyID}">
                                                                                        <h4>Confirm Action</h4>
                                                                                        <p>Are you sure you want to
                                                                                            refuse this freelancer?
                                                                                        </p>
                                                                                        <div class="text-center">
                                                                                            <a href="javascript:void(0);"
                                                                                               class="btn btn-primary mt-3 refuse-freelancer">Refuse</a>
                                                                                            <a href="javascript:void(0);"
                                                                                               data-bs-dismiss="modal"
                                                                                               class="btn btn-secondary mt-3"
                                                                                               style="margin-left: 30px;"
                                                                                               aria-label="Close">Cancel</a>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="modal fade edit-proposal-modal success-modal"
                                                                         id="Approve${listapply.applyID}">
                                                                        <div
                                                                            class="modal-dialog modal-dialog-centered modal-md">
                                                                            <div class="modal-content">
                                                                                <div
                                                                                    class="modal-header justify-content-end">
                                                                                    <span class="modal-close">
                                                                                        <a href="javascript:void(0);"
                                                                                           data-bs-dismiss="modal"
                                                                                           aria-label="Close">
                                                                                            <i
                                                                                                class="feather-x"></i>
                                                                                        </a>
                                                                                    </span>
                                                                                </div>
                                                                                <div class="modal-body">
                                                                                    <div
                                                                                        class="confirmation-msg-content text-center">
                                                                                        <input type="hidden"
                                                                                               class="apply-id"
                                                                                               value="${listapply.applyID}">
                                                                                        <h4>Confirm Action</h4>
                                                                                        <p>Are you sure you want to
                                                                                            approve this freelancer?
                                                                                        </p>
                                                                                        <div class="text-center">
                                                                                            <a href="javascript:void(0);"
                                                                                               class="btn btn-primary mt-3 approve-freelancer">Approve</a>
                                                                                            <a href="javascript:void(0);"
                                                                                               data-bs-dismiss="modal"
                                                                                               class="btn btn-secondary mt-3"
                                                                                               style="margin-left: 30px;"
                                                                                               aria-label="Close">Cancel</a>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>



                                            <script>
                                                document.addEventListener('DOMContentLoaded', function () {
                                                    var filterSelect = document.getElementById('filterSelect');

                                                    // Lắng nghe sự kiện khi người dùng thay đổi lựa chọn trong dropdown filter
                                                    filterSelect.addEventListener('change', function () {
                                                        var selectedValue = this.value; // Lấy giá trị đã chọn trong dropdown

                                                        // Lặp qua từng hàng trong tbody để lọc và ẩn hiện các hàng thỏa mãn
                                                        var rows = document.getElementById('tableBody').getElementsByTagName('tr');
                                                        for (var i = 0; i < rows.length; i++) {
                                                            var row = rows[i];
                                                            var statusCell = row.querySelector('.status-cell span'); // Lấy cell chứa status
                                                            var statusValue = parseInt(statusCell.getAttribute('data-status')); // Lấy giá trị status từ data attribute và chuyển sang số nguyên

                                                            // Kiểm tra nếu status của hàng trùng với giá trị filter hoặc không có filter
                                                            if (selectedValue === '' || statusValue === parseInt(selectedValue)) {
                                                                row.style.display = '';
                                                            } else {
                                                                row.style.display = 'none';
                                                            }
                                                        }



                                                    });
                                                });
                                            </script>


                                            <script>
                                                document.addEventListener('DOMContentLoaded', function () {
                                                    // Lắng nghe sự kiện khi người dùng nhập vào ô tìm kiếm
                                                    document.getElementById('searchInput').addEventListener('input', function () {
                                                        var searchValue = this.value.toLowerCase(); // Lấy giá trị nhập vào và chuyển thành chữ thường

                                                        // Lặp qua từng hàng trong tbody để tìm kiếm và ẩn hiện các hàng thỏa mãn
                                                        var rows = document.getElementById('tableBody').getElementsByTagName('tr');
                                                        for (var i = 0; i < rows.length; i++) {
                                                            var row = rows[i];
                                                            var titleElement = row.querySelector('.applied span'); // Lấy phần tử span chứa tiêu đề

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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>




        <script>
                                                $(document).ready(function () {
                                                    // Lấy trạng thái từ localStorage khi tải trang
                                                    var appliedIDs = JSON.parse(localStorage.getItem('appliedIDs')) || {};

                                                    $.each(appliedIDs, function (applyID, status) {
                                                        if (status === 'connected') {
                                                            $('#ApproveAndRefuse' + applyID).hide();
                                                            $('#connectedBtn' + applyID).show();
                                                        }
                                                    });

                                                    // Xử lý khi nhấn nút Refuse Freelancer
                                                    $('.refuse-freelancer').on('click', function () {
                                                        var applyID = $(this).closest('.modal').find('.apply-id').val();
                                                        changeFreelancerStatus(applyID, "reject", $(this));
                                                    });

                                                    // Xử lý khi nhấn nút Approve Freelancer
                                                    $('.approve-freelancer').on('click', function () {
                                                        var applyID = $(this).closest('.modal').find('.apply-id').val();
                                                        changeFreelancerStatus(applyID, "approve", $(this));
                                                    });

                                                    // Hàm thay đổi trạng thái Freelancer
                                                    function changeFreelancerStatus(applyID, actionType, buttonClicked) {
                                                        $.ajax({
                                                            url: '/Job_IT_For_Freelancer_G5/ConnectFreelancer',
                                                            type: 'POST',
                                                            data: {postID: applyID, type: actionType},
                                                            success: function (response) {
                                                                if (response.success) {
                                                                    var statusBadge = $('#status-' + applyID);
                                                                    var statusText = actionType === "reject" ? "Rejected" : "Approved";
                                                                    var badgeClass = actionType === "reject" ? "bg-danger-light" : "bg-success-light";

                                                                    // Cập nhật badge trạng thái
                                                                    statusBadge
                                                                            .removeClass()
                                                                            .addClass('badge checked badge-pill ' + badgeClass)
                                                                            .text(statusText);

                                                                    // Ẩn modal hiện tại
                                                                    buttonClicked.closest('.modal').modal('hide');

                                                                    // Hiển thị thông báo thành công và mở modal success-milestone
                                                                    showSuccessNotification(response.message, applyID);
                                                                } else {
                                                                    console.error('Error:', response.message);
                                                                    showErrorNotification('Failed to update status.');
                                                                }
                                                            },
                                                            error: function (xhr, status, error) {
                                                                console.error('Error:', error);
                                                                showErrorNotification('An error occurred while processing your request.');
                                                            }
                                                        });
                                                    }

                                                    // Hàm hiển thị thông báo thành công
                                                    function showSuccessNotification(message, applyID) {
                                                        // Hiển thị modal success-milestone
                                                        $('#success-milestone' + applyID).modal('show');

                                                        // Ẩn nút Connect và Refuse, hiển thị nút Đã Connect
                                                        $('#ApproveAndRefuse' + applyID).hide();
                                                        $('#connectedBtn' + applyID).show();

                                                        // Lưu trạng thái vào localStorage
                                                        var appliedIDs = JSON.parse(localStorage.getItem('appliedIDs')) || {};
                                                        appliedIDs[applyID] = 'connected';
                                                        localStorage.setItem('appliedIDs', JSON.stringify(appliedIDs));

                                                        Swal.fire({
                                                            icon: 'success',
                                                            title: 'Notification',
                                                            text: message,
                                                            confirmButtonText: 'OK'
                                                        });
                                                    }

                                                    // Xử lý gửi email qua AJAX
                                                    $('form[id^="emailForm"]').on('submit', function (e) {
                                                        e.preventDefault();

                                                        var form = $(this);
                                                        var applyID = form.attr('id').replace('emailForm', '');

                                                        $.ajax({
                                                            url: form.attr('action'),
                                                            type: 'POST',
                                                            data: form.serialize(),
                                                            success: function (response) {
                                                                if (response.success) {
                                                                    // Đóng modal gửi email sau khi gửi thành công
                                                                    $('#success-milestone' + applyID).modal('hide');

                                                                    // Ẩn nút Connect và Refuse, hiển thị nút Đã Connect
                                                                    $('#ApproveAndRefuse' + applyID).hide();
                                                                    $('#connectedBtn' + applyID).show();

                                                                    // Lưu trạng thái vào localStorage
                                                                    var appliedIDs = JSON.parse(localStorage.getItem('appliedIDs')) || {};
                                                                    appliedIDs[applyID] = 'connected';
                                                                    localStorage.setItem('appliedIDs', JSON.stringify(appliedIDs));

                                                                    Swal.fire({
                                                                        icon: 'success',
                                                                        title: 'Email Sent',
                                                                        text: response.message
                                                                    });
                                                                } else {
                                                                    Swal.fire({
                                                                        icon: 'error',
                                                                        title: 'Error',
                                                                        text: response.message
                                                                    });
                                                                }
                                                            },
                                                            error: function (xhr, status, error) {
                                                                Swal.fire({
                                                                    icon: 'error',
                                                                    title: 'Error',
                                                                    text: 'An error occurred while sending the email.'
                                                                });
                                                            }
                                                        });
                                                    });
                                                });



        </script>

        <script src="adminAssets/js/notification.js"></script>
        <script src="assets/js/jquery-3.7.1.min.js" type="b9b8f1fa285a150b1a70a944-text/javascript"></script>

        <script src="assets/js/bootstrap.bundle.min.js" type="b9b8f1fa285a150b1a70a944-text/javascript"></script>

        <script src="assets/plugins/select2/js/select2.min.js"
        type="b9b8f1fa285a150b1a70a944-text/javascript"></script>

        <script src="assets/js/moment.min.js" type="b9b8f1fa285a150b1a70a944-text/javascript"></script>
        <script src="assets/js/bootstrap-datetimepicker.min.js"
        type="b9b8f1fa285a150b1a70a944-text/javascript"></script>

        <script src="assets/plugins/datatables/jquery.dataTables.min.js"
        type="b9b8f1fa285a150b1a70a944-text/javascript"></script>
        <script src="assets/plugins/datatables/datatables.min.js"
        type="b9b8f1fa285a150b1a70a944-text/javascript"></script>

        <script src="assets/plugins/summernote/dist/summernote-lite.min.js"
        type="b9b8f1fa285a150b1a70a944-text/javascript"></script>

        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js"
        type="b9b8f1fa285a150b1a70a944-text/javascript"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js"
        type="b9b8f1fa285a150b1a70a944-text/javascript"></script>

        <script src="assets/js/script.js" type="b9b8f1fa285a150b1a70a944-text/javascript"></script>
        <script src="assets/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js"
        data-cf-settings="b9b8f1fa285a150b1a70a944-|49" defer></script>
    </body>


</html>