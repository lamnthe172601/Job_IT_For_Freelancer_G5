

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
    </head>
    <style>

        .custom-flag {

            padding: 2px; /* Khoảng cách bên trong để nhìn đẹp hơn */
            border-radius: 3px; /* Bo tròn các góc */
        }

        .btn.report-post {
            background-color: transparent; /* Làm nền nút trong suốt */
            border: none; /* Bỏ viền nút */
            padding: 0; /* Bỏ khoảng cách bên trong */
            color: black;
            margin-left: 170px;
        }
        .reporrt {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0,0,0,0.4);
            z-index: 1050;
        }

        .reporrt-content {
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

        .report-postt-backdrop {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: transparent;
            z-index: 1040;
            display: none;
        }

        .report-postt {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 1050;
            width: 90%;
            max-width: 500px;
            background-color: transparent;


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





        .company-detail {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 10px; /* Bo tròn các góc */
            margin-bottom: 10px;
        }

        .company-detail-image {
            flex-shrink: 0;
            margin-right: 10px;
        }

        .company-title {
            flex-grow: 1;
            margin-right: 10px;
        }

        .company-detail-flag {
            flex-shrink: 0;
        }

        .company-title h4 {
            margin: 0;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        .btn.report-post {
            display: inline-flex;
            align-items: center;
        }

        .custom-flag {
            margin-left: 5px;
        }


    </style>
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
                                <h2>Project Details</h2>
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
                                    <div class="company-detail-flag">
                                        <!-- biểu tượng cái cờ-->
                                        <a href="#" data-bs-toggle="modal" class="btn btn-danger ml-2 report-post" id="reportPostBtn" data-bs-target="#reportModal_${post.postID}" data-postid="${post.postID}" tabindex="-1">
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
                                                <span class=" d-block">Position</span>
                                                <p class="mb-0">${post.caID.categoriesName}</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="proposal-detail-img">
                                                <img src="assets/img/icon/time-line.svg" alt="icons">
                                            </div>
                                            <div class="proposal-detail text-capitalize">
                                                <span class=" d-block">Work Time</span>
                                                <p class="mb-0">${post.durationID.durationName}</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="proposal-detail-img">
                                                <img src="assets/img/icon/time-line.svg" alt="icons">
                                            </div>
                                            <div class="proposal-detail text-capitalize">
                                                <span class=" d-block">Level</span>
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
                                    <c:forEach var="entry" items="${map}">
                                        <br>
                                        <h5 >${entry.key}</h5>

                                        <c:forEach items="${fn:split(entry.value, ',')}" var="skill" varStatus="loop">
                                            <span  class="badge badge-pill badge-design ">${skill}</span>
                                        </c:forEach>
                                        <br>
                                    </c:forEach>
                                </div>
                            </div>

                            <div class="company-detail-block pb-0">
                                <h4 class="company-detail-title">Other Post</h4>
                                <c:forEach items="${lpost}" var="p" >
                                    <div class="project-proposals-block ">
                                        <div class="project-proposals-img">
                                            <img style="width: 80px; height: 80px; border-radius: 50%" src="${p.image}" class="" alt="user">
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
                                            <p class="mb-0 describe">${p.description}</p>
                                        </div>
                                    </div>
                                </c:forEach>



                            </div>
                        </div>

                        <div class="col-lg-4 col-md-12 sidebar-right theiaStickySidebar project-client-view">
                            <div class="card budget-widget">
                                <div class="budget-widget-details">
                                    <h6></h6>
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
                                                    <c:when test="${j.status == '0' || j.status == '1'}">
                                                        <c:set var="applied" value="true" />
                                                    </c:when>
                                                    <c:when test="${j.status == '2'}">
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
                                                <p>Submit your resume so employers can know more about you.</p>
                                            </div>
                                            <div class="modal-btn Suspend-action">
                                                <form id="jobApplicationForm_${post.postID}" action="ApplyJobFromPostDetail" method="post"  enctype="multipart/form-data" onsubmit="return validateForm('${post.postID}')" >
                                                    <div class="row">
                                                        <div style='margin-bottom: 30px'>
                                                            <input oninput="check('${post.postID}')" class='file' type='file' id='fileInput_${post.postID}' name="file"/>
                                                            <div style="color: red" id="error_${post.postID}"></div>
                                                            <input hidden="" name="postID" value="${post.postID}"/>

                                                        </div>
                                                        <div class="col-6">
                                                            <!-- Nút "Yes" để xử lý AJAX -->
                                                            <button id="submitButton_${p.postID}" class="btn btn-primary confirm-btn" type="submit" onclick="submitForm('${post.postID}')">Submit</button>
                                                        </div>
                                                        <div class="col-6 " >
                                                            <!-- Nút "Cancel" để đóng modal -->
                                                            <a data-bs-dismiss="modal" class="btn btn-primary confirm-btn">Cancel</a>
                                                        </div>
                                                    </div>
                                                </form>    
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            
                            <!-- report post -->
                            <div class="modal custom-modal fade" id="reportModal_${post.postID}" role="dialog">
                                <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content">
                                        <div class="modal-body">
                                            <div class="form-header">
                                                <input type="hidden" class="user-id1" id="">
                                                <span id="closeModal" class="close-wrap">&times;</span>
                                                <h5 class="modal-title" id="reportPostModalLabel">Report Post</h5>
                                            </div>
                                            <div class="modal-btn Suspend-action">
                                                <form action="${pageContext.request.contextPath}/allListPost" method="post" id="report-post-form-content">
                                                    <input type="hidden" name="action" value="report">
                                                    <input type="hidden" name="postID" id="reportPostID">
                                                    <div class="form-group">
                                                        <label for="report_post_message">Select a reason for reporting:</label><br>
                                                        <div class="form-check">
                                                            <input type="radio" id="report_post_reason_spam" name="report_post_message" value="Spam" class="form-check-input">
                                                            <label for="report_post_reason_spam" class="form-check-label">Spam</label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input type="radio" id="report_post_message_inappropriate" name="report_post_message" value="Inappropriate behavior" class="form-check-input">
                                                            <label for="report_post_message_inappropriate" class="form-check-label">Inappropriate behavior</label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input type="radio" id="report_post_message_abuse" name="report_post_message" value="Abuse" class="form-check-input">
                                                            <label for="report_post_message_abuse" class="form-check-label">Abuse</label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input type="radio" id="report_post_message_other" name="report_post_message" value="Other" class="form-check-input">
                                                            <label for="report_post_message_other" class="form-check-label">Other</label>
                                                        </div>
                                                        <textarea id="report_post_message_additional" name="report_post_message_additional" class="form-control mt-3" rows="5" placeholder="Enter additional details (optional)" style="display: none;"></textarea>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <a data-bs-dismiss="modal" class="btn btn-primary confirm-btn">Cancel</a>
                                                        <button type="submit" class="btn btn-primary confirm-btn">Submit</button>
                                                    </div>
                                                </form>
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
                                    <a href="companydetailcommon?recruiterID=${post.recruiterID.recruiterID}" class="btn btn-primary price-btn btn-block">View More</a>                                </div>
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

            input.file {
                border: 1px solid #000; /* Viền đen 2px */
                color: black; /* Màu chữ đen */
                padding: 8px; /* Khoảng cách giữa viền và nội dung */
                border-radius: 5px; /* Bo tròn góc */
                outline: none; /* Loại bỏ viền xung quanh khi focus */

            }
            .describe {
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
            text-overflow: ellipsis;
            line-height: 1.5em;
            max-height: 3em; /* 2 lines * 1.5em line-height */
        }
        </style>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

        <script>
                                                                document.addEventListener("DOMContentLoaded", function () {
                                                                    const radioButtons = document.getElementsByName("report_post_message");
                                                                    const textarea = document.getElementById("report_post_message_additional");

                                                                    radioButtons.forEach(radio => {
                                                                        radio.addEventListener("click", function () {
                                                                            if (radio.value === "Other") {
                                                                                textarea.style.display = "block";
                                                                            } else {
                                                                                textarea.style.display = "none";
                                                                            }
                                                                        });
                                                                    });

                                                                    document.querySelectorAll('.report-post').forEach(button => {
                                                                        button.addEventListener('click', function (event) {
                                                                            event.preventDefault();
                                                                            const postID = this.getAttribute('data-postid');
                                                                            document.getElementById('reportPostID').value = postID;
                                                                            const targetModalId = this.getAttribute('data-bs-target');
                                                                            const targetModal = document.querySelector(targetModalId);
                                                                            $(targetModal).modal('show');
                                                                        });
                                                                    });

                                                                    document.getElementById('closeModal').addEventListener('click', function () {
                                                                        $('#reportModal_${post.postID}').modal('hide');
                                                                    });
                                                                });
        </script>

        <script>
            function validateForm(postID) {
                var fileInput = document.getElementById('fileInput_' + postID);
                var errorDiv = document.getElementById('error_' + postID);
                if (fileInput.files.length === 0) {
                    errorDiv.innerHTML = 'Please select a file.';
                    return false; // Prevent form submission
                } else {
                    errorDiv.innerHTML = '';
                    return true;
                }
            }

            function check(postID) {
                var fileInput = document.getElementById('fileInput_' + postID);
                var errorDiv = document.getElementById('error_' + postID);
                if (fileInput.files.length === 0) {
                    errorDiv.innerHTML = 'Please select a file.';
                } else {
                    errorDiv.innerHTML = '';
                }
            }
        </script>

        <script>
            function submitForm(postID) {
                if (validateForm(postID) === true) {
                    event.preventDefault();
                    showSuccessNotification('Approve project successfully!');
                    setTimeout(function () {
                        document.getElementById('jobApplicationForm_' + postID).submit();
                    }, 1000);
                }

            }
        </script>
        <script>
            document.addEventListener("DOMContentLoaded", function () {
                const radioButtons = document.getElementsByName("report_post_message");
                const textarea = document.getElementById("report_post_message_additional");

                radioButtons.forEach(radio => {
                    radio.addEventListener("click", function () {
                        if (radio.value === "Other") {
                            textarea.style.display = "block";
                        } else {
                            textarea.style.display = "none";
                        }
                    });
                });

                document.querySelectorAll('.report-post').forEach(button => {
                    button.addEventListener('click', function (event) {
                        event.preventDefault();
                        const postID = this.getAttribute('data-postid');
                        document.getElementById('reportPostID').value = postID;
                        document.getElementById('report-postBackdrop').style.display = 'block';
                        document.getElementById('report-post-modal-container').style.display = 'block';
                    });
                });

                document.getElementById('closeModal').addEventListener('click', function () {
                    document.getElementById('report-postBackdrop').style.display = 'none';
                    document.getElementById('report-post-modal-container').style.display = 'none';
                });

                document.getElementById('cancelReportBtn').addEventListener('click', function () {
                    document.getElementById('report-postBackdrop').style.display = 'none';
                    document.getElementById('report-post-modal-container').style.display = 'none';
                });
            });
        </script>

        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="adminAssets/js/notification.js"></script>
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






