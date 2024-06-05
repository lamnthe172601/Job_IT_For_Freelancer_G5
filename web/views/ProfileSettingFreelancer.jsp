<%-- 
    Document   : ProfileSettingFreelancer
    Created on : Jun 2, 2024, 1:34:33 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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





                                <c:if test="${sessionScope.account.roleID.getRoleID() == 4}">
                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">Hello ${sessionScope.account.username} <i class="fas fa-chevron-down"></i></a>
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
                                <c:if test="${sessionScope.account.roleID.getRoleID() == 1 || sessionScope.account.roleID.getRoleID() == 2}">
                                    <li>
                                        <a href="/admin/index.html" target="_blank">Admin</a>
                                        <ul class="submenu">

                                            <li><a href="dashboard.html">Dashboard</a></li>
                                            <li><a href="company-profile.html">My Profile</a></li>
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


                            <c:if test="${sessionScope.account.roleID.getRoleID() == 3}">
                                <li class="nav-item dropdown account-item">
                                    <a href="javascript:void(0);" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
                                        <span class="user-img">
                                            <img src="${freelancer.image}" alt="Img">
                                        </span>
                                        <span>${freelancer.fullname()}</span>
                                    </a>
                                    <div class="dropdown-menu emp">
                                        <div class="drop-head">
                                            <a href="javascript:void(0);" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
                                                <span class="user-img">
                                                    <img src="assets/img/user/avatar-1.jpg" alt="Img">
                                                </span>
                                                <div>
                                                    <span>${freelancer.fullname()}</span>
                                                    <p><span  data-cfemail="81e8efe7eec1e3f3f4e2e4e3f4f2e9afe2eeec">@${sessionScope.account.username}</span></p>
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
                            </c:if>
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
                                    <a href="freelancer-profile.html"><img alt="profile image" src="${freelancer.image}" class="avatar-lg rounded-circle"></a>
                                    <div class="ms-sm-3 ms-md-0 ms-lg-3 mt-2 mt-sm-0 mt-md-2 mt-lg-0">
                                        <h3 class="mb-0">${freelancer.fullname()}</h3>
                                        <p class="mb-0">@${sessionScope.account.username}</p>
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
                            <div class="pro-pos">
                                <div class="setting-content">

                                    <form action="UpdateProfile" method="post" enctype="multipart/form-data">


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
                                                                        <img style="width: 80px; height: 80px;" src="${freelancer.image}" alt id="blah">
                                                                    </div>
                                                                    <div class="ms-3 freelancer-pic-upload">
                                                                        <label class="image-upbtn">
                                                                            Upload Image <input type="file" id="imgInp" name="profileImage">
                                                                        </label>
                                                                        <p>Max Image size 300*300</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div >

                                                        <div class="mb-3">
                                                            <label hidden="" class="form-label">id</label>
                                                            <input hidden=""  type="text" name="freelanceID" class="form-control" value="${freelancer.freelanceID}">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-12">

                                                        <div class="mb-3">
                                                            <label class="form-label">First Name</label>
                                                            <input  type="text" name="firstname" class="form-control" value="${freelancer.first_name}">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-12">
                                                        <div class="mb-3">
                                                            <label class="form-label">Last Name</label>
                                                            <input type="text" name="lastname" class="form-control" value="${freelancer.last_name}">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-12">
                                                        <div class="mb-3">
                                                            <label class="form-label">Phone Number</label>
                                                            <input type="text" name="phone" class="form-control" value="${freelancer.phone}">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-12">
                                                        <div class="mb-3">
                                                            <label class="form-label">Email Address</label>
                                                            <input type="text" name="email" class="form-control" value="${freelancer.email}">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4 col-md-12">
                                                        <div class="mb-3">
                                                            <label class="form-label">Date of Birth</label>
                                                            <input type="date" name="dob" class="form-control" value="${freelancer.dob}">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4 col-md-12">
                                                        <div class="mb-3 input-block">
                                                            <label class="form-label">Gender</label>
                                                            <select  name="gender" class="form-control select">
                                                                <option value="1" ${freelancer.gender ? 'selected="selected"' : ''}>
                                                                    Male
                                                                </option>
                                                                <option value="0" ${!freelancer.gender ? 'selected="selected"' : ''}>
                                                                    Female
                                                                </option>
                                                            </select>
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
                                                        <textarea name="decscribe" class="form-control" rows="5">${freelancer.describe}</textarea>
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
                                                        <c:forEach items="${skillset}" var="skillset">
                                                            <div class="form-row align-items-center skill-cont">                                                              
                                                                <input name="skill" type="checkbox" value="${skillset.skill_set_ID}"
                                                                       <c:forEach items="${skills}" var="skill">
                                                                           ${skillset.skill_set_ID == skill.skill_set_ID.skill_set_ID ? 'checked="checked"' : ''}
                                                                       </c:forEach>>                                                                  
                                                                ${skillset.skill_set_name} 
                                                            </div>
                                                        </c:forEach>
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
                                                    <c:forEach items="${education}" var="education">
                                                        <div class="form-row align-items-center skill-cont">
                                                            <div class="input-block col-lg-3">
                                                                <label class="form-label">Degree Name</label>
                                                                <select name="degree" class="form-control">
                                                                    <c:forEach items="${dregee}" var="degree">
                                                                        <option value="${degree.dregeeID}" ${degree.dregeeID == education.degreeID.dregeeID ? 'selected="selected"' : ''}>
                                                                            ${degree.degree_name}
                                                                        </option>
                                                                    </c:forEach>
                                                                </select>

                                                            </div>
                                                            <div class="input-block col-lg-3">
                                                                <label class="form-label">University Name</label>
                                                                <input name="educationName" type="text" class="form-control" value="${education.university_name}">
                                                            </div>
                                                            <div class="col-md-3 input-block floating-icon">
                                                                <label class="form-label">Start Date</label>
                                                                <input name="dateStart" type="date" value="${education.start_date}" class="form-control " >

                                                            </div>
                                                            <div class="col-md-2 input-block floating-icon">
                                                                <label class="form-label">End Date</label>
                                                                <input type="date" name="dateEnd" value="${education.end_date}" class="form-control " >

                                                            </div>
                                                        </div>
                                                    </c:forEach>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-12 w-100">
                                            <div class="card flex-fill mb-3">
                                                <div class="pro-head">
                                                    <h4 class="pro-titles without-border mb-0">Experience</h4>
                                                </div>
                                                <c:forEach items="${experience}" var="experience">
                                                    <div class="pro-body  ">
                                                        <div class="form-row align-items-center skill-cont">
                                                            <div class="input-block col-lg-3">
                                                                <label class="form-label">Company Name</label>
                                                                <input name="experienceName" type="text" class="form-control" value="${experience.experienceName}" >
                                                            </div>
                                                            <div class="input-block col-lg-3">
                                                                <label class="form-label">Position</label>
                                                                <input name="your_project" type="text" class="form-control" value="${experience.your_project}">
                                                            </div>
                                                            <div class="col-md-3 input-block floating-icon">
                                                                <label class="form-label">Start Date</label>
                                                                <input name="startDate" type="date" class="form-control " value="${experience.start_date}">

                                                            </div>
                                                            <div class="col-md-2 input-block floating-icon">
                                                                <label class="form-label">End Date</label>
                                                                <input name="endDate" type="date" class="form-control " value="${experience.end_date}">
                                                            </div>

                                                        </div>
                                                    </div>
                                                </c:forEach>

                                            </div>
                                        </div>

                                        <div class="card text-end border-0">
                                            <div class="pro-body">
                                                <button onclick="MyProfile" class="btn btn-secondary click-btn btn-plan">Cancel</button>
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
                                    <a href="home" class="menu-logo">
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




            <script data-cfasync="false" src="assets/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-3.7.1.min.js" type="4558dd39f62761c94e962170-text/javascript"></script>

            <script src="assets/js/bootstrap.bundle.min.js" type="4558dd39f62761c94e962170-text/javascript"></script>

            <script src="assets/plugins/select2/js/select2.min.js" type="4558dd39f62761c94e962170-text/javascript"></script>

            <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js" type="4558dd39f62761c94e962170-text/javascript"></script>
            <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js" type="4558dd39f62761c94e962170-text/javascript"></script>

            <script src="assets/js/moment.min.js" type="4558dd39f62761c94e962170-text/javascript"></script>
            <script src="assets/js/bootstrap-datetimepicker.min.js" type="4558dd39f62761c94e962170-text/javascript"></script>

            <script src="assets/js/profile-settings.js" type="4558dd39f62761c94e962170-text/javascript"></script>

            <script src="assets/js/script.js" type="4558dd39f62761c94e962170-text/javascript"></script>
            <script src="assets/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="4558dd39f62761c94e962170-|49" defer></script></body>

</html>