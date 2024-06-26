<%-- 
    Document   : PopularPost
    Created on : May 28, 2024, 1:28:46 PM
    Author     : DUC MINH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

                                            <li><a href="ListApply">Jobs Apply</a></li>
                                            <li><a href="jobforyou">Jobs For you</a></li>
                                        </ul>
                                    </li>

                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">For Jobs<i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">

                                            <li><a href="AllListPost">Jobs List</a></li>                                        
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

                                            <li><a href="jobsList">List Post</a></li>
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


            <div class="content content-page bookmark">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-3 col-lg-4 theiaStickySidebar">
                            <div class="settings-widget">
                                <div class="settings-header d-sm-flex flex-row flex-wrap text-center text-sm-start align-items-center">
                                    <a href="MyProfile?id=${userID}"><img alt="profile image" src="${freelancer.image}" class="avatar-lg rounded-circle"></a>
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
                                                    <img src="assets/img/icon/sidebar-icon-01.svg" alt="Img">My Profile
                                                </a>
                                            </li>
                                            <li class="nav-item submenu">
                                                <a href="ListApply" class="nav-link active">
                                                    <img src="assets/img/icon/sidebar-icon-02.svg" alt="Img"> Applied
                                                    <!--                                                    <span class="menu-arrow"></span>-->
                                                </a>
                                                <ul class="sub-menu-ul">
                                                    <li>
                                                        <a href="freelancer-project-proposals">My Proposal</a>
                                                    </li>
                                                    <li>
                                                        <a href="freelancer-ongoing-projects">Ongoing Projects</a>
                                                    </li>
                                                    <li>
                                                        <a href="freelancer-completed-projects">Completed Projects</a>
                                                    </li>
                                                    <li>
                                                        <a href="freelancer-cancelled-projects">Cancelled Projects</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="nav-item submenu">
                                                <a href="PostFavourites" class="nav-link ">
                                                    <img src="assets/img/icon/sidebar-icon-03.svg" alt="Img"> Favourites
                                                    <!--                                                    <span class="menu-arrow"></span>-->
                                                </a>
                                                <ul class="sub-menu-ul">
                                                    <li>
                                                        <a href="freelancer-favourites">Bookmarked Projects</a>
                                                    </li>
                                                    <li>
                                                        <a href="freelancer-invitations">Invitations</a>
                                                    </li>
                                                </ul>
                                            </li>
<!--                                            <li class="nav-item">
                                                <a href="freelancer-review" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-04.svg" alt="Img"> Reviews
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="freelancer-portfolio" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-05.svg" alt="Img"> Portfolio
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="freelancer-chats" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-06.svg" alt="Img"> Chat
                                                </a>
                                            </li>-->

                                            <li class="nav-item submenu">
                                                <a href="UpdateProfile?id=${sessionScope.account.userID}" class="nav-link ">
                                                    <img src="assets/img/icon/sidebar-icon-10.svg" alt="Img"> Settings
                                                    <!--                                                    <span class="menu-arrow"></span>-->
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
                            <div class="dashboard-sec freelance-favourites">
                                <form action="ListApply" method="post" class="form-inline my-2 my-lg-0">
                                    <div class="input-group input-group-sm">
                                        <c:if test="${txtSearch != null}">
                                            <input name="searchName" type="text" value="${txtSearch}" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search">
                                        </c:if>
                                        <c:if test="${txtSearch == null}">
                                            <input name="searchName" type="text"  class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search">
                                        </c:if>
                                        <div class="input-group-append">
                                            <button type="submit" class="btn btn-secondary btn-number">
                                                <i class="fa fa-search"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>

                                <div class="col-xl-12">
                                    <div class="card mb-4 ongoing-project-card" style="border: none; padding-top: 30px; ">
<!--                                        <div class="pro-head">
                                            <h2>List Job Apply</h2>

                                        </div>-->
                                        <div class="table-responsive recent-earnings flex-fill">
                                            <table class="table mb-0">
                                                <thead>
                                                    <tr>
                                                        <th>Title</th>
                                                        <th>Position</th>
                                                        <th>Budget</th>
                                                        <th>Create On</th>
                                                        <th>Apply On</th>
                                                        <th>Status</th>
                                                        <th>Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach items="${post}" var="p">
                                                        <tr>
                                                            <td class="title">${p.title}</td>
                                                            <td class="title">${p.category}</td>
                                                            <td>$${p.budget}</td>
                                                            <td>${p.datePost}</td>
                                                            <td>${p.dateApply}</td>
                                                            <c:if test="${p.status=='Reject'}">
                                                                <td style="color: #FF0000">${p.status}</td>
                                                            </c:if>
                                                            <c:if test="${p.status=='Pending'}">
                                                                <td style="color: #CC9900">${p.status}</td>
                                                            </c:if>
                                                            <c:if test="${p.status=='Approve'}">
                                                                <td style="color: #009933">${p.status}</td>
                                                            </c:if>

                                                            <td><a style="padding-left: 25%" href="PostDetails?postID=${p.postID}"><i
                                                                        class="feather-eye"></i></a></td>
                                                        </tr>
                                                    </c:forEach>     
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <c:if test="${endPage > 1}">
                                        <div class="row">
                                            <div class="col-md-12">                  
                                                <ul class="paginations list-pagination">                                          
                                                    <!--<li class="page-item"><a href="javascript:void(0);"><i class="feather-chevron-left"></i></a></li>-->
                                                    <c:forEach begin="1" end="${endPage}" var="e">     
                                                        <!--<li class="page-item"><a href="javascript:void(0);" class="active">1</a></li>-->
                                                        <li class="page-item" ><a class="${tag == e?"active":""}" href="ListApply?index=${e}">${e}</a></li>
                                                        <!--<li class="page-item"><a href="javascript:void(0);">3</a></li>
                                                        <li class="page-item"><a href="javascript:void(0);">...</a></li>
                                                        <li class="page-item"><a href="javascript:void(0);">10</a></li>-->
                                                    </c:forEach>
                                                    <!--<li class="page-item"><a href="javascript:void(0);"><i class="feather-chevron-right"></i></a></li>-->                                          
                                                </ul>
                                            </div>
                                        </div>
                                    </c:if>
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

        <style>
            .form-inline {
                margin-left: 60%;
                margin-right: 50px;
            }

            /* Để căn chỉnh nút và icon */
            .input-group {
                position: relative;
                width: calc(100% - 30px);
            }

            .btn.btn-secondary.btn-number {
                position: absolute;
                right: -50px;
                top: 50%;
                transform: translateY(-50%);
            }

            .title{
                max-width: 120px;
                white-space: nowrap;
                overflow: hidden;
                text-overflow: ellipsis;
            }

        </style>

        <script>


        </script>







        <script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-3.7.1.min.js" type="e07a54eb38ecbc80607f458c-text/javascript"></script>

        <script src="assets/js/bootstrap.bundle.min.js" type="e07a54eb38ecbc80607f458c-text/javascript"></script>

        <script src="assets/plugins/select2/js/select2.min.js" type="e07a54eb38ecbc80607f458c-text/javascript"></script>

        <script src="assets/plugins/datatables/jquery.dataTables.min.js" type="e07a54eb38ecbc80607f458c-text/javascript"></script>
        <script src="assets/plugins/datatables/datatables.min.js" type="e07a54eb38ecbc80607f458c-text/javascript"></script>

        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js" type="e07a54eb38ecbc80607f458c-text/javascript"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js" type="e07a54eb38ecbc80607f458c-text/javascript"></script>

        <script src="assets/js/script.js" type="e07a54eb38ecbc80607f458c-text/javascript"></script>
        <script src="../../cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="e07a54eb38ecbc80607f458c-|49" defer></script>
        <script src="assets/js/bootstrap.bundle.min.js" type="39bd9d3b5f9a12b82c2bbcef-text/javascript"></script>
        <script src="assets/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="39bd9d3b5f9a12b82c2bbcef-|49" defer></script></body>

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/freelancer-favourites.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:34:46 GMT -->
</html>
