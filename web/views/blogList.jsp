<%-- 
    Document   : blogList
    Created on : May 23, 2024, 11:08:32 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zxx">

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/blog-list.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:35:30 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
        <title>KLTTLJob</title>

        <link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

        <link rel="stylesheet" href="assets/plugins/feather/feather.css">

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
                                <li class=" has-submenu">
                                    <a href="home">Home <i class="fas "></i></a>
                                   
                                </li>
                                
                                <li class="has-submenu">
                                    <a href="javascript:void(0);">Pages <i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        <li><a href="about.html">About us</a></li>                                      
                                        <li><a href="404-page.html">404 Page</a></li>              
                                        <li><a href="onboard-screen.html">Onboard Screen</a></li>                       
                                    </ul>
                                </li>
                                <li class="has-submenu">
                                    <a href="javascript:void(0);">Blog <i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        <li><a href="blogList">Blog List</a></li>
                                        <li><a href="blog-grid.html">Blog Grid</a></li>
                                        <li><a href="BlogDetails">Blog Details</a></li>
                                    </ul>
                                </li>
                                <c:if test="${sessionScope.account.roleID.getRoleID() == 3}">
                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">Hello ${sessionScope.account.username} <i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">
                                            <li class="has-submenu">
                                                <a href="javascript:void(0);">Projects</a>
                                                <ul class="submenu">
                                                    <li><a href="project.html">Projects</a></li>
                                                    <li><a href="project-details.html">Project Details</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="freelancer-dashboard.html">Dashboard</a></li>
                                            <li><a href="developer-profile.html">My Profile</a></li>
                                            <li><a href="developer-details.html">Freelancer Details</a></li>
                                            <li><a href="freelancer-project-proposals.html">Projects</a></li>
                                            <li><a href="freelancer-favourites.html">Favourites</a></li>
                                            <li><a href="freelancer-membership.html">Membership</a></li>
                                            <li><a href="freelancer-change-password.html">Change Password</a></li>                                         
                                            <li><a href="freelancer-review.html">Review</a></li>
                                            <li><a href="freelancer-withdraw-money.html">Payments</a></li>
                                            <li><a href="freelancer-profile-settings.html">Settings</a></li>
                                            <li><a href="logout">Logout</a></li>
                                        </ul>
                                    </li>
                                </c:if>
                                <c:if test="${sessionScope.account.roleID.getRoleID() == 4}">
                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">For Recruiter <i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">
                                            <li class="has-submenu">
                                                <a href="javascript:void(0);">Freelancer</a>
                                                <ul class="submenu">
                                                    <li><a href="developer.html">Freelancer</a></li>
                                                    <li><a href="developer-details.html">Freelancer Details</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="dashboard.html">Dashboard</a></li>
                                            <li><a href="company-profile.html">My Profile</a></li>
                                            <li><a href="company-details.html">Company Details</a></li>
                                            <li><a href="manage-projects.html">Projects</a></li>
                                            <li><a href="favourites.html">Favourites</a></li>
                                            <li><a href="membership-plans.html">Membership</a></li>
                                            <li><a href="milestones.html">Milestones</a></li>
                                            <li><a href="chats.html">Chats</a></li>
                                            <li><a href="review.html">Review</a></li>
                                            <li><a href="deposit-funds.html">Payments</a></li>
                                            <li><a href="verify-identity.html">Verify Identity</a></li>
                                            <li><a href="profile-settings.html">Settings</a></li>
                                            <li><a href="logout">Logout</a></li>
                                        </ul>
                                    </li>
                                </c:if>
                                <c:if test="${sessionScope.account.roleID.getRoleID() == 1}">
                                    <li>
                                        <a href="/admin/index.html" target="_blank">Admin</a>
                                    </li>
                                </c:if>
                                <c:if test="${sessionScope.account == null}">
                                    <li><a href="Register" class="reg-btn"><img src="assets/img/icon/users.svg" class="me-1" alt="img">Register</a></li>
                                    <li><a href="login" class="log-btn active"><img src="assets/img/icon/lock.svg" class="me-1" alt="img"> Login</a></li>
                                        </c:if>
                            </ul>
                        </div>
                        <ul class="nav header-navbar-rht reg-head">
                            
                            <li><a href="post-project.html" class="login-btn"><i class="feather-plus me-1"></i>Post a Project </a></li>
                        </ul>
                    </nav>
                </div>
            </header>


            <div class="bread-crumb-bar">
                <div class="container">
                    <div class="row align-items-center inner-banner">
                        <div class="col-md-12 col-12 text-center">
                            <div class="breadcrumb-list">
                                <h2>Blog List</h2>
                                <nav aria-label="breadcrumb" class="page-breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="index.html"> Home</a></li>
                                        <li class="breadcrumb-item" aria-current="page">Blog List</li>
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
                        <div class="col-lg-8 col-md-12">
                            <div class="blog-view">

                                <div class="blog-single-post pro-post widget-box">
                                    <div class="blog-image">
                                        <a href="blog-details.html"><img alt="Img" src="assets/img/blog/blog-01.jpg" class="img-fluid"></a>
                                    </div>
                                    <h3 class="blog-title">Your next job starts right here</h3>
                                    <div class="blog-info clearfix">
                                        <div class="post-left">
                                            <ul>
                                                <li>
                                                    <div class="post-author">
                                                        <a href="developer-details.html"><img src="assets/img/img-02.jpg" alt="Post Author"> <span>John Doe</span></a>
                                                    </div>
                                                </li>
                                                <li><i class="far fa-calendar"></i>4 May 2021</li>
                                                <li><i class="far fa-comments"></i>12 Comments</li>
                                                <li><i class="fas fa-tags"></i>job Tips</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="blog-content">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco sit laboris ullamco laborisut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                        <a href="blog-details.html" class="read-more">Read More</a>
                                    </div>
                                </div>


                                <div class="blog-single-post pro-post widget-box">
                                    <div class="blog-image">
                                        <a href="blog-details.html"><img alt="Img" src="assets/img/blog/blog-02.jpg" class="img-fluid"></a>
                                    </div>
                                    <h3 class="blog-title">What are the benefits of applying job Online?</h3>
                                    <div class="blog-info clearfix">
                                        <div class="post-left">
                                            <ul>
                                                <li>
                                                    <div class="post-author">
                                                        <a href="developer-details.html"><img src="assets/img/img-03.jpg" alt="Post Author"> <span>Nick Joe</span></a>
                                                    </div>
                                                </li>
                                                <li><i class="far fa-calendar"></i>4 May 2021</li>
                                                <li><i class="far fa-comments"></i>12 Comments</li>
                                                <li><i class="fas fa-tags"></i>Job Tips</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="blog-content">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco sit laboris ullamco laborisut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                        <a href="blog-details.html" class="read-more">Read More</a>
                                    </div>
                                </div>


                                <div class="blog-single-post pro-post widget-box">
                                    <div class="blog-image">
                                        <div class="video">
                                            <iframe src="https://www.youtube.com/embed/ExJZAegsOis" width="940"></iframe>
                                        </div>
                                    </div>
                                    <h3 class="blog-title">Mock job interview to get a job</h3>
                                    <div class="blog-info clearfix">
                                        <div class="post-left">
                                            <ul>
                                                <li>
                                                    <div class="post-author">
                                                        <a href="developer-details.html"><img src="assets/img/img-03.jpg" alt="Post Author"> <span>Nick Joe</span></a>
                                                    </div>
                                                </li>
                                                <li><i class="far fa-calendar"></i>4 May 2021</li>
                                                <li><i class="far fa-comments"></i>12 Comments</li>
                                                <li><i class="fas fa-tags"></i>Job Tips</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="blog-content">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco sit laboris ullamco laborisut aliquip ex ea commodo consequat. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                        <a href="blog-details.html" class="read-more">Read More</a>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <ul class="paginations list-pagination">
                                            <li class="page-item"><a href="javascript:void(0);"><i class="feather-chevron-left"></i></a>
                                            </li>
                                            <li class="page-item"><a href="javascript:void(0);" class="active">1</a></li>
                                            <li class="page-item"><a href="javascript:void(0);">2</a></li>
                                            <li class="page-item"><a href="javascript:void(0);">3</a></li>
                                            <li class="page-item"><a href="javascript:void(0);">...</a></li>
                                            <li class="page-item"><a href="javascript:void(0);">10</a></li>
                                            <li class="page-item"><a href="javascript:void(0);"><i class="feather-chevron-right"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-12 sidebar-right theiaStickySidebar">

                            <div class=" pro-post widget-box post-widget">
                                <h4 class="pro-title">Latest Posts</h4>
                                <div class="pro-content pt-0">
                                    <ul class="latest-posts">
                                        <li>
                                            <div class="post-thumb">
                                                <a href="blog-details.html">
                                                    <img class="img-fluid" src="assets/img/blog/blog-thumb-03.jpg" alt="Img">
                                                </a>
                                            </div>
                                            <div class="post-info">
                                                <h4>
                                                    <a href="blog-details.html">Kofejob - How to get job through online?</a>
                                                </h4>
                                                <a href="javascript:void(0);" class="posts-date"><i class="feather-calendar"></i> 2 May 2021</a>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="post-thumb">
                                                <a href="blog-details.html">
                                                    <img class="img-fluid" src="assets/img/blog/blog-thumb-02.jpg" alt="Img">
                                                </a>
                                            </div>
                                            <div class="post-info">
                                                <h4>
                                                    <a href="blog-details.html">People who completed NAND technology got job 90% </a>
                                                </h4>
                                                <a href="javascript:void(0);" class="posts-date"><i class="feather-calendar"></i> 3 May 2021</a>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="post-thumb">
                                                <a href="blog-details.html">
                                                    <img class="img-fluid" src="assets/img/blog/blog-thumb-01.jpg" alt="Img">
                                                </a>
                                            </div>
                                            <div class="post-info">
                                                <h4>
                                                    <a href="blog-details.html">There are many variations of passages</a>
                                                </h4>
                                                <a href="javascript:void(0);" class="posts-date"><i class="feather-calendar"></i> 4 May 2021</a>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>


                            <div class=" pro-post widget-box category-widget">
                                <h4 class="pro-title">Blog Categories</h4>
                                <div class="pro-content">
                                    <ul class="category-link">
                                        <li><a href="javascript:void(0);">Web Development</a></li>
                                        <li><a href="javascript:void(0);">IT Consultancy</a></li>
                                        <li><a href="javascript:void(0);">Email Marketing</a></li>
                                        <li><a href="javascript:void(0);">Business Consulting</a></li>
                                        <li><a href="javascript:void(0);">Apps Development</a></li>
                                        <li><a href="javascript:void(0);">SEO Optimizations</a></li>
                                    </ul>
                                </div>
                            </div>


                            <div class=" pro-post widget-box tags-widget">
                                <h4 class="pro-title">Tags</h4>
                                <div class="pro-content">
                                    <ul class="tags">
                                        <li><a href="javascript:void(0);" class="tag">Employer</a></li>
                                        <li><a href="javascript:void(0);" class="tag">Student</a></li>
                                        <li><a href="javascript:void(0);" class="tag">Freelancer</a></li>
                                        <li><a href="javascript:void(0);" class="tag">Designer</a></li>
                                        <li><a href="javascript:void(0);" class="tag">Jobs</a></li>
                                        <li><a href="javascript:void(0);" class="tag">Developer</a></li>
                                        <li><a href="javascript:void(0);" class="tag">Coding</a></li>
                                        <li><a href="javascript:void(0);" class="tag">Skills</a></li>
                                        <li><a href="javascript:void(0);" class="tag">Knowledge</a></li>
                                        <li><a href="javascript:void(0);" class="tag">Node Js</a></li>
                                        <li><a href="javascript:void(0);" class="tag">Courses</a></li>
                                        <li><a href="javascript:void(0);" class="tag">Engineer</a></li>
                                        <li><a href="javascript:void(0);" class="tag">Online</a></li>
                                        <li><a href="javascript:void(0);" class="tag">Study</a></li>
                                        <li><a href="javascript:void(0);" class="tag">Project</a></li>
                                        <li><a href="javascript:void(0);" class="tag">Experience</a></li>
                                        <li><a href="javascript:void(0);" class="tag">Freshers</a></li>
                                    </ul>
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
                                        <p class="mb-0">Copyright 2024 © KLTTLJob. All right reserved.</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </footer>

        </div>


        <script src="assets/js/jquery-3.7.1.min.js" type="a8c4f5058f6d56857736033a-text/javascript"></script>

        <script src="assets/js/bootstrap.bundle.min.js" type="a8c4f5058f6d56857736033a-text/javascript"></script>

        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js" type="a8c4f5058f6d56857736033a-text/javascript"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js" type="a8c4f5058f6d56857736033a-text/javascript"></script>

        <script src="assets/js/script.js" type="a8c4f5058f6d56857736033a-text/javascript"></script>
        <script src="assets/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="a8c4f5058f6d56857736033a-|49" defer></script></body>

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/blog-list.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:35:34 GMT -->
</html>
