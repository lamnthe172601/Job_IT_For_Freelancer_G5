<%-- 
    Document   : dashboard
    Created on : Jun 8, 2024, 11:05:23 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

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

        <link rel="stylesheet" href="assets/plugins/select2/css/select2.min.css">

        <link rel="stylesheet" href="assets/css/style.css">

        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

        <!-- DataTables CSS -->
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css">

        <!-- jQuery -->
        <script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.5.1.js"></script>

        <!-- DataTables JS -->
        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.js"></script>
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
                                                <a href="#">
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
                                                <a href="#">
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
                                                <a href="#">
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
                                                <a href="#">
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
                                        <a href="#">View All Notification</a>
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
                                    <a href="companydetail"><img alt="profile image" src="${recruiter.image}" class="avatar-lg rounded-circle"></a>
                                    <div class="ms-sm-3 ms-md-0 ms-lg-3 mt-2 mt-sm-0 mt-md-2 mt-lg-0">
                                        <h3 class="mb-0"><a href="companydetail">${recruiter.fullName()}</a><img src="assets/img/icon/verified-badge.svg" class="ms-1" alt="Img"></h3>
                                        <p class="mb-0">@${sessionScope.account.username}</p>
                                    </div>
                                </div>
                                <div class="settings-menu">
                                    <div id="sidebar-menu" class="sidebar-menu">
                                        <ul>
                                            <li class="nav-item">
                                                <a href="Dashboard" class="nav-link active">
                                                    <img src="assets/img/icon/sidebar-icon-01.svg" alt="Img"> Dashboard
                                                </a>
                                            </li>
                                            <li class="nav-item submenu">
                                                <a href="manageJobsPosts" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-02.svg" alt="Img"> Projects
                                                    <span class="menu-arrow"></span>
                                                </a>
                                                <ul class="sub-menu-ul">
                                                    <li><a href="manageJobsPosts">Manage projects</a></li>
                                                    <li><a href="ManageApplication">All applicants</a></li>
                                                    <li><a href="CompletedProjects">Completed Projects</a></li>
                                                    <li><a href="ExpiredProjects">Expired Projects</a></li>

                                                </ul>
                                            </li>
                                            <li class="nav-item submenu">
                                                <a href="RecruiterFavourites" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-03.svg" alt="Img"> Favorites
                                                    <span class="menu-arrow"></span>
                                                </a>
                                                <ul class="sub-menu-ul">
                                                    <li><a href="RecruiterFavourites">Bookmarked Freelancer</a></li>
                                                   
                                                </ul>
                                            </li>
                                            <li class="nav-item">
                                                <a href="review" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-04.svg" alt="Img"> Reviews
                                                </a>
                                            </li>
                                            
                                            <li class="nav-item">
                                                <a href="javascript:void(0);" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-10.svg" alt="Img"> Settings
                                                    <span class="menu-arrow"></span>
                                                </a>
                                                <ul class="sub-menu-ul">
                                                    <li><a href="companydetail">Profile</a></li>                                                
                                                    <li><a href="changePassword">Change Password</a></li>

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
                            <div class="dashboard-sec">
                                <div class="page-title">
                                    <h3>Dashboard</h3>
                                </div>
                                <div class="row">
                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                        <div class="dash-widget">
                                            <div class="dash-info">
                                                <div class="dashboard-icon">
                                                    <img src="assets/img/icon/freelancer-dashboard-icon-01.svg" alt="Img">
                                                </div>
                                                <div class="dash-widget-info">Posted Jobs</div>
                                            </div>
                                            <div class="dash-widget-more d-flex align-items-center justify-content-between">
                                                <div class="dash-widget-count">${numberPost}</div>
                                                <a href="manageJobsPosts" class="d-flex">View Details</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                        <div class="dash-widget">
                                            <div class="dash-info">
                                                <div class="dashboard-icon dashboard-icon-two">
                                                    <img src="assets/img/icon/freelancer-dashboard-icon-02.svg" alt="Img">
                                                </div>
                                                <div class="dash-widget-info">Applicants</div>
                                            </div>
                                            <div class="dash-widget-more d-flex align-items-center justify-content-between">
                                                <div class="dash-widget-count">${numberApply}</div>
                                                <a href="ManageApplication" class="d-flex">View Details</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                        <div class="dash-widget">
                                            <div class="dash-info">
                                                <div class="dashboard-icon dashboard-icon-three">
                                                    <img src="assets/img/icon/freelancer-dashboard-icon-03.svg" alt="Img">
                                                </div>
                                                <div class="dash-widget-info">Completed Projects</div>
                                            </div>
                                            <div class="dash-widget-more d-flex align-items-center justify-content-between">
                                                <div class="dash-widget-count">25</div>
                                                <a href="CompletedProjects" class="d-flex">View Details</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                        <div class="dash-widget">
                                            <div class="dash-info">
                                                <div class="dashboard-icon dashboard-icon-four">
                                                    <img src="assets/img/icon/freelancer-dashboard-icon-04.svg" alt="Img">
                                                </div>
                                                <div class="dash-widget-info">Freelancer Approved</div>
                                            </div>
                                            <div class="dash-widget-more d-flex align-items-center justify-content-between">
                                                <div class="dash-widget-count">52</div>
                                                <a href="ExpiredProjects" class="d-flex">View Details</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-xl-8 d-flex">
                                        <div class="card flex-fill ongoing-project-card">
                                            <div class="pro-head">
                                                <h5 class="card-title mb-0">Overview</h5>
                                                <div class="month-detail">
                                                    <select class="form-control" id="yearSelect" onchange="handleYearChange()">
                                                        <option value="2024">2024</option>
                                                        <option value="2023">2023</option>
                                                        <option value="2022">2022</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div style="width: 600px; margin: 0 auto;">
                                                <canvas id="applicationsPostsChart"></canvas>
                                            </div>
                                        </div>
                                    </div>



                                    <div class="col-xl-4 d-flex">
                                        <div class="flex-fill card ongoing-project-card">
                                            <div class="pro-head b-0">
                                                <h5 class="card-title mb-0">Static Analytics</h5>
                                            </div>
                                            <div class="pro-body p-0">
                                                <div id="chartradial"></div>
                                                <div class="d-flex flex-wrap justify-content-between">
                                                    <ul class="static-list">
                                                        <li><span><i class="fas fa-circle text-violet me-1"></i>Jobs</span></li>

                                                        <li><span><i class="fas fa-circle text-yellow me-1"></i>Proposals</span></li>

                                                    </ul>
                                                    <ul class="static-list">

                                                        <li><span><i class="fas fa-circle text-pink me-1"></i> Applied Proposals</span></li>

                                                        <li><span><i class="fas fa-circle text-blue me-1"></i>Bookmarked Projects</span></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">

                                    <div class="col-xl-12">
                                        <div class="card mb-4 ongoing-project-card">
                                            <div class="pro-head">
                                                <h2>List News Post Projects</h2>
                                                <a href="manageJobsPosts" class="btn fund-btn">View All</a>
                                            </div>
                                            <div class="table-responsive recent-earnings flex-fill">
                                                <table class="table mb-0 datatable">
                                                    <thead>
                                                        <tr>
                                                            <th>Title</th>
                                                            <th>Job Type</th>
                                                            <th>Skill</th>
                                                            <th>Create On</th>
                                                            <th>Categories</th>
                                                            <th>Proposals</th>
                                                            <th>Action</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach items="${listpost}" var="listpost">
                                                            <tr>
                                                                <td>${listpost.title}</td>
                                                                <td>${listpost.jobTypeID.jobName}</td>
                                                                <td><c:forEach var="skill" items="${listpost.skill.split(',')}">
                                                                        <div class="skill">${skill.trim()}</div>
                                                                    </c:forEach></td>
                                                                <td>${listpost.datePost}</td>
                                                                <td>${listpost.caID.categoriesName}</td>
                                                                <td style="text-align: center;">${listpost.quantity}</td>
                                                                <td><a href="javascript:void(0);"><i class="feather-eye"></i></a></td>
                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


           <jsp:include page="footter.jsp" />

            <script>
                $(document).ready(function () {
                    $('.datatable').DataTable({
                        "paging": true,
                        "pageLength": 10, // Số lượng bài post mỗi trang
                        "searching": true,
                        "ordering": true,
                        "info": true

                    });
                });
            </script>


            <script>
                let applicationsPostsChart;

                function loadChartData(year) {
                    fetch('Chart?action=getData&year=' + year)
                            .then(response => {
                                if (!response.ok) {
                                    throw new Error('Network response was not ok');
                                }
                                return response.json();
                            })
                            .then(data => {
                                // Prepare data arrays for applications and posts counts
                                const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
                                const applicationsData = new Array(12).fill(0);
                                const postsData = new Array(12).fill(0);

                                // Populate data arrays based on fetched data
                                data.forEach(item => {
                                    applicationsData[item.month - 1] = item.applyCount;
                                    postsData[item.month - 1] = item.postCount;
                                });

                                // Update the chart with new data
                                updateChart(applicationsData, postsData, months, year);
                            })
                            .catch(error => {
                                console.error('Error fetching data:', error);
                                // Handle error, e.g., show error message to user
                            });
                }

                function updateChart(applicationsData, postsData, labels, year) {
                    // Get the chart context from the canvas element
                    const ctx = document.getElementById('applicationsPostsChart').getContext('2d');

                    // Destroy existing chart if it exists
                    if (applicationsPostsChart) {
                        applicationsPostsChart.destroy();
                    }

                    // Create new Chart.js instance
                    applicationsPostsChart = new Chart(ctx, {
                        type: 'line',
                        data: {
                            labels: labels,
                            datasets: [
                                {
                                    label: 'Applications',
                                    data: applicationsData,
                                    borderColor: 'rgba(255, 99, 132, 1)',
                                    backgroundColor: 'rgba(255, 99, 132, 0.2)',
                                    fill: false,
                                    tension: 0.5,
                                    pointStyle: 'circle',
                                    pointRadius: 5,
                                    pointHoverRadius: 7
                                },
                                {
                                    label: 'Posts',
                                    data: postsData,
                                    borderColor: 'rgba(54, 162, 235, 1)',
                                    backgroundColor: 'rgba(54, 162, 235, 0.2)',
                                    fill: false,
                                    tension: 0.5,
                                    pointStyle: 'circle',
                                    pointRadius: 5,
                                    pointHoverRadius: 7
                                }
                            ]
                        },
                        options: {
                            responsive: true,
                            scales: {
                                y: {
                                    beginAtZero: true
                                }
                            },
                            plugins: {
                                legend: {
                                    display: true,
                                    position: 'top'
                                },
                                title: {
                                    display: true,
                                    text: `Overview - Year ` + year
                                }
                            }
                        }
                    });
                }

                function handleYearChange() {
                    // Get the selected year from the dropdown
                    const selectedYear = document.getElementById('yearSelect').value;

                    // Load chart data for the selected year
                    loadChartData(selectedYear);
                }

                document.addEventListener('DOMContentLoaded', () => {
                    // Get the current year
                    const currentYear = new Date().getFullYear();

                    // Set the default selected year in the dropdown
                    document.getElementById('yearSelect').value = currentYear;

                    // Load chart data for the current year on page load
                    loadChartData(currentYear);
                });
            </script>



            <script data-cfasync="false" src="assets/scripts/5c5dd728/cloudflare-static/email-decode.min.js">

            </script><script src="assets/js/jquery-3.7.1.min.js" type="50c5e983c70b40808b575f53-text/javascript"></script>

            <script src="assets/js/bootstrap.bundle.min.js" type="50c5e983c70b40808b575f53-text/javascript"></script>

            <script src="assets/plugins/apexchart/apexcharts.min.js" type="50c5e983c70b40808b575f53-text/javascript"></script>
            <script src="assets/plugins/apexchart/chart-data.js" type="50c5e983c70b40808b575f53-text/javascript"></script>

            <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js" type="50c5e983c70b40808b575f53-text/javascript"></script>
            <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js" type="50c5e983c70b40808b575f53-text/javascript"></script>

            <script src="assets/js/script.js" type="50c5e983c70b40808b575f53-text/javascript"></script>
            <script src="assets/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="50c5e983c70b40808b575f53-|49" defer></script></body>

</html>
