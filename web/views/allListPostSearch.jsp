<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/project.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:34:09 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
        <title>KofeJob</title>

        <link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

        <link rel="stylesheet" href="assets/plugins/feather/feather.css">

        <link rel="stylesheet" href="assets/plugins/select2/css/select2.min.css">

        <link rel="stylesheet" href="assets/css/style.css">

        <style>
            .text-center1 {
                width: 150px;
                height: 150px;
                margin: 0 auto 15px;
            }

            .pagination {
                display: flex;
                justify-content: center;
                margin-top: 20px;
            }

            .pagination a, .pagination span {
                margin: 0 5px;
                padding: 10px 20px;
                border: 1px solid #ddd;
                text-decoration: none;
                color: #333;
            }

            .pagination .current-page {
                background-color: #007bff;
                color: white;
                border: 1px solid #007bff;
            }

            .pagination a:hover {
                background-color: #ddd;
            }

            .btn-cart1 {
                width: 40%;
                display: inline-block;
                border-radius: 5px;
                border-color: transparent;
                text-transform: capitalize;
                background: transparent;
                border: 1px solid #E65425;
                color: #E65425;
                padding: 9px 15px;
                font-weight: 700;
                margin:0 10px 0;
                font-size: 14px;
            }

            .classbtn:hover {
                background-color: #FF3300;
                color: white;
            }
            .apply{
                background-color: #FF3300;
                color: white;
            }

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
       .titlepost{
                max-width: 300px;
                white-space: nowrap;
                overflow: hidden;
                text-overflow: ellipsis;
            }
        </style>
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
                                <h3>My List Post Project</h3>
                                <nav aria-label="breadcrumb" class="page-breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="home"> Home</a></li>
                                        <li class="breadcrumb-item" aria-current="page">My List Post</li>
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

                        <div class="col-md-12 col-lg-4 col-xl-3 theiaStickySidebar">

                            <div class="card search-filter">
                                <div class="card-header d-flex justify-content-between">
                                    <h4 class="card-title mb-0">Search Filter</h4>
                                </div>
                                <div class="card-body">
                                    <div class="filter-widget">
                                        <div class="row">
                                            <div class="col-xl-6  col-sm-6 d-flex ">
                                                <div class="sort-by">
                                                    <select class="select" id="sortSelect">
                                                        <option value="default">Sort by (Default)</option>
                                                        <option value="newest">Newest</option>
                                                        <option value="oldest">Oldest</option>
                                                        <option value="proposals">Proposals</option>
                                                    </select>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="filter-widget">
                                        <h4 class="filter-title">
                                            <a href="javascript:void(0);" class="w-100" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                Category
                                                <span class="float-end"><i class="fa-solid fa-chevron-down"></i></span></a>
                                        </h4>
                                        <div id="collapseOne" class="collapse show" data-bs-parent="#accordionExample1">
                                            <c:forEach items="${cate}" var="category" varStatus="loop">
                                                <div style="${loop.index > 3 ? 'display:none;' : ''}" class="category-item">
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="category" value="${category.categoriesName}" data-filter="category">
                                                        <span class="checkmark"></span> ${category.categoriesName}
                                                    </label>
                                                </div>
                                            </c:forEach>

                                            <div id="collapseOnes" class="collapse" data-bs-parent="#accordionExample1">
                                                <c:forEach items="${cate}" var="category" begin="4">
                                                    <div class="category-item">
                                                        <label class="custom_check">
                                                            <input type="checkbox" name="category" value="${category.categoriesName}" data-filter="category">
                                                            <span class="checkmark"></span> ${category.categoriesName}
                                                        </label>
                                                    </div>
                                                </c:forEach>
                                            </div>

                                            <div class="showmore mt-2">
                                                <a href="javascript:void(0);" id="showMoreBtn" aria-expanded="false">
                                                    <i class="feather-plus me-1"></i>Show More
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="filter-widget">
                                        <h4 class="filter-title">
                                            <a href="javascript:void(0);" class="w-100" id="skillsLink" data-bs-toggle="collapse" data-bs-target="#collapseOne1" aria-expanded="true" aria-controls="collapseOne1">
                                                Skills <span class="float-end"><i class="fa-solid fa-chevron-down"></i></span></a>
                                        </h4>
                                        <div id="collapseOne1" class="collapse show" data-bs-parent="#accordionExample2">
                                            <c:forEach items="${skill}" var="skill" varStatus="loop">
                                                <div style="${loop.index > 3 ? 'display:none;' : ''}" class="skill-item">
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="skills" value="${skill.skill_set_name}" data-filter="skills">
                                                        <span class="checkmark"></span> ${skill.skill_set_name}
                                                    </label>
                                                </div>
                                            </c:forEach>

                                            <div id="collapseOnes1" class="collapse" data-bs-parent="#accordionExample2">
                                                <c:forEach items="${skill}" var="skill" begin="4">
                                                    <div class="skill-item">
                                                        <label class="custom_check">
                                                            <input type="checkbox" name="skills" value="${skill.skill_set_name}" data-filter="skills">
                                                            <span class="checkmark"></span>${skill.skill_set_name}
                                                        </label>
                                                    </div>
                                                </c:forEach>
                                            </div>

                                            <div class="showmore mt-2">
                                                <a href="javascript:void(0);" id="showMoreBtn1" aria-expanded="false">
                                                    <i class="feather-plus me-1"></i>Show More
                                                </a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="filter-widget">
                                        <h4 class="filter-title">
                                            <a href="javascript:void(0);" class="w-100" id="projectTypeLink" data-bs-toggle="collapse" data-bs-target="#collapsproject" aria-expanded="true" aria-controls="collapsproject">
                                                Level
                                                <span class="float-end"><i class="fa-solid fa-chevron-down"></i></span>
                                            </a>
                                        </h4>
                                        <div id="collapsproject" class="collapse show" data-bs-parent="#accordionExample1">
                                            <c:forEach items="${jobtype}" var="jobtype">
                                                <div class="project-type-item">
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="projectType" value="${jobtype.jobName}" data-filter="projectType">
                                                        <span class="checkmark"></span>${jobtype.jobName}
                                                    </label>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>

                                    <div class="filter-widget">
                                        <h4 class="filter-title">
                                            <a href="javascript:void(0);" class="w-100" id="projectDurationLink" data-bs-toggle="collapse" data-bs-target="#collapseOneDuration" aria-expanded="true" aria-controls="collapseOneDuration">
                                                Work time
                                                <span class="float-end"><i class="fa-solid fa-chevron-down"></i></span>
                                            </a>
                                        </h4>
                                        <div id="collapseOneDuration" class="collapse show" data-bs-parent="#accordionExample1">
                                            <c:forEach items="${dura}" var="dura">
                                                <div class="duration-item">
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="projectDuration" value="${dura.durationName}" data-filter="projectDuration">
                                                        <span class="checkmark"></span>${dura.durationName}
                                                    </label>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>


                        <div class="col-md-12 col-lg-8 col-xl-9">

                            <%-- Hiển thị danh sách bài đăng --%>
                            <div class="row" id="listpostContainer">
                                <c:forEach items="${listpost}" var="list">
                                    <div class="col-xl-4 col-md-6 post-item">
                                        <div class="freelance-widget widget-author position-relative">
                                            <div class="freelance-content">
                                                <div style="padding-bottom: 30px; padding-top: 16px">
                                                    <div style="margin-top: 10px;" class="freelance-location freelance-time"><i class="feather-clock me-1"></i> ${list.datePost}</div>
                                                    <c:set var="favo" value="false" />
                                                    <c:forEach items="${postFavourites}" var="post">
                                                        <c:choose>
                                                            <c:when test="${list.postID == post.postID}">
                                                                <c:set var="favo" value="true" />
                                                            </c:when>                                                                
                                                        </c:choose>
                                                    </c:forEach>

                                                    <c:set var="postId" value="${list.postID}" />

                                                    <c:choose>
                                                        <c:when test="${favo}">
                                                            <a href="javascript:void(0);" onclick="toggleFavorite(${list.postID})" id="favourite_${postId}" class="favourite color-active"><i class="feather-heart"></i></a>
                                                            </c:when>
                                                            <c:otherwise>
                                                            <a href="javascript:void(0);" onclick="toggleFavorite(${list.postID})" id="favourite_${postId}" class="favourite"><i class="feather-heart"></i></a>
                                                            </c:otherwise>
                                                        </c:choose>
                                                </div>
                                                <div class="author-heading">
                                                    <div class="text-center1" >                                                                                                              
                                                        <img style="width: 100%; height: 100%;" src="${list.image}" alt="author">                                                       
                                                    </div>
                                                    <div class="profile-name ">
                                                        <div class="author-location titlepost"><a>${list.title} </a></div>
                                                    </div>
                                                    <div class="freelance-info">
                                                        <h3><a href="javascript:void(0);">${list.caID.categoriesName}</a></h3>
                                                        <div class="freelance-location"><img src="assets/img/icon/locations.svg" class="me-2" alt="img">${list.location}</div>
                                                    </div>
                                                    <div class="skills-container">
                                                        <c:forEach items="${fn:split(list.skill, ',')}" var="skill" varStatus="loop">
                                                            <c:if test="${loop.index < 3}">
                                                                <span class="badge badge-pill badge-design">${skill}</span>
                                                            </c:if>                                                              
                                                            <c:if test="${loop.index == 2 and not loop.last}">                                                                 
                                                                <span class="badge badge-pill badge-design">...</span>
                                                            </c:if>
                                                        </c:forEach>
                                                    </div>
                                                    <!--
                                                                                                        <div class="skills-container">
                                                    <c:forEach var="skill" items="${list.skill.split(',')}" varStatus="loop">
                                                        <c:if test="${loop.index % 3 == 0}">
                                                            <div class="skills-row">
                                                        </c:if>
                                                        <div class="freelance-tags">
                                                            <a href="javascript:void(0);"><span class="badge badge-pill badge-design">${skill.trim()}</span></a>
                                                        </div>
                                                        <c:if test="${loop.index % 3 == 2 || loop.last}">
                                                        </div>
                                                        </c:if>
                                                    </c:forEach>
                                                </div>-->

                                                    <!--                                                    <style>
                                                    
                                                    
                                                                                                            .skills-container {
                                                                                                                display: flex;
                                                                                                                flex-wrap: wrap;
                                                                                                                justify-content: center;
                                                                                                                align-items: center;
                                                                                                            }
                                                                                                            .freelance-tags {
                                                                                                                margin: 5px;
                                                                                                            }
                                                                                                            .skills-row {
                                                                                                                display: flex;
                                                                                                                justify-content: center;
                                                                                                                width: 100%;
                                                                                                            }
                                                                                                        </style>-->
                                                </div>
                                                <div class="counter-stats">
                                                    <ul>
                                                        <li>
                                                            <h5>Work Time</h5>
                                                            <h3 class="counter-value">${list.durationID.durationName}</h3>
                                                        </li>
                                                        <li>
                                                            <h5>Quantity</h5>
                                                            <h3 class="counter-value">${list.quantity}</h3>
                                                        </li>
                                                        <li>
                                                            <h5>Level</h5>
                                                            <h3 class="counter-value"><span class="jobtype">${list.jobTypeID.jobName}</span></h3>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>


                                            <div class="cart-hover">
                                                <a href="PostDetails?postID=${list.postID}" class="btn-cart1 classbtn" tabindex="-1">View Details</a>

                                                <c:if test="${postApply != null}">
                                                    <c:set var="applied" value="false" />
                                                    <c:forEach items="${postApply}" var="j">
                                                        <c:if test="${list.postID == j.postID}">
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
                                                            <a class="btn-cart1 apply" tabindex="-1">Applied</a>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <a data-bs-toggle="modal" data-bs-target="#applyModal_${list.postID}" id="applyButton_${list.postID}" class="btn-cart1 apply-button classbtn" data-postid="${list.postID}" tabindex="-1">Apply Now</a>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </c:if> 

                                                <c:if test="${postApply == null}">
                                                    <a href="login" class="btn-cart1  classbtn"  tabindex="-1">Apply Now</a> 
                                                </c:if>
                                            </div>


                                        </div>
                                        <div class="modal custom-modal fade" id="applyModal_${list.postID}" role="dialog">
                                            <div class="modal-dialog modal-dialog-centered">
                                                <div class="modal-content">
                                                    <div class="modal-body">
                                                        <div class="form-header">
                                                            <input type="hidden" class="user-id1" id="">
                                                            <h3>Status</h3>
                                                            <p>Submit your resume so employers can know more about you.</p>
                                                        </div>
                                                        <div class="modal-btn Suspend-action">

                                                            <form id="jobApplicationForm_${list.postID}" action="ApplyJobInListPost" method="post"  enctype="multipart/form-data" onsubmit="return validateForm('${list.postID}')" >
                                                                <div class="row">
                                                                    <div style='margin-bottom: 30px'>
                                                                        <input oninput="check('${list.postID}')" class='file' type='file' id='fileInput_${list.postID}' name="file"/>
                                                                        <div style="color: red" id="error_${list.postID}"></div>
                                                                        <input hidden="" name="postID" value="${list.postID}"/>
                                                                        <input hidden="" name="index" value="${tag}"/>
                                                                    </div>
                                                                    <div class="col-6">
                                                                        <!-- Nút "Yes" để xử lý AJAX -->
                                                                        <button id="submitButton_${list.postID}" class="btn btn-primary confirm-btn" type="submit" onclick="submitForm('${list.postID}')">Submit</button>
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


                                    </div>
                                </c:forEach>
                            </div>

                            <div class="pagination-container">
                                <c:if test="${endPage > 1}">
                                    <ul class="pagination list-pagination">
                                        <c:if test="${tag > 1}">
                                            <li class="page-item">
                                                <a class="page-link" href="SearchInHome?index=${tag-1}" aria-label="Trước">
                                                    <span aria-hidden="true">&laquo;</span>
                                                </a>
                                            </li>
                                        </c:if>
                                        <c:forEach var="i" begin="1" end="${endPage}">
                                            <li class="page-item ${i == tag ? 'active' : ''}">
                                                <a class="page-link" href="SearchInHome?index=${i}">${i}</a>
                                            </li>
                                        </c:forEach>
                                        <c:if test="${tag < endPage}">
                                            <li class="page-item">
                                                <a class="page-link" href="SearchInHome?index=${tag + 1}" aria-label="Sau">
                                                    <span aria-hidden="true">&raquo;</span>
                                                </a>
                                            </li>
                                        </c:if>
                                    </ul>

                                </c:if>
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
                                    <p>We?re always in search for talented and motivated people. Don?t be shy introduce yourself!</p>
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


        <div class="modal fade" id="rating">
            <div class="modal-dialog modal-dialog-centered modal-md">
                <div class="modal-content">
                    <div class="modal-header d-block b-0 pb-0">
                        <span class="modal-close float-end"><a href="javascript:void(0);" data-bs-dismiss="modal" aria-label="Close"><i class="fa fa-times orange-text"></i></a></span>
                    </div>
                    <div class="modal-body">
                        <form action="https://kofejob.dreamstechnologies.com/html/template/project.html">
                            <div class="modal-info">
                                <div class="text-center pt-0 mb-5">
                                    <h3>Please login to Favourite Project</h3>
                                </div>
                                <div class="submit-section text-center">
                                    <a data-bs-dismiss="modal" href="javascript:void(0);" class="btn btn-primary black-btn click-btn">Cancel</a>
                                    <button type="submit" class="btn btn-primary click-btn">Submit</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>


        <script>
            document.addEventListener('DOMContentLoaded', function () {
                document.getElementById('showMoreBtn').addEventListener('click', function () {
                    let collapseOne = document.getElementById('collapseOne');
                    let collapseOnes = document.getElementById('collapseOnes');
                    let expanded = this.getAttribute('aria-expanded') === 'true';
                    this.setAttribute('aria-expanded', !expanded);
                    collapseOnes.classList.toggle('show');
                    this.innerHTML = !expanded ? '<i class="feather-minus me-1"></i>Show Less' : '<i class="feather-plus me-1"></i>Show More';
                    filterPosts(); // Gọi lại hàm lọc sau khi thay đổi
                });

                document.getElementById('showMoreBtn1').addEventListener('click', function () {
                    let collapseOne1 = document.getElementById('collapseOne1');
                    let collapseOnes1 = document.getElementById('collapseOnes1');
                    let expanded = this.getAttribute('aria-expanded') === 'true';
                    this.setAttribute('aria-expanded', !expanded);
                    collapseOnes1.classList.toggle('show');
                    this.innerHTML = !expanded ? '<i class="feather-minus me-1"></i>Show Less' : '<i class="feather-plus me-1"></i>Show More';
                    filterPosts(); // Gọi lại hàm lọc sau khi thay đổi
                });

                let checkboxes = document.querySelectorAll('input[type="checkbox"]');
                checkboxes.forEach(function (checkbox) {
                    checkbox.addEventListener('change', filterPosts);
                });
            });

            function filterPosts() {
                let selectedCategories = Array.from(document.querySelectorAll('input[name="category"]:checked')).map(el => el.value.toLowerCase());
                let selectedProjectTypes = Array.from(document.querySelectorAll('input[name="projectType"]:checked')).map(el => el.value.toLowerCase());
                let selectedDurations = Array.from(document.querySelectorAll('input[name="projectDuration"]:checked')).map(el => el.value.toLowerCase());
                let selectedSkills = Array.from(document.querySelectorAll('input[name="skills"]:checked')).map(el => el.value.toLowerCase());

                let posts = document.querySelectorAll('.post-item');

                posts.forEach(function (post) {
                    let postCategory = post.querySelector('.freelance-info h3 a').innerText.toLowerCase();
                    let postProjectType = post.querySelector('.counter-stats .jobtype').innerText.toLowerCase();
                    let postDuration = post.querySelector('.counter-stats .counter-value').innerText.toLowerCase();
                    let postSkills = Array.from(post.querySelectorAll(' .badge')).map(el => el.innerText.toLowerCase());
                    let matchCategory = selectedCategories.length === 0 || (selectedCategories.length === 1 && selectedCategories.includes(postCategory));
                    let matchProjectType = selectedProjectTypes.length === 0 || (selectedProjectTypes.length === 1 && selectedProjectTypes.includes(postProjectType));
                    let matchDuration = selectedDurations.length === 0 || (selectedDurations.length === 1 && selectedDurations.includes(postDuration));
                    let matchSkill = selectedSkills.length === 0 || selectedSkills.every(skill => postSkills.includes(skill));

                    if (matchCategory && matchProjectType && matchDuration && matchSkill) {
                        post.style.display = 'block';
                    } else {
                        post.style.display = 'none';
                    }
                });
            }

            // Định nghĩa hàm cắt chuỗi và thêm "..."
//            function truncateString(str, maxLength) {
//                if (str.length <= maxLength) {
//                    return str;
//                } else {
//                    return str.substring(0, maxLength) + "...";
//                }
//            }

//            // Lấy nội dung của element có id là 'title-list-post'
//            let titleElement = document.getElementById('title-list-post');
//
//            // Lấy nội dung ban đầu từ innerHTML của element
//            let originalTitle = titleElement.innerHTML;
//
//            // Sử dụng hàm truncateString để cắt chuỗi và gán lại vào innerHTML của element
//            let truncatedTitle = truncateString(originalTitle, 5);
//            titleElement.innerHTML = truncatedTitle;
        </script>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script>
            function addToFavorites(postID) {
                $.ajax({
                    url: 'AddFavourites',
                    type: 'GET',
                    data: {
                        postID: postID
                    },
                    success: function (response) {
                        // Xử lý phản hồi thành công (nếu cần)
                        //alert('Đã thêm vào danh sách yêu thích!');
                        $('#favourite_' + postID).addClass('color-active');
                    },
                    error: function (xhr, status, error) {
                        // Xử lý lỗi (nếu có)
                        alert('Đã xảy ra lỗi: ' + error);
                    }
                });
            }

            function removeFromFavorites(postID) {
                $.ajax({
                    url: 'DeleteFavourites',
                    type: 'GET',
                    data: {
                        postID: postID
                    },
                    success: function (response) {
                        // Xử lý phản hồi thành công (nếu cần)
                        //alert('Đã xóa khỏi danh sách yêu thích!');
                        $('#favourite_' + postID).removeClass('color-active');
                    },
                    error: function (xhr, status, error) {
                        // Xử lý lỗi (nếu có)
                        alert('Đã xảy ra lỗi: ' + error);
                    }
                });
            }
        </script>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
            function toggleFavorite(postId) {
                var favouriteLink = $('#favourite_' + postId);

                if (favouriteLink.hasClass('color-active')) {
                    // Remove from favorites
                    $.ajax({
                        url: 'DeleteFavourites', // Thay đổi đường dẫn phù hợp
                        type: 'GET',
                        data: {
                            postID: postId
                        },
                        success: function (response) {
                            favouriteLink.removeClass('color-active');
                            favouriteLink.attr('onclick', 'toggleFavorite(' + postId + ')');
                        },
                        error: function (xhr, status, error) {
                            console.error(error);
                        }
                    });
                } else {
                    // Add to favorites
                    $.ajax({
                        url: 'AddFavourites', // Thay đổi đường dẫn phù hợp
                        type: 'GET',
                        data: {
                            postID: postId
                        },
                        success: function (response) {
                            favouriteLink.addClass('color-active');
                            favouriteLink.attr('onclick', 'toggleFavorite(' + postId + ')');
                        },
                        error: function (xhr, status, error) {
                            console.error(error);
                        }
                    });
                }
            }
        </script>

        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="adminAssets/js/notification.js"></script>


        <script src="assets/js/filterMyListPost.js" type="text/javascript"></script>
        <script src="assets/js/jquery-3.7.1.min.js" type="43b4fcd1b9965a5423af7613-text/javascript"></script>

        <script src="assets/js/bootstrap.bundle.min.js" type="43b4fcd1b9965a5423af7613-text/javascript"></script>

        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js" type="43b4fcd1b9965a5423af7613-text/javascript"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js" type="43b4fcd1b9965a5423af7613-text/javascript"></script>

        <script src="assets/plugins/select2/js/select2.min.js" type="43b4fcd1b9965a5423af7613-text/javascript"></script>

        <script src="assets/js/profile-settings.js" type="43b4fcd1b9965a5423af7613-text/javascript"></script>
        <script src="assets/js/script.js" type="43b4fcd1b9965a5423af7613-text/javascript"></script>
        <script src="assets/cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="43b4fcd1b9965a5423af7613-|49" defer></script>
        <script src="assets/js/bootstrap.bundle.min.js" type="39bd9d3b5f9a12b82c2bbcef-text/javascript"></script>
        <script src="assets/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="39bd9d3b5f9a12b82c2bbcef-|49" defer></script></body>
    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/project.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:34:26 GMT -->
</html>
