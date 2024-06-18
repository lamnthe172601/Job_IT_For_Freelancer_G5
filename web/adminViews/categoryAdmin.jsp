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
                                    <li class="breadcrumb-item"><a href="index.html">Home</a>
                                    </li>
                                    <li class="breadcrumb-item active">Categories</li>
                                </ul>
                            </div>
                            <div class="col-auto">
                                <a href="javascript:void(0);" class="btn add-button me-2" data-bs-toggle="modal" data-bs-target="#add-category">
                                    <i class="fas fa-plus"></i>
                                </a>
                                <a class="btn filter-btn" href="javascript:void(0);" id="filter_search">
                                    <i class="fas fa-filter"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card filter-card" id="filter_inputs">
                    <div class="card-body pb-0">
                        <form action="#" method="post">
                            <div class="row filter-row">
                                <div class="col-sm-6 col-md-3">
                                    <div class="form-group">
                                        <label>Add Categories</label>
                                        <input class="form-control" type="text">
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-3">
                                    <div class="form-group">
                                        <label>From Date</label>
                                        <div class="cal-icon">
                                            <input class="form-control datetimepicker" type="text">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-3">
                                    <div class="form-group">
                                        <label>To Date</label>
                                        <div class="cal-icon">
                                            <input class="form-control datetimepicker" type="text">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-3">
                                    <div class="form-group">
                                        <button class="btn btn-primary btn-block" type="submit">Submit</button>
                                    </div>
                                </div>
                            </div>
                        </form>
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
                                                <th>S.No</th>
                                                <th>Category Name</th>                                             
                                                <th>Description</th>          
                                                <th class="text-end">Actions</th>

                                            </tr>
                                        </thead>

                                        <c:forEach var="c" items="${categories}">
                                            <tr>
                                                <td>${c.getCaID()}</td>
                                                <td>${c.getCategoriesName()}</td>
                                                <td>${c.getDescription()}</td>
                                                <td class="text-end">
                                                    <a href="javascript:void(0);" class="btn btn-sm btn-secondary me-2" data-bs-toggle="modal" data-bs-target="#edit-category-${c.getCaID()}"><i class="far fa-edit"></i></a>
                                                    <a href="javascript:void(0);" class="btn btn-sm btn-danger" data-bs-toggle="modal" data-bs-target="#delete_category_${c.getCaID()}"><i class="far fa-trash-alt"></i></a>
                                                </td>
                                            </tr>
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
                                                                            <button style="width: 100%" type="button" class="btn btn-primary continue-btn delete-btn-ajax">Delete</button>
                                                                        </div>
                                                                        <div class="col-6">
                                                                            <a href="javascript:void(0);" data-bs-dismiss="modal" class="btn btn-primary cancel-btn">Cancel</a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>




                                            <div class="modal fade custom-modal" id="edit-category-${c.getCaID()}">
                                                <div class="modal-dialog modal-dialog-centered" >
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h4 class="modal-title">Edit Category</h4>
                                                            <button type="button" class="close" data-bs-dismiss="modal"><span>&times;</span></button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <form id="edit-category-${c.getCaID()}" action="categoryAdmin" method="post">
                                                                <input  name="mod" value="edit" hidden>

                                                                <div class="form-group">
                                                                    <label for="edit-categoryname">Category Name</label>
                                                                    <input name="categoryIdStr" value="${c.getCaID()}" hidden>
                                                                    <input oninput="checkCategory()" type="text" class="form-control" id="edit-categoryname" name="categoryName" placeholder="Edit Category Name" required>
                                                                    <div style="color: red" id="eCategoryname"></div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="edit-description">Description</label>
                                                                    <input name="categoryIdStr" value="${c.getCaID()}" hidden>
                                                                    <input oninput="checkCategory()" type="text" class="form-control" id="edit-description" name="description" placeholder="Edit Category Description" required>
                                                                </div>
                                                                <div class="mt-4">
                                                                    <button  id="edit-category-btn" class="btn btn-primary btn-block">Submit</button>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>                               
                                        </c:forEach>


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
                        <form id="add-category-form">
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
                                <button type="button" id="add-category-btn" class="btn btn-primary btn-block">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
            $(document).ready(function () {
                // Bắt sự kiện click nút Submit
                $('#add-category-btn').click(function (event) {
                    // Ngăn chặn hành vi mặc định của nút Submit
                    event.preventDefault();

                    // Lấy dữ liệu từ form
                    var categoryName = $('#categoryname').val();
                    var categoryDescription = $('#categorydescription').val();

                    // Gửi dữ liệu lên server bằng AJAX
                    $.ajax({
                        type: "POST",
                        url: "/Job_IT_For_Freelancer_G5/categoryAdmin", // URL xử lý dữ liệu
                        data: {
                            categoryName: categoryName,
                            description: categoryDescription,
                            mod: 'add' // Tham số mod cho biết là thêm mới danh mục
                        },
                        success: function (response) {
                            // Xử lý khi thêm thành công
                            $('#add-category').modal('hide'); // Đóng modal
                            // Không cần reload trang, thực hiện cập nhật dữ liệu ngay tại đây
                            // Ví dụ: Hiển thị thông báo thành công, cập nhật danh sách danh mục, vv.
                        },
                        error: function (xhr, status, error) {
                            // Xử lý khi có lỗi
                            var errorMessage = xhr.status + ': ' + xhr.statusText;
                            alert('Error - ' + errorMessage); // Thông báo lỗi cho người dùng
                        }
                    });
                });
            });



            $(document).ready(function () {
                $('.delete-btn-ajax').click(function (event) {
                    event.preventDefault();

                    // Lấy id của modal và form
                    var modalId = $(this).closest('.modal').attr('id');
                    var formId = '#' + modalId + ' form';

                    // Lấy dữ liệu từ form
                    var formData = $(formId).serialize();

                    // Gửi dữ liệu lên server bằng AJAX
                    $.ajax({
                        type: "POST",
                        url: "/Job_IT_For_Freelancer_G5/categoryAdmin", // URL xử lý dữ liệu
                        data: formData,
                        success: function (response) {
                            $('#' + modalId).modal('hide'); // Đóng modal
                            // Cập nhật giao diện hoặc thông báo thành công tại đây
                        },
                        error: function (xhr, status, error) {
                            alert('Error deleting category.'); // Thông báo lỗi khi xảy ra lỗi trong quá trình gửi yêu cầu
                        }
                    });
                });
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
