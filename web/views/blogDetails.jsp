<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zxx">

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/blog-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:35:42 GMT -->
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
                            <jsp:include page="header.jsp" />
                    </nav>
                </div>
            </header>
            <div class="bread-crumb-bar">
                <div class="container">
                    <div class="row align-items-center inner-banner">
                        <div class="col-md-12 col-12 text-center">
                            <div class="breadcrumb-list">
                                <h2>Blog Details</h2>
                                <nav aria-label="breadcrumb" class="page-breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="home"> Home</a></li>
                                        <li class="breadcrumb-item" aria-current="page">Blog Details</li>
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
                                        <a href="javascript:void(0);">
                                            <img alt="Img" src="${blog.image}" class="img-fluid">
                                        </a>
                                    </div>
                                    <h3 class="blog-title">${blog.title}</h3>
                                    <div class="blog-info clearfix">
                                        <div class="post-left">
                                            <ul>
                                                <li>
                                                    <div class="post-author">
                                                        <a href="developer-details.html">
                                                            <img src="assets/img/img-02.jpg" alt="Post Author"><span>John Doe</span>
                                                        </a>
                                                    </div>
                                                </li>
                                                <li><a href="javascript:void(0);"><i class="far fa-calendar"></i>${blog.date_blog}</a></li>
                                                <li><a href="javascript:void(0);"><i class="far fa-comments"></i>12 Comments</a></li>
                                                <li><i class="fas fa-tags"></i>${blog.tag}</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="blog-content">
                                        <p>${blog.description}</p>
                                    </div>
                                </div>
                                <!-- Comments Section -->
                                <div class="blog-comments pro-post widget-box clearfix pb-0">
                                    <h3 class="pro-title">Comments (12)</h3>
                                    <div class="pro-content pb-0">
                                        <ul class="comments-list">
                                            <!-- Comments will go here -->
                                        </ul>
                                    </div>
                                </div>
                                <!-- Leave Comment Section -->
                                <div class="pro-post widget-box new-comment clearfix">
                                    <h4 class="pro-title">Leave Comment</h4>
                                    <div class="pro-content">
                                        <form>
                                            <div class="input-block">
                                                <label class="form-label">Name <span class="text-danger">*</span></label>
                                                <input type="text" class="form-control">
                                            </div>
                                            <div class="input-block">
                                                <label class="form-label">Your Email Address <span class="text-danger">*</span></label>
                                                <input type="email" class="form-control">
                                            </div>
                                            <div class="input-block">
                                                <label class="form-label">Comments</label>
                                                <textarea rows="4" class="form-control"></textarea>
                                            </div>
                                            <div class="submit-section">
                                                <button class="btn btn-primary submit-btn" type="submit">Submit</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
<!--                        <div class="col-lg-4 col-md-12 sidebar-right theiaStickySidebar">
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
                                    <div class="tags">
                                        <a href="javascript:void(0);" class="tag">Employer</a>
                                        <a href="javascript:void(0);" class="tag">Student</a>
                                        <a href="javascript:void(0);" class="tag">Freelancer</a>
                                        <a href="javascript:void(0);" class="tag">Designer</a>
                                        <a href="javascript:void(0);" class="tag">Jobs</a>
                                        <a href="javascript:void(0);" class="tag">Developer</a>
                                        <a href="javascript:void(0);" class="tag">Coding</a>
                                        <a href="javascript:void(0);" class="tag">Skills</a>
                                        <a href="javascript:void(0);" class="tag">Knowledge</a>
                                        <a href="javascript:void(0);" class="tag">Node Js</a>
                                        <a href="javascript:void(0);" class="tag">Courses</a>
                                        <a href="javascript:void(0);" class="tag">Engineer</a>
                                        <a href="javascript:void(0);" class="tag">Online</a>
                                        <a href="javascript:void(0);" class="tag">Study</a>
                                        <a href="javascript:void(0);" class="tag">Project</a>
                                        <a href="javascript:void(0);" class="tag">Experience</a>
                                        <a href="javascript:void(0);" class="tag">Freshers</a>
                                    </div>
                                </div>
                            </div>
                        </div>-->
                    </div>
                </div>
            </div>
            <footer class="footer">
                <div class="footer-top">
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
        </div>
        <script src="assets/js/jquery-3.7.1.min.js" type="3706df7bc96e1a1ec45abd23-text/javascript"></script>

        <script src="assets/js/bootstrap.bundle.min.js" type="3706df7bc96e1a1ec45abd23-text/javascript"></script>

        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js" type="3706df7bc96e1a1ec45abd23-text/javascript"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js" type="3706df7bc96e1a1ec45abd23-text/javascript"></script>

        <script src="assets/js/script.js" type="3706df7bc96e1a1ec45abd23-text/javascript"></script>
        <script src="assets/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="3706df7bc96e1a1ec45abd23-|49" defer></script></body>

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/blog-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:35:42 GMT -->
</html>
