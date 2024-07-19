<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/dashboard.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:30:15 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
        <title>KofeJob</title>

        <link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

        <link rel="stylesheet" href="assets/plugins/feather/feather.css">

        <link rel="stylesheet" href="assets/css/bootstrap-datetimepicker.min.css">

        <link rel="stylesheet" href="assets/plugins/summernote/dist/summernote-lite.css">

        <link rel="stylesheet" href="assets/plugins/datatables/datatables.min.css">

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


            .search-form {
                margin-bottom: 20px;
            }

            .search-form input[type="text"] {
                padding: 10px;
                width: 300px;
                border: 1px solid #ccc;
                border-radius: 4px;
                font-size: 10px;
            }

            .search-form button {
                padding: 10px 20px;
                background-color: #E65425;
                color: white;
                border: none;
                cursor: pointer;
                border-radius: 4px;
                font-size: 10px;
            }

            .form-inline {

                margin-right: 50px;
            }

            /* Để căn chỉnh nút và icon */
            .input-group {
                position: relative;
                width: 100%;
            }

            .btn.btn-secondary.btn-number {
                position: absolute;
                right: -50px;
                top: 50%;
                transform: translateY(-50%);
            }
        </style>
    </head>
    <body class="dashboard-page">

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

                                            <li><a href="PostFavourites">Jobs Favourites</a></li>

                                            <li><a href="jobsApply">Jobs Apply</a></li>
                                            <li><a href="jobforyou">Jobs For you</a></li>
                                        </ul>
                                    </li>

                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">For Jobs<i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">

                                            <li><a href="ListPost">Jobs List</a></li>                                        
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

                                            <li><a href="myListJobProject">My List Post</a></li>
                                            

                                        </ul>
                                    </li>
                                </c:if>
                                <li class="has-submenu">
                                    <a href="javascript:void(0);">About<i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">                                                                           
                                        <li><a href="About">About us</a></li>
                                        <li><a href="ContactUs">Contact us</a></li>
                                    </ul>
                                </li>
                                <li class="has-submenu"> <li><a href="blogGrid">Blog</a></li></li>


                            </ul>
                        </div>
                        <ul class="nav header-navbar-rht">

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
                                                <a href="notification">
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
                                                <a href="notification">
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
                                        <a href="notification">View All Notification</a>
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


            <div class="content content-page">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-3 col-lg-4 theiaStickySidebar">
                            <div class="settings-widget">
                                <div class="settings-header d-sm-flex flex-row flex-wrap text-center text-sm-start align-items-center">
                                    <a href="freelancer-profile.html"><img alt="profile image" src="${recruiter.image}" class="avatar-lg rounded-circle"></a>
                                    <div class="ms-sm-3 ms-md-0 ms-lg-3 mt-2 mt-sm-0 mt-md-2 mt-lg-0">
                                        <h3 class="mb-0"><a href="profile-settings.html">${recruiter.fullName()}</a><img src="assets/img/icon/verified-badge.svg" class="ms-1" alt="Img"></h3>
                                        <p class="mb-0">@${sessionScope.account.username}</p>
                                    </div>
                                </div>
                                <div class="settings-menu">
                                    <div id="sidebar-menu" class="sidebar-menu">
                                        <ul>
                                            <li class="nav-item">
                                                <a href="Dashboard" class="nav-link ">
                                                    <img src="assets/img/icon/sidebar-icon-01.svg" alt="Img"> Dashboard
                                                </a>
                                            </li>
                                            <li class="nav-item submenu ">
                                                <a href="milestones.html" class="nav-link ">
                                                    <img src="assets/img/icon/sidebar-icon-02.svg" alt="Img"> Projects
                                                    <span class="menu-arrow"></span>
                                                </a>
                                                <ul class="sub-menu-ul">
                                                    <li>
                                                        <a href="manageJobsPosts" >Manage jobs</a>
                                                    </li>
                                                    <li>
                                                        <a href="ManageApplication" >All applicants</a>
                                                    </li>
                                                    <li>
                                                        <a href="CompletedProjects">Completed Projects</a>
                                                    </li>
                                                    <li>
                                                        <a href="ExpiredProjects">Expired Projects</a>
                                                    </li>


                                                </ul>
                                            </li>
                                            <li class="nav-item submenu active">
                                                <a href="freelancer-favourites.html" class="nav-link active">
                                                    <img src="assets/img/icon/sidebar-icon-03.svg" alt="Img"> Favourites
                                                    <span class="menu-arrow"></span>
                                                </a>
                                                <ul class="sub-menu-ul active">
                                                    <li>
                                                        <a href="RecruiterFavourites" class="active">Bookmarked Projects</a>
                                                    </li>                                                    
                                                </ul>
                                            </li>
                                            <li class="nav-item">
                                                <a href="review.html" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-04.svg" alt="Img"> Reviews
                                                </a>
                                            </li>                                         
                                            <li class="nav-item">
                                                <a href="javascript:void(0);" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-10.svg" alt="Img"> Settings
                                                    <span class="menu-arrow"></span>
                                                </a>
                                                <ul class="sub-menu-ul">
                                                    <li>
                                                        <a href="profile-settings.html">Profile</a>
                                                    </li>

                                                    <li>
                                                        <a href="change-password.html">Change Password</a>
                                                    </li>                                                    
                                                </ul>
                                            </li>
                                            <li class="nav-item">
                                                <a href="logout" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-11.svg" alt="Img"> Logout
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div><form action="SearchFreelancerFvr" method="get" class="form-inline my-2 my-lg-0">
                                    <div class="input-group input-group-sm">
                                        <c:if test="${txtSearch != null}">
                                            <input name="searchName" type="text" value="${txtSearch}" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search">
                                        </c:if>
                                        <c:if test="${txtSearch == null}">
                                            <input name="searchName" type="text"  class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search">
                                        </c:if>
                                        <div class="input-group-append">
                                            <button type="submit" class="btn btn-secondary btn-number">
                                                <i class="fa fa-search"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form></div>
                        </div>

                        <div class="col-md-12 col-lg-8 col-xl-9">
                            <c:set var="list" value="${requestScope.listFavorites}" />
                            <c:set var="tongSoBaiDang" value="${requestScope.countFavorites}" />
                            <c:set var="baiDangTrenMotTrang" value="${requestScope.FavoritesInPgae}" />
                            <c:set var="tongSoTrang" value="${requestScope.totalFavoritesPage}" />
                            <c:set var="trangHienTai" value="${requestScope.indexFvr}" />

                            <%-- Tính chỉ số bắt đầu và kết thúc cho danh sách bài đăng hiển thị trên trang hiện tại --%>
                            <c:set var="chiSoBatDau" value="${(trangHienTai - 1) * baiDangTrenMotTrang}" />
                            <c:set var="chiSoKetThuc" value="${chiSoBatDau + baiDangTrenMotTrang}" />
                            <div class="row">
                                <c:forEach items="${list}" var="l" begin="${chiSoBatDau}" end="${chiSoKetThuc - 1}">
                                    <div class="col-md-6 col-lg-6 col-xl-4">
                                        <div class="freelance-widget">
                                            <div class="freelance-content">
                                
                                                <a  class="favourite color-active" class="dropdown-item typeChange" class="btn btn-sm btn-danger " data-bs-toggle="modal" data-bs-target="#delete${l.freelanceID}"><i class="feather-heart"></i></a>
                                                
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
                                        <div class="modal custom-modal fade" id="delete${l.freelanceID}" role="dialog">
                                            <div class="modal-dialog modal-dialog-centered">
                                                <div class="modal-content">
                                                    <div class="modal-body">
                                                        <div class="form-header">
                                                            <input type="hidden" class="user-id1" id="">
                                                            <h3>Status</h3>
                                                            <p>Deleting this will remove it permanently. Are you sure?</p>
                                                        </div>
                                                        <div class="modal-btn Suspend-action" >
                                                            <div class="row">
                                                                <div class="col-6">
                                                                    <a id="deleteLink_${l.freelanceID}" href="DeleteRecruiterFavourites?freelanceID=${l.freelanceID}" class="btn btn-primary cancel-btn" >Yes</a>
                                                                </div>
                                                                <div class="col-6">
                                                                    <a  data-bs-dismiss="modal" class="btn btn-primary cancel-btn">Cancel</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
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
                                                    <a class="page-link" href="RecruiterFavourites?page=${trangHienTai - 1}" aria-label="Trước">
                                                        <span aria-hidden="true">&laquo;</span>
                                                    </a>
                                                </li>
                                            </c:if>
                                            <c:forEach var="i" begin="1" end="${tongSoTrang}">
                                                <li class="page-item ${i == trangHienTai ? 'active' : ''}">
                                                    <a class="page-link" href="RecruiterFavourites?page=${i}">${i}</a>
                                                </li>
                                            </c:forEach>
                                            <c:if test="${trangHienTai < tongSoTrang}">
                                                <li class="page-item">
                                                    <a class="page-link" href="RecruiterFavourites?page=${trangHienTai + 1}" aria-label="Sau">
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


            <footer class="footer">
                <div class="footer-top">
                    <div class="container">
                        <div class="row">
                            <div class=" col-lg-4 col-md-12">
                                <div class="footer-bottom-logo">
                                    <a href="index.html" class="menu-logo">
                                        <img src="assets/img/logo.svg" class="img-fluid" alt="Logo">
                                    </a>
                                    <p>We’re always in search for talented and motivated people. Don’t be shy introduce
                                        yourself!</p>
                                    <ul>
                                        <li>
                                            <a href="javascript:void(0);"><i class="fa-brands fa-facebook-f"
                                                                             aria-hidden="true"></i></a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);"><i class="fa-brands fa-twitter"
                                                                             aria-hidden="true"></i></a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);"><i class="fa-brands fa-instagram"
                                                                             aria-hidden="true"></i></a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);"><i class="fa-brands fa-linkedin"
                                                                             aria-hidden="true"></i></a>
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
                                                <li><a href="about.html"><i class="fas fa-angle-right me-1"></i>About Us</a>
                                                </li>
                                                <li><a href="blog-list.html"><i class="fas fa-angle-right me-1"></i>Blog</a>
                                                </li>
                                                <li><a href="login.html"><i class="fas fa-angle-right me-1"></i>Login</a>
                                                </li>
                                                <li><a href="register.html"><i
                                                            class="fas fa-angle-right me-1"></i>Register</a></li>
                                                <li><a href="forgot-password.html"><i
                                                            class="fas fa-angle-right me-1"></i>Forgot Password</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-md-6">
                                        <div class="footer-widget footer-menu">
                                            <h2 class="footer-title">Help & Support</h2>
                                            <ul>
                                                <li><a href="javascript:void(0);"><i
                                                            class="fas fa-angle-right me-1"></i>Browse Candidates</a></li>
                                                <li><a href="javascript:void(0);"><i
                                                            class="fas fa-angle-right me-1"></i>Employers Dashboard</a></li>
                                                <li><a href="javascript:void(0);"><i class="fas fa-angle-right me-1"></i>Job
                                                        Packages</a></li>
                                                <li><a href="javascript:void(0);"><i
                                                            class="fas fa-angle-right me-1"></i>Jobs Featured</a></li>
                                                <li><a href="javascript:void(0);"><i
                                                            class="fas fa-angle-right me-1"></i>Post A Job</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-md-6">
                                        <div class="footer-widget footer-menu">
                                            <h2 class="footer-title">Other Links</h2>
                                            <ul>
                                                <li><a href="freelancer-dashboard.html"><i
                                                            class="fas fa-angle-right me-1"></i>Freelancers</a></li>
                                                <li><a href="freelancer-portfolio.html"><i
                                                            class="fas fa-angle-right me-1"></i>Freelancer Details</a></li>
                                                <li><a href="project.html"><i
                                                            class="fas fa-angle-right me-1"></i>Project</a></li>
                                                <li><a href="project-details.html"><i
                                                            class="fas fa-angle-right me-1"></i>Project Details</a></li>
                                                <li><a href="post-project.html"><i class="fas fa-angle-right me-1"></i>Post
                                                        Project</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-md-6">
                                        <div class="footer-widget footer-menu">
                                            <h2 class="footer-title">Connect With Us</h2>
                                            <ul>
                                                <li><a href="freelancer-chats.html"><i
                                                            class="fas fa-angle-right me-1"></i>Chat</a></li>
                                                <li><a href="faq.html"><i class="fas fa-angle-right me-1"></i>Faq</a></li>
                                                <li><a href="freelancer-review.html"><i
                                                            class="fas fa-angle-right me-1"></i>Reviews</a></li>
                                                <li><a href="privacy-policy.html"><i
                                                            class="fas fa-angle-right me-1"></i>Privacy Policy</a></li>
                                                <li><a href="term-condition.html"><i
                                                            class="fas fa-angle-right me-1"></i>Terms of use</a></li>
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




        <script>

            function openPopup(int) {
                document.getElementById(int).style.display = 'block';
                document.getElementById(int).style.display = 'block';
            }


            function closePopup(int) {
                document.getElementById(int).style.display = 'none';
                document.getElementById(int).style.display = 'none';
            }

//            function confirmAction(postID) {
//                var confirmResult = confirm("Deleting this will remove it permanently. Are you sure?");
//                if (confirmResult) {
//                    window.location.href = "DeleteRecruiterFavourites?freelanceID=" + postID;
//                } else {
//                    return false;
//                }
//            }

        </script>

        <script>
            // Lắng nghe sự kiện click vào các nút có id bắt đầu là "deleteLink_"
            document.querySelectorAll('[id^="deleteLink_"]').forEach(function (element) {
                element.addEventListener('click', function (event) {
                    // Ngăn chặn hành động mặc định của thẻ a (chuyển hướng ngay lập tức)
                    event.preventDefault();
                    showSuccessNotification('Delete successfully!');
                    // Delay 1 giây trước khi chuyển hướng
                    setTimeout(function () {
                        // Lấy href từ nút "Yes" và chuyển hướng đến đường dẫn đó
                        window.location.href = event.target.href;
                    }, 1000); // 1000 milliseconds = 1 giây
                });
            });
        </script>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>                                        
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="adminAssets/js/notification.js"></script>
        <script src="assets/js/jquery-3.7.1.min.js" type="e07a54eb38ecbc80607f458c-text/javascript"></script>

        <script src="assets/js/bootstrap.bundle.min.js" type="b9b8f1fa285a150b1a70a944-text/javascript"></script>

        <script src="assets/plugins/select2/js/select2.min.js" type="b9b8f1fa285a150b1a70a944-text/javascript"></script>

        <script src="assets/js/moment.min.js" type="b9b8f1fa285a150b1a70a944-text/javascript"></script>
        <script src="assets/js/bootstrap-datetimepicker.min.js" type="b9b8f1fa285a150b1a70a944-text/javascript"></script>

        <script src="assets/plugins/datatables/jquery.dataTables.min.js" type="b9b8f1fa285a150b1a70a944-text/javascript"></script>
        <script src="assets/plugins/datatables/datatables.min.js" type="b9b8f1fa285a150b1a70a944-text/javascript"></script>

        <script src="assets/plugins/summernote/dist/summernote-lite.min.js" type="b9b8f1fa285a150b1a70a944-text/javascript"></script>

        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js" type="b9b8f1fa285a150b1a70a944-text/javascript"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js" type="b9b8f1fa285a150b1a70a944-text/javascript"></script>

        <script src="assets/js/script.js" type="b9b8f1fa285a150b1a70a944-text/javascript"></script>
        <script src="assets/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="b9b8f1fa285a150b1a70a944-|49" defer></script></body>


</html>
