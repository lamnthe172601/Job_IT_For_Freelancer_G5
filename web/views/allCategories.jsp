<%-- 
    Document   : postProject
    Created on : May 23, 2024, 10:08:44 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
                            <ul class="main-nav">
                                <li class="active has-submenu">
                                    <a href="home">Home <i class="fas "></i></a>

                                </li>


                                <li class="has-submenu">
                                    <a href="javascript:void(0);">Pages <i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        <li><a href="about">About us</a></li>
                                        <li><a href="BlankPage">Starter Page</a></li>
                                        <li><a href="404-page.jsp">404 Page</a></li>                                      
                                        <li><a href="onboard-screen.html">Onboard Screen</a></li>
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
                                <c:if test="${sessionScope.account.roleID.getRoleID() == 3}">
                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">Hello ${sessionScope.account.username} <i class="fas fa-chevron-down"></i></a>
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
                                            <li><a href="developer-details.html">Freelancer Details</a></li>
                                            <li><a href="freelancer-project-proposals.html">Projects</a></li>
                                            <li><a href="freelancer-favourites.html">Favourites</a></li>
                                            <li><a href="freelancer-membership.html">Membership</a></li>
                                            <li><a href="freelancer-change-password.html">Change Password</a></li>                                         
                                            <li><a href="freelancer-review.html">Review</a></li>
                                            <li><a href="freelancer-withdraw-money.html">Payments</a></li>
                                            <li><a href="freelancer-profile-settings.html">Settings</a></li>
                                            <li><a href="logout">Logout</a></li>
                                        </ul>
                                    </li>
                                </c:if>
                                <c:if test="${sessionScope.account.roleID.getRoleID() == 4}">
                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">For Recruiter <i class="fas fa-chevron-down"></i></a>
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
                                            <li><a href="company-details.html">Company Details</a></li>
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
                                </c:if>
                                <c:if test="${sessionScope.account.roleID.getRoleID() == 1}">
                                    <li>
                                        <a href="/admin/index.html" target="_blank">Admin</a>
                                    </li>
                                </c:if>
                                <c:if test="${sessionScope.account == null}">
                                    <li><a href="register" class="reg-btn"><img src="assets/img/icon/users.svg" class="me-1" alt="img">Register</a></li>
                                    <li><a href="login" class="log-btn active"><img src="assets/img/icon/lock.svg" class="me-1" alt="img"> Login</a></li>
                                        </c:if>
                            </ul>
                        </div>
                         <ul class="nav header-navbar-rht">

                            <li class="searchbar">
                                <a href="javascript:void(0);" class="reg-btn"><i class="feather-search"></i></a>
                                <div class="togglesearch">
                                    <form action="https://kofejob.dreamstechnologies.com/html/template/project.html">
                                        <div class="input-group">
                                            <input type="text" class="form-control">
                                            <button type="submit" class="btn">Search</button>
                                        </div>
                                    </form>
                                </div>
                            </li>
                             <c:if test="${sessionScope.account.roleID.getRoleID() == null}">
                            <li><a href="login" class="login-btn"><i class="feather-plus me-1"></i>Post a Project </a></li>
                             </c:if>
                             <c:if test="${sessionScope.account.roleID.getRoleID() == 4}">
                            <li><a href="post-project" class="login-btn"><i class="feather-plus me-1"></i>Post a Project </a></li>
                             </c:if>
                             <c:if test="${sessionScope.account.roleID.getRoleID() == 3}">
                            <li><a href="searchJob" class="login-btn"><i class="feather-plus me-1"></i>Search a Job IT </a></li>
                             </c:if>
                        </ul>
                    </nav>
                </div>
            </header>


            <div class="bread-crumb-bar">
                <div class="container">
                    <div class="row align-items-center inner-banner">
                        <div class="col-md-12 col-12 text-center">
                            <div class="breadcrumb-list">
                                <h3>Project Grid</h3>
                                <nav aria-label="breadcrumb" class="page-breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="home"> Home</a></li>
                                        <li class="breadcrumb-item" aria-current="page">Categories</li>
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
                                        <h4 class="filter-title">
                                            <a href="javascript:void(0);" class="w-100" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                Category
                                                <span class="float-end"><i class="fa-solid fa-chevron-down"></i></span>
                                            </a>
                                        </h4>
                                        <div id="collapseOne" class="collapse show" data-bs-parent="#accordionExample1">
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span> Developer (25)
                                                </label>
                                            </div>
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span> UI Developer (62)
                                                </label>
                                            </div>
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span> React Developer (46)
                                                </label>
                                            </div>
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span> .Net Developer (37)
                                                </label>
                                            </div>
                                            <div id="collapseOnes" class="collapse" data-bs-parent="#accordionExample1">
                                                <div>
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="select_time">
                                                        <span class="checkmark"></span> UI Developer (62)
                                                    </label>
                                                </div>
                                                <div>
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="select_time">
                                                        <span class="checkmark"></span> React Developer (46)
                                                    </label>
                                                </div>
                                                <div>
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="select_time">
                                                        <span class="checkmark"></span> .Net Developer (37)
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="showmore mt-2">
                                                <a href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#collapseOnes" aria-expanded="true" aria-controls="collapseOne"><i class="feather-plus me-1"></i>Show More</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="filter-widget">
                                        <h4 class="filter-title">
                                            <a href="javascript:void(0);" class="w-100" data-bs-toggle="collapse" data-bs-target="#collapsproject" aria-expanded="true" aria-controls="collapseOne">
                                                Project Type
                                                <span class="float-end"><i class="fa-solid fa-chevron-down"></i></span>
                                            </a>
                                        </h4>
                                        <div id="collapsproject" class="collapse show" data-bs-parent="#accordionExample1">
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span>Fixed (6)
                                                </label>
                                            </div>
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span>Hourly (7)
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="filter-widget">
                                        <h4 class="filter-title">
                                            <a href="javascript:void(0);" class="w-100" data-bs-toggle="collapse" data-bs-target="#collapseOne1" aria-expanded="true" aria-controls="collapseOne">
                                                Project Duration
                                                <span class="float-end"><i class="fa-solid fa-chevron-down"></i></span>
                                            </a>
                                        </h4>
                                        <div id="collapseOne1" class="collapse show" data-bs-parent="#accordionExample1">
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span> 1-3 Weeks (4)
                                                </label>
                                            </div>
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span> 1 Month (2)
                                                </label>
                                            </div>
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span> Less than 3 Months (2)
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="filter-widget">
                                        <h4 class="filter-title">
                                            <a href="javascript:void(0);" class="w-100" data-bs-toggle="collapse" data-bs-target="#collapseskills" aria-expanded="true" aria-controls="collapseOne">
                                                Skills
                                                <span class="float-end"><i class="fa-solid fa-chevron-down"></i></span>
                                            </a>
                                        </h4>
                                        <div id="collapseskills" class="collapse show" data-bs-parent="#accordionExample1">
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span> After Effects (6)
                                                </label>
                                            </div>
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span> Android Developer (7)
                                                </label>
                                            </div>
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span> Backend Developer (7)
                                                </label>
                                            </div>
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span> Computer Operator (1)
                                                </label>
                                            </div>
                                            <div id="collapseOnes1" class="collapse" data-bs-parent="#accordionExample1">
                                                <div>
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="select_time">
                                                        <span class="checkmark"></span> After Effects (6)
                                                    </label>
                                                </div>
                                                <div>
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="select_time">
                                                        <span class="checkmark"></span> Android Developer (7)
                                                    </label>
                                                </div>
                                                <div>
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="select_time">
                                                        <span class="checkmark"></span> Backend Developer (7)
                                                    </label>
                                                </div>
                                                <div>
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="select_time">
                                                        <span class="checkmark"></span> Computer Operator (1)
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="showmore mt-2">
                                                <a href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#collapseOnes1" aria-expanded="true" aria-controls="collapseOne"><i class="feather-plus me-1"></i>Show More</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="filter-widget">
                                        <h4 class="filter-title">
                                            <a href="javascript:void(0);" class="w-100" data-bs-toggle="collapse" data-bs-target="#collapselanguage" aria-expanded="true" aria-controls="collapseOne">
                                                Languages
                                                <span class="float-end"><i class="fa-solid fa-chevron-down"></i></span>
                                            </a>
                                        </h4>
                                        <div id="collapselanguage" class="collapse show" data-bs-parent="#accordionExample1">
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span> English (5)
                                                </label>
                                            </div>
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span> Arabic (2)
                                                </label>
                                            </div>
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span>German (1)
                                                </label>
                                            </div>
                                            <div id="collapseOnes2" class="collapse" data-bs-parent="#accordionExample1">
                                                <div>
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="select_time">
                                                        <span class="checkmark"></span> English (5)
                                                    </label>
                                                </div>
                                                <div>
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="select_time">
                                                        <span class="checkmark"></span> Arabic (2)
                                                    </label>
                                                </div>
                                                <div>
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="select_time">
                                                        <span class="checkmark"></span>German (1)
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="showmore mt-2">
                                                <a href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#collapseOnes2" aria-expanded="true" aria-controls="collapseOne"><i class="feather-plus me-1"></i>Show More</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="filter-widget">
                                        <h4 class="filter-title">
                                            <a href="javascript:void(0);" class="w-100" data-bs-toggle="collapse" data-bs-target="#collapselanguagea" aria-expanded="true" aria-controls="collapseOne">
                                                Freelancer Type
                                                <span class="float-end"><i class="fa-solid fa-chevron-down"></i></span>
                                            </a>
                                        </h4>
                                        <div id="collapselanguagea" class="collapse show" data-bs-parent="#accordionExample1">
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span>Full Time (3)
                                                </label>
                                            </div>
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span> Part Time (4)
                                                </label>
                                            </div>
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span>Project Based (2)
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="filter-widget">
                                        <h4 class="filter-title">
                                            <a href="javascript:void(0);" class="w-100" data-bs-toggle="collapse" data-bs-target="#collapselocation" aria-expanded="true" aria-controls="collapseOne">
                                                Location
                                                <span class="float-end"><i class="fa-solid fa-chevron-down"></i></span>
                                            </a>
                                        </h4>
                                        <div id="collapselocation" class="collapse show" data-bs-parent="#accordionExample1">
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span>USA (25)
                                                </label>
                                            </div>
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span> IND (62)
                                                </label>
                                            </div>
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span>UK (46)
                                                </label>
                                            </div>
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span>AUS (37)
                                                </label>
                                            </div>
                                            <div id="collapseOnes3" class="collapse" data-bs-parent="#accordionExample1">
                                                <div>
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="select_time">
                                                        <span class="checkmark"></span> IND (62)
                                                    </label>
                                                </div>
                                                <div>
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="select_time">
                                                        <span class="checkmark"></span>UK (46)
                                                    </label>
                                                </div>
                                                <div>
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="select_time">
                                                        <span class="checkmark"></span>AUS (37)
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="showmore mt-2">
                                                <a href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#collapseOnes3" aria-expanded="true" aria-controls="collapseOne"><i class="feather-plus me-1"></i>Show More</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="btn-search">
                                        <button type="button" class="btn btn-primary">Search</button>
                                        <button type="button" class="btn btn-block">Reset</button>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="col-md-12 col-lg-8 col-xl-9">
                            <div class="sort-tab develop-list-select">
                                <div class="row align-items-center">
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                        <div class="d-flex align-items-center">
                                            <div class="freelance-view">
                                                <h4>Found 9 Results</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 d-flex justify-content-sm-end">
                                        <div class="sort-by">
                                            <select class="select ">
                                                <option>Sort by (Default)</option>
                                                <option>Relevance</option>
                                                <option>Rating</option>
                                                <option>Popular</option>
                                                <option>Latest</option>
                                                <option>Free</option>
                                            </select>
                                        </div>
                                        <ul class="list-grid d-flex align-items-center">
                                            <li><a href="project.html" class="favour-active"><i class="fas fa-th-large"></i></a></li>
                                            <li><a href="project-list.html"><i class="fas fa-list"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="bootstrap-tags text-start pl-0 d-none">
                                <span class="badge badge-pill badge-skills">UI/UX Developer <span class="tag-close" data-role="remove"><i class="fas fa-times"></i></span></span>
                                <span class="badge badge-pill badge-skills">USA <span class="tag-close" data-role="remove"><i class="fas fa-times"></i></span></span>
                                <span class="badge badge-pill badge-skills">Hourly <span class="tag-close" data-role="remove"><i class="fas fa-times"></i></span></span>
                                <span class="badge badge-pill badge-skills">0-1 years <span class="tag-close" data-role="remove"><i class="fas fa-times"></i></span></span>
                                <span class="badge badge-pill badge-skills">USD <span class="tag-close" data-role="remove"><i class="fas fa-times"></i></span></span>
                            </div>
                            <div class="row">

                                <div class="col-xl-4 col-md-6">
                                    <div class="freelance-widget widget-author position-relative">
                                        <div class="freelance-content">
                                            <div class="freelance-location freelance-time"><i class="feather-clock me-1"></i> Posted Just Now</div>
                                            <a data-bs-toggle="modal" href="#rating" class="favourite"><i class="feather-heart"></i></a>
                                            <div class="author-heading ">
                                                <div class=" freelance-img">
                                                    <a href="javascript:void(0);">
                                                        <img src="assets/img/company/img-1.png" alt="author">
                                                        <span class="verified"><i class="fas fa-check-circle"></i></span>
                                                    </a>
                                                </div>
                                                <div class="profile-name">
                                                    <div class="author-location">Amaze Tech </div>
                                                </div>
                                                <div class="freelance-info">
                                                    <h3><a href="javascript:void(0);">UI/UX Developer</a></h3>
                                                    <div class="freelance-location"><img src="assets/img/icon/locations.svg" class="me-2" alt="img">Georgia, USA</div>
                                                </div>
                                                <div class="freelance-tags">
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">HTML</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">React</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">PHP</span></a>
                                                </div>
                                                <div class="freelancers-price">$40-$500</div>
                                            </div>
                                            <div class="counter-stats">
                                                <ul>
                                                    <li>
                                                        <h5>Expiry</h5>
                                                        <h3 class="counter-value">4 Days Left</h3>
                                                    </li>
                                                    <li>
                                                        <h5>Proposals</h5>
                                                        <h3 class="counter-value">15</h3>
                                                    </li>
                                                    <li>
                                                        <h5>Job Type</h5>
                                                        <h3 class="counter-value"><span class="jobtype">Full Time</span></h3>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="cart-hover">
                                            <a href="project-details.html" class="btn-cart" tabindex="-1">View Project</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-md-6">
                                    <div class="freelance-widget widget-author position-relative">
                                        <div class="freelance-content">
                                            <div class="freelance-location freelance-time"><i class="feather-clock me-1"></i> 1 min ago</div>
                                            <a data-bs-toggle="modal" href="#rating" class="favourite"><i class="feather-heart"></i></a>
                                            <div class="author-heading ">
                                                <div class=" freelance-img">
                                                    <a href="javascript:void(0);">
                                                        <img src="assets/img/company/img-2.png" alt="author">
                                                        <span class="verified"><i class="fas fa-check-circle"></i></span>
                                                    </a>
                                                </div>
                                                <div class="profile-name">
                                                    <div class="author-location">Park INC</div>
                                                </div>
                                                <div class="freelance-info">
                                                    <h3><a href="javascript:void(0);">UI/UX Developer</a></h3>
                                                    <div class="freelance-location"><img src="assets/img/icon/locations.svg" class="me-2" alt="img">PHP Developer</div>
                                                </div>
                                                <div class="freelance-tags">
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">HTML</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">React</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">PHP</span></a>
                                                </div>
                                                <div class="freelancers-price">$55-$750</div>
                                            </div>
                                            <div class="counter-stats">
                                                <ul>
                                                    <li>
                                                        <h5>Expiry</h5>
                                                        <h3 class="counter-value">7 Days left</h3>
                                                    </li>
                                                    <li>
                                                        <h5>Proposals</h5>
                                                        <h3 class="counter-value">18</h3>
                                                    </li>
                                                    <li>
                                                        <h5>Job Type</h5>
                                                        <h3 class="counter-value"><span class="jobtype">Full Time</span></h3>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="cart-hover">
                                            <a href="project-details.html" class="btn-cart" tabindex="-1">View Project</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-md-6">
                                    <div class="freelance-widget widget-author position-relative">
                                        <div class="freelance-content">
                                            <div class="freelance-location freelance-time"><i class="feather-clock me-1"></i> 10 min ago</div>
                                            <a data-bs-toggle="modal" href="#rating" class="favourite"><i class="feather-heart"></i></a>
                                            <div class="author-heading ">
                                                <div class=" freelance-img">
                                                    <a href="javascript:void(0);">
                                                        <img src="assets/img/company/img-3.png" alt="author">
                                                        <span class="verified"><i class="fas fa-check-circle"></i></span>
                                                    </a>
                                                </div>
                                                <div class="profile-name">
                                                    <div class="author-location">Tech Zone</div>
                                                </div>
                                                <div class="freelance-info">
                                                    <h3><a href="javascript:void(0);">Graphic Designer</a></h3>
                                                    <div class="freelance-location"><img src="assets/img/icon/locations.svg" class="me-2" alt="img">Florida, USA</div>
                                                </div>
                                                <div class="freelance-tags">
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">HTML</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">React</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">PHP</span></a>
                                                </div>
                                                <div class="freelancers-price">$55-$750</div>
                                            </div>
                                            <div class="counter-stats">
                                                <ul>
                                                    <li>
                                                        <h5>Expiry</h5>
                                                        <h3 class="counter-value">1 Days left</h3>
                                                    </li>
                                                    <li>
                                                        <h5>Proposals</h5>
                                                        <h3 class="counter-value">21</h3>
                                                    </li>
                                                    <li>
                                                        <h5>Job Type</h5>
                                                        <h3 class="counter-value"><span class="jobtype">Full Time</span></h3>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="cart-hover">
                                            <a href="project-details.html" class="btn-cart" tabindex="-1">View Project</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-md-6">
                                    <div class="freelance-widget widget-author position-relative">
                                        <div class="freelance-content">
                                            <div class="freelance-location freelance-time"><i class="feather-clock me-1"></i> 1 hour ago</div>
                                            <a data-bs-toggle="modal" href="#rating" class="favourite"><i class="feather-heart"></i></a>
                                            <div class="author-heading ">
                                                <div class=" freelance-img">
                                                    <a href="javascript:void(0);">
                                                        <img src="assets/img/company/img-4.png" alt="author">
                                                        <span class="verified"><i class="fas fa-check-circle"></i></span>
                                                    </a>
                                                </div>
                                                <div class="profile-name">
                                                    <div class="author-location">ABC Software</div>
                                                </div>
                                                <div class="freelance-info">
                                                    <h3><a href="javascript:void(0);">Graphic Designer</a></h3>
                                                    <div class="freelance-location"><img src="assets/img/icon/locations.svg" class="me-2" alt="img">iOS Developer</div>
                                                </div>
                                                <div class="freelance-tags">
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">HTML</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">React</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">PHP</span></a>
                                                </div>
                                                <div class="freelancers-price">$25-$350</div>
                                            </div>
                                            <div class="counter-stats">
                                                <ul>
                                                    <li>
                                                        <h5>Expiry</h5>
                                                        <h3 class="counter-value">7 Days left</h3>
                                                    </li>
                                                    <li>
                                                        <h5>Proposals</h5>
                                                        <h3 class="counter-value">20</h3>
                                                    </li>
                                                    <li>
                                                        <h5>Job Type</h5>
                                                        <h3 class="counter-value"><span class="jobtype">Full Time</span></h3>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="cart-hover">
                                            <a href="project-details.html" class="btn-cart" tabindex="-1">View Project</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-md-6">
                                    <div class="freelance-widget widget-author position-relative">
                                        <div class="freelance-content">
                                            <div class="freelance-location freelance-time"><i class="feather-clock me-1"></i> 5 hour ago</div>
                                            <a data-bs-toggle="modal" href="#rating" class="favourite"><i class="feather-heart"></i></a>
                                            <div class="author-heading ">
                                                <div class=" freelance-img">
                                                    <a href="javascript:void(0);">
                                                        <img src="assets/img/company/img-5.png" alt="author">
                                                        <span class="verified"><i class="fas fa-check-circle"></i></span>
                                                    </a>
                                                </div>
                                                <div class="profile-name">
                                                    <div class="author-location">Alfred Tech</div>
                                                </div>
                                                <div class="freelance-info">
                                                    <h3><a href="javascript:void(0);">SEO Developer</a></h3>
                                                    <div class="freelance-location"><img src="assets/img/icon/locations.svg" class="me-2" alt="img">Virginia, USA</div>
                                                </div>
                                                <div class="freelance-tags">
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">HTML</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">React</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">PHP</span></a>
                                                </div>
                                                <div class="freelancers-price">$30-$250</div>
                                            </div>
                                            <div class="counter-stats">
                                                <ul>
                                                    <li>
                                                        <h5>Expiry</h5>
                                                        <h3 class="counter-value">8 Days left</h3>
                                                    </li>
                                                    <li>
                                                        <h5>Proposals</h5>
                                                        <h3 class="counter-value">09</h3>
                                                    </li>
                                                    <li>
                                                        <h5>Job Type</h5>
                                                        <h3 class="counter-value"><span class="jobtype">Full Time</span></h3>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="cart-hover">
                                            <a href="project-details.html" class="btn-cart" tabindex="-1">View Project</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-md-6">
                                    <div class="freelance-widget widget-author position-relative">
                                        <div class="freelance-content">
                                            <div class="freelance-location freelance-time"><i class="feather-clock me-1"></i> 1 day ago</div>
                                            <a data-bs-toggle="modal" href="#rating" class="favourite"><i class="feather-heart"></i></a>
                                            <div class="author-heading ">
                                                <div class=" freelance-img">
                                                    <a href="javascript:void(0);">
                                                        <img src="assets/img/company/img-6.png" alt="author">
                                                        <span class="verified"><i class="fas fa-check-circle"></i></span>
                                                    </a>
                                                </div>
                                                <div class="profile-name">
                                                    <div class="author-location">Kind Software's</div>
                                                </div>
                                                <div class="freelance-info">
                                                    <h3><a href="javascript:void(0);">Network Engineer</a></h3>
                                                    <div class="freelance-location"><img src="assets/img/icon/locations.svg" class="me-2" alt="img">Delaware, USA</div>
                                                </div>
                                                <div class="freelance-tags">
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">HTML</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">React</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">PHP</span></a>
                                                </div>
                                                <div class="freelancers-price">$70-$700</div>
                                            </div>
                                            <div class="counter-stats">
                                                <ul>
                                                    <li>
                                                        <h5>Expiry</h5>
                                                        <h3 class="counter-value">3 Days left</h3>
                                                    </li>
                                                    <li>
                                                        <h5>Proposals</h5>
                                                        <h3 class="counter-value">05</h3>
                                                    </li>
                                                    <li>
                                                        <h5>Job Type</h5>
                                                        <h3 class="counter-value"><span class="jobtype">Full Time</span></h3>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="cart-hover">
                                            <a href="project-details.html" class="btn-cart" tabindex="-1">View Project</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-md-6">
                                    <div class="freelance-widget widget-author position-relative">
                                        <div class="freelance-content">
                                            <div class="freelance-location freelance-time"><i class="feather-clock me-1"></i> 3 day ago</div>
                                            <a data-bs-toggle="modal" href="#rating" class="favourite"><i class="feather-heart"></i></a>
                                            <div class="author-heading ">
                                                <div class=" freelance-img">
                                                    <a href="javascript:void(0);">
                                                        <img src="assets/img/company/img-7.png" alt="author">
                                                        <span class="verified"><i class="fas fa-check-circle"></i></span>
                                                    </a>
                                                </div>
                                                <div class="profile-name">
                                                    <div class="author-location">Particles INC</div>
                                                </div>
                                                <div class="freelance-info">
                                                    <h3><a href="javascript:void(0);">Business Analyst</a></h3>
                                                    <div class="freelance-location"><img src="assets/img/icon/locations.svg" class="me-2" alt="img">Kansas, USA</div>
                                                </div>
                                                <div class="freelance-tags">
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">HTML</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">React</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">PHP</span></a>
                                                </div>
                                                <div class="freelancers-price">$55-$600</div>
                                            </div>
                                            <div class="counter-stats">
                                                <ul>
                                                    <li>
                                                        <h5>Expiry</h5>
                                                        <h3 class="counter-value">10 Days left</h3>
                                                    </li>
                                                    <li>
                                                        <h5>Proposals</h5>
                                                        <h3 class="counter-value">18</h3>
                                                    </li>
                                                    <li>
                                                        <h5>Job Type</h5>
                                                        <h3 class="counter-value"><span class="jobtype">Full Time</span></h3>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="cart-hover">
                                            <a href="project-details.html" class="btn-cart" tabindex="-1">View Project</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-md-6">
                                    <div class="freelance-widget widget-author position-relative">
                                        <div class="freelance-content">
                                            <div class="freelance-location freelance-time"><i class="feather-clock me-1"></i> Posted Just Now</div>
                                            <a data-bs-toggle="modal" href="#rating" class="favourite"><i class="feather-heart"></i></a>
                                            <div class="author-heading ">
                                                <div class=" freelance-img">
                                                    <a href="javascript:void(0);">
                                                        <img src="assets/img/company/img-8.png" alt="author">
                                                        <span class="verified"><i class="fas fa-check-circle"></i></span>
                                                    </a>
                                                </div>
                                                <div class="profile-name">
                                                    <div class="author-location">Amaze Tech </div>
                                                </div>
                                                <div class="freelance-info">
                                                    <h3><a href="javascript:void(0);">UI/UX Developer</a></h3>
                                                    <div class="freelance-location"><img src="assets/img/icon/locations.svg" class="me-2" alt="img">Georgia, USA</div>
                                                </div>
                                                <div class="freelance-tags">
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">HTML</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">React</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">PHP</span></a>
                                                </div>
                                                <div class="freelancers-price">$40-$500</div>
                                            </div>
                                            <div class="counter-stats">
                                                <ul>
                                                    <li>
                                                        <h5>Expiry</h5>
                                                        <h3 class="counter-value">4 Days Left</h3>
                                                    </li>
                                                    <li>
                                                        <h5>Proposals</h5>
                                                        <h3 class="counter-value">15</h3>
                                                    </li>
                                                    <li>
                                                        <h5>Job Type</h5>
                                                        <h3 class="counter-value"><span class="jobtype">Full Time</span></h3>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="cart-hover">
                                            <a href="project-details.html" class="btn-cart" tabindex="-1">View Project</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-md-6">
                                    <div class="freelance-widget widget-author position-relative">
                                        <div class="freelance-content">
                                            <div class="freelance-location freelance-time"><i class="feather-clock me-1"></i> 1 min ago</div>
                                            <a data-bs-toggle="modal" href="#rating" class="favourite"><i class="feather-heart"></i></a>
                                            <div class="author-heading ">
                                                <div class=" freelance-img">
                                                    <a href="javascript:void(0);">
                                                        <img src="assets/img/company/img-9.png" alt="author">
                                                        <span class="verified"><i class="fas fa-check-circle"></i></span>
                                                    </a>
                                                </div>
                                                <div class="profile-name">
                                                    <div class="author-location">Park INC</div>
                                                </div>
                                                <div class="freelance-info">
                                                    <h3><a href="javascript:void(0);">UI/UX Developer</a></h3>
                                                    <div class="freelance-location"><img src="assets/img/icon/locations.svg" class="me-2" alt="img">PHP Developer</div>
                                                </div>
                                                <div class="freelance-tags">
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">HTML</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">React</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">PHP</span></a>
                                                </div>
                                                <div class="freelancers-price">$55-$750</div>
                                            </div>
                                            <div class="counter-stats">
                                                <ul>
                                                    <li>
                                                        <h5>Expiry</h5>
                                                        <h3 class="counter-value">7 Days left</h3>
                                                    </li>
                                                    <li>
                                                        <h5>Proposals</h5>
                                                        <h3 class="counter-value">18</h3>
                                                    </li>
                                                    <li>
                                                        <h5>Job Type</h5>
                                                        <h3 class="counter-value"><span class="jobtype">Full Time</span></h3>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="cart-hover">
                                            <a href="project-details.html" class="btn-cart" tabindex="-1">View Project</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <ul class="paginations list-pagination">
                                        <li class="page-item"><a href="javascript:void(0);"><i class="feather-chevron-left"></i></a>
                                        </li>
                                        <li class="page-item"><a href="javascript:void(0);" class="active">1</a></li>
                                        <li class="page-item"><a href="javascript:void(0);">2</a></li>
                                        <li class="page-item"><a href="javascript:void(0);">3</a></li>
                                        <li class="page-item"><a href="javascript:void(0);">...</a></li>
                                        <li class="page-item"><a href="javascript:void(0);">10</a></li>
                                        <li class="page-item"><a href="javascript:void(0);"><i class="feather-chevron-right"></i></a></li>
                                    </ul>
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


        <script src="assets/js/jquery-3.7.1.min.js" type="43b4fcd1b9965a5423af7613-text/javascript"></script>

        <script src="assets/js/bootstrap.bundle.min.js" type="43b4fcd1b9965a5423af7613-text/javascript"></script>

        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js" type="43b4fcd1b9965a5423af7613-text/javascript"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js" type="43b4fcd1b9965a5423af7613-text/javascript"></script>

        <script src="assets/plugins/select2/js/select2.min.js" type="43b4fcd1b9965a5423af7613-text/javascript"></script>

        <script src="assets/js/profile-settings.js" type="43b4fcd1b9965a5423af7613-text/javascript"></script>
        <script src="assets/js/script.js" type="43b4fcd1b9965a5423af7613-text/javascript"></script>
        <script src="assets/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="43b4fcd1b9965a5423af7613-|49" defer></script></body>

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/project.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:34:26 GMT -->
</html>
