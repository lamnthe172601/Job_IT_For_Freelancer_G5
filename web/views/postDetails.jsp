

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    </head>
</head>

<style>
    .company-title {
        display: flex;
        align-items: center;
    }

    .company-title h4 {
        margin-bottom: 0;
    }

    .report-post {
        margin-left: 390px;
    }
    .custom-flag {
        color: black; /* Màu trắng cho biểu tượng */
        padding: 2px; /* Khoảng cách bên trong để nhìn đẹp hơn */
        border-radius: 3px; /* Bo tròn các góc */
    }

    .btn.report-post {
        background-color: transparent; /* Làm nền nút trong suốt */
        border: none; /* Bỏ viền nút */
        padding: 0; /* Bỏ khoảng cách bên trong */
    }

    .modal {
        display: none;
        position: fixed;
        z-index: 1;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        overflow: auto;
        background-color: rgba(0,0,0,0.4);
    }

    .modal-content {
        background-color: #fefefe;
        margin: 15% auto;
        padding: 20px;
        border: 1px solid #888;
        width: 80%;
    }

    .close-wrap {
        float: right;
        cursor: pointer;
    }

    .button {
        cursor: pointer;
    }
    .custom-modal-backdrop {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(0, 0, 0, 0.5);
        z-index: 1040;
        display: none;
    }
    .custom-modal {
        display: none;
        position: fixed;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        z-index: 1050;
        width: 90%;
        max-width: 500px;
        background: white;
        border-radius: 10px;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.5);
    }
    #closeModal {
        background-color: #FF5B37; /* Nền trong suốt */
        color: white; /* Màu chữ */
        border: 2px solid #333; /* Viền đậm */
        width: 30px; /* Độ rộng */
        height: 30px; /* Chiều cao */
        border-radius: 50%; /* Để làm hình tròn */
        display: flex; /* Sử dụng flexbox để căn giữa */
        justify-content: center; /* Căn giữa theo chiều ngang */
        align-items: center; /* Căn giữa theo chiều dọc */
        cursor: pointer; /* Con trỏ khi di chuột vào */
        outline: none; /* Loại bỏ đường viền khi được focus */
        font-size: 20px; /* Kích thước chữ */
        position: relative; /* Đặt vị trí tương đối để điều chỉnh vị trí */
    }

</style>
</head>
<body>

    <div class="main-wrapper">


        <header class="header header-two">

            <div class="container">
                <nav class="navbar navbar-expand-lg header-nav p-0">
                    <div class="navbar-header header-select">
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
                                <div class="company-title d-flex align-items-center">
                                    <h4 class="mb-0">${post.title}</h4>
                                    <!-- Thêm biểu tượng cái cờ màu xám -->
                                    <a href="#" class="btn btn-danger ml-2 report-post" data-postid="1" id="reportPostBtn">
                                        <i class="fas fa-flag custom-flag"></i> 
                                    </a>

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
                                            <span class="d-block">Category</span>
                                            <p class="mb-0">${post.caID.categoriesName}</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="proposal-detail-img">
                                            <img src="assets/img/icon/time-line.svg" alt="icons">
                                        </div>
                                        <div class="proposal-detail text-capitalize">
                                            <span class="d-block">Duration</span>
                                            <p class="mb-0">${post.durationID.durationName}</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="proposal-detail-img">
                                            <img src="assets/img/icon/time-line.svg" alt="icons">
                                        </div>
                                        <div class="proposal-detail text-capitalize">
                                            <span class="d-block">Job Type</span>
                                            <p class="mb-0">${post.jobTypeID.jobName}</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="proposal-detail-img">
                                            <img src="assets/img/icon/user-heart-line.svg" alt="icons">
                                        </div>
                                        <div class="proposal-detail text-capitalize">
                                            <span class="d-block">Quantity</span>
                                            <p class="mb-0">${post.quantity}</p>
                                        </div>
                                    </li>
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
                                <c:forEach items="${fn:split(post.skill, ',')}" var="skill">
                                    <span class="badge badge-pill badge-design">${skill}</span>
                                </c:forEach>
                            </div>
                        </div>

                        <div class="company-detail-block pb-0">
                            <h4 class="company-detail-title">Other Posts</h4>
                            <c:forEach items="${lpost}" var="p">
                                <div class="project-proposals-block">
                                    <div class="project-proposals-img">
                                        <img src="${p.image}" class="img-fluid" alt="user">
                                    </div>
                                    <div class="project-proposals-description">
                                        <div class="proposals-user-detail">
                                            <div>
                                                <a href="PostDetails?postID=${p.postID}"><h5>${p.title}</h5></a>
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
                                <!--                                    <a data-bs-toggle="modal" href="#file" class="btn proposal-btn btn-primary">Apply Now </a>-->
                                <c:if test="${postApply != null}">
                                    <c:set var="applied" value="false" />
                                    <c:forEach items="${postApply}" var="j">
                                        <c:if test="${post.postID == j.postID}">
                                            <c:choose>
                                                <c:when test="${j.status == 'Pending' || j.status == 'Approve'}">
                                                    <c:set var="applied" value="true" />
                                                </c:when>
                                                <c:when test="${j.status == 'Reject'}">
                                                    <c:remove var="applied" />
                                                </c:when>
                                            </c:choose>
                                        </c:if>
                                    </c:forEach>

                                    <c:choose>
                                        <c:when test="${applied}">
                                            <a class="btn proposal-btn btn-primary" tabindex="-1">Applied</a>
                                        </c:when>
                                        <c:otherwise>
                                            <a data-bs-toggle="modal" data-bs-target="#applyModal_${post.postID}" id="applyButton_${post.postID}" class="btn proposal-btn btn-primary" data-postid="${post.postID}" tabindex="-1">Apply Now</a>
                                        </c:otherwise>
                                    </c:choose>
                                </c:if> 

                                <c:if test="${postApply == null}">
                                    <a href="login" class="btn proposal-btn btn-primary"  tabindex="-1">Apply Now</a> 
                                </c:if>
                            </div>
                        </div>

                        <div class="modal custom-modal fade" id="applyModal_${post.postID}" role="dialog">
                            <div class="modal-dialog modal-dialog-centered">
                                <div class="modal-content">
                                    <div class="modal-body">
                                        <div class="form-header">
                                            <input type="hidden" class="user-id1" id="">
                                            <h3>Status</h3>
                                            <p>Are you sure you want to apply for this job?</p>
                                        </div>
                                        <div class="modal-btn Suspend-action">
                                            <div class="row">
                                                <div class="col-6">
                                                    <!-- Nút "Yes" để xử lý AJAX -->
                                                    <a href="javascript:void(0);" class="btn btn-primary confirm-btn" data-postid="${post.postID}">Yes</a>
                                                </div>
                                                <div class="col-6">
                                                    <!-- Nút "Cancel" để đóng modal -->
                                                    <a data-bs-dismiss="modal" class="btn btn-primary confirm-btn">Cancel</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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
   <div id="report-post-modal-container" class="custom-modal">
    <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="reportPostModalLabel">Update Report</h5>
            <button type="button" class="close" id="closeModal">
                <span>&times;</span>
            </button>
        </div>
        <div class="modal-body">
        <form action="PostDetailsControll?action=report" method="post" id="report-post-form-content">
    <input type="hidden" name="action" value="report">
    <input type="hidden" name="postID" value="${post.postID}">
    <div class="form-group">
        <label for="report_post_reason">Select a reason for reporting:</label><br>
        <div class="form-check">
            <input type="radio" id="report_post_reason_spam" name="report_post_reason" value="Spam" class="form-check-input">
            <label for="report_post_reason_spam" class="form-check-label">Spam</label>
        </div>
        <div class="form-check">
            <input type="radio" id="report_post_reason_inappropriate" name="report_post_reason" value="Inappropriate behavior" class="form-check-input">
            <label for="report_post_reason_inappropriate" class="form-check-label">Inappropriate behavior</label>
        </div>
        <div class="form-check">
            <input type="radio" id="report_post_reason_abuse" name="report_post_reason" value="Abuse" class="form-check-input">
            <label for="report_post_reason_abuse" class="form-check-label">Abuse</label>
        </div>
        <div class="form-check">
            <input type="radio" id="report_post_reason_other" name="report_post_reason" value="Other" class="form-check-input">
            <label for="report_post_reason_other" class="form-check-label">Other</label>
        </div>
        <textarea id="report_post_message" name="report_post_message" class="form-control mt-3" rows="5" placeholder="Enter additional details (optional)"></textarea>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-secondary" id="cancelReportBtn">Cancel</button>
        <button type="submit" class="btn btn-primary" id="submit-report-post-button">Submit Report</button>
    </div>
</form>

        </div>
    </div>
</div>




    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var checkbox = document.getElementById('report_post_reason_other');
            var textarea = document.getElementById('report_post_message');

            // Ẩn textarea khi trang được load
            textarea.style.display = 'none';

            // Bắt sự kiện thay đổi của checkbox
            checkbox.addEventListener('change', function () {
                if (checkbox.checked) {
                    textarea.style.display = 'block'; // Hiển thị textarea nếu checkbox được chọn
                } else {
                    textarea.style.display = 'none'; // Ẩn textarea nếu checkbox không được chọn
                }
            });
        });
        document.addEventListener('DOMContentLoaded', (event) => {
            // Show the modal when the report post button is clicked
            document.getElementById('reportPostBtn').addEventListener('click', function (event) {
                event.preventDefault(); // Prevent default action to stop following href
                $('#customModalBackdrop').fadeIn();
                $('#report-post-modal-container').fadeIn();
            });

            // Hide the modal when the close button is clicked
            document.getElementById('closeModal').addEventListener('click', function () {
                $('#customModalBackdrop').fadeOut();
                $('#report-post-modal-container').fadeOut();
            });

            // Hide the modal when the cancel button is clicked
            document.getElementById('cancelReportBtn').addEventListener('click', function () {
                $('#customModalBackdrop').fadeOut();
                $('#report-post-modal-container').fadeOut();
            });
        });
    </script>
    <style>
        .confirm-btn{

            background: #E65425;
            border-radius: 90px;
            font-weight: bold;
            font-size: 17px;
            padding: 13px 50px;
            color: #FFFFFF;
            margin-right: 15px;
            text-transform: uppercase;

        }
    </style>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
       
            $(document).ready(function () {
            <% String message = (String) session.getAttribute("message"); %>
            <% if (message != null) { %>
                toastr.success('<%= message %>', 'Notification', {
                    timeOut: 3000,
                    positionClass: 'toast-top-right'
                });
            <% session.removeAttribute("message"); %>
            <% } %>
            });

         
        $(document).ready(function () {
            // Xử lý sự kiện khi người dùng nhấn vào nút "Apply Now"
            $('.apply-button').on('click', function (e) {
                e.preventDefault();
                var postID = $(this).data('postid');
                // Hiển thị modal tương ứng
                $('#applyModal_' + postID).modal('show');
            });

            // Xử lý sự kiện khi người dùng nhấn vào nút "Yes" trong modal
            $('.confirm-btn').on('click', function (e) {
                e.preventDefault();
                var postID = $(this).data('postid');

                // Gửi yêu cầu AJAX để ứng tuyển công việc
                $.ajax({
                    url: 'ApplyJob', // Đường dẫn xử lý ứng tuyển công việc
                    type: 'GET',
                    data: {
                        postID: postID
                    },
                    success: function (response) {
                        // Xử lý phản hồi thành công (nếu cần)
                        // Đổi nút sang trạng thái "Applied"
                        $('#applyButton_' + postID).text('Applied');
                        // Đóng modal sau khi xử lý thành công
                        $('#applyModal_' + postID).modal('hide');
                    },
                    error: function (xhr, status, error) {
                        // Xử lý lỗi (nếu có)
                        alert('Đã xảy ra lỗi: ' + error);
                    }
                });
            });
        });
    </script>


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
<script src="assets/js/bootstrap.bundle.min.js" type="39bd9d3b5f9a12b82c2bbcef-text/javascript"></script>
<script src="assets/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="39bd9d3b5f9a12b82c2bbcef-|49" defer></script>
<!-- Mirrored from kofejob.dreamstechnologies.com/html/template/project-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:34:26 GMT -->
</html>
