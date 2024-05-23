<%-- 
    Document   : register
    Created on : May 23, 2024, 10:55:00 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:35:08 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
        <title>KofeJob</title>

        <link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/plugins/feather/feather.css">

        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body class="account-page">

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
                                <img style="margin: 20px;" src="assets/img/logo.svg" class="img-fluid" alt="Logo">
                            </a>
                        </div>
                        <div class="main-menu-wrapper">
                            <div class="menu-header">
                                <a href="index.html" class="menu-logo">
                                    <img  src="assets/img/logo.svg" class="img-fluid" alt="Logo">
                                </a>
                                <a id="menu_close" class="menu-close" href="javascript:void(0);">
                                    <i class="fas fa-times"></i>
                                </a>
                            </div>
                           
                        </div>
                        
                    </nav>
                </div>
            </header>

            <div class="login-wrapper">
                <div class="content w-100">

                    <div class="account-content">
                        <div class="align-items-center justify-content-center">
                            <div class="login-right">
                                <div class="login-header text-center">
                                    <a href="index.html"><img src="assets/img/logo.svg" alt="logo" class="img-fluid"></a>
                                    <h3>We love to see you joining our community</h3>
                                </div>
                                <nav class="user-tabs mb-4">
                                    <ul role="tablist" class="nav nav-pills nav-justified">
                                        <li class="nav-item">
                                            <a href="#developer" data-bs-toggle="tab" class="nav-link active">Freelancer</a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#company" data-bs-toggle="tab" class="nav-link">Company</a>
                                        </li>
                                    </ul>
                                </nav>
                                <div class="tab-content pt-0">
                                    <div role="tabpanel" id="developer" class="tab-pane fade active show">
                                        <form action="https://kofejob.dreamstechnologies.com/html/template/onboard-screen.html">
                                            <div class="input-block ">
                                                <label class="focus-label">User Name <span class="label-star"> *</span></label>
                                                <input type="email" class="form-control floating">
                                            </div>
                                            <div class="input-block ">
                                                <label class="focus-label">Email Address<span class="label-star"> *</span></label>
                                                <input type="email" class="form-control floating">
                                            </div>
                                            <div class="input-block ">
                                                <label class="focus-label">Password <span class="label-star"> *</span></label>
                                                <div class="position-relative">
                                                    <input type="password" class="form-control floating pass-input">
                                                    <div class="password-icon ">
                                                        <span class="fas toggle-password fa-eye-slash"></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="input-block  mb-0">
                                                <label class="focus-label">Confirm Password <span class="label-star"> *</span></label>
                                                <div class="position-relative">
                                                    <input type="password" class="form-control floating pass-inputs">
                                                    <div class="password-icons">
                                                        <span class="fas toggle-passwords fa-eye-slash"></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="dont-have">
                                                <label class="custom_check">
                                                    <input type="checkbox" name="rem_password">
                                                    <span class="checkmark"></span> I have read and agree to all <a href="privacy-policy.html">Terms &amp; Conditions</a>
                                                </label>
                                            </div>
                                            <button class="btn btn-primary w-100 btn-lg login-btn d-flex align-items-center justify-content-center" type="submit">Sign In Now<i class="feather-arrow-right ms-2"></i></button>
                                            <div class="login-or">
                                                <p><span>Or</span></p>
                                            </div>
                                            <div class="row social-login">
                                                <div class="col-sm-4">
                                                    <a href="javascript:void(0);" class="btn btn-block"><img src="assets/img/icon/google-icon.svg" alt="Google">Google</a>
                                                </div>
                                                <div class="col-sm-4">
                                                    <a href="javascript:void(0);" class="btn btn-block"><img src="assets/img/icon/fb-icon.svg" alt="Fb">Facebook</a>
                                                </div>
                                                <div class="col-sm-4">
                                                    <a href="javascript:void(0);" class="btn btn-block"><img src="assets/img/icon/ios-icon.svg" alt="Apple">Apple</a>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-8 dont-have d-flex  align-items-center">Already have account <a href="login.html" class="ms-2">Sign in?</a></div>
                                            </div>
                                        </form>
                                    </div>
                                    <div role="tabpanel" id="company" class="tab-pane fade">
                                        <form action="https://kofejob.dreamstechnologies.com/html/template/onboard-screen.html">
                                            <div class="input-block ">
                                                <label class="focus-label">User Name <span class="label-star"> *</span></label>
                                                <input type="email" class="form-control floating">
                                            </div>
                                            <div class="input-block ">
                                                <label class="focus-label">Email Address<span class="label-star"> *</span></label>
                                                <input type="email" class="form-control floating">
                                            </div>
                                            <div class="input-block ">
                                                <label class="focus-label">Password <span class="label-star"> *</span></label>
                                                <div class="position-relative">
                                                    <input type="password" class="form-control floating pass-input">
                                                    <div class="password-icon ">
                                                        <span class="fas toggle-password fa-eye-slash"></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="input-block  mb-0">
                                                <label class="focus-label">Confirm Password <span class="label-star"> *</span></label>
                                                <div class="position-relative">
                                                    <input type="password" class="form-control floating pass-inputs">
                                                    <div class="password-icons">
                                                        <span class="fas toggle-passwords fa-eye-slash"></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="dont-have">
                                                <label class="custom_check">
                                                    <input type="checkbox" name="rem_password">
                                                    <span class="checkmark"></span> I have read and agree to all <a href="privacy-policy.html">Terms &amp; Conditions</a>
                                                </label>
                                            </div>
                                            <button class="btn btn-primary w-100 btn-lg login-btn d-flex align-items-center justify-content-center" type="submit">Sign In Now<i class="feather-arrow-right ms-2"></i></button>
                                            <div class="login-or">
                                                <p><span>Or</span></p>
                                            </div>
                                            <div class="row social-login">
                                                <div class="col-sm-4">
                                                    <a href="javascript:void(0);" class="btn btn-block"><img src="assets/img/icon/google-icon.svg" alt="Google">Google</a>
                                                </div>
                                                <div class="col-sm-4">
                                                    <a href="javascript:void(0);" class="btn btn-block"><img src="assets/img/icon/fb-icon.svg" alt="Fb">Facebook</a>
                                                </div>
                                                <div class="col-sm-4">
                                                    <a href="javascript:void(0);" class="btn btn-block"><img src="assets/img/icon/ios-icon.svg" alt="Apple">Apple</a>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-8 dont-have d-flex  align-items-center">Already have account <a href="login.html" class="ms-2">Sign in?</a></div>
                                            </div>
                                        </form>
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
                            <div class="col-md-3">
                                <h2 class="footer-title">Office Address</h2>
                                <div class="footer-address">
                                    <div class="off-address">
                                        <p class="mb-2">New York, USA (HQ)</p>
                                        <address class="mb-0">750 Sing Sing Rd, Horseheads, NY, 14845</address>
                                        <p>Call: <a href="javascript:void(0);"><u>469-537-2410</u> (Toll-free)</a> </p>
                                    </div>
                                    <div class="off-address">
                                        <p class="mb-2">Sydney, Australia </p>
                                        <address class="mb-0">24 Farrar Parade COOROW WA 6515</address>
                                        <p>Call: <a href="javascript:void(0);"><u>(08) 9064 9807</u> (Toll-free)</a> </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div class="footer-widget footer-menu">
                                    <h2 class="footer-title">Useful Links</h2>
                                    <ul>
                                        <li><a href="about.html">About Us</a></li>
                                        <li><a href="blog-list.html">Blog</a></li>
                                        <li><a href="login.html">Login</a></li>
                                        <li><a href="register.html">Register</a></li>
                                        <li><a href="forgot-password.html">Forgot Password</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div class="footer-widget footer-menu">
                                    <h2 class="footer-title">Help & Support</h2>
                                    <ul>
                                        <li><a href="chats.html">Chat</a></li>
                                        <li><a href="faq.html">Faq</a></li>
                                        <li><a href="review.html">Reviews</a></li>
                                        <li><a href="privacy-policy.html">Privacy Policy</a></li>
                                        <li><a href="term-condition.html">Terms of use</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div class="footer-widget footer-menu">
                                    <h2 class="footer-title">Other Links</h2>
                                    <ul>
                                        <li><a href="freelancer-dashboard.html">Freelancers</a></li>
                                        <li><a href="freelancer-portfolio.html">Freelancer Details</a></li>
                                        <li><a href="project.html">Project</a></li>
                                        <li><a href="project-details.html">Project Details</a></li>
                                        <li><a href="post-project.html">Post Project</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="footer-widget footer-menu">
                                    <h2 class="footer-title">Mobile Application</h2>
                                    <p>Download our App and get the latest Breaking News Alerts and latest headlines and daily articles near you.</p>
                                    <div class="row g-2">
                                        <div class="col">
                                            <a href="javascript:void(0);"><img class="img-fluid" src="assets/img/app-store.svg" alt="app-store"></a>
                                        </div>
                                        <div class="col">
                                            <a href="javascript:void(0);"><img class="img-fluid" src="assets/img/google-play.svg" alt="google-play"></a>
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
                                <div class="col-md-6 col-lg-6">
                                    <div class="copyright-text">
                                        <p class="mb-0">&copy; 2021 All Rights Reserved</p>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-6 right-text">
                                    <div class="social-icon">
                                        <ul>
                                            <li><a href="javascript:void(0);" class="icon" target="_blank"><i class="fab fa-instagram"></i> </a></li>
                                            <li><a href="javascript:void(0);" class="icon" target="_blank"><i class="fab fa-linkedin-in"></i> </a></li>
                                            <li><a href="javascript:void(0);" class="icon" target="_blank"><i class="fab fa-twitter"></i> </a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </footer>

        </div>


        <script src="assets/js/jquery-3.7.1.min.js" type="60ab19134118e3e714333e43-text/javascript"></script>

        <script src="assets/js/bootstrap.bundle.min.js" type="60ab19134118e3e714333e43-text/javascript"></script>

        <script src="assets/js/slick.js" type="60ab19134118e3e714333e43-text/javascript"></script>

        <script src="assets/js/script.js" type="60ab19134118e3e714333e43-text/javascript"></script>
        <script src="assets/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="60ab19134118e3e714333e43-|49" defer></script></body>

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:35:08 GMT -->
</html>
