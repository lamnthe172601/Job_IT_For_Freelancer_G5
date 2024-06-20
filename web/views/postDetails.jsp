<%-- 
    Document   : postDetails
    Created on : Jun 16, 2024, 3:26:44 PM
    Author     : tanng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/project-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:34:26 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
        <title>KofeJob</title>

        <link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

        <link rel="stylesheet" href="assets/plugins/select2/css/select2.min.css">

        <link rel="stylesheet" href="assets/css/bootstrap-datetimepicker.min.css">

        <link rel="stylesheet" href="assets/plugins/summernote/dist/summernote-lite.css">

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
                                <li class="has-submenu">
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
                                        <li><a href="company-profile.html">My Profile</a></li>
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
                                <li class="has-submenu active">
                                    <a href="javascript:void(0);">For Freelancer <i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        <li class="has-submenu active">
                                            <a href="javascript:void(0);">Projects</a>
                                            <ul class="submenu">
                                                <li><a href="project.html">Projects</a></li>
                                                <li class="active"><a href="project-details.html">Project Details</a></li>
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
                                <h2>Post Details</h2>
                                <nav aria-label="breadcrumb" class="page-breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                        <li class="breadcrumb-item" aria-current="page">Project Details</li>
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
                            <div class="company-detail-block pt-0">
                                <div class="company-detail">
                                    <div class="company-detail-image">
                                        <img src="${post.image}" class="img-fluid" alt="logo">
                                    </div>
                                    <div class="company-title">
                                        
                                        <h4>${post.title}</h4>
                                    </div>
                                </div>
                                <div class="company-address">
                                    <ul>
                                        <li>
                                            <i class="feather-map-pin"></i>${post.location}
                                        </li>
                                        <li>
                                            <i class="feather-calendar"></i>${post.datePost}
                                        </li>
                                    </ul>
                                </div>
                                <div class="project-proposal-detail">
                                    <ul>
                                        <li>
                                            <div class="proposal-detail-img">
                                                <img src="assets/img/icon/computer-line.svg" alt="icons">
                                            </div>
                                            <div class="proposal-detail text-capitalize">
                                                <span class=" d-block">Category</span>
                                                <p class="mb-0">${post.caID.categoriesName}</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="proposal-detail-img">
                                                <img src="assets/img/icon/time-line.svg" alt="icons">
                                            </div>
                                            <div class="proposal-detail text-capitalize">
                                                <span class=" d-block">Duration</span>
                                                <p class="mb-0">${post.durationID.durationName}</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="proposal-detail-img">
                                                <img src="assets/img/icon/time-line.svg" alt="icons">
                                            </div>
                                            <div class="proposal-detail text-capitalize">
                                                <span class=" d-block">Job Type</span>
                                                <p class="mb-0">${post.jobTypeID.jobName}</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="proposal-detail-img">
                                                <img src="assets/img/icon/user-heart-line.svg" alt="icons">
                                            </div>
                                            <div class="proposal-detail text-capitalize">
                                                <span class=" d-block">Quantity</span>
                                                <p class="mb-0">${post.quantity}</p>
                                            </div>
                                        </li>
<!--                                        <li>
                                            <div class="proposal-detail-img">
                                                <img src="assets/img/icon/translate-2.svg" alt="icons">
                                            </div>
                                            <div class="proposal-detail text-capitalize">
                                                <span class=" d-block">Languages</span>
                                                <p class="mb-0">English, Arabic</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="proposal-detail-img">
                                                <img src="assets/img/icon/translate.svg" alt="icons">
                                            </div>
                                            <div class="proposal-detail text-capitalize">
                                                <span class=" d-block">Language Fluency</span>
                                                <p class="mb-0">Conversational</p>
                                            </div>
                                        </li>-->
                                    </ul>
                                </div>
                            </div>
                            <div class="company-detail-block company-description">
                                <h4 class="company-detail-title">Description</h4>
                                <p>${post.description}</p>
                            </div>
                            <div class="company-detail-block company-description">
                                <h4 class="company-detail-title">Skills Required</h4>
                                <div class="tags">
                                    <a ><span class="badge badge-pill badge-design">${post.skill}</span></a>
                                </div>
                            </div>
           
                            <div class="company-detail-block pb-0">
                                <h4 class="company-detail-title">Other Post</h4>
                                <c:forEach items="${lpost}" var="p" >
                                <div class="project-proposals-block ">
                                    <div class="project-proposals-img">
                                        <img src="${p.image}" class="img-fluid" alt="user">
                                    </div>
                                    <div class="project-proposals-description">
                                        <div class="proposals-user-detail">
                                            <div>
                                                <a href="PostDetails?postID=${p.postID}"><h5> ${p.title}</h5></a>
                                                <ul class="d-flex">
                                                    
                                                    <li>
                                                        <div class="proposals-user-review">
                                                            <span><i class="feather-calendar"></i>${p.datePost}</span>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="proposals-user-review">
                                                            <span>${p.caID.categoriesName}</span>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="proposals-user-review">
                                                            <span>$${p.budget}/hour</span>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
<!--                                            <div>
                                                <div class="proposals-pricing">
                                                    <h5>$40-$500</h5>                                                   
                                                </div>
                                            </div>-->
                                        </div>
                                        <p class="mb-0">${p.description}</p>
                                    </div>
                                </div>
                                </c:forEach>
                                
                                
                                
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-12 sidebar-right theiaStickySidebar project-client-view">
                            <div class="card budget-widget">
                                <div class="budget-widget-details">
                                    <h6>Budget</h6>
                                    <h4>$${post.budget}</h4>
                                    <p class="mb-0">Hourly Rate</p>
                                </div>
                                <div>
                                    <a data-bs-toggle="modal" href="#file" class="btn proposal-btn btn-primary">Apply Now </a>
                                </div>
                            </div>
                            <div class="card budget-widget">
                                <div class="budget-widget-details">
                                    <h6>Company Representative</h6>
                                    <div class="company-detail-image">
                                        <img src="${post.recruiterID.image}" class="img-fluid" alt="logo">
                                    </div>
                                    <h5>${post.recruiterID.lastName} ${post.recruiterID.firstName}</h5>
                                    <span>Company: ${post.recruiterID.companyname}</span>
                                    <ul class="d-flex list-style mb-0 client-detail-list">
                                        <li>
                                            <span>Contact</span>
                                            <p class="mb-0">${post.recruiterID.email}</p>
                                        </li>
<!--                                        <li>
                                            <span>Employees</span>
                                            <p class="mb-0">30-50</p>
                                        </li>-->
                                    </ul>
                                </div>
                                <div>
                                    <a href="javascript:void(0);" class="btn  btn-primary price-btn btn-block">View More</a>
                                </div>
                            </div>
                            <div class="card budget-widget">
                                <ul class="d-flex mb-0 list-style job-list-block">
                                    <li>
                                        <span>Jobs Posted</span>
                                        <p class="mb-0">48</p>
                                    </li>
                                    <li>
                                        <span>Hire Rate</span>
                                        <p class="mb-0">22</p>
                                    </li>
                                    <li>
                                        <span>Open Jobs</span>
                                        <p class="mb-0">75</p>
                                    </li>
                                    <li>
                                        <span>Total Spent</span>
                                        <p class="mb-0">22</p>
                                    </li>
                                    <li>
                                        <span>Hired</span>
                                        <p class="mb-0">64</p>
                                    </li>
                                    <li>
                                        <span>Active</span>
                                        <p class="mb-0">29</p>
                                    </li>
                                </ul>
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


        <div class="modal fade custom-modal" id="hire">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content bg-modal">
                    <div class="modal-header">
                        <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="text-center pt-0 mb-4">
                            <img src="assets/img/logo-01.png" alt="logo" class="img-fluid mb-1">
                            <h5 class="modal-title">Discuss your project with David</h5>
                        </div>
                        <form action="https://kofejob.dreamstechnologies.com/html/template/dashboard.html">
                            <div class="modal-info">
                                <div class="row">
                                    <div class="col-12 col-md-12">
                                        <div class="input-block">
                                            <input type="text" name="name" class="form-control" placeholder="First name & Lastname">
                                        </div>
                                        <div class="input-block">
                                            <input type="email" name="name" class="form-control" placeholder="Email Address">
                                        </div>
                                        <div class="input-block">
                                            <input type="text" name="name" class="form-control" placeholder="Phone Number">
                                        </div>
                                        <div class="input-block">
                                            <textarea class="form-control" name="message" rows="5" placeholder="Message"></textarea>
                                        </div>
                                        <div class="input-block row">
                                            <div class="col-12 col-md-4 pr-0">
                                                <label class="file-upload">
                                                    Add Attachment <input type="file">
                                                </label>
                                            </div>
                                            <div class="col-12 col-md-8">
                                                <p class="mb-1">Allowed file types: zip, pdf, png, jpg</p>
                                                <p>Max file size: 50 MB</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="submit-section text-center">
                                <button type="submit" class="btn btn-primary btn-block submit-btn">Hire Now</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>


        <div class="modal fade" id="file">
            <div class="modal-dialog modal-dialog-centered modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Send Your Proposal</h4>
                        <span class="modal-close"><a href="javascript:void(0);" data-bs-dismiss="modal" aria-label="Close"><i class="fa fa-times orange-text"></i></a></span>
                    </div>
                    <div class="modal-body">
                        <div class="modal-info proposal-modal-info">
                            <form action="https://kofejob.dreamstechnologies.com/html/template/freelancer-project-proposals.html">
                                <div class="feedback-form proposal-form ">
                                    <div class="row">
                                        <div class="col-md-6 input-block">
                                            <label class="form-label">Your Price</label>
                                            <input type="text" class="form-control" placeholder="Your Price">
                                        </div>
                                        <div class="col-md-6 mb-3">
                                            <label class="form-label">Estimated Delivery</label>
                                            <div class="input-group ">
                                                <input type="text" class="form-control" placeholder="Estimated Hours" aria-label="Recipient's username" aria-describedby="basic-addon2">
                                                <span class="input-group-text" id="basic-addon2">Days</span>
                                            </div>
                                        </div>
                                        <div class="col-md-12 input-block">
                                            <label class="form-label">Cover Letter</label>
                                            <textarea class="form-control summernote"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="suggested-milestones-form">
                                    <div class="row">
                                        <div class="col-md-4 input-block">
                                            <label class="form-label">Milestone name</label>
                                            <input type="text" class="form-control" placeholder="Milestone name">
                                        </div>
                                        <div class="col-md-2 input-block floating-icon">
                                            <label class="form-label">Amount</label>
                                            <input type="text" class="form-control" placeholder="Amount">
                                            <span><i class="feather-dollar-sign"></i></span>
                                        </div>
                                        <div class="col-md-3 input-block floating-icon">
                                            <label class="form-label">Start Date</label>
                                            <input type="text" class="form-control datetimepicker" placeholder="Choose">
                                            <span><i class="feather-calendar"></i></span>
                                        </div>
                                        <div class="col-md-3 input-block floating-icon">
                                            <label class="form-label">End Date</label>
                                            <input type="text" class="form-control datetimepicker" placeholder="Choose">
                                            <span><i class="feather-calendar"></i></span>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="new-addd">
                                                <a id="new_add1" class="add-new"><i class="feather-plus-circle "></i> Add New</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="add_row1"></div>
                                </div>
                                <div class="proposal-features">
                                    <div class="proposal-widget proposal-warning">
                                        <label class="custom_check">
                                            <input type="checkbox" name="select_time" checked><span class="checkmark"></span>
                                            <span class="proposal-text">Stick this Proposal to the Top</span>
                                            <span class="proposal-text float-end">$12.00</span>
                                        </label>
                                        <p>The sticky proposal will always be displayed on top of all the proposals.</p>
                                    </div>
                                    <div class="proposal-widget proposal-blue">
                                        <label class="custom_check">
                                            <input type="checkbox" name="select_time"><span class="checkmark"></span>
                                            <span class="proposal-text">Stick this Proposal to the Top</span>
                                            <span class="proposal-text float-end">$12.00</span>
                                        </label>
                                        <p>The sticky proposal will always be displayed on top of all the proposals.</p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 submit-section">
                                        <label class="custom_check">
                                            <input type="checkbox" name="select_time">
                                            <span class="checkmark"></span> I agree to the Terms And Conditions
                                        </label>
                                    </div>
                                    <div class="col-md-12 submit-section text-end">
                                        <a data-bs-dismiss="modal" href="javascript:void(0);" class="btn btn-cancel submit-btn">Cancel</a>
                                        <a data-bs-toggle="modal" data-bs-dismiss="modal" href="#success" class="btn btn-primary submit-btn">Send Proposal</a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="modal fade custom-modal" id="success">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content proposal-modal-info">
                    <div class="modal-header">
                        <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="text-center modal-body-content pt-0">
                            <h5 class="modal-title">Submitted Successfully</h5>
                            <p>You will be Notified once, your Proposal approves.</p>
                        </div>
                        <div class="col-md-12 submit-section text-center">
                            <a data-bs-dismiss="modal" href="freelancer-dashboard.html" class="btn btn-primary submit-btn">Go to Dashboard</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <script src="assets/js/jquery-3.7.1.min.js" type="0a1db4c0d422528b05e327a5-text/javascript"></script>

        <script src="assets/js/bootstrap.bundle.min.js" type="0a1db4c0d422528b05e327a5-text/javascript"></script>

        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js" type="0a1db4c0d422528b05e327a5-text/javascript"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js" type="0a1db4c0d422528b05e327a5-text/javascript"></script>

        <script src="assets/plugins/select2/js/select2.min.js" type="0a1db4c0d422528b05e327a5-text/javascript"></script>

        <script src="assets/plugins/moment/moment.min.js" type="0a1db4c0d422528b05e327a5-text/javascript"></script>
        <script src="assets/js/bootstrap-datetimepicker.min.js" type="0a1db4c0d422528b05e327a5-text/javascript"></script>

        <script src="assets/plugins/summernote/dist/summernote-lite.min.js" type="0a1db4c0d422528b05e327a5-text/javascript"></script>

        <script src="assets/js/script.js" type="0a1db4c0d422528b05e327a5-text/javascript"></script>
        <script src="../../cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="0a1db4c0d422528b05e327a5-|49" defer></script></body>

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/project-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:34:26 GMT -->
</html>
