<%-- 
    Document   : CreatePost
    Created on : Jun 12, 2024, 1:35:02 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/post-project.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:37:17 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
        <title>KofeJob</title>

        <link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

        <link rel="stylesheet" href="assets/plugins/bootstrap-tagsinput/css/bootstrap-tagsinput.css">

        <link rel="stylesheet" href="assets/css/bootstrap-datetimepicker.min.css">

        <link rel="stylesheet" href="assets/plugins/select2/css/select2.min.css">

        <link rel="stylesheet" href="assets/plugins/summernote/dist/summernote-lite.css">

        <link rel="stylesheet" href="assets/css/style.css">

        <style>
            .error {
                color: red;
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
                                            <li><a href="CreatePost">Create a new Post</a></li>
                                            <li><a href="myListJobProject">My List Post</a></li>


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
                                            <li><a href="profile-settings">Settings</a></li>
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
                        <ul style="" class="nav header-navbar-rht">

                        </ul>

                    </nav>
                </div>
            </header>

            <div class="bread-crumb-bar">
                <div class="container">
                    <div style="padding: 10px;" class="row align-items-center ">
                        <div class="col-md-12 col-12 text-center">
                            <div class="breadcrumb-list">
                                <h3>My List Project</h3>
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
            <div style="padding:0px 0 30px" class="content">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="select-project mb-4">


                                <form id="jobForm" action="CreatePost" method="post" enctype="multipart/form-data">
                                    <div class="title-box widget-box">
                                        <div class="row">
                                            <div class="col-lg-6 col-md-6">
                                                <div class="mb-2">
                                                    <label class="focus-label" for="projectTitle">Project Title</label>
                                                    <input type="text" class="form-control" name="projectTitle" id="projectTitle">
                                                    <div class="error" id="error-projectTitle"></div>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-md-6">
                                                <div class="ms-3">
                                                    <label class="image-upbtn focus-label" for="imgInp">Upload Image</label>
                                                    <input class="form-control" type="file" id="imgInp" name="profileImage" accept="image/*">

                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-12">
                                                <div class="mb-3">
                                                    <label class="focus-label" for="jobsType">Level</label>
                                                    <select class="form-control select" name="jobsType" id="jobsType">
                                                        <option value="0">Select</option>
                                                        <c:forEach items="${alljobtype}" var="jobtype">
                                                            <option value="${jobtype.jobTypeID}">${jobtype.jobName}</option>
                                                        </c:forEach>
                                                    </select>
                                                    <div class="error" id="error-jobsType"></div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-12">
                                                <div class="mb-3">
                                                    <label class="focus-label" for="projectDuration">Work time</label>
                                                    <select class="form-control select" name="projectDuration" id="projectDuration">
                                                        <option value="0">Select</option>
                                                        <c:forEach items="${allDuration}" var="du">
                                                            <option value="${du.durationID}">${du.durationName}</option>
                                                        </c:forEach>
                                                    </select>
                                                    <div class="error" id="error-projectDuration"></div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-12">
                                                <div class="mb-3">
                                                    <label class="focus-label" for="expired">End date</label>
                                                    <input type="date" name="expired" id="expired" class="form-control">
                                                    <div class="error" id="error-expired"></div>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-md-12">
                                                <div class="mb-3">
                                                    <label class="focus-label" for="target">Quantity</label>
                                                    <input type="number" class="form-control" name="target" id="target">
                                                    <div class="error" id="error-target"></div>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-md-12">
                                                <div class="mb-3">
                                                    <label class="focus-label" for="location">Location</label>
                                                    <input type="text" class="form-control" name="location" id="location">
                                                    <div class="error" id="error-location"></div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-12">
                                                <div class="mb-3">
                                                    <label class="focus-label">Skills</label>
                                                    <div class="title-content p-0">
                                                        <div class="title-detail">
                                                            <c:forEach items="${ExpertiseSkill}" var="du">
                                                                <div class="expertise-group">
                                                                    <h3>
                                                                        <input type="checkbox" id="expertise-${du.expertiseName}" class="form-check-input expertise-checkbox">
                                                                        <label class="form-check-label" for="expertise-${du.expertiseName}">${du.expertiseName}</label>
                                                                    </h3>
                                                                    <div class="d-flex flex-wrap skill-checkboxes d-none">
                                                                        <c:forEach items="${du.getAllExpertiseSkillSet()}" var="i">
                                                                            <div class="form-check me-3 mb-2">
                                                                                <input class="form-check-input" type="checkbox" id="skill-${i.skillSetID.skill_set_ID}" name="skill" value="${i.skillSetID.skill_set_name}">
                                                                                <label class="form-check-label" for="skill-${i.skillSetID.skill_set_ID}">
                                                                                    ${i.skillSetID.skill_set_name}
                                                                                </label>
                                                                            </div>
                                                                        </c:forEach>
                                                                    </div>
                                                                </div>
                                                            </c:forEach>
                                                            <div class="error" id="error-skill"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-12">
                                                <div class="mb-3">
                                                    <label class="focus-label" for="budgetFrom">From (/hours)</label>
                                                    <input type="number" class="form-control" name="budgetFrom" id="budgetFrom" placeholder="15">
                                                    <div class="error" id="error-budgetFrom"></div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-12">
                                                <div class="mb-3">
                                                    <label class="focus-label" for="categoriesName">Position</label>
                                                    <select class="form-control select" name="categoriesName" id="categoriesName">
                                                        <option value="0">Select</option>
                                                        <c:forEach items="${allCate}" var="allcate">
                                                            <option value="${allcate.caID}">${allcate.categoriesName}</option>
                                                        </c:forEach>
                                                    </select>
                                                    <div class="error" id="error-categoriesName"></div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <div class="mb-3">
                                                    <label class="focus-label" for="description">Description of Projects</label>
                                                    <textarea class="form-control" name="description" id="description"></textarea>
                                                    <div class="error" id="error-description"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12 text-end">
                                                <div class="btn-item">
                                                    <button type="reset" class="btn reset-btn">Reset</button>
                                                    <button type="submit" class="btn next-btn">Post a Job</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>


                                <script>
                                    document.addEventListener('DOMContentLoaded', function () {
                                        var expertiseCheckboxes = document.querySelectorAll('.expertise-checkbox');

                                        expertiseCheckboxes.forEach(function (checkbox) {
                                            checkbox.addEventListener('change', function () {
                                                var skillCheckboxes = this.closest('.expertise-group').querySelector('.skill-checkboxes');
                                                if (this.checked) {
                                                    skillCheckboxes.classList.remove('d-none');
                                                    skillCheckboxes.classList.add('d-flex');
                                                } else {
                                                    skillCheckboxes.classList.remove('d-flex');
                                                    skillCheckboxes.classList.add('d-none');
                                                }
                                            });
                                        });
                                    });
                                </script>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Success Modal -->
            <div id="successModal" class="modal">
                <div class="modal-content">
                    <span class="close-btn">&times;</span>
                    <div class="modal-body">
                        <div class="success-icon">&#10004;</div>
                        <h2>Notification!</h2>
                        <p>Posted successfully</p>

                        <button id="viewPostsButton" class="btn">View post list</button>
                        <button id="okButton" class="btn">OK</button>
                    </div>
                </div>
            </div>


            <script>
                document.addEventListener('DOMContentLoaded', function () {
                    function validateProjectTitle() {
                        var projectTitle = document.getElementById('projectTitle').value;
                        if (projectTitle.trim() === '') {
                            document.getElementById('error-projectTitle').textContent = 'Project Title is required.';
                            return false;
                        } else {
                            document.getElementById('error-projectTitle').textContent = '';
                            return true;
                        }
                    }

                    function validateJobsType() {
                        var jobsType = document.getElementById('jobsType').value;
                        if (jobsType === '0') {
                            document.getElementById('error-jobsType').textContent = 'Please select a Job Type.';
                            return false;
                        } else {
                            document.getElementById('error-jobsType').textContent = '';
                            return true;
                        }
                    }

                    function validateProjectDuration() {
                        var projectDuration = document.getElementById('projectDuration').value;
                        if (projectDuration === '0') {
                            document.getElementById('error-projectDuration').textContent = 'Please select a Project Duration.';
                            return false;
                        } else {
                            document.getElementById('error-projectDuration').textContent = '';
                            return true;
                        }
                    }

                    function validateTarget() {
                        var target = document.getElementById('target').value;
                        if (target.trim() === '') {
                            document.getElementById('error-target').textContent = 'Target is required.';
                            return false;
                        } else if (isNaN(target)) {
                            document.getElementById('error-target').textContent = 'Target must be a number.';
                            return false;
                        } else if (target >= 1000000000) {
                            document.getElementById('error-target').textContent = 'Target must be less than 1,000,000,000.';
                            return false;
                        } else {
                            document.getElementById('error-target').textContent = '';
                            return true;
                        }
                    }

                    function validateLocation() {
                        var location = document.getElementById('location').value;
                        if (location.trim() === '') {
                            document.getElementById('error-location').textContent = 'Location is required.';
                            return false;
                        } else {
                            document.getElementById('error-location').textContent = '';
                            return true;
                        }
                    }

                    function validateSkills() {
                        var skills = document.querySelectorAll('input[name="skill"]:checked');
                        if (skills.length === 0) {
                            document.getElementById('error-skill').textContent = 'Please select a Skill.';
                            return false;
                        } else if (skills.length < 3 || skills.length > 5) {
                            document.getElementById('error-skill').textContent = 'Please select between 3 and 5 skills.';
                            return false;
                        } else {
                            document.getElementById('error-skill').textContent = '';
                            return true;
                        }
                    }

                    function validateBudgetFrom() {
                        var budgetFrom = document.getElementById('budgetFrom').value;
                        if (budgetFrom.trim() === '' || isNaN(budgetFrom) || budgetFrom <= 0) {
                            document.getElementById('error-budgetFrom').textContent = 'Please enter a valid budget amount.';
                            return false;
                        } else {
                            document.getElementById('error-budgetFrom').textContent = '';
                            return true;
                        }
                    }

                    function validateCategoriesName() {
                        var categoriesName = document.getElementById('categoriesName').value;
                        if (categoriesName === '0') {
                            document.getElementById('error-categoriesName').textContent = 'Please select a Category.';
                            return false;
                        } else {
                            document.getElementById('error-categoriesName').textContent = '';
                            return true;
                        }
                    }

                    function validateDescription() {
                        var description = document.getElementById('description').value;
                        if (description.trim() === '') {
                            document.getElementById('error-description').textContent = 'Description is required.';
                            return false;
                        } else {
                            document.getElementById('error-description').textContent = '';
                            return true;
                        }
                    }

                    function validateExpired() {
                        var expired = document.getElementById('expired').value;
                        var today = new Date().toISOString().split('T')[0];
                        if (expired.trim() === '') {
                            document.getElementById('error-expired').textContent = 'Expired date is required.';
                            return false;
                        } else if (expired < today) {
                            document.getElementById('error-expired').textContent = 'Expired date cannot be before today.';
                            return false;
                        } else {
                            document.getElementById('error-expired').textContent = '';
                            return true;
                        }
                    }

                    document.getElementById('projectTitle').addEventListener('input', validateProjectTitle);
                    document.getElementById('jobsType').addEventListener('change', validateJobsType);
                    document.getElementById('projectDuration').addEventListener('change', validateProjectDuration);
                    document.getElementById('target').addEventListener('input', validateTarget);
                    document.getElementById('location').addEventListener('input', validateLocation);
                    document.querySelectorAll('input[name="skill"]').forEach(function (checkbox) {
                        checkbox.addEventListener('change', validateSkills);
                    });
                    document.getElementById('budgetFrom').addEventListener('input', validateBudgetFrom);
                    document.getElementById('categoriesName').addEventListener('change', validateCategoriesName);
                    document.getElementById('description').addEventListener('input', validateDescription);
                    document.getElementById('expired').addEventListener('change', validateExpired);

                    document.getElementById('jobForm').addEventListener('submit', function (event) {
                        event.preventDefault(); // Prevent default form submission to handle via JavaScript

                        var isValid = true;
                        isValid &= validateProjectTitle();
                        isValid &= validateJobsType();
                        isValid &= validateProjectDuration();
                        isValid &= validateTarget();
                        isValid &= validateLocation();
                        isValid &= validateSkills();
                        isValid &= validateBudgetFrom();
                        isValid &= validateCategoriesName();
                        isValid &= validateDescription();
                        isValid &= validateExpired();

                        if (isValid) {
                            var formData = new FormData(this);

                            // Perform AJAX request to submit form data
                            fetch(this.action, {
                                method: 'POST',
                                body: formData
                            })
                                    .then(response => {
                                        if (!response.ok) {
                                            throw new Error('Network response was not ok');
                                        }
                                        return response.text();
                                    })
                                    .then(text => {

                                        try {
                                            return JSON.parse(text);
                                        } catch (error) {

                                            throw new Error('Invalid JSON response: ' + text);
                                        }
                                    })
                                    .then(data => {
                                        if (data.success) {
                                            showSuccessNotification('Job created successfully!', '/Job_IT_For_Freelancer_G5/manageJobsPosts');
                                            this.reset();
                                        } else {

                                            throw new Error(data.message || 'An error occurred while creating the job.');
                                        }
                                    })
                                    .catch(error => {
                                        console.error('Error:', error);
                                        Swal.fire({
                                            icon: 'error',
                                            title: 'Error',
                                            text: error.message || 'An error occurred while creating the job.',
                                            confirmButtonText: 'OK'
                                        });
                                    });
                        }
                    });
                });

                function showSuccessNotification(message, redirectUrl) {
                    Swal.fire({
                        icon: 'success',
                        title: 'Notification',
                        text: message,
                        confirmButtonText: 'OK'
                    }).then((result) => {
                        if (result.isConfirmed) {
                            window.location.href = redirectUrl;
                        }
                    });
                }

            </script>
            <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

            <jsp:include page="footter.jsp" />

        </div>




        <script src="assets/js/jquery-3.7.1.min.js" type="6fd12bacb56ccade8d32a6ae-text/javascript"></script>

        <script src="assets/js/bootstrap.bundle.min.js" type="6fd12bacb56ccade8d32a6ae-text/javascript"></script>

        <script src="assets/plugins/select2/js/select2.min.js" type="6fd12bacb56ccade8d32a6ae-text/javascript"></script>

        <script src="assets/js/profile-settings.js" type="6fd12bacb56ccade8d32a6ae-text/javascript"></script>

        <script src="assets/plugins/bootstrap-tagsinput/js/bootstrap-tagsinput.js" type="6fd12bacb56ccade8d32a6ae-text/javascript"></script>

        <script src="assets/js/moment.min.js" type="6fd12bacb56ccade8d32a6ae-text/javascript"></script>
        <script src="assets/js/bootstrap-datetimepicker.min.js" type="6fd12bacb56ccade8d32a6ae-text/javascript"></script>

        <script src="assets/plugins/summernote/dist/summernote-lite.min.js" type="6fd12bacb56ccade8d32a6ae-text/javascript"></script>

        <script src="assets/js/script.js" type="6fd12bacb56ccade8d32a6ae-text/javascript"></script>
        <script src="assets/cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="6fd12bacb56ccade8d32a6ae-|49" defer></script></body>

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/post-project.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:37:21 GMT -->
</html>
