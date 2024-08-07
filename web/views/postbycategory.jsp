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
                .report-post {
                    margin-left: 400px;
                }
                .custom-flag {

                    padding: 2px; /* Khoảng cách bên trong để nhìn đẹp hơn */
                    border-radius: 3px; /* Bo tròn các góc */
                }
            }
            .btn.report-post {
                background-color: transparent; /* Làm nền nút trong suốt */
                border: none; /* Bỏ viền nút */
                padding: 0; /* Bỏ khoảng cách bên trong */
                color: black;
                margin-left: 170px;
            }
            .modal {
                display: none;
                position: fixed;
                z-index: 1;
                left: 0;
                top: 0;
                width: 100%;
                height: 100%;
                overflow: auto;
                background-color: rgba(0,0,0,0.4);
            }

            .modal-content {
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
                                <h3>My Post By Position</h3>
                                <nav aria-label="breadcrumb" class="page-breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="home"> Home</a></li>
                                        <li class="breadcrumb-item" aria-current="page">Post By Position</li>
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
                                                <span class="float-end"><i class="fa-solid fa-chevron-down"></i></span></a>
                                        </h4>
                                        <div id="collapseOne" class="collapse show" data-bs-parent="#accordionExample1">
                                            <c:forEach items="${categories}" var="category" varStatus="loop">
                                                <div style="${loop.index > 3 ? 'display:none;' : ''}" class="category-item">
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="category" value="${category.categoriesName}" data-filter="category">
                                                        <span class="checkmark"></span> ${category.categoriesName}
                                                    </label>
                                                </div>
                                            </c:forEach>

                                            <div id="collapseOnes" class="collapse" data-bs-parent="#accordionExample1">
                                                <c:forEach items="${categories}" var="category" begin="4">
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
                            



                            <%-- Hiển thị danh sách bài đăng --%>
                            <div class="row" id="listpostContainer">
                                <c:forEach items="${posts}" var="post">
                                    <div class="col-xl-4 col-md-6 post-item">
                                        <div class="freelance-widget widget-author position-relative">
                                            <div class="freelance-content">
                                                 <div style="padding-bottom: 30px; padding-top: 16px">
                                              <div  class="freelance-location freelance-time"><i class="feather-clock me-1"></i> ${list.datePost}</div>

                                                <c:set var="favo" value="false" />
                                                <c:forEach items="${postFavourites}" var="favPost">
                                                    <c:choose>
                                                        <c:when test="${post.postID == favPost.postID}">
                                                            <c:set var="favo" value="true" />
                                                        </c:when>                                                                
                                                    </c:choose>
                                                </c:forEach>
                                                <c:choose>
                                                    <c:when test="${favo}">
                                                        <a href="javascript:void(0);" onclick="removeFromFavorites(${post.postID})" id="favourite_${post.postID}" class="favourite color-active"><i class="feather-heart"></i></a>
                                                        </c:when>
                                                        <c:otherwise>
                                                        <a href="javascript:void(0);" onclick="addToFavorites(${post.postID})" id="favourite_${post.postID}" class="favourite"><i class="feather-heart"></i></a>
                                                        </c:otherwise>
                                                    </c:choose>
                                                        </div>

                                                <div class="author-heading">
                                                      <div class="text-center1" >                                                                                                              
                                                        <img style="width: 50%; height: 100%;" src="${post.image}" alt="author">                                                       
                                                    </div>
                                                    <div class="profile-name">
                                                        <div class="author-location titlepost"><a>${post.title} </a></div>
                                                    </div>
                                                    <div class="freelance-info">
                                                        <h3><a href="javascript:void(0);">${post.caID.categoriesName}</a></h3>
                                                        <div class="freelance-location"><img src="assets/img/icon/locations.svg" class="me-2" alt="img">${post.location}</div>
                                                    </div>
                                                    <div class="skills-container">
                                                        <c:forEach var="skill" items="${post.skill.split(',')}" varStatus="loop">
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
                                                            <h3 class="counter-value">${post.durationID.durationName}</h3>
                                                        </li>
                                                        <li>
                                                            <h5>Quantity</h5>
                                                            <h3 class="counter-value">${post.quantity}</h3>
                                                        </li>
                                                        <li>
                                                            <h5>Level</h5>
                                                            <h3 class="counter-value"><span class="jobtype">${post.jobTypeID.jobName}</span></h3>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>



                                            <div class="cart-hover">
                                                <a href="PostDetails?postID=${post.postID}" class="btn-cart1 classbtn" tabindex="-1">View Details</a>


                                                <c:if test="${postApply != null}">
                                                    <c:set var="applied" value="false" />
                                                    <c:forEach items="${postApply}" var="j">
                                                        <c:if test="${list.postID == j.postID}">
                                                            <c:choose>
                                                                <c:when test="${j.status == 'Pending' || j.status == 'Approve'}">
                                                                    <c:set var="applied" value="true" />
                                                                </c:when>
                                                                <c:when test="${j.status == 'Reject'}">
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
                                                            <p>Are you sure you want to apply for this job?</p>
                                                        </div>
                                                        <div class="modal-btn Suspend-action">
                                                            <div class="row">
                                                                <div class="col-6">
                                                                    <!-- Nút "Yes" để xử lý AJAX -->
                                                                    <a href="javascript:void(0);" class="btn btn-primary confirm-btn" data-postid="${list.postID}">Yes</a>
                                                                </div>
                                                                <div class="col-6">
                                                                    <!-- Nút "Cancel" để đóng modal -->
                                                                    <a data-bs-dismiss="modal" class="btn btn-primary confirm-btn">Cancel</a>
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


                            <c:if test="${endPage > 1}">
    <div class="row">
        <div class="col-md-12">
            <ul class="pagination list-pagination">
                <!-- Trang trước -->
                <c:if test="${trangHienTai > 1}">
                    <li class="page-item">
                        <a class="page-link" href="postbycategory?categoryID=${param.categoryID}&page=${trangHienTai - 1}">« Previous</a>
                    </li>
                </c:if>

                <!-- Các trang -->
                <c:forEach begin="1" end="${endPage}" var="i">
                    <li class="page-item ${trangHienTai == i ? 'active' : ''}">
                        <a class="page-link" href="postbycategory?categoryID=${param.categoryID}&page=${i}">${i}</a>
                    </li>
                </c:forEach>

                <!-- Trang tiếp theo -->
                <c:if test="${trangHienTai < endPage}">
                    <li class="page-item">
                        <a class="page-link" href="postbycategory?categoryID=${param.categoryID}&page=${trangHienTai + 1}">Next »</a>
                    </li>
                </c:if>
            </ul>
        </div>
    </div>
</c:if>










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





        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <!-- Bootstrap JS -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>


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
                                                                    let postSkills = Array.from(post.querySelectorAll('.freelance-tags .badge')).map(el => el.innerText.toLowerCase());

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
                                                            $(document).ready(function () {
                                                                // Xử lý sự kiện khi người dùng nhấn vào nút "Apply Now"
                                                                $('.apply-button').on('click', function (e) {
                                                                    e.preventDefault();
                                                                    var postID = $(this).data('postid');
                                                                    // Hiển thị modal tương ứng
                                                                    $('#applyModal_' + postID).modal('show');
                                                                });

                                                                // Xử lý sự kiện khi người dùng nhấn vào nút "Yes" trong modal
                                                                $('.confirm-btn').on('click', function (e) {
                                                                    e.preventDefault();
                                                                    var postID = $(this).data('postid');

                                                                    // Gửi yêu cầu AJAX để ứng tuyển công việc
                                                                    $.ajax({
                                                                        url: 'ApplyJob', // Đường dẫn xử lý ứng tuyển công việc
                                                                        type: 'GET',
                                                                        data: {
                                                                            postID: postID
                                                                        },
                                                                        success: function (response) {
                                                                            // Xử lý phản hồi thành công (nếu cần)
                                                                            // Đổi nút sang trạng thái "Applied"
                                                                            $('#applyButton_' + postID).text('Applied').removeAttr('href').removeClass('apply-button').addClass('apply').css('background-color', '#FF3300').css('color', 'white');
                                                                            // Đóng modal sau khi xử lý thành công
                                                                            $('#applyModal_' + postID).modal('hide');
                                                                        },
                                                                        error: function (xhr, status, error) {
                                                                            // Xử lý lỗi (nếu có)
                                                                            alert('Đã xảy ra lỗi: ' + error);
                                                                        }
                                                                    });
                                                                });
                                                            });
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
        <script src="assets/js/filterMyListPost.js" type="text/javascript"></script>
        <script src="assets/js/jquery-3.7.1.min.js" type="43b4fcd1b9965a5423af7613-text/javascript"></script>

        <script src="assets/js/bootstrap.bundle.min.js" type="43b4fcd1b9965a5423af7613-text/javascript"></script>

        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js" type="43b4fcd1b9965a5423af7613-text/javascript"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js" type="43b4fcd1b9965a5423af7613-text/javascript"></script>

        <script src="assets/plugins/select2/js/select2.min.js" type="43b4fcd1b9965a5423af7613-text/javascript"></script>

        <script src="assets/js/profile-settings.js" type="43b4fcd1b9965a5423af7613-text/javascript"></script>
        <script src="assets/js/script.js" type="43b4fcd1b9965a5423af7613-text/javascript"></script>
        <script src="assets/cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="43b4fcd1b9965a5423af7613-|49" defer></script></body>
    <script src="assets/js/bootstrap.bundle.min.js" type="39bd9d3b5f9a12b82c2bbcef-text/javascript"></script>
    <script src="assets/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="39bd9d3b5f9a12b82c2bbcef-|49" defer></script>
    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/project.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:34:26 GMT -->
</html>
