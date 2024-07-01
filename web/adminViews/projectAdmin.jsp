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


            /* General styles */
            .title{
                max-width: 100px;
                white-space: nowrap;
                overflow: hidden;
                text-overflow: ellipsis;
            }


            .flag-icon {
                display: inline-block;
                width: 16px;
                height: 16px;
                margin-left: 5px;
                vertical-align: middle;
            }
            .status-container {
                display: flex;
                align-items: center;
            }
            #reportListBody {
                max-height: 400px;
                overflow-y: auto;
                padding: 15px;
            }
            .report-item {
                background-color: #f8f9fa;
                border: 1px solid #dee2e6;
                border-radius: 5px;
                padding: 15px;
                margin-bottom: 15px;
                box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            }
            .report-item p {
                margin-bottom: 5px;
            }
            .report-item strong {
                color: #495057;
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
                            <div id="filter-section" style="display: none;">
                                <div class="card mt-3">
                                    <div class="card-body">
                                        <form id="filterForm">
                                            <div class="row">
                                                <div class="col-md-3 mb-3">
                                                    <label for="titleFilter" class="form-label">Title</label>
                                                    <input type="text" class="form-control" id="titleFilter">
                                                </div>
                                                <div class="col-md-3 mb-3">
                                                    <label for="companyFilter" class="form-label">Company Name</label>
                                                    <input type="text" class="form-control" id="companyFilter">
                                                </div>
                                                <div class="col-md-3 mb-3">
                                                    <label for="dateFilter" class="form-label">Date Post</label>
                                                    <input type="date" class="form-control" id="dateFilter">
                                                </div>
                                                <div class="col-md-3 mb-3">
                                                    <label for="statusFilter" class="form-label">Status</label>
                                                    <select class="form-select" id="statusFilter">
                                                        <option value="">All</option>
                                                        <option value="Pendding">Pending</option>
                                                        <option value="Approved">Approved</option>
                                                        <option value="Suspend">Suspend</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-12">                                                   
                                                    <button type="button" class="btn btn-secondary" id="resetFilter">Reset</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
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
                                                    <th>Reports</th>                                                    
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
                                                            <c:if test='${project.getListReport().size() >= 5}'>
                                                                <a href="javascript:void(0);" style="color: black" class="status">Pendding</a>
                                                            </c:if>
                                                            <c:if test='${project.getListReport().size() < 5}'>
                                                                <c:if test='${project.getPostBasic().getChecking() == 1}'>
                                                                    <a href="javascript:void(0);" class="user-active-btn status">Approved</a>
                                                                </c:if>
                                                                <c:if test='${project.getPostBasic().getChecking() == 2}'>
                                                                    <a href="javascript:void(0);" class="user-inactive-btn status">Suspend</a>
                                                                </c:if>
                                                            </c:if>

                                                        </td>        
                                                        <td class="totalReport">
                                                            <h2 class="table-avatar title">
                                                                <a href="javascript:void(0);" data-bs-toggle="modal" data-bs-target="#reportListModal${project.getPostBasic().getPostID()}">
                                                                    <div style="align-self:  center">
                                                                        <h2 class="total">${project.getListReport().size()}</h2>
                                                                        <svg class="flag-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="16" height="16">
                                                                        <path d="M4 15s1-1 4-1 5 2 8 2 4-1 4-1V3s-1 1-4 1-5-2-8-2-4 1-4 1z" fill="#FF5B37" stroke="#FF8C00" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                                                        <line x1="4" y1="22" x2="4" y2="15" stroke="#FF8C00" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                                                        </svg>
                                                                    </div>  
                                                                </a>
                                                            </h2>
                                                        </td>
                                                        <td class="text-end three-dots">
                                                            <input type="hidden" class="post-id" id="${project.getPostBasic().getPostID()}">
                                                            <a href="javascript:void(0);" class="dropdown-toggle nav-link three-dot" data-bs-toggle="dropdown"><i class="fas fa-ellipsis-v"></i></a>
                                                            <div class="dropdown-menu user-menu-list">
                                                                <a class="dropdown-item" href="javascript:void(0);" data-bs-toggle="modal" data-bs-target="#view-details${project.getPostBasic().getPostID()}"><img class="me-2" src="adminAssets/img/icon/icon-01.svg" alt="Img"> View Details</a>
                                                                    <c:if test='${project.getListReport().size() >= 3}'>
                                                                    <a class="dropdown-item typeChange" data-bs-toggle="modal" data-bs-target="#handle"><img class="me-2" src="adminAssets/img/icon/icon-04.svg" alt="Img"> Moderation Project</a>
                                                                    </c:if>
                                                                    <c:if test='${project.getListReport().size() < 3}'>
                                                                        <c:if test='${project.getPostBasic().getChecking() == 1}'>
                                                                        <a class="dropdown-item typeChange" data-bs-toggle="modal" data-bs-target="#Suspend_Project"><img class="me-2" src="adminAssets/img/icon/icon-04.svg" alt="Img"> Suspend Project</a>
                                                                        </c:if>
                                                                        <c:if test='${project.getPostBasic().getChecking() == 2}'>
                                                                        <a class="dropdown-item typeChange" data-bs-toggle="modal" data-bs-target="#Approve_Project"><img class="me-2" src="adminAssets/img/icon/icon-04.svg" alt="Img"> Activate Project</a>
                                                                        </c:if>
                                                                    </c:if>
                                                            </div>
                                                        </td>

                                                <div class="modal fade custom-modal" id="reportListModal${project.getPostBasic().getPostID()}" tabindex="-1" aria-labelledby="reportListModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog modal-lg">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="reportListModalLabel">Report List</h5>
                                                                <button type="button" class="close" data-bs-dismiss="modal"><span>&times;</span></button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <div id="reportListBody">
                                                                    <div class="report-item">
                                                                        <p><strong>Name:</strong> Nhat Tan</p>
                                                                        <p><strong>Date Report:</strong> 2024/03/12</p>
                                                                        <p><strong>Message report:</strong> This project seems to be a scam. The client is asking for free work.</p>
                                                                    </div>
                                                                    <div class="report-item">
                                                                        <p><strong>Name:</strong> Minh Tuan</p>
                                                                        <p><strong>Date Report:</strong> 2024/03/15</p>
                                                                        <p><strong>Message report:</strong> The project description contains offensive language and inappropriate content.</p>
                                                                    </div>
                                                                    <div class="report-item">
                                                                        <p><strong>Name:</strong> Thanh Huong</p>
                                                                        <p><strong>Date Report:</strong> 2024/03/18</p>
                                                                        <p><strong>Message report:</strong> This job posting violates copyright. The client is asking to copy an existing website.</p>
                                                                    </div>
                                                                    <div class="report-item">
                                                                        <p><strong>Name:</strong> Duc Anh</p>
                                                                        <p><strong>Date Report:</strong> 2024/03/20</p>
                                                                        <p><strong>Message report:</strong> The budget for this project is unreasonably low for the amount of work required.</p>
                                                                    </div>
                                                                    <div class="report-item">
                                                                        <p><strong>Name:</strong> Lan Anh</p>
                                                                        <p><strong>Date Report:</strong> 2024/03/22</p>
                                                                        <p><strong>Message report:</strong> This appears to be a duplicate posting. The same project was posted last week.</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="modal fade custom-modal" id="view-details${project.getPostBasic().getPostID()}" tabindex="-1" aria-labelledby="projectDetailsModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog modal-dialog-centered modal-lg">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class=" modal-title" id="projectDetailsModalLabel">Project Details</h5>
                                                                <button type="button" class="close" data-bs-dismiss="modal"><span>&times;</span></button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <div class="container-fluid" >
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <img src="${project.getPostBasic().image}" style="width: 100%; height: 100%;"  alt="Project Image" class="project-image">
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <h5 class="project-title text-center">${p.title}</h5>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-md-6">
                                                                            <p class="info-item"><strong>Company:</strong> ${project.getPostBasic().recruiterID.companyname}</p>
                                                                            <p class="info-item"><strong>Position:</strong> ${project.getPostBasic().caID.categoriesName}</p>
                                                                            <p class="info-item"><strong>Date:</strong> ${project.getPostBasic().datePost}</p>
                                                                            <p class="info-item"><strong>Location:</strong> ${project.getPostBasic().location}</p>
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <p class="info-item"><strong>Duration:</strong> ${project.getPostBasic().durationID.durationName}</p>
                                                                            <p class="info-item"><strong>Quantity:</strong> ${project.getPostBasic().quantity}</p>
                                                                            <p class="info-item"><strong>Job Type:</strong> ${project.getPostBasic().jobTypeID.jobName}</p>
                                                                            <p class="info-item"><strong>Email:</strong> ${project.getPostBasic().recruiterID.email}</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <p class="info-item"><strong>Skills:</strong></p>
                                                                            <div class="d-flex flex-wrap">
                                                                                <c:forEach items="${fn:split(project.getPostBasic().skill, ',')}" var="skill">
                                                                                    <span class="badge bg-primary skill-item">${skill}</span>
                                                                                </c:forEach>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12 description">
                                                                            <p><strong>Description:</strong></p>
                                                                            <p>${project.getPostBasic().description}</p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
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
                                    <a href="javascript:void(0);" class="project-activate-link btn btn-primary continue-btn" >Approved Project</a>
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
                            <p>Are you sure want to Approved Project?</p>
                        </div>
                        <div class="modal-btn Activate-action">
                            <div class="row">
                                <div class="col-6">
                                    <a href="javascript:void(0);" class="project-activate-link btn btn-primary continue-btn" >Approved project</a>
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.0/js/bootstrap.bundle.min.js"></script>
        <script>
            $(document).ready(function () {
                $('#filter_search').click(function () {
                    $('#filter-section').toggle();
                });
            });
        </script>
        <script>
            document.addEventListener('DOMContentLoaded', function () {
                const filterBtn = document.getElementById('filter_search');
                const filterSection = document.getElementById('filter-section');
                const applyFilterBtn = document.getElementById('applyFilter');
                const resetFilterBtn = document.getElementById('resetFilter');
                const table = document.querySelector('.datatable');

                filterBtn.addEventListener('click', function () {
                    filterSection.style.display = filterSection.style.display === 'none' ? 'block' : 'none';
                });

                function filterTable() {
                    const titleFilter = document.getElementById('titleFilter').value.toLowerCase();
                    const companyFilter = document.getElementById('companyFilter').value.toLowerCase();
                    const dateFilter = document.getElementById('dateFilter').value;
                    const statusFilter = document.getElementById('statusFilter').value;

                    const rows = table.querySelectorAll('tbody tr');

                    rows.forEach(row => {
                        const title = row.querySelector('.title').textContent.toLowerCase();
                        const company = row.querySelector('.companyName').textContent.toLowerCase();
                        const date = row.querySelector('.datePost').textContent;
                        const status = row.querySelector('.status').textContent;

                        const titleMatch = title.includes(titleFilter);
                        const companyMatch = company.includes(companyFilter);
                        const dateMatch = dateFilter === '' || date === dateFilter;
                        const statusMatch = statusFilter === '' || status === statusFilter;

                        if (titleMatch && companyMatch && dateMatch && statusMatch) {
                            row.style.display = '';
                        } else {
                            row.style.display = 'none';
                        }
                    });
                }

                applyFilterBtn.addEventListener('click', filterTable);

                resetFilterBtn.addEventListener('click', function () {
                    document.getElementById('filterForm').reset();
                    const rows = table.querySelectorAll('tbody tr');
                    rows.forEach(row => row.style.display = '');
                });

                // Add event listeners for real-time filtering
                document.getElementById('titleFilter').addEventListener('input', filterTable);
                document.getElementById('companyFilter').addEventListener('input', filterTable);
                document.getElementById('dateFilter').addEventListener('change', filterTable);
                document.getElementById('statusFilter').addEventListener('change', filterTable);
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
                        var reportCell = $('.post-id#' + postId).closest('tr').find('.total');
                        reportCell.html('<h2 class="total">0</h2>');
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
                        var reportCell = $('.post-id#' + postId).closest('tr').find('.total');
                        reportCell.html('<h2 class="total">0</h2>');
                        var threeDotCell = $('.post-id#' + postId).closest('tr').find('.three-dots');
                        threeDotCell.find('.typeChange').html('<a class="dropdown-item typeChange" data-bs-toggle="modal" data-bs-target="#Suspend_Project"><img class="me-2" src="adminAssets/img/icon/icon-04.svg" alt="Img"> Suspend Project</a>');

                        $('#Approve_Project').modal('hide');
                        $('#handle').modal('hide');
                        showSuccessNotification('Approved project successfully!');
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