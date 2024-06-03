<%-- 
    Document   : profile
    Created on : May 27, 2024, 2:45:43 AM
    Author     : DUC LINH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                                <li class="has-submenu">
                                    <a href="index.html">Home <i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        <li><a href="index.html">Home</a></li>
                                        <li><a href="index-2.html">Home 2</a></li>
                                        <li><a href="index-3.html">Home 3</a></li>
                                        <li><a href="index-4.html">Home 4</a></li>
                                        <li><a href="index-5.html">Home 5</a></li>
                                    </ul>
                                </li>
                                <li class="has-submenu active">
                                    <a href="javascript:void(0);">For Employers <i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        <li class="has-submenu">
                                            <a href="javascript:void(0);">Freelancer</a>
                                            <ul class="submenu">
                                                <li><a href="developer.html">Freelancer</a></li>
                                                <li><a href="developer-details.html">Freelancer Details</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="dashboard.html">Dashboard</a></li>
                                        <li class="active"><a href="company-profile.html">My Profile</a></li>
                                        <li><a href="manage-projects.html">Projects</a></li>
                                        <li><a href="favourites.html">Favourites</a></li>
                                        <li><a href="membership-plans.html">Membership</a></li>
                                        <li><a href="milestones.html">Milestones</a></li>
                                        <li><a href="chats.html">Chats</a></li>
                                        <li><a href="review.html">Review</a></li>
                                        <li><a href="deposit-funds.html">Payments</a></li>
                                        <li><a href="verify-identity.html">Verify Identity</a></li>
                                        <li><a href="profile-settings.html">Settings</a></li>
                                    </ul>
                                </li>
                                <li class="has-submenu">
                                    <a href="javascript:void(0);">For Freelancer <i class="fas fa-chevron-down"></i></a>
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
                                        <li><a href="freelancer-project-proposals.html">Projects</a></li>
                                        <li><a href="freelancer-favourites.html">Favourites</a></li>
                                        <li><a href="freelancer-membership.html">Membership</a></li>
                                        <li><a href="freelancer-change-password.html">Change Password</a></li>
                                        <li><a href="freelancer-chats.html">Chats</a></li>
                                        <li><a href="freelancer-review.html">Review</a></li>
                                        <li><a href="freelancer-withdraw-money.html">Payments</a></li>
                                        <li><a href="freelancer-verify-identity.html">Verify Identity</a></li>
                                        <li><a href="freelancer-profile-settings.html">Settings</a></li>
                                    </ul>
                                </li>
                                <li class="has-submenu">
                                    <a href="javascript:void(0);">Pages <i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        <li><a href="about.html">About us</a></li>
                                        <li><a href="blank-page.html">Starter Page</a></li>
                                        <li><a href="404-page.html">404 Page</a></li>
                                        <li><a href="login.html">Login</a></li>
                                        <li><a href="register.html">Register</a></li>
                                        <li><a href="onboard-screen.html">Onboard Screen</a></li>
                                        <li><a href="forgot-password.html">Forgot Password</a></li>
                                        <li><a href="change-passwords.html">Change Password</a></li>
                                    </ul>
                                </li>
                                <li class="has-submenu">
                                    <a href="javascript:void(0);">Blog <i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        <li><a href="blog-list.html">Blog List</a></li>
                                        <li><a href="blog-grid.html">Blog Grid</a></li>
                                        <li><a href="blog-details.html">Blog Details</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="admin/index.html" target="_blank">Admin</a>
                                </li>
                            </ul>
                        </div>
                        <ul class="nav header-navbar-rht reg-head">
                            <li><a href="register.html" class="reg-btn"><img src="assets/img/icon/users.svg" class="me-1" alt="img">Register</a></li>
                            <li><a href="login.html" class="log-btn"><img src="assets/img/icon/lock.svg" class="me-1" alt="img"> Login</a></li>
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
                                            <div class="provider-img "><img src="assets/img/user/avatar-1.jpg" class="img-fluid" alt="User"></div>
                                            <div class="profile-info">
                                                <h2 class="profile-title">George Well</h2>
                                                <p class="profile-position">iOS Expert</p>
                                                <div><a href="javascript:void(0);" class="btn full-btn">Full time</a></div>
                                                <ul class="profile-preword">
                                                    <li><img src="assets/img/flags/pl.png" alt="Img" height="16"> Poland</li>
                                                    <li>
                                                        <div class="rating">
                                                            <span class="average-rating">4.6</span>
                                                            <i class="fas fa-star filled"></i>
                                                            <i class="fas fa-star filled"></i>
                                                            <i class="fas fa-star filled"></i>
                                                            <i class="fas fa-star filled"></i>
                                                            <i class="fas fa-star"></i>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="pro-info-right profile-inf">
                                            <a class="btn profile-edit-btn" href="freelancer-profile-settings.html">Edit Profile</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="profile-list">
                                    <ul>
                                        <li>
                                            <span class="cont bg-blue">22</span>
                                            <strong class="proj-title"> Completed Projects</strong>
                                        </li>
                                        <li>
                                            <span class="cont bg-red">5</span>
                                            <strong class="proj-title"> Ongoing Projects</strong>
                                        </li>
                                        <li>
                                            <span class="cont bg-violet">89%</span>
                                            <strong class="proj-title"> Recommended</strong>
                                        </li>
                                        <li>
                                            <span class="cont bg-yellow">12</span>
                                            <strong class="proj-title"> Rehired</strong>
                                        </li>
                                        <li>
                                            <span class="cont bg-pink">48</span>
                                            <strong class="proj-title"> Clients</strong>
                                        </li>
                                        <li>
                                            <span class="cont bg-navy">5</span>
                                            <strong class="proj-title"> Feedbacks</strong>
                                        </li>
                                    </ul>
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
                                            <a class="nav-link" href="#project">
                                                <img src="assets/img/icon/tab-icon-02.png" height="25" alt="User Image">
                                                <p class="bg-blue">Projects</p>
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
                                        <li class="nav-item">
                                            <a class="nav-link" href="#feedback">
                                                <img src="assets/img/icon/tab-icon-06.png" height="25" alt="User Image">
                                                <p class="bg-green">Feedbacks</p>
                                            </a>
                                        </li>
                                    </ul>
                                </nav>


                                <div class="pro-post widget-box" id="overview">
                                    <h3 class="pro-title">Overview</h3>
                                    <div class="pro-content">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget vestibulum lorem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor aliquam felis, nec condimentum ipsum commodo id. Vivamus sit amet augue nec urna efficitur tincidunt. Vivamus consectetur aliquam lectus commodo viverra. Nunc eu augue nec arcu efficitur faucibus.</p>
                                        <div class="mt-4">
                                            <h4 class="widget-title">My services include:</h4>
                                            <ul class="pro-list">
                                                <li>Cross-platform games</li>
                                                <li>Game concept and level designing</li>
                                                <li>Multiplayer integration</li>
                                                <li>Re-skin</li>
                                                <li>Ads and in-app purchase (Maximize your Revenue)</li>
                                                <li>Game Optimisations</li>
                                                <li>2D/3D Animation</li>
                                            </ul>
                                        </div>
                                        <p>Graphic DesigningSocial Network IntegrationVirtual Reality (VR)Augmented Reality (AR)Game con promotional graphics and video app store and Playstore publishing </p>
                                    </div>
                                </div>


                                <div class="pro-post project-widget widget-box" id="experience">
                                    <h3 class="pro-title">Experience</h3>
                                    <div class="pro-content">
                                        <div class="widget-list mb-0">
                                            <ul class="clearfix">
                                                <li>
                                                    <h4>Logo Designer</h4>
                                                    <h5>Techline July 9, 2018 - March 18, 2021</h5>
                                                    <p>I am a professional graphic designer. I have more than 10-years of experience in graphics design. If you are looking for any graphic related work, contact me, I'll glad to help you.</p>
                                                </li>
                                                <li>
                                                    <h4>Logo Designer</h4>
                                                    <h5>Techline July 9, 2018 - March 18, 2021</h5>
                                                    <p>I am a professional graphic designer. I have more than 10-years of experience in graphics design. If you are looking for any graphic related work, contact me, I'll glad to help you.</p>
                                                </li>
                                                <li>
                                                    <h4>Logo Designer</h4>
                                                    <h5>Techline July 9, 2018 - March 18, 2021</h5>
                                                    <p>I am a professional graphic designer. I have more than 10-years of experience in graphics design. If you are looking for any graphic related work, contact me, I'll glad to help you.</p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>


                                <div class="pro-post project-widget widget-box" id="education">
                                    <h3 class="pro-title">Educational Details</h3>
                                    <div class="pro-content">
                                        <div class="widget-list mb-0">
                                            <ul class="clearfix">
                                                <li>
                                                    <h4>Bachelor of Science in Game Programming & Development</h4>
                                                    <h5>Hampshire University January 12, 2015 - January 19, 2019</h5>
                                                    <p>Graphic Designing artworks through making plans and utilizing the helpful analysis of companions, educators, and bosses to improve those plans. Careful discipline brings about promising results, and the capacity to acknowledge and gain from analysis from peers and even the purchaser everywhere is pivotal for accomplishment in this field.</p>
                                                </li>
                                                <li>
                                                    <h4>Master in Gaming STudi Design</h4>
                                                    <h5>Techline July 9, 2018 - March 18, 2021</h5>
                                                    <p>I am a professional graphic designer. I have more than 10-years of experience in graphics design. If you are looking for any graphic related work, contact me, I'll glad to help you.</p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>


                                <div class="pro-post project-widget widget-box" id="skill">
                                    <h3 class="pro-title">Technical Skills</h3>
                                    <div class="pro-content">
                                        <div class="tags">
                                            <span class="badge badge-pill badge-skills">+ Web Design</span>
                                            <span class="badge badge-pill badge-skills">+ UI Design</span>
                                            <span class="badge badge-pill badge-skills">+ Node Js</span>
                                            <span class="badge badge-pill badge-skills">+ Javascript</span>
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
                                    <li><p>Gender</p><h6>Male</h6></li>
                                    <li><p>Experience</p><h6>5 Years</h6></li>
                                    <li><p>Location</p><h6>Istanbul/Turkey</h6></li>
                                </ul>
                            </div>

                            <div class="pro-post category-widget">
                                <div class="widget-title-box">
                                    <h4 class="pro-title">SOCIAL LINKS</h4>
                                </div>
                                <ul class="latest-posts pro-content">
                                    <li><a href="javascript:void(0);">http://www.facebook.com/john...</a></li>
                                    <li><a href="javascript:void(0);">http://www.Twitter.com/john...</a></li>
                                    <li><a href="javascript:void(0);">Http://www.googleplus.com/john... </a></li>
                                    <li><a href="javascript:void(0);"> Http://www.behance.com/john...</a></li>
                                    <li><a href="javascript:void(0);"> Http://www.pinterest.com/john...</a></li>
                                </ul>
                            </div>


                            <div class="pro-post widget-box post-widget">
                                <h3 class="pro-title">Profile Link</h3>
                                <div class="pro-content">
                                    <div class="input-block profile-group mb-0">
                                        <div class="input-group">
                                            <input type="text" class="form-control" value="https://www.kofejob.com/developer/daren/12454687">
                                            <div class="input-group-append">
                                                <button class="btn btn-success sub-btn" type="submit"><i class="fa fa-clone"></i></button>
                                            </div>
                                        </div>
                                    </div>
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


        <script src="assets/js/jquery-3.7.1.min.js" type="c62a37b1c7e125ad6ef80457-text/javascript"></script>

        <script src="assets/js/bootstrap.bundle.min.js" type="c62a37b1c7e125ad6ef80457-text/javascript"></script>

        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js" type="c62a37b1c7e125ad6ef80457-text/javascript"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js" type="c62a37b1c7e125ad6ef80457-text/javascript"></script>

        <script src="assets/js/script.js" type="c62a37b1c7e125ad6ef80457-text/javascript"></script>
        <script src="../../cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="c62a37b1c7e125ad6ef80457-|49" defer></script></body>

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/freelancer-profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:37:52 GMT -->
</html>
