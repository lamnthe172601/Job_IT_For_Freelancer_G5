
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <style>
            /* Các kiểu dáng cho form */
            .form-control {
                border-radius: 0.25rem;
            }

            .form-label {
                font-weight: bold;
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
                                <h3 class="page-title">All Blog</h3>
                                <p>Total <span>${totalBlog}</span> Blog</p>
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
                    <div class="filter-section" style="display: none">
                        <div class="row">
                            <div class="mb-6">
                                <label for="filter-title" class="form-label">Title</label>
                                <input type="text" class="form-control" id="filter-title" placeholder="Enter blog title">
                            </div>
                            <div class="mb-6">
                                <label for="filter-status" class="form-label">Status</label>
                                <select class="form-select" id="filter-status">
                                    <option value="">All</option>
                                    <option value="active">Active</option>
                                    <option value="trash">Trash</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="mb-6">
                                <label for="filter-date-from" class="form-label">Date From</label>
                                <input type="date" class="form-control" id="filter-date-from">
                            </div>
                            <div class="mb-6">
                                <label for="filter-date-to" class="form-label">Date To</label>
                                <input type="date" class="form-control" id="filter-date-to">
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
                                                    <th>Image</th>
                                                    <th>Title</th>
                                                    <th>Date Create</th> 
                                                    <th>Descripition</th> 
                                                    <th>Status</th>                                                    
                                                    <th class="text-end">Actions</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${listBlog}" var="blog" varStatus="loop">
                                                    <tr id="blog-row-${blog.getBlogID()}">

                                                        <td>${loop.index +1}</td>
                                                        <td>
                                                            <h2 class="table-avatar image">
                                                                <a href="javascript:void(0);"><img class="me-2" src="${blog.getImage()}" alt="User Image"></a>
                                                            </h2>
                                                        </td>
                                                        <td>
                                                            <h2 class="table-avatar title">
                                                                <a href="javascript:void(0);">${blog.getTitle()}</a>
                                                            </h2>
                                                        </td>
                                                        <td>
                                                            <h2 class="datecreate">                                                                
                                                                ${blog.getDate_blog()}

                                                            </h2>
                                                        </td>
                                                        <td>
                                                            <h2 class="descripition">                                                                
                                                                ${blog.getDescription()}                                                                
                                                            </h2>
                                                        </td>                                                     

                                                        <td class="test1">

                                                            <c:if test="${blog.isStatus()}">
                                                                <a href="javascript:void(0);" class="user-active-btn status">Active</a>
                                                            </c:if>
                                                            <c:if test="${!blog.isStatus()}">
                                                                <a href="javascript:void(0);" class="user-inactive-btn status">Trash</a>
                                                            </c:if>

                                                        </td>                                                   
                                                        <td class="text-end">
                                                            <a href="javascript:void(0);" class="btn btn-sm btn-secondary me-2" data-bs-toggle="modal" data-bs-target="#update-blog-modal${blog.getBlogID()}"><i class="far fa-edit"></i></a>
                                                                <c:if test="${blog.isStatus()}">
                                                                <button   class="btn btn-sm btn-danger delete-blog-btn btn-status" data-blog-id="${blog.getBlogID()}"><i class="far fa-trash-alt"></i></button>
                                                                <button style="display: none"class="btn btn-sm btn-success activate-blog-btn btn-status" data-blog-id="${blog.getBlogID()}"><i class="fas fa-check" ></i></button>

                                                            </c:if>
                                                            <c:if test="${!blog.isStatus()}">
                                                                <button class="btn btn-sm btn-success activate-blog-btn btn-status" data-blog-id="${blog.getBlogID()}"><i class="fas fa-check"></i></button>
                                                                <button style="display: none" class="btn btn-sm btn-danger delete-blog-btn btn-status" data-blog-id="${blog.getBlogID()}"><i class="far fa-trash-alt" hidden=""></i></button>

                                                            </c:if>
                                                            <a href="javascript:void(0);" class="btn btn-sm btn-info me-2 view-details-btn" data-bs-toggle="modal" data-bs-target="#view-blog-details-modal${blog.getBlogID()}"><i class="fas fa-eye"></i></a>
                                                        </td>
                                                        <!-- Modal for Viewing Blog Details -->
                                                <div class="modal fade" id="view-blog-details-modal${blog.getBlogID()}" tabindex="-1" aria-labelledby="viewBlogDetailsModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog modal-lg">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="viewBlogDetailsModalLabel">Blog Details</h5>
                                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <div class="row">
                                                                    <div class="col-md-4">
                                                                        <img id="blog-details-image" src="${blog.getImage()}" alt="Blog Image" class="img-fluid">
                                                                    </div>
                                                                    <div class="col-md-8">
                                                                        <h3 id="blog-details-title">${blog.getTitle()}</h3>

                                                                        <p id="blog-details-date">Data create: ${blog.getDate_blog()}</p> 
                                                                        <p id="blog-details-description">${blog.getDescription()} </p>
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
                                                <div class="modal fade" id="update-blog-modal${blog.getBlogID()}" tabindex="-1" aria-labelledby="updateBlogModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog modal-lg">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="updateBlogModalLabel">Update Blog</h5>
                                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <form id="update-blog-form-${blog.getBlogID()}" method="post" action="blogAdmin" enctype="multipart/form-data">
                                                                    <input type="hidden" name="blogId" value="${blog.getBlogID()}">
                                                                    <div class="mb-3">
                                                                        <label for="blog-image-${blog.getBlogID()}" class="form-label">Image</label>
                                                                        <input type="file" class="form-control update-blog-image" name="image" id="blog-image-${blog.getBlogID()}" accept="image/*">
                                                                        <img src="${blog.getImage()}" alt="Current Image" class="img-thumbnail mt-2 update-image-preview" style="max-width: 200px;">
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="blog-title-${blog.getBlogID()}" class="form-label">Title</label>
                                                                        <input type="text" class="form-control" name="title" id="blog-title-${blog.getBlogID()}" value="${blog.getTitle()}" required>
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="blog-description-${blog.getBlogID()}" class="form-label">Description</label>
                                                                        <div class="description-editor border rounded p-2">
                                                                            <textarea class="form-control border-0" id="blog-description-${blog.getBlogID()}" name="descripition" rows="10" style="height: 300px" required>${blog.getDescription()}</textarea>

                                                                        </div>
                                                                    </div>
                                                                    <div class="modal-footer">
                                                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                                                        <button type="submit" class="btn btn-primary" name="mode" value="update">Update Blog</button>
                                                                    </div>
                                                                </form>
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
        <!-- Modal -->
        <div class="modal fade" id="add-blog" tabindex="-1" aria-labelledby="addBlogModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="addBlogModalLabel">Add New Blog</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form id="add-blog-form" method="post" action="blogAdmin"  enctype="multipart/form-data">
                            <div class="mb-3">
                                <label for="blog-image" class="form-label">Image</label>
                                <input type="file" class="form-control" name="image" id="blog-image" accept="image/*" required>
                                <img id="blog-image-preview" src="#" alt="Image preview" style="max-width: 200px; display: none; margin-top: 10px;">
                            </div>
                            <div class="mb-3">
                                <label for="blog-title" class="form-label">Title</label>
                                <input type="text" class="form-control"name="title" id="blog-title" required>
                            </div>
                            <div class="mb-3">
                                <label for="blog-description" class="form-label">Description</label>
                                <textarea class="form-control" id="blog-description" name="descripition"rows="3" required></textarea>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>                               
                                
                                <button type="submit" class="btn btn-primary" name="mode" value="add" id="add-blog-btn">Add Blog</button>
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
            document.addEventListener('DOMContentLoaded', function () {
                // For add blog form
                document.getElementById('blog-image').addEventListener('change', function (event) {
                    var output = document.getElementById('blog-image-preview');
                    output.src = URL.createObjectURL(event.target.files[0]);
                    output.style.display = 'block';
                });

                // For update blog forms
                var updateImageInputs = document.querySelectorAll('.update-blog-image');
                updateImageInputs.forEach(function (input) {
                    input.addEventListener('change', function (event) {
                        var preview = event.target.parentElement.querySelector('.update-image-preview');
                        preview.src = URL.createObjectURL(event.target.files[0]);
                    });
                });
            });
        </script>
        <script>
            document.addEventListener('DOMContentLoaded', function () {
                const filterTitle = document.getElementById('filter-title');
                const filterDateFrom = document.getElementById('filter-date-from');
                const filterDateTo = document.getElementById('filter-date-to');
                const filterStatus = document.getElementById('filter-status');
                const rows = document.querySelectorAll('.datatable tbody tr');

                // Set default "Date To" as today
                const today = new Date().toISOString().split('T')[0];
                filterDateTo.value = today;

                function filterRows() {
                    const titleValue = filterTitle.value.toLowerCase();
                    const dateFromValue = filterDateFrom.value;
                    const dateToValue = filterDateTo.value || today;
                    const statusValue = filterStatus.value.toLowerCase();

                    rows.forEach(row => {
                        const title = row.querySelector('.title a').textContent.toLowerCase();
                        const date = row.querySelector('.datecreate').textContent.trim();
                        const status = row.querySelector('.status').textContent.toLowerCase();

                        const titleMatch = title.includes(titleValue);
                        const dateMatch = (!dateFromValue || date >= dateFromValue) && (date <= dateToValue);
                        const statusMatch = statusValue === '' || status.includes(statusValue);

                        row.style.display = titleMatch && dateMatch && statusMatch ? '' : 'none';
                    });
                }

                // Add event listeners for instant filtering
                filterTitle.addEventListener('input', filterRows);
                filterDateFrom.addEventListener('change', filterRows);
                filterDateTo.addEventListener('change', filterRows);
                filterStatus.addEventListener('change', filterRows);

                // Initial filter application
                filterRows();
            });
        </script>

        <script>
            $(document).ready(function () {
                // Xử lý sự kiện click trên nút xóa
                $('.delete-blog-btn').click(function () {
                    var blogId = $(this).data('blog-id');
                    Swal.fire({
                        title: 'Are you sure?',
                        text: 'This will move the blog to the trash.',
                        icon: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#d33',
                        cancelButtonColor: '#3085d6',
                        confirmButtonText: 'Delete'
                    }).then((result) => {
                        if (result.isConfirmed) {
                            // Gọi AJAX để thay đổi trạng thái blog
                            changeBlogStatus(blogId, false);
                        }
                    });
                });

                // Xử lý sự kiện click trên nút kích hoạt
                $('.activate-blog-btn').click(function () {
                    var blogId = $(this).data('blog-id');
                    Swal.fire({
                        title: 'Are you sure?',
                        text: 'This will activate the blog.',
                        icon: 'question',
                        showCancelButton: true,
                        confirmButtonColor: '#3085d6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Activate'
                    }).then((result) => {
                        if (result.isConfirmed) {
                            // Gọi AJAX để thay đổi trạng thái blog
                            changeBlogStatus(blogId, true);
                        }
                    });
                });
            });
            function changeBlogStatus(blogId, isActive) {
                $.ajax({
                    url: 'blogAdmin', // Đường dẫn tới servlet xử lý yêu cầu
                    type: 'POST',
                    data: {
                        mode: isActive ? 'activate' : 'delete',
                        blogId: blogId
                    },
                    success: function (response) {

                        if (response.success) {

                            updateBlogRowStatus(blogId, isActive);
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

            function updateBlogRowStatus(blogId, isActive) {
                var blogRow = $('#blog-row-' + blogId);
                var statusCell = blogRow.find('.test1');
                var statusBtn = blogRow.find('.btn-status');


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
        <script>
            // Hàm cắt bỏ văn bản dài hơn giới hạn
            function truncateText(text, maxLength) {
                if (text.length <= maxLength) {
                    return text;
                } else {
                    return text.substring(0, maxLength) + "...";
                }
            }


            var titles = document.querySelectorAll(".table-avatar.title a");
            var descriptions = document.querySelectorAll(".descripition");
            titles.forEach(function (title) {
                title.textContent = truncateText(title.textContent, 20); // Giới hạn 20 ký tự cho tiêu đề
            });
            descriptions.forEach(function (description) {
                description.textContent = truncateText(description.textContent, 100); // Giới hạn 100 ký tự cho mô tả
            });
        </script>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="adminAssets/js/notification.js"></script>


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