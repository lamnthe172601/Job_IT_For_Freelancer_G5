<%-- 
    Document   : recruiterFavourites
    Created on : Jun 26, 2024, 4:15:08 PM
    Author     : tanng
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/developer.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:29:40 GMT -->

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
        <title>KofeJob</title>

        <link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

        <link rel="stylesheet" href="assets/plugins/select2/css/select2.min.css">

        <link rel="stylesheet" href="assets/plugins/feather/feather.css">

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
        </style>
    </head>

    <body>

        <div class="main-wrapper">


            <header class="header header-bg">
                <div class="container">
                    <nav class="navbar navbar-expand-lg header-nav">
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
                            <ul class="main-nav">
                                <li class="active has-submenu">
                                    <a href="home">Home <i class="fas "></i></a>

                                </li>

                                <c:if test="${sessionScope.account.roleID.getRoleID() == 3 || sessionScope.account.roleID.getRoleID() == null}">
                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">For Freelancer<i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu"> 

                                            <li><a href="PostFavourites">Jobs Favurites</a></li>

                                            <li><a href="jobsApply">Jobs Apply</a></li>
                                            <li><a href="jobforyou">Jobs For you</a></li>
                                        </ul>
                                    </li>

                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">For Jobs<i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">

                                            <li><a href="myListJobProject">My List Post</a></li>                                        
                                            <li><a href="SreachJob">Find Jobs</a></li>  
                                            <li><a href="company">Company</a></li>
                                        </ul>
                                    </li>
                                </c:if>
                                <c:if test="${sessionScope.account.roleID.getRoleID() == 4}">
                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">Find Freelancer<i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">

                                            <li><a href="ListFreelancer">List Freelancer</a></li>


                                        </ul>
                                    </li>
                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">My Post<i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">

                                            <li><a href="CreatePost">Create a new Project</a></li>
                                            <li><a href="myListJobProject">My list project</a></li>
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
                                <li class="has-submenu"> <li><a href="blogGrid">Blog</a></li></li>


                            </ul>
                        </div>
                        <ul class="nav header-navbar-rht">
                            <li><a href="chats.html"><img src="assets/img/icon/message-chat-icon.svg" alt="Img"></a></li>
                            <li class="dropdown">
                                <a data-bs-toggle="dropdown" href="javascript:void(0);"><img src="assets/img/icon/notification-bell-icon.svg" alt="Img"></a>
                                <div class="dropdown-menu notifications">
                                    <div class="topnav-dropdown-header">
                                        <div class="notification-title">Notifications<span class="msg-count-badge">2</span></div>
                                        <a href="javascript:void(0)" class="clear-noti d-flex align-items-center">Mark all as read <i class="fe fe-check-circle"></i></a>
                                    </div>
                                    <div class="noti-content">
                                        <ul class="notification-list">
                                            <li class="notification-message">
                                                <a href="notification.html">
                                                    <div class="d-flex">
                                                        <span class="avatar avatar-md active">
                                                            <img class="avatar-img rounded-circle" alt="avatar-img" src="assets/img/avatar/avatar-2.jpg">
                                                        </span>
                                                        <div class="media-body">
                                                            <span class="noti-title">Edward Curr</span>
                                                            <p class="noti-details">Notifications inform you when someone likes, reacts</p>
                                                            <p class="noti-time"><span class="notification-time">Yesterday at 11:42 PM</span></p>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li class="notification-message">
                                                <a href="notification.html">
                                                    <div class="d-flex">
                                                        <span class="avatar avatar-md active">
                                                            <img class="avatar-img rounded-circle" alt="avatar-img" src="assets/img/avatar/avatar-1.jpg">
                                                        </span>
                                                        <div class="media-body">
                                                            <span class="noti-title">Maria Hill</span>
                                                            <p class="noti-details"> Notifications alert you to new messages in your Kofejob inbox.</p>
                                                            <div class="notification-btn">
                                                                <span class="btn btn-primary">Accept</span>
                                                                <span class="btn btn-outline-primary">Reject</span>
                                                            </div>
                                                            <p class="noti-time"><span class="notification-time">Today at 9:42 AM</span></p>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li class="notification-message">
                                                <a href="notification.html">
                                                    <div class="d-flex">
                                                        <span class="avatar avatar-md">
                                                            <img class="avatar-img rounded-circle" alt="avatar-img" src="assets/img/avatar/avatar-3.jpg">
                                                        </span>
                                                        <div class="media-body">
                                                            <span class="noti-title">Maria Hill</span>
                                                            <p class="noti-details"> Notifications alert you to new messages in your Kofejob inbox.</p>
                                                            <p class="noti-time"><span class="notification-time">Yesterday at 5:42 PM</span></p>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li class="notification-message">
                                                <a href="notification.html">
                                                    <div class="d-flex">
                                                        <span class="avatar avatar-md">
                                                            <img class="avatar-img rounded-circle" alt="avatar-img" src="assets/img/avatar/avatar-4.jpg">
                                                        </span>
                                                        <div class="media-body">
                                                            <span class="noti-title">Edward Curr</span>
                                                            <p class="noti-details">Notifications inform you when someone likes, reacts</p>
                                                            <p class="noti-time"><span class="notification-time">Last Wednesday at 11:15 AM</span></p>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="topnav-dropdown-footer text-center">
                                        <a href="notification.html">View All Notification</a>
                                    </div>
                                </div>
                            </li>
                            <li><a href="CreatePost" class="login-btn">Post a Project <i class="feather-plus ms-1"></i></a></li>
                            <li class="nav-item dropdown account-item">
                                <a href="javascript:void(0);" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
                                    <span class="user-img">
                                        <img src="${recruiter.image}" alt="Img">
                                    </span>
                                    <span>${recruiter.fullName()}</span>
                                </a>
                                <div class="dropdown-menu emp">
                                    <div class="drop-head">
                                        <a href="javascript:void(0);" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
                                            <span class="user-img">
                                                <img src="${recruiter.image}" alt="Img">
                                            </span>
                                            <div>
                                                <span>${recruiter.fullName()}</span>
                                                <p><span  data-cfemail="81e8efe7eec1e3f3f4e2e4e3f4f2e9afe2eeec">@${sessionScope.account.username}</span></p>
                                            </div>
                                        </a>
                                    </div>
                                    <a class="dropdown-item" href="Dashboard"><img src="assets/img/icon/user-dropdown-icon--04.svg" alt="Img"> Dashboard</a>
                                    <a class="dropdown-item" href="companydetail"><img src="assets/img/icon/user-dropdown-icon--01.svg" alt="Img"> My Profile</a>
                                    <a class="dropdown-item" href="manageJobsPosts"><img src="assets/img/icon/user-dropdown-icon--03.svg" alt="Img">My Project</a>
                                    <a class="dropdown-item" href="RecruiterFavourites"><img src="assets/img/icon/user-dropdown-icon--05.svg" alt="Img">My Favourites</a>             
                                    <a class="dropdown-item" href="recruitersetting"><img src="assets/img/icon/user-dropdown-icon--06.svg" alt="Img"> Profile Settings</a>
                                    <a class="dropdown-item" href="logout"><img src="assets/img/icon/user-dropdown-icon--07.svg" alt="Img"> Logout</a>
                                </div>
                            </li>
                        </ul>
                    </nav>
                </div>
            </header>


            <div class="bread-crumb-bar">
                <div class="container">
                    <div class="row align-items-center inner-banner">
                        <div class="col-md-12 col-12 text-center">
                            <div class="breadcrumb-list">
                                <h2>Freelancer Grid</h2>
                                <nav aria-label="breadcrumb" class="page-breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="index.html"> Home</a></li>
                                        <li class="breadcrumb-item" aria-current="page">Developers</li>
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
                                <form action="SearchInHome" method="get" style=" display: flex;
                                      align-items: center;">
                                    <c:if test="${txtSearch == null}">
                                        <input type="text" name="txtSearch" placeholder="Search..." style="padding: 5px;margin: 10px;border-radius: 5px; width: 250px;">
                                    </c:if>
                                    <c:if test="${txtSearch != null}">
                                        <input type="text" name="txtSearch" value="${txtSearch}" style="padding: 5px;margin: 10px; border-radius: 5px; width: 250px;">
                                    </c:if>
                                    <button type="submit" style="display: flex;
                                            align-items: center;
                                            padding: 5px 10px;
                                            background-color: rgb(230, 84, 37);
                                            color: white;
                                            border: none;
                                            cursor: pointer;
                                            margin-right: 5px;
                                            border-radius: 10px;">
                                        <i class="feather-search me-1"></i>
                                    </button>
                                </form>
                                <div class="card-body">
                                    <c:forEach items="${ExpertiseSkill}" var="du" varStatus="status">
                                        <div class="filter-widget">
                                            <h4 class="filter-title">
                                                <a href="javascript:void(0);" class="w-100" data-bs-toggle="collapse"
                                                   data-bs-target="#collapse${status.index}" aria-expanded="true"
                                                   aria-controls="collapse${status.index}">
                                                    ${du.expertiseName}
                                                    <span class="float-end"><i class="fa-solid fa-chevron-down"></i></span>
                                                </a>
                                            </h4>
                                            <div id="collapse${status.index}" class="collapse show" data-bs-parent="#accordionExample1">
                                                <c:forEach items="${du.getAllExpertiseSkillSet()}" var="i" begin="0" end="3">
                                                    <div>
                                                        <label class="custom_check">
                                                            <input type="checkbox" name="select_skill" value="${i.skillSetID.skill_set_name}">
                                                            <span class="checkmark"></span>${i.skillSetID.skill_set_name}
                                                        </label>
                                                    </div>
                                                </c:forEach>
                                                <div id="collapseMore${status.index}" class="collapse" data-bs-parent="#accordionExample1">
                                                    <c:forEach items="${du.getAllExpertiseSkillSet()}" var="i" begin="4">
                                                        <div>
                                                            <label class="custom_check">
                                                                <input type="checkbox" name="select_skill" value="${i.skillSetID.skill_set_name}">
                                                                <span class="checkmark"></span>${i.skillSetID.skill_set_name}
                                                            </label>
                                                        </div>
                                                    </c:forEach>
                                                </div>
                                                <div class="showmore mt-2">
                                                    <a href="javascript:void(0);" data-bs-toggle="collapse"
                                                       data-bs-target="#collapseMore${status.index}" aria-expanded="true"
                                                       aria-controls="collapseMore${status.index}"><i class="feather-plus me-1"></i>Show More</a>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>



                        </div>
                        <div class="col-md-12 col-lg-8 col-xl-9">

                            <c:set var="list" value="${requestScope.listSearch}" />
                            <c:set var="tongSoBaiDang" value="${requestScope.count}" />
                            <c:set var="baiDangTrenMotTrang" value="${requestScope.NumberInPgae}" />
                            <c:set var="tongSoTrang" value="${requestScope.totalFavoritesPage}" />
                            <c:set var="trangHienTai" value="${requestScope.indexSearch}" />

                            <%-- Tính chỉ số bắt đầu và kết thúc cho danh sách bài đăng hiển thị trên trang hiện tại --%>
                            <c:set var="chiSoBatDau" value="${(trangHienTai - 1) * baiDangTrenMotTrang}" />
                            <c:set var="chiSoKetThuc" value="${chiSoBatDau + baiDangTrenMotTrang}" />



                            <div class="row">

                                <c:forEach items="${list}" var="l" begin="${chiSoBatDau}" end="${chiSoKetThuc - 1}">
                                    <div class="col-md-6 col-lg-6 col-xl-4">
                                        <div class="freelance-widget" data-skills="${map[l.freelanceID]}">
                                            <div class="freelance-content">
                                                <c:set var="favo" value="false" />
                                                <c:forEach items="${list2}" var="list">
                                                    <c:choose>
                                                        <c:when test="${l.freelanceID == list.freelanceID}">
                                                            <c:set var="favo" value="true" />
                                                        </c:when>                                                                
                                                    </c:choose>
                                                </c:forEach>

                                                <c:set var="ID" value="${l.freelanceID}" />

                                                <c:choose>
                                                    <c:when test="${favo}">
                                                        <a href="javascript:void(0);" onclick="toggleFavorite(${l.freelanceID})" id="favourite_${ID}" class="favourite color-active"><i class="feather-heart"></i></a>
                                                        </c:when>
                                                        <c:otherwise>
                                                        <a href="javascript:void(0);" onclick="toggleFavorite(${l.freelanceID})" id="favourite_${ID}" class="favourite"><i class="feather-heart"></i></a>
                                                        </c:otherwise>
                                                    </c:choose>
                                                <div class="freelance-img">
                                                    <a href="developer-details.html">
                                                        <img src="${l.image}" alt="User Image">
                                                        <span class="verified"><i class="fas fa-check-circle"></i></span>
                                                    </a>
                                                </div>
                                                <div class="freelance-info">
                                                    <h3><a href="developer-details.html">${l.first_name} ${l.last_name}</a></h3>
                                                    <c:set var="dob" value="${l.dob}" />
                                                    <c:set var="year" value="${fn:substring(dob, 0, 4)}" />
                                                    <div class="freelance-specific">${year}</div>
                                                    <div class="freelance-location"><i class="feather-map-pin me-1"></i>${l.email}</div>
                                                        <c:forEach var="entry" items="${map}">
                                                            <c:if test="${l.freelanceID == entry.key}">
                                                            <div class="freelance-tags">
                                                                <!--                                                                <a href="">
                                                                                                                                    <span class="badge badge-pill badge-design">${entry.value}</span>
                                                                                                                                </a>-->
                                                                <c:forEach items="${fn:split(entry.value, ',')}" var="skill" varStatus="loop">
                                                                    <c:if test="${loop.index < 2}">
                                                                        <span class="badge badge-pill badge-design">${skill}</span>
                                                                    </c:if>                                                              
                                                                    <c:if test="${loop.index == 1 and not loop.last}">                                                                 
                                                                        <span class="badge badge-pill badge-design">...</span>
                                                                    </c:if>
                                                                </c:forEach>
                                                            </div>
                                                        </c:if>
                                                    </c:forEach>
                                                </div>
                                            </div>
                                            <div class="cart-hover">

                                                <a href="ViewFreelancerProfile?id=${l.freelanceID}" class="btn-cart" tabindex="-1">View Profile</a>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                            <div class="pagination-container">
                                <c:if test="${tongSoTrang > 1}">
                                    <nav>
                                        <ul class="pagination">
                                            <c:if test="${trangHienTai > 1}">
                                                <li class="page-item">
                                                    <a class="page-link" href="SearchInHome?page=${trangHienTai - 1}" aria-label="Trước">
                                                        <span aria-hidden="true">&laquo;</span>
                                                    </a>
                                                </li>
                                            </c:if>
                                            <c:forEach var="i" begin="1" end="${tongSoTrang}">
                                                <li class="page-item ${i == trangHienTai ? 'active' : ''}">
                                                    <a class="page-link" href="SearchInHome?page=${i}">${i}</a>
                                                </li>
                                            </c:forEach>
                                            <c:if test="${trangHienTai < tongSoTrang}">
                                                <li class="page-item">
                                                    <a class="page-link" href="SearchInHome?page=${trangHienTai + 1}" aria-label="Sau">
                                                        <span aria-hidden="true">&raquo;</span>
                                                    </a>
                                                </li>
                                            </c:if>
                                        </ul>
                                    </nav>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <jsp:include page="footter.jsp" />

        </div>


        <div class="modal fade" id="rating">
            <div class="modal-dialog modal-dialog-centered modal-md">
                <div class="modal-content">
                    <div class="modal-header d-block b-0 pb-0">
                        <span class="modal-close float-end"><a href="javascript:void(0);" data-bs-dismiss="modal"
                                                               aria-label="Close"><i class="far fa-times-circle orange-text"></i></a></span>
                    </div>
                    <div class="modal-body">
                        <form action="https://kofejob.dreamstechnologies.com/html/template/project.html">
                            <div class="modal-info">
                                <div class="text-center pt-0 mb-5">
                                    <h3>Please login to Favourite Freelancer</h3>
                                </div>
                                <div class="submit-section text-center">
                                    <button data-bs-dismiss="modal"
                                            class="btn btn-primary black-btn click-btn">Cancel</button>
                                    <button type="submit" class="btn btn-primary click-btn">Submit</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>                                        

        <script>
                                                            function toggleFavorite(postId) {
                                                                var favouriteLink = $('#favourite_' + postId);

                                                                if (favouriteLink.hasClass('color-active')) {
                                                                    // Remove from favorites
                                                                    $.ajax({
                                                                        url: 'DeleteFreelancerFavorites', // Thay đổi đường dẫn phù hợp
                                                                        type: 'GET',
                                                                        data: {
                                                                            freelancerID: postId
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
                                                                        url: 'AddFreelancerFavorites', // Thay đổi đường dẫn phù hợp
                                                                        type: 'GET',
                                                                        data: {
                                                                            freelancerID: postId
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

        <script>
            function filterPosts() {
                const selectedSkills = Array.from(document.querySelectorAll('input[name="select_skill"]:checked'))
                        .map(checkbox => checkbox.value.toLowerCase().trim());

                const posts = document.querySelectorAll('.freelance-widget');
                let visiblePosts = 0;

                posts.forEach(post => {
                    const postSkillsString = post.getAttribute('data-skills').toLowerCase();
                    const postSkills = postSkillsString.split(',').map(skill => skill.trim());

                    const isVisible = selectedSkills.length === 0 ||
                            selectedSkills.every(selectedSkill =>
                                postSkills.some(postSkill => postSkill.includes(selectedSkill))
                            );

                    post.closest('.col-md-6').style.display = isVisible ? 'block' : 'none';
                    if (isVisible)
                        visiblePosts++;
                });

                const noResultsMessage = document.getElementById('no-results-message');
                if (noResultsMessage) {
                    noResultsMessage.style.display = visiblePosts === 0 ? 'block' : 'none';
                } else if (visiblePosts === 0) {
                    const postsContainer = document.getElementById('posts-container');
                    postsContainer.insertAdjacentHTML('beforeend', '<div id="no-results-message" class="col-12"><p>There is no post that matches all the skills selected.</p></div>');
                }
            }


            document.querySelectorAll('input[name="select_skill"]').forEach(checkbox => {
                checkbox.addEventListener('change', filterPosts);
            });

            document.addEventListener('DOMContentLoaded', filterPosts);
        </script>

        <script src="assets/js/jquery-3.7.1.min.js" type="6afd00299c64b072e6c7887a-text/javascript"></script>

        <script src="assets/js/bootstrap.bundle.min.js" type="6afd00299c64b072e6c7887a-text/javascript"></script>

        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js"
        type="6afd00299c64b072e6c7887a-text/javascript"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js"
        type="6afd00299c64b072e6c7887a-text/javascript"></script>

        <script src="assets/plugins/select2/js/select2.min.js" type="6afd00299c64b072e6c7887a-text/javascript"></script>

        <script src="assets/js/profile-settings.js" type="6afd00299c64b072e6c7887a-text/javascript"></script>
        <script src="assets/js/script.js" type="6afd00299c64b072e6c7887a-text/javascript"></script>
        <script src="../../cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js"
        data-cf-settings="6afd00299c64b072e6c7887a-|49" defer></script>
        <script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-3.7.1.min.js" type="e07a54eb38ecbc80607f458c-text/javascript"></script>

        <script src="assets/js/bootstrap.bundle.min.js" type="e07a54eb38ecbc80607f458c-text/javascript"></script>

        <script src="assets/plugins/select2/js/select2.min.js" type="e07a54eb38ecbc80607f458c-text/javascript"></script>

        <script src="assets/plugins/datatables/jquery.dataTables.min.js" type="e07a54eb38ecbc80607f458c-text/javascript"></script>
        <script src="assets/plugins/datatables/datatables.min.js" type="e07a54eb38ecbc80607f458c-text/javascript"></script>

        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js" type="e07a54eb38ecbc80607f458c-text/javascript"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js" type="e07a54eb38ecbc80607f458c-text/javascript"></script>

        <script src="assets/js/script.js" type="e07a54eb38ecbc80607f458c-text/javascript"></script>
        <script src="../../cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="e07a54eb38ecbc80607f458c-|49" defer></script>
        <script src="assets/js/bootstrap.bundle.min.js" type="39bd9d3b5f9a12b82c2bbcef-text/javascript"></script>
        <script src="assets/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="39bd9d3b5f9a12b82c2bbcef-|49" defer></script>
    </body>

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/developer.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:29:56 GMT -->

</html>
