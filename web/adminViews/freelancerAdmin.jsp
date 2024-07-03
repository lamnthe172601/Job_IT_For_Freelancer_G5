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
        <link rel="stylesheet" href="adminAssets/css/freelancer.css">

    </head>
    <body>

        <div class="main-wrapper">

            <%@ include file="headerAdmin.jsp" %>
            <%@ include file="sidebar.jsp" %>

            <div class="page-wrapper">
                <div class="content report-box container-fluid">

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
                                    <div class="col-md-3 mb-3">
                                        <div class="form-group">
                                            <label for="nameFilter">Name</label>
                                            <input type="text" class="form-control" id="nameFilter" placeholder="Enter name">
                                        </div>
                                    </div>
                                    <div class="col-md-3 mb-3">
                                        <div class="form-group">
                                            <label for="emailFilter">Email</label>
                                            <input type="text" class="form-control" id="emailFilter" placeholder="Enter email">
                                        </div>
                                    </div>
                                    <div class="col-md-3 mb-3">
                                        <div class="form-group">
                                            <label for="skillFilter">Skill</label>
                                            <div class="skill-filter-container">
                                                <input type="text" class="form-control skill-filter-input" placeholder="Select Skills">
                                                <div class="skill-filter-dropdown">
                                                    <c:forEach items="${listSkill}" var="skill">
                                                        <div class="skill-filter-option" data-value="${skill.getSkill_set_name()}">${skill.getSkill_set_name()}</div>
                                                    </c:forEach>
                                                </div>
                                                <div class="selected-skills"></div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-3 mb-3">
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
                                <div class="row">
                                    <div class="col-12">
                                        <button type="button" class="btn btn-secondary" id="resetFilter">Reset</button>
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
                                                                <c:forEach items="${freelancer.listSkill}" var="skill" begin="3">
                                                                    <span class="skill-item" hidden="">${skill.skill_set_name}</span>
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
                                                                <a class="dropdown-item" href="javascript:void(0);" data-bs-toggle="modal" data-bs-target="#view-details${freelancer.getAccount().getUserID()}"><img class="me-2 " src="adminAssets/img/icon/icon-01.svg" alt="Img"> View Details</a>
                                                                    <c:if test='${freelancer.getAccount().getStatus() == "active"}'>
                                                                    <a class="dropdown-item typeChange" class="btn btn-sm btn-danger " data-bs-toggle="modal" data-bs-target="#Suspend_user"><img class="me-2 " src="adminAssets/img/icon/icon-04.svg" alt="Img"> Suspend user</a>
                                                                    </c:if>
                                                                    <c:if test='${freelancer.getAccount().getStatus() == "inactive"}'>
                                                                    <a class="dropdown-item typeChange" class="btn btn-sm btn-danger " data-bs-toggle="modal" data-bs-target="#Activate_user"><img class="me-2 " src="adminAssets/img/icon/icon-04.svg" alt="Img"> Activate user</a>
                                                                    </c:if>

                                                            </div>                                                           
                                                        </td>
                                                <div class="modal fade custom-modal" id="view-details${freelancer.getAccount().getUserID()}">
                                                    <div class="modal-dialog modal-dialog-centered modal-lg">
                                                        <div class="modal-content">
                                                            <div class="modal-header flex-wrap">
                                                                <h4 class="modal-title">Freelancer Details</h4>
                                                                <button type="button" class="close" data-bs-dismiss="modal"><span>&times;</span></button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <div class="row">
                                                                    <div class="col-md-4">
                                                                        <img id="freelancerAvatar" src="${freelancer.getBasicInformation().getImage()}" alt="Freelancer Avatar" class="img-fluid rounded">
                                                                    </div>
                                                                    <div class="col-md-8">
                                                                        <form>
                                                                            <div class="form-group">
                                                                                <label>Full Name</label>
                                                                                <input type="text" class="form-control" value="${freelancer.getBasicInformation().fullname()}" readonly>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label>Email Contact</label>
                                                                                <input type="text" class="form-control" value="${freelancer.getBasicInformation().getEmail()}" readonly>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label>Phone Contact</label>
                                                                                <input type="text" class="form-control" value="${freelancer.getBasicInformation().getPhone()}" readonly="">
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label>Skills</label>
                                                                                <div class="skill-list">
                                                                                    <c:forEach items="${freelancer.listSkill}" var="skill">
                                                                                        <span class="skill-item badge badge-primary">${skill.skill_set_name}</span>
                                                                                    </c:forEach>
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label>Description</label>
                                                                                <div class="description-box">
                                                                                    <p>${freelancer.getBasicInformation().getDescribe()}</p>
                                                                                </div>
                                                                            </div>
                                                                        </form>
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
            $(document).ready(function () {
                var table = $('.table').DataTable();
                var skillFilterInput = $('.skill-filter-input');
                var skillFilterDropdown = $('.skill-filter-dropdown');
                var selectedSkills = new Set();
                var $selectedSkills = $('.selected-skills');

                var nameFilter = $('#nameFilter');
                var emailFilter = $('#emailFilter');
                var statusFilter = $('#statusFilter');

                // Skill dropdown toggle
                skillFilterInput.on('click', function () {
                    skillFilterDropdown.toggle();
                });

                // Skill selection
                $('.skill-filter-option').on('click', function () {
                    var skillName = $(this).data('value');
                    if (!selectedSkills.has(skillName)) {
                        selectedSkills.add(skillName);
                        var $selectedSkill = $('<div class="selected-skill" data-skill="' + skillName + '">' + skillName + '<span class="remove-skill">&times;</span></div>');
                        $selectedSkills.append($selectedSkill);
                    }
                    skillFilterInput.val('');
                    skillFilterDropdown.hide();
                    applyFilter();
                });

                // Remove selected skill
                $selectedSkills.on('click', '.remove-skill', function () {
                    var $skillElement = $(this).parent();
                    var skillName = $skillElement.data('skill');
                    selectedSkills.delete(skillName);
                    $skillElement.remove();
                    applyFilter();
                });

                // Custom filtering function
                $.fn.dataTable.ext.search.push(function (settings, data, dataIndex) {
                    var name = data[1].toLowerCase();
                    var email = data[2].toLowerCase();
                    var skillsString = data[3] ? data[3].toLowerCase() : '';
                    var status = data[4].toLowerCase();

                    var nameValue = nameFilter.val().toLowerCase();
                    var emailValue = emailFilter.val().toLowerCase();
                    var statusValue = statusFilter.val().toLowerCase();
                    var selectedSkillsArray = Array.from(selectedSkills).map(s => s.toLowerCase());

                    var nameMatch = !nameValue || name.includes(nameValue);
                    var emailMatch = !emailValue || email.includes(emailValue);
                    var statusMatch = statusValue === '' || status.includes(statusValue);

                    // New skill matching logic
                    var skillsMatch = true;
                    if (selectedSkillsArray.length > 0) {
                        var rowSkills = skillsString.split(',').map(s => s.trim());
                        skillsMatch = selectedSkillsArray.every(selectedSkill =>
                            rowSkills.some(rowSkill => rowSkill.includes(selectedSkill))
                        );
                    }

                    return nameMatch && emailMatch && statusMatch && skillsMatch;
                });

                function applyFilter() {
                    table.draw();
                }

                // Assign filter event to filter fields
                nameFilter.on('input', applyFilter);
                emailFilter.on('input', applyFilter);
                statusFilter.on('change', applyFilter);

                // Reset filter
                $('#resetFilter').click(function () {
                    nameFilter.val('');
                    emailFilter.val('');
                    statusFilter.val('');
                    selectedSkills.clear();
                    $selectedSkills.empty();
                    applyFilter();
                });

                // Close skill dropdown when clicking outside
                $(document).on('click', function (event) {
                    if (!$(event.target).closest('.skill-filter-container').length) {
                        skillFilterDropdown.hide();
                    }
                });
            });
        </script>
        <script>
            // Đóng dropdown khi click bên ngoài
            $(document).ready(function () {
                handleOutsideClick();
            });

            function handleOutsideClick() {
                $(document).click(function (event) {
                    var skillFilterContainer = $('.skill-filter-container');
                    var skillFilterDropdown = $('.skill-filter-dropdown');

                    if (!$(event.target).closest(skillFilterContainer).length) {
                        skillFilterDropdown.hide();
                    }
                });
            }
        </script>


        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="adminAssets/js/notification.js"></script>
        <script src="adminAssets/js/bootstrap.bundle.min.js" ></script>

        <script src="adminAssets/js/feather.min.js" ></script>

        <script src="adminAssets/plugins/slimscroll/jquery.slimscroll.min.js" ></script>

        <script src="adminAssets/plugins/select2/js/select2.min.js" ></script>

        <script src="adminAssets/plugins/moment/moment.min.js" ></script>
        <script src="adminAssets/js/bootstrap-datetimepicker.min.js" ></script>

        <script src="adminAssets/plugins/datatables/jquery.dataTables.min.js" ></script>
        <script src="adminAssets/plugins/datatables/datatables.min.js" ></script>

        <script src="adminAssets/js/script.js" ></script>
        <script src="assets/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="39bd9d3b5f9a12b82c2bbcef-|49" defer></script></body>

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/admin/users.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:41:03 GMT -->
</html>
