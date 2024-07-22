<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@page import="Models.Admin" %>--%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Profile Admin</title>
        <link rel="stylesheet" href="adminAssets/css/bootstrap.min.css">
        <link rel="stylesheet" href="adminAssets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="adminAssets/plugins/fontawesome/css/all.min.css">
        <link rel="stylesheet" href="adminAssets/css/feather.css">
        <link rel="stylesheet" href="adminAssets/css/style.css">
        <style>
            /* Căn giữa card trong khung hình */
            .card {
                display: flex;
                flex-direction: column;
                align-items: center; /* Căn giữa theo chiều ngang */
                justify-content: center; /* Căn giữa theo chiều dọc */
                height: 100%; /* Đảm bảo card chiếm toàn bộ chiều cao của container */
            }

            /* Đảm bảo card-body cũng được căn giữa nếu cần */
            .card-body {
                display: flex;
                flex-direction: column;
                align-items: center;
                text-align: center; /* Căn giữa văn bản trong card-body */
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
                        <div class="row">
                            <div class="col">
                                <h3 class="page-title">Profile</h3>
                            </div>

                        </div>
                    </div>

                    <div  class="profile-cover">
                        <div style=" background: #FF5B37" class=" profile-cover-wrap">

                            <div class="cover-content">
                                <div class="custom-file-btn">

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="text-center mb-5">
                        <label class="avatar avatar-xxl profile-cover-avatar" for="avatar_upload">
                            <img class="avatar-img" src=${admin.getImage()} alt="Profile Image">
                            <input type="file" id="avatar_upload">
                            <span class="avatar-edit">
                                <i data-feather="edit-2" class="avatar-uploader-icon shadow-soft"></i>
                            </span>
                        </label>

                        <h1>  ${admin.getFirst_name()} ${admin.getLast_name()} <i class="fas fa-certificate text-primary small" data-bs-toggle="tooltip" data-placement="top" title data-original-title="Verified"></i></h1>

                        <a style="margin-left: 80%; background: #FF5B37" href="javascript:void(0);" class="btn btn-sm btn-secondary me-2" data-bs-toggle="modal" data-bs-target="#update-blog-modal">Edit Profile</a>


                    </div>
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body pt-0">
                                <div class="card-header mb-4">
                                    <h3 class="card-title d-flex justify-content-between">
                                        Profile

                                    </h3>
                                </div>
                                <ul class="list-unstyled mb-0">
                                    <li class="py-0">
                                        <h3 class="text-dark">About</h3>
                                    </li>
                                    <li> Admin Name :
                                        ${admin.getFirst_name()} ${admin.getLast_name()}
                                    </li>
                                    <li> Email : 
                                        ${admin.getEmail()}
                                    </li>
                                    <li> Phone :
                                        ${admin.getPhone()}
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal for Updating profile admin -->
        <div class="modal fade" id="update-blog-modal" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="updateBlogModalLabel">Update Profile Admin</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form id="update-blog-form" data-validate="blog-form" method="post" action="profileAdmin" enctype="multipart/form-data">
                            <input type="hidden" name="adminID" value="${admin.adminID}">
                            <div class="mb-3">
                                <label for="blog-image" class="form-label">Image</label>
                                <input type="file" class="form-control update-blog-image" name="image" id="blog-image" accept="image/*">
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-md-12">
                                    <div class="mb-3">
                                        <label class="form-label">First Name</label>
                                        <input oninput="checkfn()" type="text" class="form-control" id="firstname" name="first_name" value="${admin.first_name}" maxlength="50" required>
                                        <div style="color: red" id="eFirstname"></div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-12">
                                    <div class="mb-3">
                                        <label class="form-label">Last Name</label>
                                        <input oninput="checkln()" type="text" class="form-control" id="lastname" name="last_name" value="${admin.last_name}" maxlength="50" required>
                                        <div style="color: red" id="eLastname"></div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-12">
                                    <div class="mb-3">
                                        <label class="form-label">Phone Number</label>
                                        <input oninput="checkphone()" type="text" class="form-control" id="phone" name="phone" value="${admin.phone}"  maxlength="10" required>
                                        <div style="color: red" id="ePhone"></div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-12">
                                    <div class="mb-3">
                                        <label class="form-label">Email</label>
                                        <input oninput="checkEmail()" type="email" class="form-control" id="email" name="email" value="${admin.email}" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,}$" title="Please enter a valid email address" maxlength="50" required>
                                        <div style="color: red" id="eEmail"></div>
                                    </div>
                                </div>
                                <input type="hidden" name="userID" value="${admin.userID}">
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                <button type="submit" class="btn btn-primary" name="mode" value="update">Update</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>


        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
        <script src="assets/js/script.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>
        <script src="../../cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="ba3353e5dfbf68844181f2d9-|49" defer></script></body>
    <script src="assets/js/checkinput.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <script>
        $(document).ready(function () {
            var messageModal =
        <c:if test="${sessionScope.check == 1}">
            `<div class="modal custom-modal fade" id="messageModal" tabindex="-1" role="dialog">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-body text-center">
                            <div class="checkmark-circle">
                                <div class="background"></div>
                                <div class="checkmark"></div>
                            </div>
                            <h3>Notification</h3>
                            <p>Update successful</p>
                            <a href="profileAdmin" style="margin-left: 50% ; width: 4%; background-color: #6c5ce7; border-color: #6c5ce7;" data-bs-dismiss="modal" class="btn btn-primary cancel-btn">OK</a>
                        </div>
                    </div>
                </div>
            </div>`</c:if>
            <c:remove var="check" scope="session" />
                    ;
                    $('body').append(messageModal);
            $('#messageModal').modal('show');
        });
    </script>

<style>
    .modal-body.text-center {
        text-align: center;
    }
    .checkmark-circle {
        width: 80px;
        height: 80px;
        position: relative;
        display: inline-block;
        vertical-align: top;
        margin-bottom: 10px;
    }
    .background {
        width: 100%;
        height: 100%;
        border-radius: 50%;
        background: #f8f8f8;
        position: absolute;
    }
    .checkmark {
        width: 50px;
        height: 15px;
        border-width: 5px;
        border-style: solid;
        border-color: #28a745;
        border-top: none;
        border-right: none;
        transform: rotate(-45deg);
        position: absolute;
        top: 35%;
        left: 25%;
    }
    .notification-title {
        margin-top: 20px;
        margin-bottom: 20px;
        font-size: 24px;
        font-weight: bold;
    }
    .notification-message {
        margin-bottom: 30px;
        font-size: 16px;

    }
</style>
<script src="assets/js/jquery-3.7.1.min.js"></script>
<script src="assets/js/bootstrap.bundle.min.js"></script>
<script src="assets/js/feather.min.js"></script>
<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="assets/plugins/datatables/datatables.min.js"></script>
<script src="assets/js/moment.min.js"></script>
<script src="assets/js/bootstrap-datetimepicker.min.js"></script>
<script src="assets/js/script.js"></script>
<script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-3.7.1.min.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>

<script src="assets/js/bootstrap.bundle.min.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>

<script src="assets/plugins/select2/js/select2.min.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>

<script src="assets/js/moment.min.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>
<script src="assets/js/bootstrap-datetimepicker.min.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>

<script src="assets/plugins/datatables/jquery.dataTables.min.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>
<script src="assets/plugins/datatables/datatables.min.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>

<script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>
<script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>

<script src="assets/js/script.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>
<script src="../../cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="ba3353e5dfbf68844181f2d9-|49" defer></script></body>
<script src="assets/js/checkinput.js"></script>
<script src="../../../cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="8b91df92299aa578c48a6e6b-|49" defer></script>
<script src="adminAssets/js/jquery-3.7.1.min.js"></script>
<script src="adminAssets/js/bootstrap.bundle.min.js"></script>
<script src="adminAssets/js/feather.min.js"></script>
<script src="adminAssets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="adminAssets/js/script.js"></script>
</body>
</html>
