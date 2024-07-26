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
        <style>
            .skill-container {
                display: flex;
                flex-wrap: wrap;
                gap: 10px; /* Khoảng cách giữa các item */
            }

            .skill-item {
                display: flex;
                align-items: center;
                margin-right: 15px; /* Khoảng cách giữa các item theo chiều ngang */
                margin-bottom: 10px; /* Khoảng cách giữa các hàng nếu wrapping */
            }

            .skill-item input[type="checkbox"] {
                margin-right: 5px; /* Khoảng cách giữa checkbox và text */
            }
        </style>
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
                                            <li><a href="JobforFreelancer">Jobs For you</a></li>
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

                                <c:if test="${sessionScope.account.roleID.getRoleID() == 4}">
                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">Hello ${sessionScope.account.username} <i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">

                                            <li><a href="dashboard">Dashboard</a></li>
                                            <li><a href="companydetail">My Profile</a></li>
                                            <li><a href="company-details">Company Details</a></li>
                                            <li><a href="manage-projects">Projects</a></li>
                                            <li><a href="favourites">Favourites</a></li>                                                                                       
                                            <li><a href="profile-settings">Settings</a></li>
                                            <li><a href="logout">Logout</a></li>
                                        </ul>
                                    </li>
                                </c:if>
                                <c:if test="${sessionScope.account.roleID.getRoleID() == 1 || sessionScope.account.roleID.getRoleID() == 2}">
                                    <li>
                                        <a href="/admin/index.html" target="_blank">Admin</a>
                                        <ul class="submenu">

                                            <li><a href="dashboardAdmin">Dashboard</a></li>                                           
                                            <li><a href="profile-settings">Settings</a></li>
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
                                                    <img src="${freelancer.image}" alt="Img">
                                                </span>
                                                <div>
                                                    <span>${freelancer.fullname()}</span>
                                                    <p><span  data-cfemail="81e8efe7eec1e3f3f4e2e4e3f4f2e9afe2eeec">@${sessionScope.account.username}</span></p>
                                                </div>
                                            </a>
                                        </div>
                                        <a class="dropdown-item" href="MyProfile?id=${sessionScope.account.userID}"><img src="assets/img/icon/user-dropdown-icon--01.svg" alt="Img"> My Profile</a>
                                        <a class="dropdown-item" href="ListApply"><img src="assets/img/icon/user-dropdown-icon--02.svg" alt="Img"> Applied</a>

                                        <a class="dropdown-item" href="UpdateProfile?id=${sessionScope.account.userID}"><img src="assets/img/icon/user-dropdown-icon--06.svg" alt="Img"> Profile Settings</a>
                                        <a class="dropdown-item" href="logout"><img src="assets/img/icon/user-dropdown-icon--07.svg" alt="Img"> Logout</a>
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
                                    <a href=""><img alt="profile image" src="${freelancer.image}" class="avatar-lg rounded-circle"></a>
                                    <div class="ms-sm-3 ms-md-0 ms-lg-3 mt-2 mt-sm-0 mt-md-2 mt-lg-0">
                                        <h3 class="mb-0">${freelancer.fullname()}</h3>
                                        <p class="mb-0">@${sessionScope.account.username}</p>
                                    </div>
                                </div>
                                <div class="settings-menu">
                                    <div id="sidebar-menu" class="sidebar-menu">
                                        <ul>
                                            <li class="nav-item">
                                                <a href="MyProfile?id=${sessionScope.account.userID}" class="nav-link ">
                                                    <img src="assets/img/icon/sidebar-icon-01.svg" alt="Img"> My Profile
                                                </a>
                                            </li>
                                            <li class="nav-item submenu">
                                                <a href="ListApply" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-02.svg" alt="Img"> Applied
                                                    <!--                                                    <span class="menu-arrow"></span>-->
                                                </a>
                                            </li>
                                            <li class="nav-item submenu">
                                                <a href="PostFavourites" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-03.svg" alt="Img"> Favourites
                                                    <!--                                                    <span class="menu-arrow"></span>-->
                                                </a>
                                            </li>

                                            <li class="nav-item submenu">
                                                <a href="freelancer-profile-settings.html" class="nav-link active">
                                                    <img src="assets/img/icon/sidebar-icon-10.svg" alt="Img"> Settings
                                                    <span class="menu-arrow"></span>
                                                </a>
                                                <ul class="sub-menu-ul">
                                                    <li>
                                                        <a class="active" href="UpdateProfile?id=${sessionScope.account.userID}">Profile Setting</a>
                                                    </li>
                                                    <li>
                                                        <a href="changePassword">Changes Password</a>
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

                                    <form id="profileForm" name="profileForm" action="UpdateProfile" method="post" enctype="multipart/form-data">
                                        <div class="card">
                                            <div class="pro-head">
                                                <h3>Profile Setting</h3>
                                            </div>
                                            <div class="pro-body">
                                                <!-- Profile Picture -->
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <div class="form-row pro-pad pt-0 ps-0">
                                                            <div class="input-block col-md-6 pro-pic">
                                                                <label class="form-label">Profile Picture</label>
                                                                <div class="d-flex align-items-center">
                                                                    <div class="upload-images freelancer-pic-box">
                                                                        <img style="width: 80px; height: 80px;" src="${freelancer.image}" alt="" id="blah">
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
                                                </div>

                                                <!-- Personal Information -->
                                                <div class="row">
                                                    <div class="col-lg-6 col-md-12">
                                                        <div class="mb-3">
                                                            <label class="form-label">First Name</label>
                                                            <input type="text" name="firstname" class="form-control" value="${freelancer.first_name}">
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
                                                            <select name="gender" class="form-control select">
                                                                <option value="1" ${freelancer.gender ? 'selected="selected"' : ''}>Male</option>
                                                                <option value="0" ${!freelancer.gender ? 'selected="selected"' : ''}>Female</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Skills -->
                                        <div class="form-row">
                                            <div class="col-lg-12 w-100">
                                                <div class="card flex-fill mb-3">
                                                    <div class="pro-head">
                                                        <h4 class="pro-titles mb-0">Skills</h4>
                                                    </div>
                                                    <div class="skill-container">
                                                        <c:forEach items="${skillset}" var="skillset">
                                                            <div class="skill-item">
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

                                        <!-- Overview -->
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

                                        <!-- Education -->
                                        <div class="col-lg-12 w-100">
                                            <div class="card flex-fill mb-3 Education">
                                                <div class="pro-head">
                                                    <h4 class="pro-titles without-border mb-0">Education</h4>
                                                </div>
                                                <div class="pro-body">
                                                    <c:forEach items="${education}" var="education" varStatus="status">
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
                                                                <input name="dateStart" type="date" value="${education.start_date}" class="form-control">
                                                            </div>
                                                            <div class="col-md-2 input-block floating-icon">
                                                                <label class="form-label">End Date</label>
                                                                <input type="date" name="dateEnd" value="${education.end_date}" class="form-control">
                                                            </div>
                                                        </div>
                                                    </c:forEach>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Experience -->
                                        <div class="col-lg-12 w-100">
                                            <div class="card flex-fill mb-3 Experience">
                                                <div class="pro-head">
                                                    <h4 class="pro-titles without-border mb-0">Experience</h4>
                                                </div>
                                                <c:choose>
                                                    <c:when test="${empty experience}">
                                                        <div class="pro-body">
                                                            <div class="form-row align-items-center skill-cont">
                                                                <div class="input-block col-lg-3">
                                                                    <label class="form-label">Company Name</label>
                                                                    <input name="experienceName" type="text" class="form-control">
                                                                </div>
                                                                <div class="input-block col-lg-3">
                                                                    <label class="form-label">Position</label>
                                                                    <input name="your_project" type="text" class="form-control">
                                                                </div>
                                                                <div class="col-md-3 input-block floating-icon">
                                                                    <label class="form-label">Start Date</label>
                                                                    <input name="startDate" type="date" class="form-control">
                                                                </div>
                                                                <div class="col-md-2 input-block floating-icon">
                                                                    <label class="form-label">End Date</label>
                                                                    <input name="endDate" type="date" class="form-control">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <c:forEach items="${experience}" var="experience" varStatus="status">
                                                            <div class="pro-body">
                                                                <div class="form-row align-items-center skill-cont">
                                                                    <div class="input-block col-lg-3">
                                                                        <label class="form-label">Company Name</label>
                                                                        <input name="experienceName" type="text" class="form-control" value="${experience.experienceName}">
                                                                    </div>
                                                                    <div class="input-block col-lg-3">
                                                                        <label class="form-label">Position</label>
                                                                        <input name="your_project" type="text" class="form-control" value="${experience.your_project}">
                                                                    </div>
                                                                    <div class="col-md-3 input-block floating-icon">
                                                                        <label class="form-label">Start Date</label>
                                                                        <input name="startDate" type="date" class="form-control" value="${experience.start_date}">
                                                                    </div>
                                                                    <div class="col-md-2 input-block floating-icon">
                                                                        <label class="form-label">End Date</label>
                                                                        <input name="endDate" type="date" class="form-control" value="${experience.end_date}">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </c:forEach>
                                                    </c:otherwise>
                                                </c:choose>
                                            </div>
                                        </div>

                                        <!-- Submit Buttons -->
                                        <div class="card text-end border-0">
                                            <div class="pro-body">
                                                <button type="button" onclick="window.location.href = 'MyProfile?id=${sessionScope.account.userID}'" class="btn btn-secondary click-btn btn-plan">Cancel</button>
                                                <button type="submit" class="btn btn-primary click-btn btn-plan">Update</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <jsp:include page="footter.jsp" />



            <script>
                document.addEventListener('DOMContentLoaded', function () {
                    const form = document.querySelector('form[name="profileForm"]');
                    const inputs = form.querySelectorAll('input, select, textarea');

                    // Real-time validation
                    inputs.forEach(input => {
                        input.addEventListener('input', function () {
                            validateField(this);
                        });
                    });

                    // Form submission
                    form.addEventListener('submit', function (event) {
                        event.preventDefault();
                        if (validateForm()) {
                            submitForm();
                        }
                    });

                    // Image preview functionality
                    document.getElementById("imgInp").onchange = function () {
                        var reader = new FileReader();
                        reader.onload = function (e) {
                            document.getElementById("blah").src = e.target.result;
                        };
                        reader.readAsDataURL(this.files[0]);
                    };
                });

                function submitForm() {
                    console.log('submitForm() called');

                    const form = document.getElementById('profileForm');
                    const formData = new FormData(form);

                    // Log form data
                    for (let [key, value] of formData.entries()) {
                        console.log(`${key}: ${value}`);
                                }

                                fetch('UpdateProfile', {
                                    method: 'POST',
                                    body: formData
                                })
                                        .then(response => {
                                            console.log('Response status:', response.status);
                                            return response.json();
                                        })
                                        .then(data => {
                                            console.log('Response data:', data);
                                            if (data.success) {
                                                console.log('Update successful');
                                                Swal.fire({
                                                    icon: 'success',
                                                    title: 'Success',
                                                    text: data.message,
                                                    confirmButtonText: 'OK'
                                                }).then((result) => {
                                                    if (result.isConfirmed) {
                                                        console.log('Redirecting to profile page');
                                                        window.location.href = `UpdateProfile?id=${sessionScope.account.userID}`;
                                                    }
                                                });
                                            } else {
                                                console.error('Update failed:', data.message);
                                                Swal.fire({
                                                    icon: 'error',
                                                    title: 'Error',
                                                    text: data.message,
                                                    confirmButtonText: 'OK'
                                                });
                                            }
                                        })
                                        .catch(error => {
                                            console.error('Fetch error:', error);
                                            Swal.fire({
                                                icon: 'error',
                                                title: 'Error',
                                                text: 'An error occurred while communicating with the server.',
                                                confirmButtonText: 'OK'
                                            });
                                        });
                            }

                            function validateField(field) {
                                const fieldName = field.getAttribute('name');
                                let errorElement = document.getElementById(fieldName + 'Error');

                                if (!errorElement) {
                                    errorElement = document.createElement('div');
                                    errorElement.id = fieldName + 'Error';
                                    errorElement.className = 'text-danger';
                                    field.parentNode.insertBefore(errorElement, field.nextSibling);
                                }

                                switch (fieldName) {
                                    case 'firstname':
                                    case 'lastname':
                                        validateName(field, errorElement);
                                        break;
                                    case 'phone':
                                        validatePhone(field, errorElement);
                                        break;
                                    case 'email':
                                        validateEmail(field, errorElement);
                                        break;
                                    case 'dob':
                                        validateDate(field, errorElement);
                                        break;
                                    case 'gender':
                                        validateSelect(field, errorElement);
                                        break;
                                    case 'skill':
                                        validateSkills();
                                        break;
                                    case 'decscribe':
                                        validateDescription(field, errorElement);
                                        break;
                                    case 'degree':
                                    case 'educationName':
                                    case 'dateStart':
                                    case 'dateEnd':
                                        validateEducation();
                                        break;
                                    case 'experienceName':
                                    case 'your_project':
                                    case 'startDate':
                                    case 'endDate':
                                        validateExperience();
                                        break;
                                }
                            }

                            function validateName(field, errorElement) {
                                if (field.value.trim() === '') {
                                    errorElement.textContent = `Please enter name`;
                                } else {
                                    errorElement.textContent = '';
                                }
                            }

                            function validatePhone(field, errorElement) {
                                const phoneRegex = /^[0-9]{10}$/;
                                if (!phoneRegex.test(field.value.trim())) {
                                    errorElement.textContent = 'Please enter a valid 10-digit phone number';
                                } else {
                                    errorElement.textContent = '';
                                }
                            }

                            function validateEmail(field, errorElement) {
                                const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                                if (!emailRegex.test(field.value.trim())) {
                                    errorElement.textContent = 'Please enter a valid email address';
                                } else {
                                    errorElement.textContent = '';
                                }
                            }

                            function validateDate(field, errorElement) {
                                if (field.value === '') {
                                    errorElement.textContent = 'Please select a date';
                                } else {
                                    errorElement.textContent = '';
                                }
                            }

                            function validateSelect(field, errorElement) {
                                if (field.value === '') {
                                    errorElement.textContent = 'Please select an option';
                                } else {
                                    errorElement.textContent = '';
                                }
                            }

                            function validateDescription(field, errorElement) {
                                if (field.value.trim() === '') {
                                    errorElement.textContent = 'Description is required';
                                } else {
                                    errorElement.textContent = '';
                                }
                            }

                            function validateSkills() {
                                const skills = document.querySelectorAll('input[name="skill"]:checked');
                                let errorElement = document.getElementById('skillsError');
                                if (!errorElement) {
                                    errorElement = document.createElement('div');
                                    errorElement.id = 'skillsError';
                                    errorElement.className = 'text-danger';
                                    document.querySelector('.skill-container').appendChild(errorElement);
                                }

                                if (skills.length === 0) {
                                    errorElement.textContent = 'Please select at least one skill';
                                } else {
                                    errorElement.textContent = '';
                                }
                            }

                            function validateEducation() {
                                const educationContainer = document.querySelector('.card.flex-fill.mb-3.Education');
                                let errorElement = document.getElementById('educationError');
                                if (!errorElement) {
                                    errorElement = document.createElement('div');
                                    errorElement.id = 'educationError';
                                    errorElement.className = 'text-danger mt-2';
                                    educationContainer.appendChild(errorElement);
                                }

                                const degrees = document.getElementsByName('degree');
                                const educationNames = document.getElementsByName('educationName');
                                const dateStarts = document.getElementsByName('dateStart');
                                const dateEnds = document.getElementsByName('dateEnd');

                                let isValid = true;
                                let errorMessage = '';

                                for (let i = 0; i < degrees.length; i++) {
                                    if (degrees[i].value === '' || educationNames[i].value.trim() === '' ||
                                            dateStarts[i].value === '' || dateEnds[i].value === '') {
                                        isValid = false;
                                        errorMessage = 'Please fill all education fields.';
                                        break;
                                    }
                                    if (new Date(dateEnds[i].value) <= new Date(dateStarts[i].value)) {
                                        isValid = false;
                                        errorMessage = 'End date must be after start date in education.';
                                        break;
                                    }
                                }

                                errorElement.textContent = errorMessage;
                            }

                            function validateExperience() {
                                const experienceContainer = document.querySelector('.card.flex-fill.mb-3.Experience');
                                let errorElement = document.getElementById('experienceError');
                                if (!errorElement) {
                                    errorElement = document.createElement('div');
                                    errorElement.id = 'experienceError';
                                    errorElement.className = 'text-danger mt-2';
                                    experienceContainer.appendChild(errorElement);
                                }

                                const experienceNames = document.getElementsByName('experienceName');
                                const positions = document.getElementsByName('your_project');
                                const startDates = document.getElementsByName('startDate');
                                const endDates = document.getElementsByName('endDate');

                                let isValid = true;
                                let errorMessage = '';

                                for (let i = 0; i < experienceNames.length; i++) {
                                    if (experienceNames[i].value.trim() === '' || positions[i].value.trim() === '' ||
                                            startDates[i].value === '' || endDates[i].value === '') {
                                        isValid = false;
                                        errorMessage = 'Please fill all experience fields.';
                                        break;
                                    }
                                    if (new Date(endDates[i].value) <= new Date(startDates[i].value)) {
                                        isValid = false;
                                        errorMessage = 'End date must be after start date in experience.';
                                        break;
                                    }
                                }

                                errorElement.textContent = errorMessage;
                            }

                            function validateForm() {
                                let isValid = true;
                                const inputs = document.querySelectorAll('input, select, textarea');

                                inputs.forEach(input => {
                                    validateField(input);
                                    const errorElement = document.getElementById(input.name + 'Error');
                                    if (errorElement && errorElement.textContent !== '') {
                                        isValid = false;
                                    }
                                });

                                validateSkills();
                                const skillsError = document.getElementById('skillsError');
                                if (skillsError && skillsError.textContent !== '') {
                                    isValid = false;
                                }

                                validateEducation();
                                const educationError = document.getElementById('educationError');
                                if (educationError && educationError.textContent !== '') {
                                    isValid = false;
                                }

                                validateExperience();
                                const experienceError = document.getElementById('experienceError');
                                if (experienceError && experienceError.textContent !== '') {
                                    isValid = false;
                                }

                                return isValid;
                            }
            </script>


            <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>


            <script data-cfasync="false" src="assets/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-3.7.1.min.js" type="4558dd39f62761c94e962170-text/javascript"></script>

            <script src="assets/js/bootstrap.bundle.min.js" type="4558dd39f62761c94e962170-text/javascript"></script>

            <script src="assets/plugins/select2/js/select2.min.js" type="4558dd39f62761c94e962170-text/javascript"></script>

            <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js" type="4558dd39f62761c94e962170-text/javascript"></script>
            <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js" type="4558dd39f62761c94e962170-text/javascript"></script>

            <script src="assets/js/moment.min.js" type="4558dd39f62761c94e962170-text/javascript"></script>
            <script src="assets/js/bootstrap-datetimepicker.min.js" type="4558dd39f62761c94e962170-text/javascript"></script>

            <script src="assets/js/profile-settings.js" type="4558dd39f62761c94e962170-text/javascript"></script>


            <script src="assets/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="4558dd39f62761c94e962170-|49" defer></script></body>

</html>