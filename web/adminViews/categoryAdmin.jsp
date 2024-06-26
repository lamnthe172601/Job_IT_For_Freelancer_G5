<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <link rel="stylesheet" href="adminAssets/plugins/select2/css/select2.min.css">
        <link rel="stylesheet" href="adminAssets/css/bootstrap-datetimepicker.min.css">
        <link rel="stylesheet" href="adminAssets/plugins/datatables/datatables.min.css">
        <link rel="stylesheet" href="adminAssets/css/style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <style>
            .active-status {
                color: green;
            }
            .trash-status {
                color: red;
            }
            .filter-card {
                display: none; /* Ẩn phần tử ban đầu */
            }
            .btn.filter-btn {
                background-color: #FF5B37;
                color: white;
            }
            .btn.filter-btn:hover {
                background-color: darkorange;
                color: white;
            }
            .btn-primary {
                background-color: #FF5B37;
                border-color: #FF5B37;
            }
            .btn-primary:hover {
                background-color: darkorange;
                border-color: darkorange;
            }
            .close {
                font-size: inherit; /* Sử dụng kích thước font từ phần tử chứa */
                position: absolute;
                top: 15px; /* Điều chỉnh khoảng cách từ trên */
                right: 15px; /* Điều chỉnh khoảng cách từ phải */
                padding: 0;
                margin: 0;
                line-height: 1;
                display: flex;
                align-items: center;
                justify-content: center;
                width: 30px;
                height: 30px;
                border-radius: 50%;
                background-color: #f0f0f0;
            }
            .close span {
                display: inline-block;
                vertical-align: middle;
                font-size: 1.5rem;
            }

        </style>
    </head>
    <body>
        <div class="main-wrapper">


           <%@ include file="headerAdmin.jsp" %>
            <%@ include file="sidebar.jsp" %>

            <div class="page-wrapper">
                <div class="content container-fluid">
                    <div class="page-header">
                        <div class="row align-items-center">
                            <div class="col">
                                <h3 class="page-title">Categories</h3>
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="home">Home</a>
                                    </li>
                                    <li class="breadcrumb-item active">Categories</li>
                                </ul>
                            </div>

                            <div class="col-auto">
                                <a href="javascript:void(0);" style="color: red; border: 1px solid black; display: flex; align-items: center; justify-content: center; width: 50px; height: 50px;" class="btn add-button me-2" data-bs-toggle="modal" data-bs-target="#add-category">
                                    <i class="fas fa-plus"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-body pb-0">
                    <form action="categoryAdmin" method="post">
                        <div class="row filter-row">
                            <div class="col-sm-6 col-md-3">
                                <div class="form-group">
                                    <label for="categoryname">Name Categories</label>
                                    <input type="text" class="form-control" name="categoryName" placeholder="Enter Category Name" value="${categoryName != null ? categoryName : ''}">
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <div class="form-group">
                                    <label for="statusCate">StatusCate</label>
                                    <select class="form-control" id="statusCate" name="statusCate">
                                        <option value="" ${statusCate == null || statusCate.isEmpty() ? 'selected' : ''}>All</option>
                                        <option value="1" ${statusCate != null && statusCate == '1' ? 'selected' : ''}>Active</option>
                                        <option value="0" ${statusCate != null && statusCate == '0' ? 'selected' : ''}>Trash</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-3">
                                <div class="form-group">
                                    <label>&nbsp;</label> 
                                    <button class="btn btn-primary btn-block" type="submit" name="mod" value="filter">Submit</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>



                <div class="row">
                    <div class="col-sm-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-center table-hover mb-0 datatable">
                                        <thead>
                                            <tr>
                                                <th>S.No</th>
                                                <th>Category Name</th>
                                                <th>Description</th>
                                                <th>Status</th>
                                                <th class="text-end">Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="c" items="${categories}">
                                                <tr>
                                                    <td>${c.getCaID()}</td>
                                                    <td>${c.getCategoriesName()}</td>
                                                    <td>${c.getDescription()}</td>
                                                    <td>
                                                        <c:choose>
                                                            <c:when test="${c.getStatusCate() == 1}">
                                                                <span class="active-status">Active</span>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <span class="trash-status">Trash</span>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </td>
                                                    <td class="text-end">
                                                        <a href="javascript:void(0);" class="btn btn-sm btn-secondary me-2" data-bs-toggle="modal" data-bs-target="#edit-category-${c.getCaID()}">
                                                            <i class="far fa-edit"></i>
                                                        </a>
                                                        <c:if test="${c.getStatusCate() == 0}">
                                                            <form action="categoryAdmin" method="post" style="display: inline;">
                                                                <input name="mod" value="active" type="hidden">
                                                                <input name="cat" value="${c.getCaID()}" type="hidden">
                                                                <input type="hidden" name="mod" value="activateCategory">
                                                                <input type="hidden" name="categoryId" value="${c.getCaID()}">
                                                                <button type="submit" class="btn btn-sm btn-success activate-blog-btn btn-status" data-category-id="${c.getCaID()}">

                                                                    <i class="fas fa-check"></i> 
                                                                </button>
                                                            </form>
                                                        </c:if>
                                                        <button type="button" class="btn btn-sm btn-danger delete-blog-btn btn-status" data-category-id="${c.getCaID()}" data-bs-toggle="modal" data-bs-target="#delete_category_${c.getCaID()}">
                                                            <i class="far fa-trash-alt"></i> 
                                                        </button>
                                                        <a href="javascript:void(0);" class="btn btn-sm btn-info me-2 view-details-btn" data-bs-toggle="modal" data-bs-target="#view-category-details-modal${c.getCaID()}">
                                                            <i class="fas fa-eye"></i> 
                                                        </a>
                                                    </td>
                                                </tr>

                                                <!-- Modal for Viewing Category Details -->
                                            <div class="modal fade" id="view-category-details-modal${c.getCaID()}" tabindex="-1" aria-labelledby="viewCategoryDetailsModalLabel" aria-hidden="true">
                                                <div class="modal-dialog modal-lg">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="viewCategoryDetailsModalLabel">Category Details</h5>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="row">
                                                                <div class="col-md-4">
                                                                    <img id="category-details-image" src="${c.getImage()}" alt="Category Image" class="img-fluid">
                                                                </div>
                                                                <div class="col-md-8">
                                                                    <h3 id="category-details-title">${c.getCategoriesName()}</h3>
                                                                    <p id="category-details-description">${c.getDescription()}</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="modal custom-modal fade" id="delete_category_${c.getCaID()}" role="dialog">
                                                <div class="modal-dialog modal-dialog-centered">
                                                    <div class="modal-content">
                                                        <div class="modal-body">
                                                            <form id="delete-category-form-${c.getCaID()}" action="categoryAdmin" method="post">
                                                                <input name="mod" value="delete" type="hidden">
                                                                <input name="cate" value="${c.getCaID()}" type="hidden">
                                                                <div class="form-header">
                                                                    <h3>Delete</h3>
                                                                    <p>Are you sure you want to delete?</p>
                                                                </div>
                                                                <div class="modal-btn delete-action">
                                                                    <div class="row">
                                                                        <div class="col-6">
                                                                            <button style="width: 100%" type="submit" class="btn btn-primary continue-btn delete-btn-ajax">Delete</button>
                                                                        </div>
                                                                        <div class="col-6">
                                                                            <a style="width: 100%" data-bs-dismiss="modal" class="btn btn-primary cancel-btn">Cancel</a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal fade custom-modal" id="edit-category-${c.getCaID()}">
                                                <div class="modal-dialog modal-dialog-centered">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h4 class="modal-title">Edit Category</h4>
                                                            <button type="button" class="close" data-bs-dismiss="modal"><span>&times;</span></button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <form id="edit-category-${c.getCaID()}" action="categoryAdmin" method="post">
                                                                <input name="mod" value="edit" hidden>
                                                                <div class="form-group">
                                                                    <label for="edit-categoryname">Category Name</label>
                                                                    <input name="categoryIdStr" value="${c.getCaID()}" hidden>
                                                                    <input oninput="checkCategories(caID)" type="text" class="form-control" id="edit-categoryname" name="categoryName" value="${c.getCategoriesName()}" required>
                                                                    <div style="color: red" id="eCategoryname"></div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="edit-description">Description</label>
                                                                    <input name="categoryIdStr" value="${c.getCaID()}" hidden>
                                                                    <input oninput="checkCategories(caID)" type="text" class="form-control" id="edit-description" name="description" value="${c.getDescription()}" required>
                                                                </div>
                                                                <div class="mt-4">
                                                                    <button id="edit-category-btn" class="btn btn-primary btn-block">Submit</button>
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
        <!-- Modal Add Category -->
        <div class="modal fade custom-modal" id="add-category">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Add Category</h4>
                        <button type="button" class="close" data-bs-dismiss="modal"><span>&times;</span></button>
                    </div>
                    <div class="modal-body">
                        <form id="add-category-form" action="categoryAdmin" method="post">
                            <input name="mod" value="add" hidden>
                            <div class="form-group">
                                <label for="categoryName">Category Name</label>
                                <input type="text" class="form-control" id="categoryname" name="categoryName" placeholder="Enter Category Name" required>
                                <div style="color: red" class="error-message" id="eCategoryname"></div>
                            </div>
                            <div class="form-group">
                                <label for="categoryDescription">Description</label>
                                <input type="text" class="form-control" id="categorydescription" name="description" placeholder="Enter Category Description" required>
                                <div style="color: red" class="error-message" id="eCategorydescription"></div>
                            </div>
                            <div class="mt-4">
                                <button type="submit" id="add-category-btn" class="btn btn-primary btn-block">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
        <script>
            $(document).ready(function () {
            <% String message = (String) session.getAttribute("message"); %>
            <% if (message != null) { %>
                toastr.success('<%= message %>', 'Notification', {
                    timeOut: 3000,
                    positionClass: 'toast-top-right'
                });
            <% session.removeAttribute("message"); %>
            <% } %>
            });

            document.getElementById('filter_search').addEventListener('click', function () {
                var filterInputs = document.getElementById('filter_inputs');
                if (filterInputs.style.display === 'none' || filterInputs.style.display === '') {
                    filterInputs.style.display = 'block';
                } else {
                    filterInputs.style.display = 'none';
                }
            });
        </script>
        <script src="assets/js/jquery-3.7.1.min.js"></script>
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/feather.min.js"></script>
        <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="assets/plugins/datatables/datatables.min.js"></script>
        <script src="assets/js/moment.min.js"></script>
        <script src="assets/js/bootstrap-datetimepicker.min.js"></script>
        <script src="assets/js/script.js"></script>
        <script src="../../../cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="8b91df92299aa578c48a6e6b-|49" defer></script>
    </body>
</html>
