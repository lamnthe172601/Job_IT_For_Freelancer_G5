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
            .titlepost{
                max-width: 250px;
                white-space: nowrap;
                overflow: hidden;
                text-overflow: ellipsis;
                margin-left: 15px;
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

                                            <li><a href="AllListPost">Jobs List</a></li>                                        
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
                                            <li><a href="CreatePost">Create a new Post</a></li>
                                            <li><a href="myListJobProject">My List Post</a></li>
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

                                            <li><a href="Dashboard">Dashboard</a></li>
                                            <li><a href="companydetail">My Profile</a></li>
                                            <li><a href="company-details">Company Details</a></li>
                                            <li><a href="manage-projects">Projects</a></li>
                                            <li><a href="favourites">Favourites</a></li>                                                                                       
                                            <li><a href="recruitersetting">Settings</a></li>
                                            <li><a href="logout">Logout</a></li>
                                        </ul>
                                    </li>
                                </c:if>
                                <c:if test="${sessionScope.account.roleID.getRoleID() == 1 || sessionScope.account.roleID.getRoleID() == 2}">
                                    <li>
                                        <a href="home" target="_blank">Admin</a>
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
                        <ul style="margin-left: 5px;" class="nav header-navbar-rht">





                        </ul>
                    </nav>
                </div>
            </header>


            <div class="bread-crumb-bar">
                <div class="container">
                    <div style="padding: 10px;" class="row align-items-center ">
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


            <div style="padding: 20px 0 30px;" class="content">
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
                                            <a href="javascript:void(0);" class="w-100" id="projectTypeLink" data-bs-toggle="collapse" data-bs-target="#collapsproject" aria-expanded="true" aria-controls="collapsproject">
                                                Project Type
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
                                                Project Duration
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
                                </div>
                            </div>
                        </div>


                        <div class="col-md-12 col-lg-8 col-xl-9">


                            <%-- Lấy danh sách bài đăng và thông tin phân trang từ request --%>
                            <c:set var="listpost" value="${requestScope.listpost}" />
                            <c:set var="tongSoBaiDang" value="${requestScope.tongSoBaiDang}" />
                            <c:set var="baiDangTrenMotTrang" value="${requestScope.baiDangTrenMotTrang}" />
                            <c:set var="tongSoTrang" value="${requestScope.tongSoTrang}" />
                            <c:set var="trangHienTai" value="${requestScope.trangHienTai}" />

                            <%-- Tính chỉ số bắt đầu và kết thúc cho danh sách bài đăng hiển thị trên trang hiện tại --%>
                            <c:set var="chiSoBatDau" value="${(trangHienTai - 1) * baiDangTrenMotTrang}" />
                            <c:set var="chiSoKetThuc" value="${chiSoBatDau + baiDangTrenMotTrang}" />


                            <%-- Hiển thị danh sách bài đăng --%>
                            <div  class="row" id="listpostContainer">
                                <c:forEach items="${listpost}" var="list" begin="${chiSoBatDau}" end="${chiSoKetThuc - 1}">
                                    <div  class="col-xl-4 col-md-6 post-item">
                                        <div class="freelance-widget widget-author position-relative">
                                            <div id="noPostsMessage" style="display:none; text-align:center; margin-top:20px;">
                                                Không tìm thấy project nào phù hợp
                                            </div>
                                            <div class="freelance-content">
                                                <div style="padding-bottom: 30px; padding-top: 16px">
                                                    <div style="margin-top: 10px;" class="freelance-location freelance-time"><i class="feather-clock me-1"></i> ${list.expired}</div>
                                                    
                                                    

                                                    
                                                </div>
                                                <div class="author-heading">
                                                    <div class="text-center1" >                                                                                                              
                                                        <img style="width: 239px; height: 139px;" src="${list.image}" alt="author">                                                       
                                                    </div>
                                                    <div class="profile-name">
                                                        <div class="author-location titlepost"><a>${list.title} </a></div>
                                                    </div>
                                                    <div class="freelance-info">
                                                        <h3><a href="javascript:void(0);">${list.caID.categoriesName}</a></h3>
                                                        <div class="freelance-location"><img src="assets/img/icon/locations.svg" class="me-2" alt="img">${list.location}</div>
                                                    </div>
                                                    <div class="skills-container">
                                                        <c:forEach items="${fn:split(list.skill, ',')}" var="skill" varStatus="loop">
                                                            <c:if test="${loop.index < 2}">
                                                                <span class="badge badge-pill badge-design">${skill}</span>
                                                            </c:if>                                                              
                                                            <c:if test="${loop.index == 1 and not loop.last}">                                                                 
                                                                <span class="badge badge-pill badge-design">...</span>
                                                            </c:if>
                                                        </c:forEach>
                                                    </div>
                                                    <style>


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
                                                    </style>
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
                                                <a href="PostDetails?postID=${list.postID}" class="btn-cart" tabindex="-1">View Project</a>
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
                                                    <a class="page-link" href="?page=${trangHienTai - 1}" aria-label="Trước">
                                                        <span aria-hidden="true">&laquo;</span>
                                                    </a>
                                                </li>
                                            </c:if>
                                            <c:forEach var="i" begin="1" end="${tongSoTrang}">
                                                <li class="page-item ${i == trangHienTai ? 'active' : ''}">
                                                    <a class="page-link" href="?page=${i}">${i}</a>
                                                </li>
                                            </c:forEach>
                                            <c:if test="${trangHienTai < tongSoTrang}">
                                                <li class="page-item">
                                                    <a class="page-link" href="?page=${trangHienTai + 1}" aria-label="Sau">
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
            function truncateString(str, maxLength) {
                if (str.length <= maxLength) {
                    return str;
                } else {
                    return str.substring(0, maxLength) + "...";
                }
            }

            // Lấy nội dung của element có id là 'title-list-post'
            let titleElement = document.getElementById('title-list-post');

            // Lấy nội dung ban đầu từ innerHTML của element
            let originalTitle = titleElement.innerHTML;

            // Sử dụng hàm truncateString để cắt chuỗi và gán lại vào innerHTML của element
            let truncatedTitle = truncateString(originalTitle, 5);
            titleElement.innerHTML = truncatedTitle;
        </script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


        <script src="assets/js/filterMyListPost.js" type="text/javascript"></script>
        <script src="assets/js/jquery-3.7.1.min.js" type="43b4fcd1b9965a5423af7613-text/javascript"></script>

        <script src="assets/js/bootstrap.bundle.min.js" type="43b4fcd1b9965a5423af7613-text/javascript"></script>

        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js" type="43b4fcd1b9965a5423af7613-text/javascript"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js" type="43b4fcd1b9965a5423af7613-text/javascript"></script>

        <script src="assets/plugins/select2/js/select2.min.js" type="43b4fcd1b9965a5423af7613-text/javascript"></script>

        <script src="assets/js/profile-settings.js" type="43b4fcd1b9965a5423af7613-text/javascript"></script>
        <script src="assets/js/script.js" type="43b4fcd1b9965a5423af7613-text/javascript"></script>
        <script src="assets/cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="43b4fcd1b9965a5423af7613-|49" defer></script></body>

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/project.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:34:26 GMT -->
</html>