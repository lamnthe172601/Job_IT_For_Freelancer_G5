<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/admin/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:35:42 GMT -->
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
                                <h3 class="page-title">Dashboard</h3>
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="home">Home</a></li>
                                    <li class=" active">/Dashboard</li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-8">

                            <div class="row">
                                <div class="col-md-4 d-flex">
                                    <div class="card wizard-card flex-fill">
                                        <div class="card-body">
                                            <p class="text-primary mt-0 mb-2">Users</p>
                                            <h5>${totalUsers}</h5>
                                            <p><a href="users.html">view details</a></p>
                                            <span class="dash-widget-icon bg-1">
                                                <i class="fas fa-users"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 d-flex">
                                    <div class="card wizard-card flex-fill">
                                        <div class="card-body">
                                            <p class="text-primary mt-0 mb-2">Completed Projects</p>
                                            <h5>${totalPosts}</h5>
                                            <p><a href="projects.html">view details</a></p>
                                            <span class="dash-widget-icon bg-1">
                                                <i class="fas fa-th-large"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 d-flex">
                                    <div class="card wizard-card flex-fill">
                                        <div class="card-body">
                                            <p class="text-primary mt-0 mb-2">Active Projects</p>
                                            <h5>${totalJobApplys}</h5>
                                            <p><a href="projects.html">view details</a></p>
                                            <span class="dash-widget-icon bg-1">
                                                <i class="fas fa-bezier-curve"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-12 d-flex">
                                    <div class="card w-100">
                                        <div class="card-body pt-0 pb-2">
                                            <div class="card-header">
                                                <h5 class="card-title">Over view</h5>
                                            </div>
                                            <div id="chart" class="mt-4"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
<!--                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card bg-white projects-card">
                                <div class="card-body pt-0">
                                    <div class="card-header">
                                        <h5 class="card-title">Reviews</h5>
                                    </div>
                                    <div class="reviews-menu-links">
                                        <ul role="tablist" class="nav nav-pills card-header-pills nav-justified">
                                            <li class="nav-item">
                                                <a href="#tab-4" data-bs-toggle="tab" class="nav-link active">All (272)</a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="#tab-5" data-bs-toggle="tab" class="nav-link">Active (218)</a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="#tab-6" data-bs-toggle="tab" class="nav-link"> Pending Approval (03)
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="#tab-7" data-bs-toggle="tab" class="nav-link">Trash (0)</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="tab-content pt-0">
                                        <div role="tabpanel" id="tab-4" class="tab-pane fade active show">
                                            <div class="table-responsive">
                                                <table class="table table-hover table-center mb-0 datatable">
                                                    <thead>
                                                        <tr>
                                                            <th></th>
                                                            <th>Profile</th>
                                                            <th>Designation</th>
                                                            <th>comments</th>
                                                            <th>Stars</th>
                                                            <th>Category</th>
                                                            <th class="text-end">Actions</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="form-check custom-checkbox">
                                                                    <input type="checkbox" class="form-check-input" id="customCheck1">
                                                                    <label class="form-check-label" for="customCheck1"></label>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <h2 class="table-avatar">
                                                                    <a href="profile.html"><img class="avatar-img rounded-circle me-2" src="adminAssets/img/profiles/avatar-14.jpg" alt="User Image">
                                                                        Janet Paden
                                                                    </a>
                                                                </h2>
                                                            </td>
                                                            <td>
                                                                CEO
                                                            </td>
                                                            <td>
                                                                <div class="desc-info">
                                                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Volutpat orci enim, mattis nibh aliquam dui, nibh faucibus aenean. Eget volutpat
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <i class="fas fa-star text-primary"></i>
                                                                <i class="fas fa-star text-primary"></i>
                                                                <i class="fas fa-star text-primary"></i>
                                                                <i class="fas fa-star text-primary"></i>
                                                                <i class="fas fa-star text-muted"></i>
                                                            </td>
                                                            <td>
                                                                Angular
                                                            </td>
                                                            <td class="text-end text-nowrap">
                                                                <a href="javascript:void(0);" class=" btn btn-approve text-white me-2">Approve</a>
                                                                <a href="javascript:void(0);" class="btn btn-disable">Enable</a>
                                                            </td>
                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div role="tabpanel" id="tab-5" class="tab-pane fade">
                                            <div class="table-responsive">
                                                <table class="table table-center table-bordered table-hover datatable">
                                                    <thead>
                                                        <tr>
                                                            <th></th>
                                                            <th>Profile</th>
                                                            <th>Designation</th>
                                                            <th>comments</th>
                                                            <th>Stars</th>
                                                            <th>Category</th>
                                                            <th class="text-end">Actions</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="form-check custom-checkbox">
                                                                    <input type="checkbox" class="form-check-input" id="customCheck11">
                                                                    <label class="form-check-label" for="customCheck11"></label>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <h2 class="table-avatar">
                                                                    <a href="profile.html"><img class="avatar-img rounded-circle me-2" src="adminAssets/img/profiles/avatar-04.jpg" alt="User Image">
                                                                        Deboarah
                                                                    </a>
                                                                </h2>
                                                            </td>
                                                            <td>
                                                                Associate Engineer
                                                            </td>
                                                            <td>
                                                                <div class="desc-info">
                                                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Volutpat orci enim, mattis nibh aliquam dui, nibh faucibus aenean. Eget volutpat
                                                                </div>
                                                            </td>
                                                            <td class="text-nowrap">
                                                                <i class="fas fa-star text-primary"></i>
                                                                <i class="fas fa-star text-primary"></i>
                                                                <i class="fas fa-star text-primary"></i>
                                                                <i class="fas fa-star text-primary"></i>
                                                                <i class="fas fa-star text-muted"></i>
                                                            </td>
                                                            <td>
                                                                React
                                                            </td>
                                                            <td class="text-end text-nowrap">
                                                                <a href="javascript:void(0);" class=" btn btn-approve text-white me-2">Approve</a>
                                                                <a href="javascript:void(0);" class="btn btn-disable">Enable</a>
                                                            </td>
                                                        </tr>                                                     
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div role="tabpanel" id="tab-6" class="tab-pane fade">
                                            <div class="table-responsive">
                                                <table class="table table-bordered table-hover datatable">
                                                    <thead>
                                                        <tr>
                                                            <th></th>
                                                            <th>Profile</th>
                                                            <th>Designation</th>
                                                            <th>comments</th>
                                                            <th>Stars</th>
                                                            <th>Category</th>
                                                            <th class="text-end">Actions</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="form-check custom-checkbox">
                                                                    <input type="checkbox" class="form-check-input" id="customCheck21">
                                                                    <label class="form-check-label" for="customCheck21"></label>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <h2 class="table-avatar">
                                                                    <a href="profile.html"><img class="avatar-img rounded-circle me-2" src="adminAssets/img/profiles/avatar-05.jpg" alt="User Image">
                                                                        Albert Boone
                                                                    </a>
                                                                </h2>
                                                            </td>
                                                            <td>
                                                                CEO
                                                            </td>
                                                            <td>
                                                                <div class="desc-info">
                                                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Volutpat orci enim, mattis nibh aliquam dui, nibh faucibus aenean. Eget volutpat
                                                                </div>
                                                            </td>
                                                            <td class="text-nowrap">
                                                                <i class="fas fa-star text-primary"></i>
                                                                <i class="fas fa-star text-primary"></i>
                                                                <i class="fas fa-star text-primary"></i>
                                                                <i class="fas fa-star text-primary"></i>
                                                                <i class="fas fa-star text-muted"></i>
                                                            </td>
                                                            <td>
                                                                React
                                                            </td>
                                                            <td class="text-end text-nowrap">
                                                                <a href="javascript:void(0);" class=" btn btn-approve text-white me-2">Approve</a>
                                                                <a href="javascript:void(0);" class="btn btn-disable">Enable</a>
                                                            </td>
                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div role="tabpanel" id="tab-7" class="tab-pane fade">
                                            <div class="table-responsive">
                                                <table class="table table-bordered table-hover datatable">
                                                    <thead>
                                                        <tr>
                                                            <th></th>
                                                            <th>Profile</th>
                                                            <th>Designation</th>
                                                            <th>comments</th>
                                                            <th>Stars</th>
                                                            <th>Category</th>
                                                            <th class="text-end">Actions</th>
                                                        </tr>
                                                    </thead>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>-->
                </div>

            </div>

        </div>

        <script src="adminAssets/js/jquery-3.7.1.min.js" defer></script>
        <script src="adminAssets/js/bootstrap.bundle.min.js" defer></script>
        <script src="adminAssets/js/feather.min.js" defer></script>
        <script src="adminAssets/plugins/slimscroll/jquery.slimscroll.min.js" defer></script>
        <script src="adminAssets/plugins/select2/js/select2.min.js" defer></script>
        <script src="adminAssets/plugins/datatables/jquery.dataTables.min.js" defer></script>
        <script src="adminAssets/plugins/datatables/datatables.min.js" defer></script>
        <script src="https://cdn.jsdelivr.net/npm/apexcharts" defer></script>
        <script src="adminAssets/js/script.js" defer></script>
        <script src="assets/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="164eb6d6a75caec95434e247-|49" defer></script>
    </body>

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/admin/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:37:17 GMT -->
</html>