
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/admin/providers.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:41:24 GMT -->
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Kofejob</title>

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
        <style>
            /* Các kiểu dáng cho form */
            .form-control {
                border-radius: 0.25rem;
            }

            .form-label {
                font-weight: bold;
            }
            .modal-header {
                border-bottom: 0;
            }

            .form-control-static {
                padding-top: calc(0.375rem + 1px);
                padding-bottom: calc(0.375rem + 1px);
                margin-bottom: 0;
                min-height: calc(1.5em + 0.75rem + 2px);
            }

            .bg-light {
                background-color: #f8f9fa;
            }

            .fw-bold {
                font-weight: bold;
            }
            .error-message {
                color: red;
                font-size: 0.8em;
                margin-top: 5px;
            }
            .is-invalid {
                border-color: red;
            }
            .is-valid {
                border-color: green;
            }
        </style>

    </head>
    <body>

        <div class="main-wrapper">

            <%@ include file="headerAdmin.jsp" %>
            <%@ include file="sidebar.jsp" %>


            <div class="page-wrapper">
                <div class="content container-fluid">
                    <!-- Page Header -->
                    <div class="page-header user-active">
                        <div class="row align-items-center">
                            <div class="col">
                                <h3 class="page-title">All Skills</h3>
                                <p>Total <span>${totalSkill}</span> Skill</p>
                            </div>
                            <div class="col-auto">
                                <a href="javascript:void(0);" class="btn add-button me-2" data-bs-toggle="modal" data-bs-target="#add-blog">
                                    <i class="fas fa-plus"></i>
                                </a>
                                <a class="btn filter-btn" href="javascript:void(0);" id="filter_search">
                                    <i class="fas fa-filter"></i>
                                </a>
                            </div>
                        </div>
                    </div>

                    <!-- Filter Section -->
                    <div class="filter-section" style="display: none">
                        <div class="row">
                            <div class="col-md-3 mb-3">
                                <label for="filter-title" class="form-label">Title</label>
                                <input type="text" class="form-control" id="filter-title" placeholder="Enter blog title">
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="filter-categories" class="form-label">Categories</label>
                                <select class="form-select" id="filter-categories" style="height: 46px;">
                                    <option value="">All</option>
                                    <option value="Language">Language</option>
                                    <option value="Database">Database</option>
                                    <option value="Domain">Domain</option>
                                    <option value="Orther">Orther</option>
                                </select>
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="filter-status" class="form-label">Status</label>
                                <select class="form-select" id="filter-status" style="height: 46px;">
                                    <option value="">All</option>
                                    <option value="active">Active</option>
                                    <option value="trash">Trash</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <button type="button" class="btn btn-secondary" id="resetFilter">Reset</button>
                            </div>
                        </div>
                    </div>

                    <!-- Skills Table -->
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-center table-hover mb-0 datatable">
                                            <thead>
                                                <tr>
                                                    <th>No.</th>
                                                    <th>Skill</th>
                                                    <th>Categories</th>
                                                    <th>Status</th>
                                                    <th class="text-end">Actions</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${listSkill}" var="skill" varStatus="loop">
                                                    <tr id="skill-row-${skill.getSkillID()}">
                                                        <td>${loop.index + 1}</td>
                                                        <td>
                                                            <h2 class="table-avatar title">
                                                                <a href="javascript:void(0);">${skill.getSkillName()}</a>
                                                            </h2>
                                                        </td>
                                                        <td>
                                                            <h2 class="table-avatar title">
                                                                <a href="javascript:void(0);">${skill.getExpertise().getExpertiseName()}</a>
                                                            </h2>
                                                        </td>
                                                        <td class="test1">
                                                            <c:if test="${skill.isStatus()}">
                                                                <a href="javascript:void(0);" class="user-active-btn status">Active</a>
                                                            </c:if>
                                                            <c:if test="${!skill.isStatus()}">
                                                                <a href="javascript:void(0);" class="user-inactive-btn status">Trash</a>
                                                            </c:if>
                                                        </td>
                                                        <td class="text-end">
                                                            <a href="javascript:void(0);" class="btn btn-sm btn-secondary me-2" data-bs-toggle="modal" data-bs-target="#update-blog-modal${skill.getSkillID()}">
                                                                <i class="far fa-edit"></i>
                                                            </a>
                                                            <c:if test="${skill.isStatus()}">
                                                                <button class="btn btn-sm btn-danger delete-blog-btn btn-status" data-skill-id="${skill.getSkillID()}">
                                                                    <i class="far fa-trash-alt"></i>
                                                                </button>
                                                                <button style="display: none" class="btn btn-sm btn-success activate-blog-btn btn-status" data-skill-id="${skill.getSkillID()}">
                                                                    <i class="fas fa-check"></i>
                                                                </button>
                                                            </c:if>
                                                            <c:if test="${!skill.isStatus()}">
                                                                <button class="btn btn-sm btn-success activate-blog-btn btn-status" data-skill-id="${skill.getSkillID()}">
                                                                    <i class="fas fa-check"></i>
                                                                </button>
                                                                <button style="display: none" class="btn btn-sm btn-danger delete-blog-btn btn-status" data-skill-id="${skill.getSkillID()}">
                                                                    <i class="far fa-trash-alt" hidden=""></i>
                                                                </button>
                                                            </c:if>
                                                            <a href="javascript:void(0);" class="btn btn-sm btn-info me-2 view-details-btn" data-bs-toggle="modal" data-bs-target="#view-blog-details-modal${skill.getSkillID()}">
                                                                <i class="fas fa-eye"></i>
                                                            </a>
                                                        </td>
                                                    </tr>  
                                                    <!-- Modal for View skill Details -->
                                                <div class="modal fade" id="view-blog-details-modal${skill.getSkillID()}" tabindex="-1" aria-labelledby="viewBlogDetailsModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog modal-lg">
                                                        <div class="modal-content">
                                                            <div class="modal-header bg-info text-white">
                                                                <h5 class="modal-title" id="viewBlogDetailsModalLabel">
                                                                    <i class="fas fa-info-circle me-2"></i>Skill Details
                                                                </h5>
                                                                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <div class="row mb-3">
                                                                    <div class="col-md-6">
                                                                        <label class="form-label fw-bold">Skill Name</label>
                                                                        <p class="form-control-static">${skill.getSkillName()}</p>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <label class="form-label fw-bold">Category</label>
                                                                        <p class="form-control-static">${skill.getExpertise().getExpertiseName()}</p>
                                                                    </div>
                                                                </div>
                                                                <div class="mb-3">
                                                                    <label class="form-label fw-bold">Description</label>
                                                                    <div class="border rounded p-3 bg-light">
                                                                        <p class="mb-0">${skill.getDescription()}</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <!-- Modal for Updating Blog -->
                                                <div class="modal fade" id="update-blog-modal${skill.getSkillID()}" tabindex="-1" aria-labelledby="updateBlogModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog modal-lg">
                                                        <div class="modal-content">
                                                            <div class="modal-header bg-primary text-white">
                                                                <h5 class="modal-title" id="updateBlogModalLabel">
                                                                    <i class="fas fa-edit me-2"></i>Update Skill
                                                                </h5>
                                                                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <form id="update-blog-form-${skill.getSkillID()}" data-validate="blog-form" method="post" action="skillAdmin">
                                                                    <input type="hidden" name="skillId" value="${skill.getSkillID()}">
                                                                    <div class="row mb-3">
                                                                        <div class="col-md-6">
                                                                            <label for="blog-title-${skill.getSkillID()}" class="form-label">Skill Name</label>
                                                                            <input type="text" class="form-control" name="skillName" id="blog-title-${skill.getSkillID()}" value="${skill.getSkillName()}" required>
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <label for="filter-categories-${skill.getSkillID()}" class="form-label">Category</label>
                                                                            <select class="form-select" id="filter-categories-${skill.getSkillID()}" name="categoriesId">
                                                                                <option value="1" ${skill.getExpertise().getExpertiseName() == 'Language' ? 'selected' : ''}>Language</option>
                                                                                <option value="2" ${skill.getExpertise().getExpertiseName() == 'Database' ? 'selected' : ''}>Database</option>
                                                                                <option value="3" ${skill.getExpertise().getExpertiseName() == 'Domain' ? 'selected' : ''}>Domain</option>
                                                                                <option value="4" ${skill.getExpertise().getExpertiseName() == 'Other' ? 'selected' : ''}>Other</option>
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="blog-description-${skill.getSkillID()}" class="form-label">Description</label>
                                                                        <textarea class="form-control" id="blog-description-${skill.getSkillID()}" name="description" rows="5" required>${skill.getDescription()}</textarea>
                                                                    </div>
                                                                    <div class="text-end">
                                                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                                                        <button type="submit" class="btn btn-primary" name="mode" value="update">Update Skill</button>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

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
        <!-- Modal -->
        <div class="modal fade" id="add-blog" tabindex="-1" aria-labelledby="addBlogModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="addBlogModalLabel">Add New Skill</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form id="add-blog-form" data-validate="blog-form" method="post" action="skillAdmin">

                            <div class="mb-3">
                                <label for="blog-title" class="form-label">Skill</label>
                                <input type="text" class="form-control"name="skillName" id="blog-title" required>
                            </div>
                            <div class="col-md-3 mb-3" >
                                <label for="filter-categories" class="form-label" >Categories</label>
                                <select class="form-select" name="categoriesId" style="height: 46px;">                                    
                                    <option value="1">Language</option>
                                    <option value="2">Database</option>
                                    <option value="3">Domain</option>
                                    <option value="4">Orther</option>
                                </select>
                            </div>         
                            <div class="mb-3">
                                <label for="blog-description" class="form-label">Description</label>
                                <div class="description-editor border rounded p-2">
                                    <textarea class="form-control border-0" id="blog-description-${skill.getSkillID()}" name="description" rows="10" style="height: 200px" required>${blog.getDescription()}</textarea>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>   

                                <button type="reset" class="btn btn-secondary" >Reset</button>                               

                                <button type="submit" class="btn btn-primary" name="mode" value="add" id="add-blog-btn">Add Skill</button>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>
        <script src="adminAssets/js/jquery-3.7.1.min.js"></script>
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
                var table = $('.datatable').DataTable();
                const filterTitle = document.getElementById('filter-title');
                const filterCategories = document.getElementById('filter-categories');
                const filterStatus = document.getElementById('filter-status');

                function applyFilter() {
                    const titleValue = filterTitle.value.toLowerCase();
                    const categoriesValue = filterCategories.value.toLowerCase();
                    const statusValue = filterStatus.value.toLowerCase();

                    // Clear any existing search function
                    $.fn.dataTable.ext.search.pop();

                    $.fn.dataTable.ext.search.push(function (settings, data, dataIndex) {
                        const title = data[1].toLowerCase(); // Assuming skill name is in the 2nd column
                        const categories = data[2].toLowerCase(); // Assuming categories is in the 3rd column
                        const status = data[3].toLowerCase(); // Assuming status is in the 4th column

                        const titleMatch = title.includes(titleValue);
                        const categoriesMatch = categoriesValue === '' || categories.includes(categoriesValue);
                        const statusMatch = statusValue === '' || status.includes(statusValue);

                        return titleMatch && categoriesMatch && statusMatch;
                    });

                    table.draw();
                }

                // Add event listeners for instant filtering
                filterTitle.addEventListener('input', applyFilter);
                filterCategories.addEventListener('change', applyFilter);
                filterStatus.addEventListener('change', applyFilter);

                // Reset filter
                $('#resetFilter').click(function () {
                    filterTitle.value = '';
                    filterCategories.value = '';
                    filterStatus.value = '';
                    resetFilter();
                });

                function resetFilter() {
                    // Remove custom search function
                    $.fn.dataTable.ext.search.pop();
                    // Clear all column searches
                    table.columns().search('');
                    // Clear global search
                    table.search('');
                    // Redraw the table
                    table.draw();
                }

                // Initial filter application
                applyFilter();
            });
        </script>

        <script>
            $(document).ready(function () {
                // Xử lý sự kiện click trên nút xóa
                $('.delete-blog-btn').click(function () {
                    var skillId = $(this).data('skill-id');
                    Swal.fire({
                        title: 'Are you sure?',
                        text: 'This will move the skill to the trash.',
                        icon: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#d33',
                        cancelButtonColor: '#3085d6',
                        confirmButtonText: 'Delete'
                    }).then((result) => {
                        if (result.isConfirmed) {
                            // Gọi AJAX để thay đổi trạng thái blog
                            changeSkillStatus(skillId, false);
                        }
                    });
                });

                // Xử lý sự kiện click trên nút kích hoạt
                $('.activate-blog-btn').click(function () {
                    var skillId = $(this).data('skill-id');
                    Swal.fire({
                        title: 'Are you sure?',
                        text: 'This will activate the skill.',
                        icon: 'question',
                        showCancelButton: true,
                        confirmButtonColor: '#3085d6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Activate'
                    }).then((result) => {
                        if (result.isConfirmed) {
                            // Gọi AJAX để thay đổi trạng thái blog
                            changeSkillStatus(skillId, true);
                        }
                    });
                });
            });
            function changeSkillStatus(skillId, isActive) {
                $.ajax({
                    url: 'skillAdmin', // Đường dẫn tới servlet xử lý yêu cầu
                    type: 'POST',
                    data: {
                        mode: isActive ? 'activate' : 'delete',
                        skillId: skillId
                    },
                    success: function (response) {

                        if (response.success) {

                            updateBlogRowStatus(skillId, isActive);
                            showSuccessNotification(response.message);
                        } else {
                            showErrorNotification(response.message);
                        }
                    },
                    error: function () {
                        showErrorNotification('An error occurred while changing the blog status.');
                    }
                });
            }

            function updateBlogRowStatus(skillId, isActive) {
                var blogRow = $('#skill-row-' + skillId);
                var statusCell = blogRow.find('.test1');

                if (isActive) {
                    statusCell.html('<a href="javascript:void(0);" class="user-active-btn status">Active</a>');
                    blogRow.find('.delete-blog-btn').show();
                    blogRow.find('.activate-blog-btn').hide();
                } else {
                    statusCell.html('<a href="javascript:void(0);" class="user-inactive-btn status">Trash</a>');
                    blogRow.find('.activate-blog-btn').show();
                    blogRow.find('.delete-blog-btn').hide();
                }
            }

        </script>


        <c:if test="${not empty successMessage}">
            <script>
                var successMessage = "${successMessage}";

                $(document).ready(function () {
                    if (typeof successMessage !== 'undefined' && successMessage !== '') {
                        console.log(successMessage);
                        showSuccessNotification(successMessage);
                    }
                });
            </script>

        </c:if>

        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

        <script src="adminAssets/js/notification.js"></script>

        <script src="adminAssets/js/validate_skill.js"></script>
        <script src="adminAssets/js/bootstrap.bundle.min.js"></script>

        <script src="adminAssets/js/feather.min.js" ></script>

        <script src="adminAssets/plugins/slimscroll/jquery.slimscroll.min.js" ></script>

        <script src="adminAssets/plugins/select2/js/select2.min.js" ></script>

        <script src="adminAssets/plugins/moment/moment.min.js" ></script>
        <script src="adminAssets/js/bootstrap-datetimepicker.min.js" ></script>

        <script src="adminAssets/plugins/datatables/jquery.dataTables.min.js" ></script>
        <script src="adminAssets/plugins/datatables/datatables.min.js" ></script>

        <script src="adminAssets/js/script.js" ></script>
    </body>

</html>