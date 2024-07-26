<%-- 
    Document   : PopularPost
    Created on : May 28, 2024, 1:28:46 PM
    Author     : DUC MINH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/freelancer-favourites.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:34:46 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
        <title>KofeJob</title>

        <link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/plugins/feather/feather.css">

        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

        <link rel="stylesheet" href="assets/plugins/select2/css/select2.min.css">

        <link rel="stylesheet" href="assets/plugins/datatables/datatables.min.css">

        <link rel="stylesheet" href="assets/css/style.css">


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

                                            <li><a href="ListApply">Jobs Apply</a></li>
                                            <li><a href="JobforFreelancer">Jobs For you</a></li>
                                        </ul>
                                    </li>

                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">For Jobs<i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">

                                            <li><a href="AllListPost">Jobs List</a></li>                                        
                                            
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
                        <ul class="nav header-navbar-rht">
                            
                            <c:if test="${sessionScope.account.roleID.getRoleID() == 3}">
                                <li class="nav-item dropdown account-item">
                                    <a href="javascript:void(0);" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
                                        <span class="user-img">
                                            <img src="${freelancer.image}" alt="Img">
                                        </span>
                                        <span>${freelancer.fullname()}</span>
                                    </a>
                                    <div class="dropdown-menu emp">
                                        <div class="drop-head">
                                            <a href="javascript:void(0);" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
                                                <span class="user-img">
                                                    <img src="${freelancer.image}" alt="Img">
                                                </span>
                                                <div>
                                                    <span>${freelancer.fullname()}</span>
                                                    <p><span  data-cfemail="81e8efe7eec1e3f3f4e2e4e3f4f2e9afe2eeec">@${sessionScope.account.username}</span></p>
                                                </div>
                                            </a>
                                        </div>
                                        <a class="dropdown-item" href="MyProfile?id=${sessionScope.account.userID}"><img src="assets/img/icon/user-dropdown-icon--01.svg" alt="Img"> My Profile</a>
                                        <a class="dropdown-item" href="ListApply"><img src="assets/img/icon/user-dropdown-icon--02.svg" alt="Img"> Applied</a>

                                        <a class="dropdown-item" href="UpdateProfile?id=${sessionScope.account.userID}"><img src="assets/img/icon/user-dropdown-icon--06.svg" alt="Img"> Profile Settings</a>
                                        <a class="dropdown-item" href="logout"><img src="assets/img/icon/user-dropdown-icon--07.svg" alt="Img"> Logout</a>
                                    </div>
                                </li>
                            </c:if>
                        </ul>
                    </nav>
                </div>
            </header>


            <div class="content content-page bookmark">
                <div class="container">
                    <div class="row">
                        <div style="margin-bottom: 30px" class="col-xl-3 col-lg-4 theiaStickySidebar">
                            <div class="settings-widget">
                                <div class="settings-header d-sm-flex flex-row flex-wrap text-center text-sm-start align-items-center">
                                    <a href="MyProfile?id=${userID}"><img alt="profile image" src="${freelancer.image}" class="avatar-lg rounded-circle"></a>
                                    <div class="ms-sm-3 ms-md-0 ms-lg-3 mt-2 mt-sm-0 mt-md-2 mt-lg-0">
                                        <h3 class="mb-0">${freelancer.fullname()}</h3>
                                        <p class="mb-0">@${sessionScope.account.username}</p>
                                    </div>
                                </div>
                                <div class="settings-menu">
                                    <div id="sidebar-menu" class="sidebar-menu">
                                        <ul>
                                            <li class="nav-item">
                                                <a href="MyProfile?id=${sessionScope.account.userID}" class="nav-link ">
                                                    <img src="assets/img/icon/sidebar-icon-01.svg" alt="Img">My Profile
                                                </a>
                                            </li>
                                            <li class="nav-item submenu">
                                                <a href="ListApply" class="nav-link active">
                                                    <img src="assets/img/icon/sidebar-icon-02.svg" alt="Img"> Applied
                                                    <!--                                                    <span class="menu-arrow"></span>-->
                                                </a>
                                                <ul class="sub-menu-ul">
                                                    <li>
                                                        <a href="freelancer-project-proposals">My Proposal</a>
                                                    </li>
                                                    <li>
                                                        <a href="freelancer-ongoing-projects">Ongoing Projects</a>
                                                    </li>
                                                    <li>
                                                        <a href="freelancer-completed-projects">Completed Projects</a>
                                                    </li>
                                                    <li>
                                                        <a href="freelancer-cancelled-projects">Cancelled Projects</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="nav-item submenu">
                                                <a href="PostFavourites" class="nav-link ">
                                                    <img src="assets/img/icon/sidebar-icon-03.svg" alt="Img"> Favourites
                                                    <!--                                                    <span class="menu-arrow"></span>-->
                                                </a>
                                                <ul class="sub-menu-ul">
                                                    <li>
                                                        <a href="freelancer-favourites">Bookmarked Projects</a>
                                                    </li>
                                                    <li>
                                                        <a href="freelancer-invitations">Invitations</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <!--                                            <li class="nav-item">
                                                                                            <a href="freelancer-review" class="nav-link">
                                                                                                <img src="assets/img/icon/sidebar-icon-04.svg" alt="Img"> Reviews
                                                                                            </a>
                                                                                        </li>
                                                                                        <li class="nav-item">
                                                                                            <a href="freelancer-portfolio" class="nav-link">
                                                                                                <img src="assets/img/icon/sidebar-icon-05.svg" alt="Img"> Portfolio
                                                                                            </a>
                                                                                        </li>
                                                                                        <li class="nav-item">
                                                                                            <a href="freelancer-chats" class="nav-link">
                                                                                                <img src="assets/img/icon/sidebar-icon-06.svg" alt="Img"> Chat
                                                                                            </a>
                                                                                        </li>-->

                                            <li class="nav-item submenu">
                                                <a href="UpdateProfile?id=${sessionScope.account.userID}" class="nav-link ">
                                                    <img src="assets/img/icon/sidebar-icon-10.svg" alt="Img"> Settings
                                                    <!--                                                    <span class="menu-arrow"></span>-->
                                                </a>
                                                <ul class="sub-menu-ul">
                                                    <li>
                                                        <a class="active" href="freelancer-profile-settings.html">Profile Setting</a>
                                                    </li>
                                                    <li>
                                                        <a href="freelancer-membership.html">Plan & Billing</a>
                                                    </li>
                                                    <li>
                                                        <a href="freelancer-verify-identity.html">Verify Identity</a>
                                                    </li>
                                                    <li>
                                                        <a href="changePassword">Changes Password</a>
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
                            <form action="SearchInListApply" method="get" class="form-inline my-2 my-lg-0">
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
                            </form>
                        </div>
                        <div  class="col-xl-9 col-lg-8">
                            <div class="dashboard-sec freelance-favourites">
                                <div class="col-xl-12">
                                    <div class="table-responsive recent-earnings flex-fill">
                                        <table class="table mb-0">
                                            <thead>
                                                <tr>
                                                    <th>Title</th>
                                                    <th>Position <i id="filterIcon0" class="fas fa-filter filter-btn"></i>
                                                        <div id="filterContainer0"  style="display: none;">
                                                            <select id="filterSelect" style="font-size: 13px; width: 120px;" name="level" class="select1">
                                                                <option value="">Select Position</option>
                                                                <c:forEach items="${cate}" var="c">
                                                                    <option value="${c.categoriesName}">${c.categoriesName}</option>
                                                                </c:forEach>
                                                            </select>
                                                        </div>
                                                    </th>
                                                    <th>Resume</th>
                                                    <th>Create On <i id="filterIcon1" class="fas fa-filter filter-btn"></i>
                                                        <div  id="filterContainer1" style="display: none;">
                                                            <input id="filterInput1" style="width: 87px; font-size: 12px" type="date"/>
                                                        </div>
                                                    </th>
                                                    <th>
                                                        Apply On <i id="filterIcon" class="fas fa-filter filter-btn"></i>
                                                        <div  id="filterContainer" style="display: none;">
                                                            <input id="filterInput" style="width: 87px; font-size: 12px" type="date"/>
                                                        </div>
                                                    </th>
                                                    <th>Status</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${post}" var="p">
                                                    <tr>
                                                        <td class="title">${p.title}</td>
                                                        <td class="title">${p.category}</td>
                                                        <td><a href="${p.resume}">View</a></td>
                                                        <td>${p.datePost}</td>
                                                        <td>${p.dateApply}</td>
                                                        <c:if test="${p.status=='2'}">
                                                            <td style="color: #FF0000">Reject</td>
                                                        </c:if>
                                                        <c:if test="${p.status=='0'}">
                                                            <td style="color: #CC9900">Pending</td>
                                                        </c:if>
                                                        <c:if test="${p.status=='1'}">
                                                            <td style="color: #009933">Approve</td>
                                                        </c:if>

                                                        <td><a style="padding-left: 25%" href="PostDetails?postID=${p.postID}"><i
                                                                    class="feather-eye"></i></a></td>
                                                    </tr>
                                                </c:forEach>     
                                            </tbody>
                                        </table>
                                    </div>
                                    <c:if test="${endPage > 1}">

                                        <ul class="pagination list-pagination">
                                            <c:if test="${tag > 1}">
                                                <li class="page-item">
                                                    <a class="page-link" href="ListApply?index=${tag-1}" aria-label="Trước">
                                                        <span aria-hidden="true">&laquo;</span>
                                                    </a>
                                                </li>
                                            </c:if>
                                            <c:forEach var="i" begin="1" end="${endPage}">
                                                <li class="page-item ${i == tag ? 'active' : ''}">
                                                    <a class="page-link" href="ListApply?index=${i}">${i}</a>
                                                </li>
                                            </c:forEach>
                                            <c:if test="${tag < endPage}">
                                                <li class="page-item">
                                                    <a class="page-link" href="ListApply?index=${tag + 1}" aria-label="Sau">
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


                <jsp:include page="footter.jsp" />

            </div>


            <div class="modal fade" id="bookmark">
                <div class="modal-dialog modal-dialog-centered modal-md">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">INVITE FREELANCER</h4>
                            <span class="modal-close"><a href="javascript:void(0);" data-bs-dismiss="modal" aria-label="Close"><i class="far fa-times-circle orange-text"></i></a></span>
                        </div>
                        <div class="modal-body">
                            <form action="#">
                                <div class="modal-info">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="average-bids">
                                                <p>Contact <span class="text-highlight">John Doe </span> about your Project</p>
                                            </div>
                                            <div class="input-block">
                                                <label class="form-label">Invite title</label>
                                                <input type="text" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="input-block">
                                                <label class="form-label">Send a private message</label>
                                                <textarea class="form-control" rows="5">Hi  John Doe, I noticed your profile and would like to offer you my project. We can discuss any details over chat.</textarea>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="input-block">
                                                <label class="form-label">Hire for</label>
                                                <div class="radio">
                                                    <label class="custom_radio">
                                                        <input type="radio" value="fix" name="fix" checked>
                                                        <span class="checkmark"></span> Fixed Price
                                                    </label>
                                                    <label class="custom_radio">
                                                        <input type="radio" value="fix" name="fix">
                                                        <span class="checkmark"></span> Hourly Rate
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="input-block">
                                                <label class="form-label">Hire for</label>
                                                <div class="radio">
                                                    <label class="custom_radio">
                                                        <input type="radio" value="fix" name="fix">
                                                        <span class="checkmark"></span> Fixed Price
                                                    </label>
                                                    <label class="custom_radio">
                                                        <input type="radio" value="fix" name="fix">
                                                        <span class="checkmark"></span> Hourly Rate
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="input-block">
                                                <label class="form-label">Budget</label>
                                                <div class="form-row">
                                                    <div class="col-6">
                                                        <div class="input-group">
                                                            <div class="input-group-prepend bg-pink">
                                                                <span class="input-group-text" id="basic-add">$</span>
                                                            </div>
                                                            <input type="text" class="form-control" placeholder="20.00">
                                                        </div>
                                                    </div>
                                                    <div class="col-6">
                                                        <select class="form-control select">
                                                            <option value="0">USD</option>
                                                            <option value="0">USD</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="input-block">
                                                <label class="form-label">Budget</label>
                                                <div class="form-row">
                                                    <div class="col-6">
                                                        <div class="input-group form-inline">
                                                            <div class="input-group-prepend bg-pink">
                                                                <span class="input-group-text" id="basic-addon">$</span>
                                                            </div>
                                                            <input type="text" class="form-control me-1" placeholder="20.00"> <label class="form-label">/ hr</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-6">
                                                        <select class="form-control select">
                                                            <option value="0">USD</option>
                                                            <option value="0">USD</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="input-block">
                                                <label class="form-label">Project</label>
                                                <select class="form-control select">
                                                    <option value="0">3D Renders and Amazon Product Store images/Video</option>
                                                    <option value="0">3D Renders and Amazon Product Store Video</option>
                                                    <option value="0">3D Renders and Amazon Product Store images</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="submit-section text-end">
                                    <button type="submit" class="btn btn-primary submit-btn">Send Invite</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>


            <div class="modal fade" id="rating">
                <div class="modal-dialog modal-dialog-centered modal-md">
                    <div class="modal-content">
                        <div class="modal-header d-block b-0 pb-0">
                            <span class="modal-close float-end"><a href="javascript:void(0);" data-bs-dismiss="modal" aria-label="Close"><i class="far fa-times-circle orange-text"></i></a></span>
                        </div>
                        <div class="modal-body">
                            <form action="https://kofejob.dreamstechnologies.com/html/template/project.html">
                                <div class="modal-info">
                                    <div class="text-center pt-0 mb-5">
                                        <h3>Please login to Favourite Freelancers</h3>
                                    </div>
                                    <div class="submit-section text-center">
                                        <button data-bs-dismiss="modal" class="btn btn-primary black-btn click-btn">Cancel</button>
                                        <button type="submit" class="btn btn-primary click-btn">Submit</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <style>
                .form-inline {
                    margin-right: 50px;
                }

                /* Để căn chỉnh nút và icon */
                .input-group {
                    position: relative;
                    width: 100%
                }

                .btn.btn-secondary.btn-number {
                    position: absolute;
                    right: -50px;
                    top: 50%;
                    transform: translateY(-50%);
                }

                .title{
                    max-width: 120px;
                    white-space: nowrap;
                    overflow: hidden;
                    text-overflow: ellipsis;
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
            <!-- jQuery (replace with your preferred version or remove if not using jQuery) -->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
            <script>
                $(document).ready(function () {
                    // Toggle filter container visibility
                    $('#filterIcon').click(function () {
                        $('#filterContainer').toggle();
                    });

                    // Close filter when clicking outside of it
                    $(document).click(function (event) {
                        if (!$(event.target).closest('#filterIcon, #filterContainer').length) {
                            $('#filterContainer').hide();
                        }
                    });

                    // Filter by date input
                    $('#filterInput').change(function () {
                        var selectedDate = $(this).val();
                        $('tbody tr').each(function () {
                            var applyDate = $(this).find('td:eq(4)').text(); // Assuming Apply On column is the fifth column (index 4)
                            if (applyDate === selectedDate || selectedDate === '') {
                                $(this).show();
                            } else {
                                $(this).hide();
                            }
                        });
                    });
                });
            </script>

            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
            <script>
                $(document).ready(function () {
                    // Toggle filter container visibility
                    $('#filterIcon1').click(function () {
                        $('#filterContainer1').toggle();
                    });

                    // Close filter when clicking outside of it
                    $(document).click(function (event) {
                        if (!$(event.target).closest('#filterIcon1, #filterContainer1').length) {
                            $('#filterContainer1').hide();
                        }
                    });

                    // Filter by date input
                    $('#filterInput1').change(function () {
                        var selectedDate = $(this).val();
                        $('tbody tr').each(function () {
                            var applyDate = $(this).find('td:eq(3)').text(); // Assuming Apply On column is the fifth column (index 4)
                            if (applyDate === selectedDate || selectedDate === '') {
                                $(this).show();
                            } else {
                                $(this).hide();
                            }
                        });
                    });
                });
            </script>
            
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        $(document).ready(function() {
            // Toggle filter container visibility
            $('#filterIcon0').click(function() {
                $('#filterContainer0').toggle();
            });

            // Filter by position select
            $('#filterSelect').change(function() {
                var selectedPosition = $(this).val();
                $('tbody tr').each(function() {
                    var position = $(this).find('td:eq(1)').text(); // Assuming Position column is the second column (index 1)
                    if (selectedPosition === '' || position === selectedPosition) {
                        $(this).show();
                    } else {
                        $(this).hide();
                    }
                });
            });

            // Close filter when clicking outside of it
            $(document).click(function(event) {
                if (!$(event.target).closest('#filterIcon0, #filterContainer0').length) {
                    $('#filterContainer0').hide();
                }
            });
        });
    </script>




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
            <script src="assets/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="39bd9d3b5f9a12b82c2bbcef-|49" defer></script></body>

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/freelancer-favourites.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:34:46 GMT -->
</html>
