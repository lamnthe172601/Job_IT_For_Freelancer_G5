<%-- 
    Document   : ProfileFreelancer
    Created on : Jun 1, 2024, 11:43:49 PM
    Author     : khuongld
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/freelancer-profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:37:42 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
        <title>KofeJob</title>

        <link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body>

        <div class="main-wrapper">


            <header class="header">
                <div class="container">
                    <nav class="navbar navbar-expand-lg header-nav p-0">
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
                                            <li><a href="MyProfile?id=${sessionScope.account.userID}">My Profile</a></li>
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


                            <c:if test="${sessionScope.account.roleID.getRoleID() == null}">
                                <li><a href="login" class="login-btn"><i class="feather-plus me-1"></i>Post a Project </a></li>
                                </c:if>
                                <c:if test="${sessionScope.account.roleID.getRoleID() == 4}">
                                <li><a href="postProject" class="login-btn"><i class="feather-plus me-1"></i>Post a Project </a></li>
                                </c:if>
                                <c:if test="${sessionScope.account.roleID.getRoleID() == 3}">
                                <li><a href="searchJob" class="login-btn"><i class="feather-plus me-1"></i>Search a Job IT </a></li>
                                </c:if>
                        </ul>
                    </nav>
                </div>
            </header>


            <div class="bread-crumb-bar">
                <div class="container">
                    <div class="row align-items-center inner-banner">
                        <div class="col-md-12 col-12 text-center">
                            <div class="breadcrumb-list">
                                <h2>Freelancer Profile</h2>
                                <nav aria-label="breadcrumb" class="page-breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                        <li class="breadcrumb-item" aria-current="page">Freelancer Profile</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="content">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="profile profile-freelance">
                                <div class="profile-box">
                                    <div class="provider-widget">
                                        <div class="pro-info-left">
                                            <div class="provider-img "><img style="width: 80px; height: 80px;" src="${freelancer.image}" class="img-fluid" alt="User"></div>
                                            <div class="profile-info">
                                                <h2 class="profile-title">${freelancer.fullname()}</h2>
                                                <p class="mb-0">@${freelancer.email}</p>                                             
                                            </div>
                                        </div>
                                        <div class="pro-info-right profile-inf">
                                            <a class="btn profile-edit-btn" href="UpdateProfile?id=${sessionScope.account.userID}">Edit Profile</a>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-8 col-md-12">
                            <div class="pro-view">

                                <nav class="provider-tabs mb-4">
                                    <ul class="nav nav-tabs nav-tabs-solid nav-justified">
                                        <li class="nav-item">
                                            <a class="nav-link" href="#overview">
                                                <img src="assets/img/icon/tab-icon-01.png" height="25" alt="User Image">
                                                <p class="bg-red">Overview</p>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#experience">
                                                <img src="assets/img/icon/tab-icon-03.png" height="25" alt="User Image">
                                                <p class="bg-violet">Experience</p>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#education">
                                                <img src="assets/img/icon/tab-icon-04.png" height="25" alt="User Image">
                                                <p class="bg-yellow">Education</p>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#skill">
                                                <img src="assets/img/icon/tab-icon-05.png" height="25" alt="User Image">
                                                <p class="bg-pink">Skills</p>
                                            </a>
                                        </li>

                                    </ul>
                                </nav>


                                <div class="pro-post widget-box" id="overview">
                                    <h3 class="pro-title">Overview</h3>
                                    <div class="pro-content">

                                        <div class="mt-4">
                                            <h4 class="widget-title">First Name:</h4>
                                            <p>${freelancer.first_name}</p>
                                        </div>
                                        <div class="mt-4">
                                            <h4 class="widget-title">Last Name:</h4>
                                            <p>${freelancer.last_name}</p>
                                        </div>
                                        <div class="mt-4">
                                            <h4 class="widget-title">Date of birth: </h4>
                                            <p>${freelancer.dob}</p>
                                        </div>
                                        <div class="mt-4">
                                            <h4 class="widget-title">Location: </h4>
                                            <p>${freelancer.describe}</p>
                                        </div>

                                    </div>
                                </div>


                                <div class="pro-post project-widget widget-box" id="experience">
                                    <h3 class="pro-title">Experience</h3>
                                    <c:forEach  items="${experience}" var="experience">
                                        <div class="pro-content">
                                            <div class="widget-list mb-0">
                                                <ul class="clearfix">
                                                    <li>
                                                        <h4>${experience.experience_work_name}</h4>
                                                        <h5>${experience.getStart_date()} -> ${experience.getEnd_date()}</h5>
                                                        <p>${experience.position}</p>
                                                    </li>

                                                </ul>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>


                                <div class="pro-post project-widget widget-box" id="education">
                                    <h3 class="pro-title">Educational Details</h3>
                                    <div class="pro-content">
                                        <div class="widget-list mb-0">
                                            <ul class="clearfix">
                                                <c:forEach items="${education}" var="education">
                                                    <li>
                                                        <h4>${education.university_name} </h4>
                                                        <h5>${education.start_date} -> ${education.end_date}</h5>
                                                        <p>Degree: ${education.degreeID.degree_name}</p>
                                                    </li>
                                                </c:forEach>
                                            </ul>
                                        </div>
                                    </div>
                                </div>


                                <div class="pro-post project-widget widget-box" id="skill">
                                    <h3 class="pro-title">Technical Skills</h3>

                                    <div class="pro-content">
                                        <div class="tags">
                                            <c:forEach items="${skills}" var="skill">
                                                <span class="badge badge-pill badge-skills">+ ${skill.skill_set_ID.skill_set_name}</span>
                                            </c:forEach>
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>

                        <div class="col-lg-4 col-md-12 sidebar-right theiaStickySidebar">
                            <div class="pro-post widget-box follow-widget">
                                <a href="javascript:void(0);" class="btn follow-btn">+ Follow</a>
                                <ul class="follow-posts pro-post">
                                    <li><p>Following</p><h6>49</h6></li>
                                    <li><p>Followers</p><h6>422</h6></li>
                                </ul>
                            </div>
                            <div class="pro-post widget-box language-widget">
                                <h4 class="pro-title">LANGUAGE SKILLS</h4>
                                <ul class="latest-posts pro-content pt-0">
                                    <li><p>English</p>
                                        <div class="progress progress-md mb-0">
                                            <div class="progress-bar" role="progressbar" style="width: 50%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                    </li>
                                    <li><p>Russian</p>
                                        <div class="progress progress-md mb-0">
                                            <div class="progress-bar bg-success" role="progressbar" style="width: 65%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div></li>
                                    <li><p>German</p>
                                        <div class="progress progress-md mb-0">
                                            <div class="progress-bar bg-warning" role="progressbar" style="width: 50%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="pro-post widget-box about-widget">
                                <h4 class="pro-title mb-0">ABOUT ME</h4>
                                <ul class="latest-posts pro-content">
                                    <li><p>Gender</p><h6>${freelancer.gender ? "Male" : "Female"} </h6></li>
                                    <li><p>Experience</p><h6>5 Years</h6></li>
                                    <li><p>Location</p><h6>Istanbul/Turkey</h6></li>
                                </ul>
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


        <script src="assets/js/jquery-3.7.1.min.js" type="c62a37b1c7e125ad6ef80457-text/javascript"></script>

        <script src="assets/js/bootstrap.bundle.min.js" type="c62a37b1c7e125ad6ef80457-text/javascript"></script>

        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js" type="c62a37b1c7e125ad6ef80457-text/javascript"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js" type="c62a37b1c7e125ad6ef80457-text/javascript"></script>

        <script src="assets/js/script.js" type="c62a37b1c7e125ad6ef80457-text/javascript"></script>
        <script src="assets/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="c62a37b1c7e125ad6ef80457-|49" defer></script></body>

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/freelancer-profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:37:52 GMT -->
</html>