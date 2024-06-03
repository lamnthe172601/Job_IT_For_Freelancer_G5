<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/profile-settings.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:34:09 GMT -->
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
                                <li class="active has-submenu">
                                    <a href="home">Home <i class="fas "></i></a>

                                </li>

                                <c:if test="${sessionScope.account.roleID.getRoleID() == 3 || sessionScope.account.roleID.getRoleID() == null}">
                                <li class="has-submenu">
                                    <a href="javascript:void(0);">For Freelancer<i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu"> 
                                        
                                            <li><a href="jobFavourites">Jobs Favourites</a></li>
                                                                                                                                                           
                                        <li><a href="jobsApply">Jobs Apply</a></li>
                                        <li><a href="jobforyou">Jobs For you</a></li>
                                    </ul>
                                </li>
                               
                                <li class="has-submenu">
                                    <a href="javascript:void(0);">For Jobs<i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                                                                                                                                                                                  
                                        <li><a href="jobsList">Jobs List</a></li>
                                        <li><a href="newsJobs">News Jobs</a></li>
                                        <li><a href="findJobs">Find Jobs</a></li>  
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
                                                                                                                                                                                                  
                                        <li><a href="jobsList">List Post</a></li>
                                        <li><a href="newsJobs">Reviews</a></li>
                                        
                                    </ul>
                                </li>
                                </c:if>
                                <li class="has-submenu">
                                    <a href="javascript:void(0);">About<i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        
                                        <li><a href="blogList">Blog List</a></li>
                                        <li><a href="blogGrid">Blog Grid</a></li>
                                        <li><a href="AboutUs">About us</a></li>
                                         <li><a href="ContactUs">Contact us</a></li>
                                    </ul>
                                </li>
                                <c:if test="${sessionScope.account.roleID.getRoleID() == 3}">
                                    
                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">Hello ${sessionScope.account.username} <i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">
                                           
                                            <li><a href="dashboard">Dashboard</a></li>
                                            <li><a href="MyProfile">My Profile</a></li>
                                            <li><a href="Project">Projects</a></li>                        
                                            <li><a href="changePassword">Change Password</a></li>                                                                                     
                                            <li><a href="profile-settings">Settings</a></li>
                                            <li><a href="logout">Logout</a></li>
                                        </ul>
                                    </li>
                                </c:if>
                                <c:if test="${sessionScope.account.roleID.getRoleID() == 4}">
                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">Hello ${sessionScope.account.username} <i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">
                                            
                                            <li><a href="dashboard.html">Dashboard</a></li>
                                            <li><a href="companydetail">My Profile</a></li>
                                            <li><a href="company-details.html">Company Details</a></li>
                                            <li><a href="manage-projects.html">Projects</a></li>
                                            <li><a href="favourites.html">Favourites</a></li>
                                                                                       
                                            <li><a href="recruitersetting">Settings</a></li>
                                            <li><a href="logout">Logout</a></li>
                                        </ul>
                                    </li>
                                </c:if>
                                <c:if test="${sessionScope.account.roleID.getRoleID() == 1 || sessionScope.account.roleID.getRoleID() == 2}">
                                    <li>
                                        <a href="/admin/index.html" target="_blank">Admin</a>
                                        <ul class="submenu">
                                            
                                            <li><a href="dashboard.html">Dashboard</a></li>
                                            <li><a href="recruiterprofile">My Profile</a></li>
                                            <li><a href="company-details.html">Company Details</a></li>
                                            <li><a href="manage-projects.html">Projects</a></li>
                                            <li><a href="favourites.html">Favourites</a></li>
                                                                                       
                                            <li><a href="profile-settings.html">Settings</a></li>
                                            <li><a href="logout">Logout</a></li>
                                        </ul>
                                    </li>
                                </c:if>
                                <c:if test="${sessionScope.account == null}">
                                    <li><a href="Register" class="reg-btn"><img src="assets/img/icon/users.svg" class="me-1" alt="img">Register</a></li>
                                    <li><a href="login" class="log-btn active"><img src="assets/img/icon/lock.svg" class="me-1" alt="img"> Login</a></li>
                                        </c:if>
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
                                                <p><span class="__cf_email__" data-cfemail="d4bdbab2bb94a3b5b8a0b1a6b3a6bdb2b2bdbafab7bbb9">[email&#160;protected]</span></p>
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


            <div class="content content-page bookmark">
                <div class="container">
                    <div class="row">

                        <div class="col-xl-3 col-lg-4 theiaStickySidebar">
                            <div class="settings-widget">
                                <div class="settings-header d-sm-flex flex-row flex-wrap text-center text-sm-start align-items-center">
                                    <a href="freelancer-profile.html"><img alt="profile image" src="assets/img/user/table-avatar-03.jpg" class="avatar-lg rounded-circle"></a>
                                    <div class="ms-sm-3 ms-md-0 ms-lg-3 mt-2 mt-sm-0 mt-md-2 mt-lg-0">
                                        <h3 class="mb-0"><a href="profile-settings.html"></a><img src="assets/img/icon/verified-badge.svg" class="ms-1" alt="Img"></h3>

                                    </div>
                                </div>
                                <div class="settings-menu">
                                    <div id="sidebar-menu" class="sidebar-menu">
                                        <ul>
                                            <li class="nav-item">
                                                <a href="dashboard.html" class="nav-link">
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
                                                        <a href="manage-projects.html">All Projects</a>
                                                    </li>
                                                    <li>
                                                        <a href="ongoing-projects.html">Ongoing Projects</a>
                                                    </li>
                                                    <li>
                                                        <a href="completed-projects.html">Completed Projects</a>
                                                    </li>
                                                    <li>
                                                        <a href="pending-projects.html">Pending Projects</a>
                                                    </li>
                                                    <li>
                                                        <a href="cancelled-projects.html">Cancelled Projects</a>
                                                    </li>
                                                    <li>
                                                        <a href="expired-projects.html">Expired Projects</a>
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
                                            <li class="nav-item submenu">
                                                <a href="javascript:void(0);" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-10.svg" alt="Img"> Settings
                                                    <span class="menu-arrow"></span>
                                                </a>
                                                <ul class="sub-menu-ul">
                                                    <li>
                                                        <a href="profile-settings.html" class="active">Profile</a>
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
                                <div class="setting-content employee-profile-new">
                                    <form action="https://kofejob.dreamstechnologies.com/html/template/profile-settings.html">
                                        <div class="card">
                                            <div class="pro-head">
                                                <h3>Profile Setting</h3>
                                            </div>
                                            <div class="pro-body">
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <div class="form-row pro-pad pt-0 ps-0">
                                                            <div class="input-block col-md-6 pro-pic">
                                                                <h4 class="mb-3">Recruiter Information</h4>
                                                                <label class="form-label">Profile Picture</label>
                                                                <div class="d-flex align-items-center">
                                                                    <div class="upload-images">
                                                                        <img src="${recruiter.image}" alt="Image" id="blah">
                                                                    </div>
                                                                    <div class="ms-3">
                                                                        <label class="file-upload image-upbtn ms-0">
                                                                            Upload Image <input type="file" id="imgInp">
                                                                        </label>
                                                                        <p>Max Image size 300*300</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="container">
                                                            <h2>Recruiter Profile</h2>
                                                            <form action="updateRecruiterProfile" method="post">
                                                                <div class="row">
                                                                    <div class="col-lg-6 col-md-12">
                                                                        <div class="mb-3">
                                                                            <label class="form-label">First Name</label>
                                                                            <input type="text" class="form-control" name="firstName" value="${recruiter.firstName}">
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6 col-md-12">
                                                                        <div class="mb-3">
                                                                            <label class="form-label">Last Name</label>
                                                                            <input type="text" class="form-control" name="lastName" value="${recruiter.lastName}">
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6 col-md-12">
                                                                        <div class="mb-3">
                                                                            <label class="form-label">Phone Number</label>
                                                                            <input type="text" class="form-control" name="phoneNumber" value="${recruiter.phone}">
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6 col-md-12">
                                                                        <div class="mb-3">
                                                                            <label class="form-label">Email</label>
                                                                            <input type="text" class="form-control" name="email" value="${recruiter.email}" readonly>
                                                                        </div>
                                                                    </div>

                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="container">
                                                <h2>Company Details</h2>
                                                <form action="updateCompanyDetails" method="post">
                                                    <div class="card">
                                                        <div class="pro-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="form-row pro-pad pt-0 ps-0">
                                                                        
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6">
                                                                    <div class="mb-3">
                                                                        <label class="form-label">Company Name</label>
                                                                        <input type="text" class="form-control" name="companyName" value="${company.companyName}">
                                                                    </div>
                                                                </div>
                                                                                                                               </div>
                                                                <div class="col-lg-6 col-md-12">
                                                                    <div class="mb-3">
                                                                        <label class="form-label">Established On</label>
                                                                        <input type="text" class="form-control" name="establishedOn" value="${company.establishedOn}">
                                                                    </div>
                                                                </div>
                                                                
                                                                <div class="col-lg-6 col-md-12">
                                                                    <div class="mb-3">
                                                                        <label class="form-label">Website</label>
                                                                        <input type="text" class="form-control" name="website" value="${company.website}">
                                                                    </div>
                                                                </div>
                                                          <div class="col-lg-6 col-md-12">
                                                                    <div class="mb-3">
                                                                        <label class="form-label">Team Number</label>
                                                                        <input type="text" class="form-control" name="website" value="${company.teamNumber}">
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-12">
                                                                    <label class="form-label">Describe</label>
                                                                    <textarea rows="4" class="form-control" name="describe">${company.describe}</textarea>
                                                                </div>
                                                               </div> 
                                                            </div>
                                                        </div>
                                                    
                                                </form>
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


           

            <%@ include file="footter.jsp" %>                  


        </div>


        <script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-3.7.1.min.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>

        <script src="assets/js/bootstrap.bundle.min.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>

        <script src="assets/plugins/select2/js/select2.min.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>

        <script src="assets/js/moment.min.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>
        <script src="assets/js/bootstrap-datetimepicker.min.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>

        <script src="assets/plugins/datatables/jquery.dataTables.min.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>
        <script src="assets/plugins/datatables/datatables.min.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>

        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>

        <script src="assets/js/script.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>
        <script src="../../cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="ba3353e5dfbf68844181f2d9-|49" defer></script></body>

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/profile-settings.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:34:09 GMT -->
</html>