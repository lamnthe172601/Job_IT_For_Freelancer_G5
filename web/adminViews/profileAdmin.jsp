<%-- 
    Document   : profileAdmin
    Created on : May 25, 2024, 2:36:43 PM
    Author     : kudol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/admin/profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:40:20 GMT -->
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Kofejob - Bootstrap Admin HTML Template</title>

        <link rel="shortcut icon" href="adminAssets/img/favicon.png">

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
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                                    <li class="breadcrumb-item active">Profile</li>
                                </ul>
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
                            <img class="avatar-img" src="adminAssets/img/profiles/avatar-07.jpg" alt="Profile Image">
                            <input type="file" id="avatar_upload">
                            <span class="avatar-edit">
                                <i data-feather="edit-2" class="avatar-uploader-icon shadow-soft"></i>
                            </span>
                        </label>
                        <h2>Damon Cohn <i class="fas fa-certificate text-primary small" data-bs-toggle="tooltip" data-placement="top" title data-original-title="Verified"></i></h2>
                        <ul class="list-inline">
                            <li class="list-inline-item">
                                <i class="far fa-building"></i> <span>Versatile Workforce</span>
                            </li>
                            <li class="list-inline-item">
                                <i class="fas fa-map-marker-alt"></i> 359 Plains, PA 18705
                            </li>
                            <li class="list-inline-item">
                                <i class="far fa-calendar-alt"></i> <span>Joined March 2022</span>
                            </li>
                        </ul>
                    </div>
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="card">
                                <div class="card-body pt-0">
                                    <div class="card-header mb-4">
                                        <h5 class="card-title">Complete your profile</h5>
                                    </div>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="progress progress-md flex-grow-1">
                                            <div class="progress-bar bg-primary" role="progressbar" style="width: 60%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                        <span class="ms-4">60%</span>
                                    </div>
                                </div>
                            </div>
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
                                            Damon Cohn
                                        </li>
                                        <li>
                                            Versatile Workforce
                                        </li>
                                        <li class="pt-2 pb-0">
                                            <small class="text-dark">Contacts</small>
                                        </li>
                                        <li>
                                            <a href="https://kofejob.dreamstechnologies.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="c5a1a4a8aaaba6aaadab85a0bda4a8b5a9a0eba6aaa8">[email&#160;protected]</a>
                                        </li>
                                        <li>
                                            570-613-6563
                                        </li>
                                        <li class="pt-2 pb-0">
                                            <small class="text-dark">Address</small>
                                        </li>
                                        <li>
                                            359 Coal Road<br>
                                            Plains, PA 18705
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-8 d-flex">
                            <div class="card w-100">
                                <div class="card-body pt-0">
                                    <div class="card-header mb-4">
                                        <h5 class="card-title">Activity</h5>
                                    </div>
                                    <ul class="activity-feed">
                                        <li class="feed-item">
                                            <div class="feed-date">Nov 16</div>
                                            <span class="feed-text"><a href="profile.html">Brian Johnson</a> has paid the invoice <a href="view-invoice.html">"#CD41544"</a></span>
                                        </li>
                                        <li class="feed-item">
                                            <div class="feed-date">Nov 7</div>
                                            <span class="feed-text"><a href="profile.html">Marie Canales</a> has accepted your estimate <a href="view-estimate.html">#GTR14544</a></span>
                                        </li>
                                        <li class="feed-item">
                                            <div class="feed-date">Jan 05</div>
                                            <span class="feed-text"><a href="profile.html">Brian Johnson</a> has paid the invoice <a href="view-invoice.html">"#CD42565"</a></span>
                                        </li>
                                        <li class="feed-item">
                                            <div class="feed-date">Feb 10</div>
                                            <span class="feed-text"><a href="profile.html">Marie Canales</a> has accepted your estimate <a href="view-estimate.html">#GTR422385</a></span>
                                        </li>
                                        <li class="feed-item">
                                            <div class="feed-date">Mar 25</div>
                                            <span class="feed-text"><a href="profile.html">Brian Johnson</a> has paid the invoice <a href="view-invoice.html">"#CD6988"</a></span>
                                        </li>
                                        <li class="feed-item">
                                            <div class="feed-date">Mar 5</div>
                                            <span class="feed-text"><a href="profile.html">Marie Canales</a> has accepted your estimate <a href="view-estimate.html">#GTR569231</a></span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>


        <script data-cfasync="false" src="../../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="adminAssets/js/jquery-3.7.1.min.js" type="fdc714e18f0a419a31cb594a-text/javascript"></script>

        <script src="adminAssets/js/bootstrap.bundle.min.js" type="fdc714e18f0a419a31cb594a-text/javascript"></script>

        <script src="adminAssets/js/feather.min.js" type="fdc714e18f0a419a31cb594a-text/javascript"></script>

        <script src="adminAssets/plugins/slimscroll/jquery.slimscroll.min.js" type="fdc714e18f0a419a31cb594a-text/javascript"></script>

        <script src="adminAssets/js/script.js" type="fdc714e18f0a419a31cb594a-text/javascript"></script>
        <script src="assets/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="fdc714e18f0a419a31cb594a-|49" defer></script></body>

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/admin/profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:40:22 GMT -->
</html>
