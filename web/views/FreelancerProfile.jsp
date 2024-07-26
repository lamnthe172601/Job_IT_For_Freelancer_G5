<%-- 
    Document   : ProfileFreelancer
    Created on : Jun 1, 2024, 11:43:49 PM
    Author     : khuongld
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
                          <jsp:include page="header.jsp" />
                    </nav>
                </div>
            </header>


            <div class="bread-crumb-bar">
                <div class="container">
                    <div class="row align-items-center inner-banner">
                        <div class="col-md-12 col-12 text-center">
                            <div class="breadcrumb-list">
                                <h2>Freelancer Profile</h2>
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
                                            <div class="provider-img "><img style="width: 80px; height: 80px;" src="${freelancer.image}" class="img-fluid" alt="User"></div>
                                            <div class="profile-info">
                                                <h2 class="profile-title">${freelancer.fullname()}</h2>
                                                <p class="mb-0">@${freelancer.email}</p>                                             
                                            </div>
                                        </div>
                                        <div class="pro-info-right profile-inf">
                                            
                                        </div>
                                    </div>
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

                                    </ul>
                                </nav>


                                <div class="pro-post widget-box" id="overview">
                                    <h3 class="pro-title">Overview</h3>
                                    <div class="pro-content">

                                        <div class="mt-4">
                                            <h4 class="widget-title">First Name:</h4>
                                            <p>${freelancer.first_name}</p>
                                        </div>
                                        <div class="mt-4">
                                            <h4 class="widget-title">Last Name:</h4>
                                            <p>${freelancer.last_name}</p>
                                        </div>
                                        <div class="mt-4">
                                            <h4 class="widget-title">Date of birth: </h4>
                                            <p>${freelancer.dob}</p>
                                        </div>
                                        <div class="mt-4">
                                            <h4 class="widget-title">Location: </h4>
                                            <p>${freelancer.describe}</p>
                                        </div>

                                    </div>
                                </div>


                                <div class="pro-post project-widget widget-box" id="experience">
                                    <h3 class="pro-title">Experience</h3>
                                    <c:forEach  items="${experience}" var="ex">
                                        <div class="pro-content">
                                            <div class="widget-list mb-0">
                                                <ul class="clearfix">
                                                    <li>
                                                        <h4>${ex.experienceName}</h4>
                                                        <h5>${ex.getStart_date()} -> ${ex.getEnd_date()}</h5>
                                                         <p>${ex.your_project}</p>
                                                    </li>

                                                </ul>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>


                                <div class="pro-post project-widget widget-box" id="education">
                                    <h3 class="pro-title">Educational Details</h3>
                                    <div class="pro-content">
                                        <div class="widget-list mb-0">
                                            <ul class="clearfix">
                                                <c:forEach items="${education}" var="education">
                                                    <li>
                                                        <h4>${education.university_name} </h4>
                                                        <h5>${education.start_date} -> ${education.end_date}</h5>
                                                        <p>Degree: ${education.degreeID.degree_name}</p>
                                                    </li>
                                                </c:forEach>
                                            </ul>
                                        </div>
                                    </div>
                                </div>


                                <div class="pro-post project-widget widget-box" id="skill">
                                    <h3 class="pro-title">Technical Skills</h3>

                                    <div class="pro-content">
                                        <div class="tags">
                                            <c:forEach items="${skills}" var="skill">
                                                <span class="badge badge-pill badge-skills">+ ${skill.skill_set_ID.skill_set_name}</span>
                                            </c:forEach>
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>

                        <div class="col-lg-4 col-md-12 sidebar-right theiaStickySidebar">
                            

                            <div class="pro-post widget-box about-widget">
                                <h4 class="pro-title mb-0">ABOUT ME</h4>
                                <ul class="latest-posts pro-content">
                                    <li><p>Gender</p><h6>${freelancer.gender ? "Male" : "Female"} </h6></li>
                                    <li><p>Email Contact: </p><h6>${freelancer.email}</h6></li>
                                    <li><p>Phone Contact: </p><h6>${freelancer.phone}</h6></li>
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

                        </div>

                    </div>
                </div>
            </div>


            <jsp:include page="footter.jsp" />

        </div>


        <script src="assets/js/jquery-3.7.1.min.js" type="c62a37b1c7e125ad6ef80457-text/javascript"></script>

        <script src="assets/js/bootstrap.bundle.min.js" type="c62a37b1c7e125ad6ef80457-text/javascript"></script>

        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js" type="c62a37b1c7e125ad6ef80457-text/javascript"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js" type="c62a37b1c7e125ad6ef80457-text/javascript"></script>

        <script src="assets/js/script.js" type="c62a37b1c7e125ad6ef80457-text/javascript"></script>
        <script src="assets/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="c62a37b1c7e125ad6ef80457-|49" defer></script></body>

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/freelancer-profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:37:52 GMT -->
</html>