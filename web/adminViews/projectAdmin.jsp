<%-- 
    Document   : recruiterAdmin
    Created on : May 25, 2024, 8:42:54 PM
    Author     : kudol
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/admin/providers.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:41:24 GMT -->
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Kofejob - Bootstrap Admin HTML Template</title>

        <link rel="shortcut icon" href="adminAssets/img/favicon.png">

        <link rel="stylesheet" href="adminAssets/css/bootstrap.min.css">

        <link rel="stylesheet" href="adminAssets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="adminAssets/plugins/fontawesome/css/all.min.css">

        <link rel="stylesheet" href="adminAssets/css/feather.css">

        <link rel="stylesheet" href="adminAssets/plugins/select2/css/select2.min.css">

        <link rel="stylesheet" href="adminAssets/css/bootstrap-datetimepicker.min.css">

        <link rel="stylesheet" href="adminAssets/plugins/datatables/datatables.min.css">

        <link rel="stylesheet" href="adminAssets/css/recruiter.css">
        <link rel="stylesheet" href="adminAssets/css/style.css">
        <link rel="stylesheet" href="adminAssets/css/projectDetails.css">
        <style>

            .filter-section {
                display: none;
                padding: 20px;
                background-color: #f9f9f9;
                border: 1px solid #ddd;
                border-radius: 5px;
                margin-bottom: 20px;
            }

            .filter-section .form-group {
                margin-bottom: 20px;
            }

            .filter-section label {
                font-weight: bold;
            }

            .filter-section .input-group {
                width: 100%;
            }

            .filter-section .input-group input {
                width: calc(50% - 25px);
                border-radius: 0;
            }

            .filter-section .input-group .input-group-text {
                border-radius: 0;
            }

            @media (max-width: 767px) {
                .filter-section .input-group input {
                    width: 100%;
                    margin-top: 10px;
                }
            }


            #statusFilter {
                cursor: pointer;
                appearance: none;
                -webkit-appearance: none;
                -moz-appearance: none;
                background-image: url('data:image/svg+xml;utf8,<svg width="12" height="8" viewBox="0 0 12 8" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M1.41 0.590088L6 5.17009L10.59 0.590088L12 2.00009L6 8.00009L0 2.00009L1.41 0.590088Z" fill="%23333333"/></svg>');
                background-repeat: no-repeat;
                background-position: right 12px center;
                padding-right: 32px;
            }
            /* General styles */
            .title{
                max-width: 100px;
                white-space: nowrap;
                overflow: hidden;
                text-overflow: ellipsis;
            }
        </style>

    </head>
    <body>

        <div class="main-wrapper">

            <%@ include file="headerAdmin.jsp" %>
            <%@ include file="sidebar.jsp" %>


            <div class="page-wrapper">
                <div class="content container-fluid">

                    <div class="page-header user-active">
                        <div class="row align-items-center">
                            <div class="col">
                                <h3 class="page-title">All Projects</h3>
                                <p>Total <span>${totalProject}</span> Projects</p>
                            </div>
                            <div class="col-auto">
                                <a class="btn filter-btn" href="javascript:void(0);" id="filter_search">
                                    <i class="fas fa-filter"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-center table-hover mb-0 datatable">
                                            <thead>
                                                <tr>
                                                    <th>No.</th>
                                                    <th>Logo</th>
                                                    <th>Title</th>
                                                    <th>Company name</th>                                                                                                                                                
                                                    <th>Date post</th>
                                                    <th>Status</th>                                                    
                                                    <th class="text-end">Actions</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${listProjects}" var="project" varStatus="loop">
                                                    <tr>
                                                        <td>${loop.index +1}</td>
                                                        <td>
                                                            <h2 class="table-avatar">
                                                                <a href="javascript:void(0);"><img class="me-2" src="${project.getPostBasic().getImage()}" alt="User Image"></a>
                                                            </h2>
                                                        </td>
                                                        <td>
                                                            <h2 class="table-avatar title">
                                                                <a href="javascript:void(0);">${project.getPostBasic().getTitle()}</a>
                                                            </h2>
                                                        </td>
                                                        <td>
                                                            <h2 class="companyName">                                                                
                                                                ${project.getPostBasic().getRecruiterID().getCompanyname()}                                                              
                                                            </h2>
                                                        </td>                                                        
                                                        <td>
                                                            <h2 class="datePost">
                                                                ${project.getPostBasic().getDatePost()}
                                                            </h2>
                                                        </td>
                                                        <td class="test1">

                                                            <c:if test='${project.getListReport().size() >= 3}'>
                                                                <a href="javascript:void(0);" style="color: black" class="status">Pendding</a>
                                                            </c:if>
                                                            <c:if test='${project.getPostBasic().getChecking() == 1}'>
                                                                <a href="javascript:void(0);" class="user-active-btn status">Approve</a>
                                                            </c:if>
                                                            <c:if test='${project.getPostBasic().getChecking() == 2}'>
                                                                <a href="javascript:void(0);" class="user-inactive-btn status">Suspend</a>
                                                            </c:if>
                                                        </td>                                                   
                                                        <td class="text-end three-dots">
                                                            <input type="hidden" class="post-id" id="${project.getPostBasic().getPostID()}">
                                                            <a href="javascript:void(0);" class="dropdown-toggle nav-link three-dot" data-bs-toggle="dropdown"><i class="fas fa-ellipsis-v"></i></a>
                                                            <div class="dropdown-menu user-menu-list">
                                                                <a class="dropdown-item" href="javascript:void(0);" data-bs-toggle="modal" data-bs-target="#view-details${project.getPostBasic().getPostID()}"><img class="me-2" src="adminAssets/img/icon/icon-01.svg" alt="Img"> View Details</a>
                                                                    <c:if test='${project.getPostBasic().getChecking() == 0}'>
                                                                    <a class="dropdown-item typeChange" data-bs-toggle="modal" data-bs-target="#handle"><img class="me-2" src="adminAssets/img/icon/icon-04.svg" alt="Img"> Moderation Project</a>
                                                                    </c:if>
                                                                    <c:if test='${project.getPostBasic().getChecking() == 1}'>
                                                                    <a class="dropdown-item typeChange" data-bs-toggle="modal" data-bs-target="#Suspend_Project"><img class="me-2" src="adminAssets/img/icon/icon-04.svg" alt="Img"> Suspend Project</a>
                                                                    </c:if>
                                                                    <c:if test='${project.getPostBasic().getChecking() == 2}'>
                                                                    <a class="dropdown-item typeChange" data-bs-toggle="modal" data-bs-target="#Approve_Project"><img class="me-2" src="adminAssets/img/icon/icon-04.svg" alt="Img"> Activate Project</a>
                                                                    </c:if>
                                                            </div>
                                                        </td>
                                                <div class="modal fade custom-modal " id="view-details${project.getPostBasic().getPostID()}">
                                                    <div class="modal-dialog modal-dialog-centered modal-lg-4">
                                                        <div class="modal-content">
                                                            <div class="modal-header flex-wrap">
                                                                <h4 class="modal-title">Project Details</h4>
                                                                <button type="button" class="close" data-bs-dismiss="modal"><span>&times;</span></button>
                                                            </div>
                                                            <div class="modal-body">                                                                
                                                                <div class="freelance-content">
                                                                    <div class="freelance-top-content d-flex">
                                                                    </div>
                                                                    <div class="author-heading">
                                                                        <div class="text-center2" > 
                                                                            <a>
                                                                                <img  style="width: 100%; height: 100%;" src="${project.getPostBasic().image}" alt="author">                                                       
                                                                            </a>
                                                                        </div>
                                                                        <div class="profile-name">
                                                                         <div class="author-location" style="text-align: center">${p.title}</div>
                                                                        </div>
                                                                        <div class="freelance-info">
                                                                            <div>
                                                                                <div class="class1" style="display: inline-block;">Company:</div>
                                                                                <div class="class2" style="display: inline-block; margin-left: 5px;">
                                                                                    ${project.getPostBasic().recruiterID.companyname}
                                                                                </div>
                                                                            </div>
                                                                            <div>
                                                                                <div class="class1" style="display: inline-block;">Position:</div>
                                                                                <div class="class2" style="display: inline-block; margin-left: 5px;">
                                                                                  ${project.getPostBasic().caID.categoriesName}
                                                                                </div>
                                                                            </div>
                                                                            <div>
                                                                                <div class="class1" style="display: inline-block;">Date:</div>
                                                                                <div class="class2" style="display: inline-block; margin-left: 5px;">
                                                                                 ${project.getPostBasic().datePost}
                                                                                </div>
                                                                            </div>
                                                                            <div>
                                                                                <div class="class1" style="display: inline-block;">Location:</div>
                                                                                <div class="class2" style="display: inline-block; margin-left: 5px;">
                                                                                    ${project.getPostBasic().location}
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div  class="freelance-tags skill-list" style="margin: 0;padding: 0; margin-top: 10px;margin-right: 20px">Skill: 
                                                                            <c:forEach items="${fn:split(project.getPostBasic().skill, ',')}" var="skill">
                                                                                <span  class="skill-item skill-item badge badge-primary">${skill}</span>
                                                                            </c:forEach>


                                                                        </div>
                                                                    </div>
                                                                    <div class="freelance-info">
                                                                        <div>
                                                                            <div class="class1" style="display: inline-block;">Duration:</div>
                                                                            <div class="class2" style="display: inline-block; margin-left: 5px;">
                                                                              ${project.getPostBasic().durationID.durationName}
                                                                            </div>
                                                                        </div>
                                                                        <div>
                                                                            <div class="class1" style="display: inline-block;">Quantity:</div>
                                                                            <div class="class2" style="display: inline-block; margin-left: 5px;">
                                                                                ${project.getPostBasic().quantity}
                                                                            </div>
                                                                        </div>
                                                                        <div>
                                                                            <div class="class1" style="display: inline-block;">Jop Type:</div>
                                                                            <div class="class2" style="display: inline-block; margin-left: 5px;">
                                                                                ${project.getPostBasic().jobTypeID.jobName}
                                                                            </div>
                                                                        </div>
                                                                        <div>
                                                                            <div class="class1" style="display: inline-block;">Email:</div>
                                                                            <div class="class2" style="display: inline-block; margin-left: 5px;">
                                                                                ${project.getPostBasic().recruiterID.email}
                                                                            </div>
                                                                        </div>
                                                                        <div>
                                                                            <div class="class1">Description: </div>
                                                                            ${project.getPostBasic().description}
                                                                        </div>                                                                      
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
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
        <div class="modal custom-modal fade" id="Suspend_Project" role="dialog">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="form-header">
                            <input type="hidden" class="post-id1" id="${project.getPostBasic().getPostID()}">
                            <h3>Status</h3>
                            <p>Are you sure want to Suspend Project?</p>
                        </div>
                        <div class="modal-btn Suspend-action" >
                            <div class="row">
                                <div class="col-6">
                                    <a href="javascript:void(0);" class="project-suspend-link btn btn-primary continue-btn" >Suspend Project</a>
                                </div>
                                <div class="col-6">
                                    <a href="javascript:void(0);" data-bs-dismiss="modal" class="btn btn-primary cancel-btn">Cancel</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal custom-modal fade" id="handle" role="dialog">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="form-header">
                            <input type="hidden" class="post-id1" id="${project.getPostBasic().getPostID()}">
                            <h3>Status</h3>
                            <p>Choose option?</p>
                        </div>
                        <div class="modal-btn Suspend-action" >
                            <div class="row">
                                <div class="col-6">
                                    <a href="javascript:void(0);" class="project-suspend-link btn btn-primary continue-btn" >Suspend Project</a>
                                </div>
                                <div class="col-6">
                                    <a href="javascript:void(0);" class="project-activate-link btn btn-primary continue-btn" >Approve Project</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal custom-modal fade" id="Approve_Project" role="dialog">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="form-header">
                            <input type="hidden" class="post-id1" id="${project.getPostBasic().getPostID()}">
                            <h3>Status</h3>
                            <p>Are you sure want to Approve Project?</p>
                        </div>
                        <div class="modal-btn Activate-action">
                            <div class="row">
                                <div class="col-6">
                                    <a href="javascript:void(0);" class="project-activate-link btn btn-primary continue-btn" >Approve project</a>
                                </div>
                                <div class="col-6">
                                    <a href="javascript:void(0);" data-bs-dismiss="modal" class="btn btn-primary cancel-btn">Cancel</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
            $(document).ready(function () {
                $('#filter_search').click(function () {
                    $('.filter-section').toggle();
                });
            });
        </script>
        <script>
            $(document).ready(function () {
                $('.typeChange').on('click', function (e) {
                    e.preventDefault(); // Ngăn chặn hành vi mặc định của liên kết

                    var postId = $(this).closest('tr').find('.post-id').attr('id');
                    var action = $(this).text().trim().toLowerCase();

                    if (action === 'moderation project') {
                        // Hiển thị popup cho phép suspend hoặc approve project
                        $('#handle').find('.post-id1').val(postId);
                        $('#handle').modal('show');
                    } else if (action === 'suspend project') {
                        // Hiển thị popup xác nhận suspend project
                        $('#Suspend_Project').find('.post-id1').val(postId);
                        $('#Suspend_Project').modal('show');
                    } else if (action === 'activate project') {
                        // Hiển thị popup xác nhận activate project
                        $('#Approve_Project').find('.post-id1').val(postId);
                        $('#Approve_Project').modal('show');
                    }
                });

                $('.project-suspend-link').on('click', function () {
                    var postId = $(this).closest('.modal-body').find('.post-id1').val();
                    suspendProject(postId);
                });

                $('.project-activate-link').on('click', function () {
                    var postId = $(this).closest('.modal-body').find('.post-id1').val();
                    approveProject(postId);
                });
            });

            function suspendProject(postId) {
                $.ajax({
                    url: '/Job_IT_For_Freelancer_G5/moderationProjectAdmin',
                    type: 'POST',
                    data: {postId: postId,
                        type: "suspend"},
                    success: function (response) {
                        var statusCell = $('.post-id#' + postId).closest('tr').find('.status');
                        statusCell.html('<a href="javascript:void(0);" class="user-inactive-btn status">Suspend</a>');

                        var threeDotCell = $('.post-id#' + postId).closest('tr').find('.three-dots');
                        threeDotCell.find('.typeChange').html('<a class="dropdown-item typeChange" data-bs-toggle="modal" data-bs-target="#Approve_Project"><img class="me-2" src="adminAssets/img/icon/icon-04.svg" alt="Img"> Activate Project</a>');

                        $('#Suspend_Project').modal('hide');
                        $('#handle').modal('hide');
                        showSuccessNotification('Suspend project successfully!');
                    },
                    error: function (xhr, status, error) {
                        console.error(error);
                    }
                });
            }

            function approveProject(postId) {
                $.ajax({
                    url: '/Job_IT_For_Freelancer_G5/moderationProjectAdmin',
                    type: 'POST',
                    data: {postId: postId,
                        type: "approve"},
                    success: function (response) {
                        var statusCell = $('.post-id#' + postId).closest('tr').find('.status');
                        statusCell.html('<a href="javascript:void(0);" class="user-active-btn status">Approved</a>');

                        var threeDotCell = $('.post-id#' + postId).closest('tr').find('.three-dots');
                        threeDotCell.find('.typeChange').html('<a class="dropdown-item typeChange" data-bs-toggle="modal" data-bs-target="#Suspend_Project"><img class="me-2" src="adminAssets/img/icon/icon-04.svg" alt="Img"> Suspend Project</a>');

                        $('#Approve_Project').modal('hide');
                        $('#handle').modal('hide');
                        showSuccessNotification('Approve project successfully!');
                    },
                    error: function (xhr, status, error) {
                        console.error(error);
                    }
                });
            }
        </script>




        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="adminAssets/js/notification.js"></script>
        <script src="adminAssets/js/jquery-3.7.1.min.js" type="89331437dcc86709a93430b9-text/javascript"></script>

        <script src="adminAssets/js/bootstrap.bundle.min.js" type="89331437dcc86709a93430b9-text/javascript"></script>

        <script src="adminAssets/js/feather.min.js" type="89331437dcc86709a93430b9-text/javascript"></script>

        <script src="adminAssets/plugins/slimscroll/jquery.slimscroll.min.js" type="89331437dcc86709a93430b9-text/javascript"></script>

        <script src="adminAssets/plugins/select2/js/select2.min.js" type="89331437dcc86709a93430b9-text/javascript"></script>

        <script src="adminAssets/plugins/moment/moment.min.js" type="89331437dcc86709a93430b9-text/javascript"></script>
        <script src="adminAssets/js/bootstrap-datetimepicker.min.js" type="89331437dcc86709a93430b9-text/javascript"></script>

        <script src="adminAssets/plugins/datatables/jquery.dataTables.min.js" type="89331437dcc86709a93430b9-text/javascript"></script>
        <script src="adminAssets/plugins/datatables/datatables.min.js" type="89331437dcc86709a93430b9-text/javascript"></script>

        <script src="adminAssets/js/script.js" type="89331437dcc86709a93430b9-text/javascript"></script>
        <script src="assets/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="89331437dcc86709a93430b9-|49" defer></script></body>

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/admin/providers.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:41:24 GMT -->
</html>