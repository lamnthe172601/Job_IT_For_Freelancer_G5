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
        <style>
            .year-select-container {
                position: relative;
                z-index: 1000;
                min-width: 100px;
            }
            #yearSelect {
                width: 100%;
                padding: 5px;
            }
        </style>
    </head>
    <body>
        <div class="main-wrapper">

            <%@ include file="headerAdmin.jsp" %>
            <%@ include file="sidebar.jsp" %>


            <div class="page-wrapper">
                <div class="content container-fluid">
                    <div class="row">
                        <div class="col-md-8">

                            <div class="row">
                                <div class="col-md-4 d-flex">
                                    <div class="card wizard-card flex-fill">
                                        <div class="card-body">
                                            <p class="text-primary mt-0 mb-2">Users</p>
                                            <h5>${totalUsers}</h5>
                                            <!--<p><a href="users.html">view details</a></p>-->
                                            <span class="dash-widget-icon bg-1">
                                                <i class="fas fa-users"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 d-flex">
                                    <div class="card wizard-card flex-fill">
                                        <div class="card-body">
                                            <p class="text-primary mt-0 mb-2">Projects</p>
                                            <h5>${totalProjects}</h5>
                                            <!--<p><a href="projects.html">view details</a></p>-->
                                            <span class="dash-widget-icon bg-1">
                                                <i class="fas fa-th-large"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 d-flex">
                                    <div class="card wizard-card flex-fill">
                                        <div class="card-body">
                                            <p class="text-primary mt-0 mb-2">Blog</p>
                                            <h5>${totalBlogs}</h5>
                                            <!--<p><a href="projects.html">view details</a></p>-->
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
                                            <div class="card-header d-flex justify-content-between align-items-center">
                                                <h5 class="card-title">Overview</h5>
                                                <div class="dropdown">
                                                    <button class="btn btn-secondary dropdown-toggle" type="button" id="yearDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                                                        Select Year
                                                    </button>
                                                    <ul class="dropdown-menu" aria-labelledby="yearDropdown" id="yearList">
                                                        <!-- Year options will be added here dynamically -->
                                                    </ul>
                                                </div>
                                            </div>
                                            <div id="chart" class="mt-4"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>              
                    </div>

                </div>

            </div>

            <script>
                var chartData = ${chartDataJson};
                var availableYears = ${availableYearsJson};
            </script>
            <script src="adminAssets/js/jquery-3.7.1.min.js" defer></script>
            <script src="adminAssets/js/bootstrap.bundle.min.js" defer></script>
            <script src="adminAssets/js/feather.min.js" defer></script>
            <script src="adminAssets/plugins/slimscroll/jquery.slimscroll.min.js" defer></script>
            <script src="adminAssets/plugins/select2/js/select2.min.js" defer></script>
            <script src="adminAssets/plugins/datatables/jquery.dataTables.min.js" defer></script>
            <script src="adminAssets/plugins/datatables/datatables.min.js" defer></script>
            <script src="https://cdn.jsdelivr.net/npm/apexcharts" defer></script>
            <script src="adminAssets/js/script.js" defer></script>
            <script src="adminAssets/js/Chart.js" defer></script>
            <script src="assets/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="164eb6d6a75caec95434e247-|49" defer></script>
    </body>

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/admin/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:37:17 GMT -->
</html>