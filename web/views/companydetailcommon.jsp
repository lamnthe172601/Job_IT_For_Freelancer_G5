

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:35:03 GMT -->
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
                                <h2>Company Profile</h2>
                                <nav aria-label="breadcrumb" class="page-breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                        <li class="breadcrumb-item" aria-current="page">Company Profile</li>
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
                                        <c:choose>
                                            <c:when test="${not empty company.logo}">
                                                <img src="${company.logo}" class="img-fluid" alt="logo">
                                            </c:when>
                                            <c:otherwise>
                                                <img src="assets/img/default-logo.svg" class="img-fluid" alt="logo">
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                    <div class="company-title">
                                        <p>Company Name</p>
                                        <h4>${company.companyName}</h4>
                                    </div>
                                </div>

                                <div class="project-proposal-detail">
                                    <ul>
                                        <li>
                                            <div class="proposal-detail-img">
                                                <img src="assets/img/icon/computer-line.svg" alt="icons">
                                            </div>
                                            <div class="proposal-detail text-capitalize">
                                                <span class="d-block">Team Number</span>
                                                <p class="mb-0">${company.getTeamNumber().getName()}</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="proposal-detail-img">
                                                <img src="assets/img/icon/time-line.svg" alt="icons">
                                            </div>
                                            <div class="proposal-detail text-capitalize">
                                                <span class="d-block">Established On</span>
                                                <p class="mb-0">${company.establishedOn}</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="proposal-detail-img">
                                                <img src="assets/img/icon/time-line.svg" alt="icons">
                                            </div>
                                            <div class="proposal-detail text-capitalize">
                                                <span class="d-block">Location</span>
                                                <p class="mb-0">${company.location}</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="proposal-detail-img">
                                                <img src="assets/img/icon/translate-2.svg" alt="icons">
                                            </div>
                                            <div class="proposal-detail text-capitalize">
                                                <span class="d-block">Website</span>
                                                <p class="mb-0">${company.website}</p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="company-detail-block company-description">
                                <h4 class="form-label">Describe</h4>
                                <textarea rows="4" class="form-control" name="describe" readonly>${company.describe}</textarea>
                            </div>



                        </div>

                        <div class="col-lg-4 col-md-12 sidebar-right theiaStickySidebar project-client-view">
                            <div class="card budget-widget">
                                <div class="budget-widget-details">
                                    <h6>Budget</h6>
                                    <h4>$125 - $180</h4>
                                    <p class="mb-0">Hourly Rate</p>
                                </div>
                                <c:if test="${postApply == null}">
                                    <a href="login" class="btn proposal-btn btn-primary"  tabindex="-1">Apply Now</a> 
                                </c:if>
                            </div>
                            <div class="card budget-widget">
                                <div class="budget-widget-details">
                                    <h6>About Client</h6>
                                    <div class="company-detail-image">
                                        <img src="${company.logo}" class="img-fluid" alt="logo">
                                    </div>
                                    <h4>${company.companyName}</h4>
                                    <span class=" d-block">Established On :</span>
                                    <p class="mb-0">${company.establishedOn}</p>
                                    <div class="rating mb-3">
                                        <i class="fas fa-star filled"></i>
                                        <i class="fas fa-star filled"></i>
                                        <i class="fas fa-star filled"></i>
                                        <i class="fas fa-star filled"></i>
                                        <i class="fas fa-star filled"></i>
                                        <span class="average-rating">5.0</span>
                                    </div>
                                    <ul class="d-flex list-style mb-0 social-list">
                                        <li>
                                            <a href="javascript:void(0);" class="social-link-block">
                                                <i class="fa-brands fa-facebook-f"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);" class="social-link-block">
                                                <i class="fab fa-twitter"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);" class="social-link-block">
                                                <i class="fa-brands fa-linkedin-in"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);" class="social-link-block">
                                                <i class="fa-brands fa-instagram"></i>
                                            </a>
                                        </li>
                                    </ul>
                                    <ul class="d-flex list-style mb-0 client-detail-list">
                                        <li>
                                            <span class=" d-block">Location</span>
                                            <p class="mb-0">${company.location}</p>
                                        </li>
                                        <li>
                                            <span>Employees</span>
                                            <p class="mb-0">${company.getTeamNumber().getName()}</p>
                                        </li>
                                    </ul>
                                </div>
                                <div>
                                    <a href="javascript:void(0);" class="btn  btn-primary price-btn btn-block">Contact Me </a>
                                </div>
                            </div>
                            <div class="card budget-widget">
                                <ul class="d-flex mb-0 list-style job-list-block">
                                    <li>
                                        <span>Jobs Posted</span>
                                        <p class="mb-0">${NumberPostOfRecruiter}</p>
                                    </li>
                                    <li>
                                        <span>Applicants</span>
                                        <p class="mb-0">${numberApply}</p>
                                    </li>
                                    <li>
                                        <span>Open Jobs</span>
                                        <p class="mb-0">${openJobs}</p>
                                    </li>
                                  
                                </ul>
                            </div>
                        </div>

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
                                <a data-bs-dismiss="modal" class="btn btn-cancel submit-btn">Cancel</a>
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
            <div class="modal-body pt-0">
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


<script src="assets/js/jquery-3.7.1.min.js" type="0992124c121c2538d8585267-text/javascript"></script>

<script src="assets/js/bootstrap.bundle.min.js" type="0992124c121c2538d8585267-text/javascript"></script>

<script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js" type="0992124c121c2538d8585267-text/javascript"></script>
<script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js" type="0992124c121c2538d8585267-text/javascript"></script>

<script src="assets/plugins/select2/js/select2.min.js" type="0992124c121c2538d8585267-text/javascript"></script>

<script src="assets/plugins/moment/moment.min.js" type="0992124c121c2538d8585267-text/javascript"></script>
<script src="assets/js/bootstrap-datetimepicker.min.js" type="0992124c121c2538d8585267-text/javascript"></script>

<script src="assets/plugins/summernote/dist/summernote-lite.min.js" type="0992124c121c2538d8585267-text/javascript"></script>

<script src="assets/js/script.js" type="0992124c121c2538d8585267-text/javascript"></script>
<script src="../../cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="0992124c121c2538d8585267-|49" defer></script></body>

</html>