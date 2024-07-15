<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Models.Admin" %>
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

                    <div class="profile-cover">
                        <div class="profile-cover-wrap">
                            <img class="profile-cover-img" src="adminAssets/img/profiles/avatar-07.jpg" alt="Profile Cover">
                            <div class="cover-content">
                                <div class="custom-file-btn">
                                    <input type="file" class="custom-file-btn-input" id="cover_upload">
                                    <label class="custom-file-btn-label btn btn-sm btn-white" for="cover_upload">
                                        <i class="fas fa-camera"></i>
                                        <span class="d-none d-sm-inline-block ms-1">Update Cover</span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="text-center mb-5">
                        <label class="avatar avatar-xxl profile-cover-avatar" for="avatar_upload">
                            <img class="avatar-img" src="<%= admin.getImage() %>" alt="Profile Image">
                            <input type="file" id="avatar_upload">
                            <span class="avatar-edit">
                                <i data-feather="edit-2" class="avatar-uploader-icon shadow-soft"></i>
                            </span>
                        </label>
                        <h2><%= admin.getFirst_name() %> <%= admin.getLast_name() %> <i class="fas fa-certificate text-primary small" data-bs-toggle="tooltip" data-placement="top" title data-original-title="Verified"></i></h2>
                        <ul class="list-inline">
                            <li class="list-inline-item">
                                <i class="fas fa-map-marker-alt"></i> <%= admin.getPhone() %>
                            </li>
                        </ul>
                    </div>
                    <div class="col-lg-4">
                        <div class="card">
                            <div class="card-body pt-0">
                                <div class="card-header mb-4">
                                    <h5 class="card-title d-flex justify-content-between">
                                        <span>Profile</span>
                                        <a class="btn btn-sm btn-white" href="settings.html">Edit</a>
                                    </h5>
                                </div>
                                <ul class="list-unstyled mb-0">
                                    <li class="py-0">
                                        <small class="text-dark">About</small>
                                    </li>
                                    <li>
                                        <%= admin.getFirst_name() %> <%= admin.getLast_name() %>
                                    </li>
                                    <li>
                                        <%= admin.getEmail() %>
                                    </li>
                                    <li>
                                        <%= admin.getPhone() %>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="adminAssets/js/jquery-3.7.1.min.js"></script>
        <script src="adminAssets/js/bootstrap.bundle.min.js"></script>
        <script src="adminAssets/js/feather.min.js"></script>
        <script src="adminAssets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="adminAssets/js/script.js"></script>
    </body>
</html>
