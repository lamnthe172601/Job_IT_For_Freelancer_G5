<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/profile-settings.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:34:09 GMT -->
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

        <link rel="stylesheet" href="assets/plugins/select2/css/select2.min.css">

        <link rel="stylesheet" href="assets/plugins/datatables/datatables.min.css">

        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body class="dashboard-page">

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

                                <c:if test="${sessionScope.account.roleID.getRoleID() == 3 || sessionScope.account.roleID.getRoleID() == null}">
                                <li class="has-submenu">
                                    <a href="javascript:void(0);">For Freelancer<i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu"> 
                                        
                                        <li><a href="PostFavourites">Jobs Favourites</a></li>                                                                                                                 
                                        <li><a href="ListApply">Jobs Apply</a></li>
                                        <li><a href="jobforyou">Jobs For you</a></li>
                                    </ul>
                                </li>
                               
                                <li class="has-submenu">
                                    <a href="javascript:void(0);">For Jobs<i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                                                                                                                                                                                  
                                        <li><a href="ListPost">Jobs List</a></li>                                        
                                        <li><a href="SreachJob">Find Jobs</a></li>  
                                    </ul>
                                </li>
                                 </c:if>
                                <c:if test="${sessionScope.account.roleID.getRoleID() == 4}">
                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">Find Freelancer<i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">

                                            <li><a href="jobsList">Top Freelancer</a></li>
                                            <li><a href="newsJobs">Skills</a></li>

                                        </ul>
                                    </li>
                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">My Post<i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">

                                            <li><a href="jobsList">List Post</a></li>
                                            <li><a href="newsJobs">Reviews</a></li>

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
                                <c:if test="${sessionScope.account.roleID.getRoleID() == 3}">

                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">Hello ${sessionScope.account.username} <i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">
                                            <li><a href="MyProfile?id=${sessionScope.account.userID}">My Profile</a></li>
                                            <li><a href="Project">Projects</a></li>                        
                                            <li><a href="changePassword">Change Password</a></li>                                                                                     
                                            <li><a href="profile-settings">Settings</a></li>
                                            <li><a href="logout">Logout</a></li>
                                        </ul>
                                    </li>
                                </c:if>
                                <c:if test="${sessionScope.account.roleID.getRoleID() == 4}">
                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">Hello ${sessionScope.account.username} <i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">
                                            
                                            <li><a href="dashboard">Dashboard</a></li>
                                            <li><a href="companydetail">My Profile</a></li>
                                            <li><a href="company-details">Company Details</a></li>
                                            <li><a href="manage-projects">Projects</a></li>
                                            <li><a href="favourites">Favourites</a></li>                                                                                       
                                            <li><a href="profile-settings">Settings</a></li>
                                            <li><a href="logout">Logout</a></li>
                                        </ul>
                                    </li>
                                </c:if>
                                <c:if test="${sessionScope.account.roleID.getRoleID() == 1 || sessionScope.account.roleID.getRoleID() == 2}">
                                    <li>
                                        <a href="/admin/index.html" target="_blank">Admin</a>
                                        <ul class="submenu">
                                            
                                            <li><a href="dashboardAdmin">Dashboard</a></li>                                           
                                            <li><a href="profile-settings">Settings</a></li>
                                            <li><a href="logout">Logout</a></li>
                                        </ul>
                                    </li>
                                </c:if>
                                <c:if test="${sessionScope.account == null}">
                                    <li><a href="Register" class="reg-btn"><img src="assets/img/icon/users.svg" class="me-1" alt="img">Register</a></li>
                                    <li><a href="login" class="log-btn active"><img src="assets/img/icon/lock.svg" class="me-1" alt="img"> Login</a></li>
                                        </c:if>
                            </ul> 
                        </div>
                        <ul class="nav header-navbar-rht reg-head">

                            <li><a href="post-project.html" class="login-btn"><i class="feather-plus me-1"></i>Post a Project </a></li>
                        </ul>
                    </nav>
                </div>
            </header>

            <div class="content content-page bookmark">
                <div class="container">
                    <div class="row">

                        <div class="col-xl-3 col-lg-4 theiaStickySidebar">
                            <div class="settings-widget">
                                <div class="settings-header d-sm-flex flex-row flex-wrap text-center text-sm-start align-items-center">
                                    <a href="freelancer-profile.html"><img alt="profile image" src="assets/img/user/table-avatar-03.jpg" class="avatar-lg rounded-circle"></a>
                                    <div class="ms-sm-3 ms-md-0 ms-lg-3 mt-2 mt-sm-0 mt-md-2 mt-lg-0">
                                        <h3 class="mb-0"><a href="profile-settings.html"></a><img src="assets/img/icon/verified-badge.svg" class="ms-1" alt="Img"></h3>

                                    </div>
                                </div>
                                <div class="settings-menu">
                                    <div id="sidebar-menu" class="sidebar-menu">
                                        <ul>
                                            <li class="nav-item">
                                                <a href="dashboard.html" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-01.svg" alt="Img"> Dashboard
                                                </a>
                                            </li>
                                            <li class="nav-item submenu">
                                                <a href="freelancer-project-proposals.html" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-02.svg" alt="Img"> Projects
                                                    <span class="menu-arrow"></span>
                                                </a>
                                                <ul class="sub-menu-ul">
                                                    <li>
                                                        <a href="manage-projects.html">All Projects</a>
                                                    </li>
                                                    <li>
                                                        <a href="ongoing-projects.html">Ongoing Projects</a>
                                                    </li>
                                                    <li>
                                                        <a href="completed-projects.html">Completed Projects</a>
                                                    </li>
                                                    <li>
                                                        <a href="pending-projects.html">Pending Projects</a>
                                                    </li>
                                                    <li>
                                                        <a href="cancelled-projects.html">Cancelled Projects</a>
                                                    </li>
                                                    <li>
                                                        <a href="expired-projects.html">Expired Projects</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="nav-item submenu">
                                                <a href="freelancer-favourites.html" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-03.svg" alt="Img"> Favourites
                                                    <span class="menu-arrow"></span>
                                                </a>
                                                <ul class="sub-menu-ul">
                                                    <li>
                                                        <a href="favourites.html">Bookmarked Projects</a>
                                                    </li>
                                                    <li>
                                                        <a href="invited-favourites.html">Invitations</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="nav-item">
                                                <a href="review.html" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-04.svg" alt="Img"> Reviews
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="chats.html" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-06.svg" alt="Img"> Chat
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="deposit-funds.html" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-07.svg" alt="Img"> Payments
                                                </a>
                                            </li>
                                            <li class="nav-item submenu">
                                                <a href="javascript:void(0);" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-10.svg" alt="Img"> Settings
                                                    <span class="menu-arrow"></span>
                                                </a>
                                                <ul class="sub-menu-ul">
                                                    <li>
                                                        <a href="profile-settings.html" class="active">Profile</a>
                                                    </li>
                                                    <li>
                                                        <a href="membership-plans.html">Plan & Billing</a>
                                                    </li>
                                                    <li>
                                                        <a href="verify-identity.html">Verify Identity</a>
                                                    </li>
                                                    <li>
                                                        <a href="change-password.html">Change Password</a>
                                                    </li>
                                                    <li>
                                                        <a href="delete-account.html">Delete Account</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="nav-item">
                                                <a href="home" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-11.svg" alt="Img"> Logout
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-9 col-lg-8">
                            <div class="pro-pos">
                                <div class="setting-content employee-profile-new">


                                    <form action="updateRecruiterProfile" method="post">
                                        <div class="card">
                                            <div class="pro-head">
                                                <h3>Profile Setting</h3>
                                            </div>
                                            <div class="pro-body">
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <div class="form-row pro-pad pt-0 ps-0">
                                                            <div class="input-block col-md-6 pro-pic">                                             
                                                                <label class="form-label">Profile Picture</label>
                                                                <div class="d-flex align-items-center">
                                                                    <div class="upload-images">
                                                                        <img src="${recruiter.image}" alt="Image" id="blah">
                                                                    </div>
                                                                    <div class="ms-3">
                                                                        <label class="file-upload image-upbtn ms-0">
                                                                            Upload Image <input type="file" id="imgInp">
                                                                        </label>
                                                                        <p>Max Image size 300*300</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="container">
                                                            <h2>Recruiter Profile</h2>
                                                            <div class="row">
                                                                <div class="col-lg-6 col-md-12">
                                                                    <div class="mb-3">
                                                                        <label class="form-label">First Name</label>
                                                                        <input type="text" class="form-control" name="firstName" value="${recruiter.firstName}" required>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6 col-md-12">
                                                                    <div class="mb-3">
                                                                        <label class="form-label">Last Name</label>
                                                                        <input type="text" class="form-control" name="lastName" value="${recruiter.lastName}" required>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6 col-md-12">
                                                                    <div class="mb-3">
                                                                        <label class="form-label">Phone Number</label>
                                                                        <input type="text" class="form-control" name="phoneNumber" value="${recruiter.phone}" pattern="^0\d{9}$" title="Phone number must be 10 digits starting with 0" required>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6 col-md-12">
                                                                    <div class="mb-3">
                                                                        <label class="form-label">Email</label>
                                                                        <input type="email" class="form-control" name="email" value="${recruiter.email}" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Please enter a valid email address" required>
                                                                    </div>
                                                                </div>

                                                                <div class="col-lg-12">
                                                                    <h2>Company Details</h2>
                                                                    <div class="mb-3">
                                                                        <label class="form-label">Company Name</label>
                                                                        <input type="text" class="form-control" name="companyName" value="${company.companyName}" required>
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label class="form-label">Established On</label>
                                                                        <input type="date" class="form-control" name="establishedOn" value="${company.establishedOn}" required>
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label class="form-label">Website</label>
                                                                        <input type="url" class="form-control" name="website" value="${company.website}" required>
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label class="form-label">Describe</label>
                                                                        <textarea rows="4" class="form-control" name="describe" required>${company.describe}</textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="card text-end border-0">
                                                                <div class="pro-body">
                                                                    <button class="btn btn-secondary click-btn btn-plan">Cancel</button>
                                                                    <button class="btn btn-primary click-btn btn-plan" type="submit">Update</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>



                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>




            <%@ include file="footter.jsp" %>                  


        </div>


        <script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-3.7.1.min.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>

        <script src="assets/js/bootstrap.bundle.min.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>

        <script src="assets/plugins/select2/js/select2.min.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>

        <script src="assets/js/moment.min.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>
        <script src="assets/js/bootstrap-datetimepicker.min.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>

        <script src="assets/plugins/datatables/jquery.dataTables.min.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>
        <script src="assets/plugins/datatables/datatables.min.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>

        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>

        <script src="assets/js/script.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>
        <script src="../../cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="ba3353e5dfbf68844181f2d9-|49" defer></script></body>

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/profile-settings.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:34:09 GMT -->
</html>


