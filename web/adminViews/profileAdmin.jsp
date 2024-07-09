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
                    <% Admin admin = (Admin) request.getAttribute("admin"); %>
                    <% if (admin != null) { %>
                        <label class="avatar avatar-xxl profile-cover-avatar" for="avatar_upload">
                            <img class="avatar-img" src="<%= admin.getImage() %>" alt="Profile Image">
                            <input type="file" id="avatar_upload">
                            <span class="avatar-edit">
                                <i data-feather="edit-2" class="avatar-uploader-icon shadow-soft"></i>
                            </span>
                        </label>
                        <h2><%= admin.getFirst_name() %> <%= admin.getLast_name() %> 
                            <i class="fas fa-certificate text-primary small" data-bs-toggle="tooltip" data-placement="top" title data-original-title="Verified"></i>
                        </h2>
<!--                        <ul class="list-inline">
                            <li class="list-inline-item">
                                <i class="far fa-building"></i> <span>Versatile Workforce</span>
                            </li>
                            <li class="list-inline-item">
                                <i class="fas fa-map-marker-alt"></i> 359 Plains, PA 18705
                            </li>
                            <li class="list-inline-item">
                                <i class="far fa-calendar-alt"></i> <span>Joined March 2022</span>
                            </li>
                        </ul>-->
                    <% } else { %>
                        <p>Admin not found.</p>
                    <% } %>
                </div>
                <!-- Rest of the HTML content -->
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
