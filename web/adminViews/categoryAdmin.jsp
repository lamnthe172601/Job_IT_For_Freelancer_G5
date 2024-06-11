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
            <div class="header">
                <div class="header-left">
                    <a href="home" class="logo">
                        <img src="adminAssets/img/logo.png" alt="Logo">
                    </a>
                    <a href="home" class="logo logo-small">
                        <img src="adminAssets/img/logo-small.png" alt="Logo" width="30" height="30">
                    </a>
                    <a href="javascript:void(0);" id="toggle_btn">
                        <i class="feather-chevrons-left"></i>
                    </a>
                    <a class="mobile_btn" id="mobile_btn">
                        <i class="feather-chevrons-left"></i>
                    </a>
                </div>
                <ul class="nav user-menu">
                    <li class="nav-item dropdown">
                        <a href="javascript:void(0);" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
                            <i class="feather-bell"></i> <span class="badge badge-pill">5</span>
                        </a>
                        <div class="dropdown-menu notifications">
                            <div class="topnav-dropdown-header">
                                <span class="notification-title">Notifications</span>
                                <a href="javascript:void(0)" class="clear-noti"> Clear All</a>
                            </div>
                            <div class="noti-content">
                                <ul class="notification-list">
                                    <li class="notification-message">
                                        <a href="javascript:void(0);">
                                            <div class="media d-flex">
                                                <span class="avatar avatar-sm flex-shrink-0">
                                                    <img class="avatar-img rounded-circle" alt="Img" src="adminAssets/img/profiles/avatar-02.jpg">
                                                </span>
                                                <div class="media-body flex-grow-1">
                                                    <p class="noti-details"><span class="noti-title">Brian Johnson</span> paid the invoice <span class="noti-title">#DF65485</span></p>
                                                    <p class="noti-time"><span class="notification-time">4 mins ago</span></p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>                                   
                                </ul>
                            </div>
                            <div class="topnav-dropdown-footer">
                                <a href="javascript:void(0);">View all Notifications</a>
                            </div>
                        </div>
                    </li>


                    <li class="nav-item dropdown has-arrow main-drop">
                        <a href="javascript:void(0);" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
                            <span class="user-img">
                                <img src="${adminProfile.image}" alt="Img">
                                <span class="status online"></span>
                            </span>
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="profileAdmin"><i data-feather="user" class="me-1"></i> Profile</a>
                            <a class="dropdown-item" href="settings.html"><i data-feather="settings" class="me-1"></i> Settings</a>
                            <a class="dropdown-item" href="logout"><i data-feather="log-out" class="me-1"></i> Logout</a>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="sidebar" id="sidebar">
                <div class="sidebar-inner slimscroll">
                    <div id="sidebar-menu" class="sidebar-menu">
                        <ul>
                            <li class="menu-title"><span>Main</span></li>
                            <li class="active">
                                <a href="dashboardAdmin"><i data-feather="home"></i> <span>Dashboard</span></a>
                            </li>                           
                            <li>
                                <a href="projectAdmin"><i data-feather="database"></i> <span>Projects</span></a>
                            </li>
                            <li>
                                <a href="manageFreelancerAdmin"><i data-feather="users"></i> <span>Freelancer</span></a>
                            </li>
                            <li>
                                <a href="manageRecruiterAdmin"><i data-feather="user-check"></i> <span>Recuiter</span></a>
                            </li>                          
                            <li>
                                <a href="categoryAdmin"><i data-feather="copy"></i> <span>Categories</span></a>
                            </li>                        
                            <li>
                                <a href="skillAdmin"><i data-feather="award"></i> <span>Skills</span></a>
                            </li>
                            <li>
                                <a href="blogAdmin"><i data-feather="clipboard"></i> <span>Blog</span></a>
                            </li>
                            <li>
                                <a href="verifyIdentityAdmin"><i data-feather="user-check"></i> <span>Verify Identity</span></a>
                            </li>
                            <li>
                                <a href="settingsAdmin"><i data-feather="settings"></i> <span>Settings</span></a>
                            </li>                          

                        </ul>
                    </div>
                </div>
            </div>
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
                                                <th class="text-end">Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    1
                                                </td>
                                                <td>Web Development </td>
                                                <td class="text-end">
                                                    <a href="javascript:void(0);" class="btn btn-sm btn-secondary me-2" data-bs-toggle="modal" data-bs-target="#edit-category"><i class="far fa-edit"></i></a>
                                                    <a href="javascript:void(0);" class="btn btn-sm btn-danger" data-bs-toggle="modal" data-bs-target="#delete_category"><i class="far fa-trash-alt"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    2
                                                </td>
                                                <td>UI Developer</td>
                                                <td class="text-end">
                                                    <a href="javascript:void(0);" class="btn btn-sm btn-secondary me-2" data-bs-toggle="modal" data-bs-target="#edit-category"><i class="far fa-edit"></i></a>
                                                    <a href="javascript:void(0);" class="btn btn-sm btn-danger" data-bs-toggle="modal" data-bs-target="#delete_category"><i class="far fa-trash-alt"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    3
                                                </td>
                                                <td>.NET Developer</td>
                                                <td class="text-end">
                                                    <a href="javascript:void(0);" class="btn btn-sm btn-secondary me-2" data-bs-toggle="modal" data-bs-target="#edit-category"><i class="far fa-edit"></i></a>
                                                    <a href="javascript:void(0);" class="btn btn-sm btn-danger" data-bs-toggle="modal" data-bs-target="#delete_category"><i class="far fa-trash-alt"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    4
                                                </td>
                                                <td>Business Analyst</td>
                                                <td class="text-end">
                                                    <a href="javascript:void(0);" class="btn btn-sm btn-secondary me-2" data-bs-toggle="modal" data-bs-target="#edit-category"><i class="far fa-edit"></i></a>
                                                    <a href="javascript:void(0);" class="btn btn-sm btn-danger" data-bs-toggle="modal" data-bs-target="#delete_category"><i class="far fa-trash-alt"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    5
                                                </td>
                                                <td>Graphic Designer</td>
                                                <td class="text-end">
                                                    <a href="javascript:void(0);" class="btn btn-sm btn-secondary me-2" data-bs-toggle="modal" data-bs-target="#edit-category"><i class="far fa-edit"></i></a>
                                                    <a href="javascript:void(0);" class="btn btn-sm btn-danger" data-bs-toggle="modal" data-bs-target="#delete_category"><i class="far fa-trash-alt"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    6
                                                </td>
                                                <td>SEO Developer</td>
                                                <td class="text-end">
                                                    <a href="javascript:void(0);" class="btn btn-sm btn-secondary me-2" data-bs-toggle="modal" data-bs-target="#edit-category"><i class="far fa-edit"></i></a>
                                                    <a href="javascript:void(0);" class="btn btn-sm btn-danger" data-bs-toggle="modal" data-bs-target="#delete_category"><i class="far fa-trash-alt"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    7
                                                </td>
                                                <td>Network Engineer</td>
                                                <td class="text-end">
                                                    <a href="javascript:void(0);" class="btn btn-sm btn-secondary me-2" data-bs-toggle="modal" data-bs-target="#edit-category"><i class="far fa-edit"></i></a>
                                                    <a href="javascript:void(0);" class="btn btn-sm btn-danger" data-bs-toggle="modal" data-bs-target="#delete_category"><i class="far fa-trash-alt"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    8
                                                </td>
                                                <td>Software Tester</td>
                                                <td class="text-end">
                                                    <a href="javascript:void(0);" class="btn btn-sm btn-secondary me-2" data-bs-toggle="modal" data-bs-target="#edit-category"><i class="far fa-edit"></i></a>
                                                    <a href="javascript:void(0);" class="btn btn-sm btn-danger" data-bs-toggle="modal" data-bs-target="#delete_category"><i class="far fa-trash-alt"></i></a>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade custom-modal" id="add-category">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Add Category</h4>
                        <button type="button" class="close" data-bs-dismiss="modal"><span>&times;</span></button>
                    </div>
                    <div class="modal-body">
                        <form action="categoryAdmin" id="add-category-form" method="post">
                            <div class="form-group">
                                <label for="categoryName">Category Name</label>
                                <input type="text" class="form-control" id="categoryName" name="categoryName" placeholder="Enter Category Name">
                            </div>
                            <div class="mt-4">
                                <button type="submit" class="btn btn-primary btn-block" value="Add">Submit</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade custom-modal" id="edit-category">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">

                    <div class="modal-header">
                        <h4 class="modal-title">Edit Category</h4>
                        <button type="button" class="close" data-bs-dismiss="modal"><span>&times;</span></button>
                    </div>

                    <div class="modal-body">
                        <form>
                            <div class="form-group">
                                <label>Category Name</label>
                                <input type="text" class="form-control" value="Graphic & Design">
                            </div>
                            <div class="mt-4">
                                <button type="submit" class="btn btn-primary btn-block">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>


        <div class="modal custom-modal fade" id="delete_category" role="dialog">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="form-header">
                            <h3>Delete</h3>
                            <p>Are you sure want to delete?</p>
                        </div>
                        <div class="modal-btn delete-action">
                            <div class="row">
                                <div class="col-6">
                                    <a href="javascript:void(0);" class="btn btn-primary continue-btn">Delete</a>
                                </div>
                                <div class="col-6">
                                    <a href="javascript:void(0);" data-bs-dismiss="modal" class="btn btn-primary cancel-btn">Cancel</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

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
