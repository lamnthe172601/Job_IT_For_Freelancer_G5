<%-- 
    Document   : CreatePost
    Created on : Jun 12, 2024, 1:35:02 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/post-project.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:37:17 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
        <title>KofeJob</title>

        <link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

        <link rel="stylesheet" href="assets/plugins/bootstrap-tagsinput/css/bootstrap-tagsinput.css">

        <link rel="stylesheet" href="assets/css/bootstrap-datetimepicker.min.css">

        <link rel="stylesheet" href="assets/plugins/select2/css/select2.min.css">

        <link rel="stylesheet" href="assets/plugins/summernote/dist/summernote-lite.css">

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

                                            <li><a href="PostFavourites">Jobs Favourites</a></li>                                                                                                                 
                                            <li><a href="ListApply">Jobs Apply</a></li>
                                            <li><a href="jobforyou">Jobs For you</a></li>
                                        </ul>
                                    </li>

                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">For Jobs<i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">

                                            <li><a href="ListPost">Jobs List</a></li>                                        
                                            <li><a href="SreachJob">Find Jobs</a></li>  
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
                                            <li><a href="CreatePost">Create a new Post</a></li>
                                            <li><a href="jobsList">List Post</a></li>
                                            <li><a href="newsJobs">Reviews</a></li>

                                        </ul>
                                    </li>
                                </c:if>
                                <li class="has-submenu">
                                    <a href="javascript:void(0);">About<i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">                                                                           

                                        <li><a href="blogGrid">Blog</a></li>
                                        <li><a href="About">About us</a></li>
                                        <li><a href="ContactUs">Contact us</a></li>
                                    </ul>
                                </li>

                                <c:if test="${sessionScope.account.roleID.getRoleID() == 3}">

                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">Hello ${sessionScope.account.username} <i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">
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

                                            <li><a href="Dashboard">Dashboard</a></li>
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
                                        <a href="home" target="_blank">Admin</a>
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
                        <ul style="margin-left: 5px;" class="nav header-navbar-rht">


                            <c:if test="${sessionScope.account.roleID.getRoleID() == null ||  sessionScope.account.roleID.getRoleID() == 3 || sessionScope.account.roleID.getRoleID() == 4}">
                                <li>
                                    <form action="search" method="get" style=" display: flex;
                                          align-items: center;">
                                        <input type="text" name="query" placeholder="Search..." style="padding: 5px;
                                               margin-right: 5px; border-radius: 10px; width: 250px;">
                                        <button type="submit" style="display: flex;
                                                align-items: center;
                                                padding: 5px 10px;
                                                background-color: rgb(230, 84, 37);
                                                color: white;
                                                border: none;
                                                cursor: pointer;
                                                margin-right: 5px;
                                                border-radius: 10px;">
                                            <i class="feather-search me-1"></i>Search
                                        </button>
                                    </form>
                                </li>
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
                                <h3>Post a Project</h3>
                                <nav aria-label="breadcrumb" class="page-breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                        <li class="breadcrumb-item" aria-current="page">Post a Project</li>
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
                            <div class="select-project mb-4">
                                <form action="https://kofejob.dreamstechnologies.com/html/template/project-conformation.html">
                                    <div class="title-box widget-box">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <h4>Basic Details</h4>
                                            </div>
                                            <div class="col-lg-12 col-md-12">
                                                <div class="mb-3">
                                                    <label class="focus-label">Project Title</label>
                                                    <input type="text" class="form-control">
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-12">
                                                <div class="mb-3">
                                                    <label class="focus-label">Project Category</label>
                                                    <select class="form-control select">
                                                        <option value="0">Select</option>
                                                        <option value="1">Category</option>
                                                        <option value="2">Project</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-12">
                                                <div class="mb-3">
                                                    <label class="focus-label">Project Duration</label>
                                                    <select class="form-control select">
                                                        <option>1-3 Week</option>
                                                        <option>1 Month</option>
                                                        <option>Less then a month</option>
                                                        <option>More then a month</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-6 ">
                                                <div class="mb-3">
                                                    <label class="focus-label">Deadline Date</label>
                                                    <div class="cal-icon">
                                                        <input type="text" class="form-control datetimepicker" placeholder="Choose">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-md-12">
                                                <div class="mb-3">
                                                    <label class="focus-label">Freelancer Type</label>
                                                    <select class="form-control select">
                                                        <option value="0">Select</option>
                                                        <option value="1">Full Time</option>
                                                        <option value="2">Part Time</option>
                                                        <option value="3">Project Based</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-md-12">
                                                <div class="mb-3">
                                                    <label class="focus-label">Freelancer Level</label>
                                                    <select class="form-control select">
                                                        <option>Basic</option>
                                                        <option>Intermediate</option>
                                                        <option>Professional</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 col-md-12">
                                                <div class="mb-3">
                                                    <label class="focus-label">Tags</label>
                                                    <input type="text" class="form-control">
                                                </div>
                                            </div>
                                            <div class="col-lg-12 my-3">
                                                <h4>Skills</h4>
                                            </div>

                                            <div class="col-lg-12 col-md-12">
                                                <div class="title-content p-0">
                                                    <div class="title-detail">
                                                        <h3>Skill Set</h3>
                                                        <div class="mb-3">
                                                            <input type="text" data-role="tagsinput" class="input-tags form-control" name="services" value="Web Design" id="services" placeholder="UX, UI, App Design, Wireframing, Branding">
                                                            <p class="text-muted mb-0">Enter skills for needed for project, for best result add 5 or more Skills</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 my-3">
                                                <h4>Budget</h4>
                                            </div>
                                            <div class="buget-img">
                                                <ul>
                                                    <li>
                                                        <div class="hours-rate active">
                                                            <div class="hours-rate-img">
                                                                <label class="customize-radio">
                                                                    <input type="radio" name="fixed" class="hoursradio" checked>
                                                                    <img src="assets/img/icon/check-success.svg" alt="img" class="success-check">
                                                                    <img src="assets/img/icon/hourly.svg" alt="img">
                                                                    <span class="d-block">Hourly Rate</span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="fixed-rate">
                                                            <div class="hours-rate-img">
                                                                <label class="customize-radio">
                                                                    <input type="radio" name="fixed" class="fixedradio">
                                                                    <img src="assets/img/icon/check-success.svg" alt="img" class="success-check">
                                                                    <img src="assets/img/icon/fixed.svg" alt="img">
                                                                    <span class="d-block">Fixed budget</span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="hours-rates">
                                                <div class="row">
                                                    <div class="col-lg-3 col-md-12">
                                                        <div class="mb-3">
                                                            <label class="focus-label">From ($)</label>
                                                            <input type="text" class="form-control " placeholder="15">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-3 col-md-6 ">
                                                        <div class="mb-3">
                                                            <label class="focus-label">To ($)</label>
                                                            <input type="text" class="form-control " placeholder="250">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="fixed-rates d-none">
                                                <div class="row">
                                                    <div class="col-lg-6 col-md-12">
                                                        <div class="mb-3">
                                                            <label class="focus-label">Enter Price ($)</label>
                                                            <input type="text" class="form-control " placeholder="15">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 my-3">
                                                <h4>Attachment</h4>
                                                <p>You can attach more than 1 files to 10 files, Size of the Document should be Below 2MB </p>
                                            </div>
                                            <div class="col-lg-12">
                                                <div class="attach-file">
                                                    <i class="fa fa-pdf"></i>
                                                    Attach file
                                                    <input type="file">
                                                </div>
                                                <div class="filename">
                                                    <ul>
                                                        <li>
                                                            <h6>Filename 1 <a href="javascript:void(0);" class="file-close"><i class="fa fa-close"></i></a></h6>
                                                        </li>
                                                        <li>
                                                            <h6>Filename 2 <a href="javascript:void(0);" class="file-close"><i class="fa fa-close"></i></a></h6>
                                                        </li>
                                                        <li>
                                                            <h6>Filename 3 <a href="javascript:void(0);" class="file-close"><i class="fa fa-close"></i></a></h6>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 my-3">
                                                <h4>Other Requirement</h4>
                                            </div>
                                            <div class="col-lg-6 col-md-12">
                                                <div class="mb-3">
                                                    <label class="focus-label">Languages</label>
                                                    <input type="text" class="form-control">
                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-md-12">
                                                <div class="mb-3">
                                                    <label class="focus-label">Language Fluency</label>
                                                    <select class="form-control select">
                                                        <option>Basic</option>
                                                        <option>Intermediate</option>
                                                        <option>Professional</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <div class="mb-3">
                                                    <label class="focus-label">Write Description of Projects</label>
                                                    <textarea class="form-control"></textarea>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="row">
                                            <div class="col-md-12 text-end">
                                                <div class="btn-item">
                                                    <button type="submit" class="btn reset-btn">Reset</button>
                                                    <button type="submit" class="btn next-btn">Post a Job</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </form>
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


        <script src="assets/js/jquery-3.7.1.min.js" type="6fd12bacb56ccade8d32a6ae-text/javascript"></script>

        <script src="assets/js/bootstrap.bundle.min.js" type="6fd12bacb56ccade8d32a6ae-text/javascript"></script>

        <script src="assets/plugins/select2/js/select2.min.js" type="6fd12bacb56ccade8d32a6ae-text/javascript"></script>

        <script src="assets/js/profile-settings.js" type="6fd12bacb56ccade8d32a6ae-text/javascript"></script>

        <script src="assets/plugins/bootstrap-tagsinput/js/bootstrap-tagsinput.js" type="6fd12bacb56ccade8d32a6ae-text/javascript"></script>

        <script src="assets/js/moment.min.js" type="6fd12bacb56ccade8d32a6ae-text/javascript"></script>
        <script src="assets/js/bootstrap-datetimepicker.min.js" type="6fd12bacb56ccade8d32a6ae-text/javascript"></script>

        <script src="assets/plugins/summernote/dist/summernote-lite.min.js" type="6fd12bacb56ccade8d32a6ae-text/javascript"></script>

        <script src="assets/js/script.js" type="6fd12bacb56ccade8d32a6ae-text/javascript"></script>
        <script src="assets/cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="6fd12bacb56ccade8d32a6ae-|49" defer></script></body>

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/post-project.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:37:21 GMT -->
</html>
