<%-- 
    Document   : freelancerAdmin
    Created on : May 25, 2024, 8:42:31 PM
    Author     : kudol
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Kofejob - Bootstrap Admin HTML Template</title>

        <link rel="shortcut icon" href="adminAssets/img/favicon.png">

        <link rel="stylesheet" href="adminAssets/css/bootstrap.min.css">

        <link rel="stylesheet" href="adminAssets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="adminAssets/plugins/fontawesome/css/all.min.css">

        <link rel="stylesheet" href="adminAssets/css/feather.css">

        <link rel="stylesheet" href="adminAssets/css/bootstrap-datetimepicker.min.css">

        <link rel="stylesheet" href="adminAssets/plugins/datatables/datatables.min.css">

        <link rel="stylesheet" href="adminAssets/css/style.css">
        <style>
            .filter-section {
                background-color: #fff;
                border: 1px solid #e0e0e0;
                border-radius: 4px;
                padding: 20px;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.08);
            }

            .form-group {
                margin-bottom: 20px;
            }

            .form-group label {
                font-weight: 600;
                color: #444;
                margin-bottom: 6px;
                display: block;
            }

            .form-control {
                border: 1px solid #d9d9d9;
                border-radius: 3px;
                padding: 8px 12px;
                transition: border-color 0.3s ease;
                font-size: 14px;
                width: 100%;
            }

            .form-control:focus {
                border-color: #8c8c8c;
                box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
                outline: none;
            }

            .form-control::placeholder {
                color: #bbb;
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
            .skill-icon {
                padding: 10px;
            }

            .skill-list {
                display: flex;
                flex-wrap: wrap;
                align-items: center;
            }

            .skill-item {
                background-color: #f2f2f2;
                color: #333;
                padding: 5px 10px;
                margin-right: 5px;
                margin-bottom: 5px;
                border-radius: 20px;
                font-size: 14px;
            }

            .skill-more {
                background-color: #e0e0e0;
                color: #666;
                padding: 5px 10px;
                margin-right: 5px;
                margin-bottom: 5px;
                border-radius: 20px;
                font-size: 14px;
            }
        </style>
    </head>
    <body>

        <div class="main-wrapper">

            <%@ include file="headerAdmin.jsp" %>
            <%@ include file="sidebar.jsp" %>

            <div class="page-wrapper">
                <div class="content report-box container-fluid">

                    <div class="page-header subscribe-head">
                        <div class="row align-items-center">
                            <div class="col">
                                <h3 class="page-title">Freelancer</h3>
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="home">Home</a></li>
                                    <li class=" active">/ Freelancer</li>
                                </ul>
                            </div>                         

                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-12">                           

                            <div class="page-header user-active">
                                <div class="row align-items-center">
                                    <div class="col">
                                        <h3 class="page-title">All Freelancer</h3>
                                        <p>Total <span>${totalFreelancer}</span> Freelancer account</p>
                                    </div>
                                    <div class="col-auto">
                                        <a class="btn filter-btn" href="javascript:void(0);" id="filter_search">
                                            <i class="fas fa-filter"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>

                            <div  class="filter-section" style="display: none;">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="nameFilter">Name</label>
                                            <input type="text" class="form-control" id="nameFilter" placeholder="Enter name">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="emailFilter">Email</label>
                                            <input type="text" class="form-control" id="emailFilter" placeholder="Enter email">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="statusFilter">Status</label>
                                            <select class="form-control" id="statusFilter">
                                                <option value="">All</option>
                                                <option value="active">Active</option>
                                                <option value="inactive">Inactive</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-center table-hover mb-0 datatable">
                                            <thead>
                                                <tr>
                                                    <th>No.</th>                                                
                                                    <th>Freelancer</th>                                                   
                                                    <th>Email</th>
                                                    <th>Skills</th>
                                                    <th>Status</th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${listFreelancer}" var="freelancer" varStatus="loop">

                                                    <tr >
                                                        <td>

                                                            ${loop.index+1}
                                                        </td>
                                                        <td>
                                                            <div class="table-avatar user-profile">
                                                                <a href="profile.html"><img class="avatar-img rounded-circle " src="${freelancer.getBasicInformation().getImage()}" alt="User Image"></a>
                                                                <div>
                                                                    <h5><a href="javascript:void(0);">${freelancer.getBasicInformation().fullname()}</a></h5>

                                                                </div>
                                                            </div>
                                                            </div>
                                                        </td>                                                   
                                                        <td class="verify-mail"><i data-feather="check-circle" class="me-1 text-success"></i>${freelancer.getBasicInformation().getEmail()}</td>
                                                        <td class="skill-icon">
                                                            <div class="skill-list">
                                                                <c:forEach items="${freelancer.listSkill}" var="skill" begin="0" end="2">
                                                                    <span class="skill-item">${skill.skill_set_name}</span>
                                                                </c:forEach>
                                                                <c:if test="${fn:length(freelancer.listSkill) > 3}">
                                                                    <span class="skill-more">...</span>
                                                                </c:if>
                                                            </div>
                                                        </td>
                                                        <td class="test1">

                                                            <c:if test='${freelancer.getAccount().getStatus() == "active"}'>
                                                                <a href="javascript:void(0);" class="user-active-btn status">${freelancer.getAccount().getStatus()}</a>
                                                            </c:if>

                                                            <c:if test='${freelancer.getAccount().getStatus() == "inactive"}'>
                                                                <a href="javascript:void(0);" class="user-inactive-btn status">${freelancer.getAccount().getStatus()}</a>
                                                            </c:if>
                                                        </td>                                                   
                                                        <td class="text-end three-dots">
                                                            <input type="hidden" class="user-id" id="${freelancer.getAccount().getUserID()}">
                                                            <a href="javascript:void(0);" class="dropdown-toggle nav-link three-dot " data-bs-toggle="dropdown"><i class="fas fa-ellipsis-v" ></i></a>
                                                            <div class="dropdown-menu user-menu-list">
                                                                <a class="dropdown-item" href="javascript:void(0);" data-bs-toggle="modal" data-bs-target="#transaction-category"><img class="me-2 " src="adminAssets/img/icon/icon-01.svg" alt="Img"> View Details</a>
                                                                    <c:if test='${freelancer.getAccount().getStatus() == "active"}'>
                                                                    <a class="dropdown-item typeChange" class="btn btn-sm btn-danger " data-bs-toggle="modal" data-bs-target="#Suspend_user"><img class="me-2 " src="adminAssets/img/icon/icon-04.svg" alt="Img"> Suspend user</a>
                                                                    </c:if>
                                                                    <c:if test='${freelancer.getAccount().getStatus() == "inactive"}'>
                                                                    <a class="dropdown-item typeChange" class="btn btn-sm btn-danger " data-bs-toggle="modal" data-bs-target="#Activate_user"><img class="me-2 " src="adminAssets/img/icon/icon-04.svg" alt="Img"> Activate user</a>
                                                                    </c:if>

                                                            </div>                                                           
                                                        </td>
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
        <div class="modal custom-modal fade" id="Suspend_user" role="dialog">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="form-header">
                            <input type="hidden" class="user-id1" id="${freelancer.getAccount().getUserID()}">
                            <h3>Status</h3>
                            <p>Are you sure want to Suspend user?</p>
                        </div>
                        <div class="modal-btn Suspend-action" >
                            <div class="row">
                                <div class="col-6">
                                    <a href="javascript:void(0);" class="user-suspend-link btn btn-primary continue-btn" >Suspend user</a>
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
        <div class="modal custom-modal fade" id="Activate_user" role="dialog">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="form-header">
                            <input type="hidden" class="user-id1" id="${freelancer.getAccount().getUserID()}">
                            <h3>Status</h3>
                            <p>Are you sure want to Activate user?</p>
                        </div>
                        <div class="modal-btn Activate-action">
                            <div class="row">
                                <div class="col-6">
                                    <a href="javascript:void(0);" class="user-activate-link btn btn-primary continue-btn" >Activate user</a>
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

                    var userId = $(this).closest('tr').find('.user-id').attr('id');
                    var action = $(this).text().trim().toLowerCase();

                    if (action === 'suspend user') {
                        // Hiển thị popup xác nhận suspend user
                        $('#Suspend_user').find('.user-id1').val(userId);
                        $('#Suspend_user').modal('show');
                    } else if (action === 'activate user') {
                        // Hiển thị popup xác nhận activate user
                        $('#Activate_user').find('.user-id1').val(userId);
                        $('#Activate_user').modal('show');
                    }
                });

                $('.user-suspend-link').on('click', function () {
                    var userId = $(this).closest('.modal-body').find('.user-id1').val();
                    suspendUser(userId);
                });

                $('.user-activate-link').on('click', function () {
                    var userId = $(this).closest('.modal-body').find('.user-id1').val();
                    activateUser(userId);
                });
            });

            function suspendUser(userId) {
                $.ajax({
                    url: '/Job_IT_For_Freelancer_G5/changeStatusUserAdmin', // URL của servlet xử lý suspend user
                    type: 'POST',
                    data: {userId: userId, type: "suspend"},
                    success: function (response) {
                        // Xử lý khi suspend user thành công
                        var statusCell = $('.user-id#' + userId).closest('tr').find('.test1');
                        statusCell.html('<a href="javascript:void(0);" class="user-inactive-btn status">inactive</a>');

                        var threeDotCell = $('.user-id#' + userId).closest('tr').find('.three-dots');
                        threeDotCell.find('.typeChange').html('<a class="dropdown-item typeChange" data-bs-toggle="modal" data-bs-target="#Activate_user"><img class="me-2" src="adminAssets/img/icon/icon-04.svg" alt="Img"> Activate user</a>');

                        $('#Suspend_user').modal('hide');
                        showSuccessNotification('Suspend user successfully!');
                    },
                    error: function (xhr, status, error) {
                        // Xử lý khi có lỗi xảy ra
                        console.error(error);
                    }
                });
            }

            function activateUser(userId) {
                $.ajax({
                    url: '/Job_IT_For_Freelancer_G5/changeStatusUserAdmin', // URL của servlet xử lý activate user
                    type: 'POST',
                    data: {userId: userId, type: "active"},
                    success: function (response) {
                        // Xử lý khi activate user thành công
                        var statusCell = $('.user-id#' + userId).closest('tr').find('.test1');
                        statusCell.html('<a href="javascript:void(0);" class="user-active-btn status">active</a>');

                        var threeDotCell = $('.user-id#' + userId).closest('tr').find('.three-dots');
                        threeDotCell.find('.typeChange').html('<a class="dropdown-item typeChange" data-bs-toggle="modal" data-bs-target="#Suspend_user"><img class="me-2" src="adminAssets/img/icon/icon-04.svg" alt="Img"> Suspend user</a>');

                        $('#Activate_user').modal('hide');
                        showSuccessNotification('Activate user successfully!');
                    },
                    error: function (xhr, status, error) {
                        // Xử lý khi có lỗi xảy ra
                        console.error(error);
                    }
                });
            }
        </script>
        <script>
            // Lấy các phần tử lọc
            const nameFilter = document.getElementById('nameFilter');
            const emailFilter = document.getElementById('emailFilter');
            const statusFilter = document.getElementById('statusFilter');

            // Lấy danh sách các dòng trong bảng
            const rows = document.querySelectorAll('.table tbody tr');

            // Hàm để lọc các dòng
            function filterRows() {
                const nameValue = nameFilter.value.toLowerCase();
                const emailValue = emailFilter.value.toLowerCase();
                const statusValue = statusFilter.value;

                rows.forEach(row => {
                    const name = row.querySelector('.user-profile h5 a').textContent.toLowerCase();
                    const email = row.querySelector('.verify-mail').textContent.toLowerCase();
                    const status = row.querySelector('.status').textContent.toLowerCase();

                    const showRow =
                            (!nameValue || name.includes(nameValue)) &&
                            (!emailValue || email.includes(emailValue)) &&
                            (statusValue === '' || status === statusValue);

                    row.style.display = showRow ? '' : 'none';
                });
            }

            // Gán sự kiện lọc cho các trường lọc
            nameFilter.addEventListener('input', filterRows);
            emailFilter.addEventListener('input', filterRows);
            statusFilter.addEventListener('change', filterRows);
        </script>
        <script>
            $(document).ready(function () {
                $('.datatable').DataTable({
                    lengthMenu: [10, 25, 50, 100] // Hiển thị tùy chọn 10, 25, 50 và 100 dòng trên mỗi trang
                });
            });
        </script>

        <!--        <script data-cfasync="false" src="../../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="adminAssets/js/jquery-3.7.1.min.js" type="39bd9d3b5f9a12b82c2bbcef-text/javascript"></script>-->
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="adminAssets/js/notification.js"></script>
        <script src="adminAssets/js/bootstrap.bundle.min.js" type="39bd9d3b5f9a12b82c2bbcef-text/javascript"></script>

        <script src="adminAssets/js/feather.min.js" type="39bd9d3b5f9a12b82c2bbcef-text/javascript"></script>

        <script src="adminAssets/plugins/slimscroll/jquery.slimscroll.min.js" type="39bd9d3b5f9a12b82c2bbcef-text/javascript"></script>

        <script src="adminAssets/plugins/select2/js/select2.min.js" type="39bd9d3b5f9a12b82c2bbcef-text/javascript"></script>

        <script src="adminAssets/plugins/moment/moment.min.js" type="39bd9d3b5f9a12b82c2bbcef-text/javascript"></script>
        <script src="adminAssets/js/bootstrap-datetimepicker.min.js" type="39bd9d3b5f9a12b82c2bbcef-text/javascript"></script>

        <script src="adminAssets/plugins/datatables/jquery.dataTables.min.js" type="39bd9d3b5f9a12b82c2bbcef-text/javascript"></script>
        <script src="adminAssets/plugins/datatables/datatables.min.js" type="39bd9d3b5f9a12b82c2bbcef-text/javascript"></script>

        <script src="adminAssets/js/script.js" type="39bd9d3b5f9a12b82c2bbcef-text/javascript"></script>
        <script src="assets/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="39bd9d3b5f9a12b82c2bbcef-|49" defer></script></body>

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/admin/users.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:41:03 GMT -->
</html>
