<%-- 
    Document   : recruiterAdmin
    Created on : May 25, 2024, 8:42:54 PM
    Author     : kudol
--%>

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


                <div class="top-nav-search">
                    <form>
                        <input type="text" class="form-control" placeholder="Start typing your Search...">
                        <button class="btn" type="submit"><i class="feather-search"></i></button>
                    </form>
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
                                <a href="categorieAdmin"><i data-feather="copy"></i> <span>Categories</span></a>
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
                                <h3 class="page-title">Providers</h3>
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                    <li class="breadcrumb-item active">Providers</li>
                                </ul>
                            </div>
                            <div class="col-auto">
                                <a class="btn filter-btn" href="javascript:void(0);" id="filter_search">
                                    <i class="fas fa-filter"></i>
                                </a>
                            </div>
                        </div>
                    </div>


                    <div class="card filter-card" id="filter_inputs">
                        <div class="card-body pb-0">
                            <form action="#" method="post">
                                <div class="row filter-row">
                                    <div class="col-sm-6 col-md-3">
                                        <div class="form-group">
                                            <label>Company Name</label>
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
                                                    <th></th>
                                                    <th>ID</th>
                                                    <th>Logo</th>
                                                    <th>Company name</th>
                                                    <th>Primary contact</th>
                                                    <th>website</th>
                                                    <th>Total Projects</th>
                                                    <th>Status</th>
                                                    <th class="text-end">Actions</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <div class="form-check custom-checkbox">
                                                            <input type="checkbox" class="form-check-input" id="customCheck5">
                                                            <label class="form-check-label" for="customCheck5"></label>
                                                        </div>
                                                    </td>
                                                    <td>C1</td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="javascript:void(0);"><img class="me-2" src="adminAssets/img/company/img-1.png" alt="User Image"></a>
                                                        </h2>
                                                    </td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="javascript:void(0);">Focused Holistic Hardware</a>
                                                        </h2>
                                                    </td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="profile.html">
                                                                Emily Smith
                                                            </a>
                                                        </h2>
                                                    </td>
                                                    <td>https://focusedhardware.de</td>
                                                    <td>
                                                        120
                                                    </td>
                                                    <td>
                                                        <a href="javascript:void(0);" class="btn btn-enable">Enabled</a>
                                                    </td>
                                                    <td class="text-end">
                                                        <a href="javascript:void(0);" class="btn btn-sm btn-secondary me-2" data-bs-toggle="modal" data-bs-target="#add-category"><i class="far fa-edit"></i></a>
                                                        <a href="javascript:void(0);" class="btn btn-sm btn-danger" data-bs-toggle="modal" data-bs-target="#delete_category"><i class="far fa-trash-alt"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="form-check custom-checkbox">
                                                            <input type="checkbox" class="form-check-input" id="customCheck1">
                                                            <label class="form-check-label" for="customCheck1"></label>
                                                        </div>
                                                    </td>
                                                    <td>C2</td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="javascript:void(0);"><img class="me-2" src="adminAssets/img/company/img-2.png" alt="User Image"></a>
                                                        </h2>
                                                    </td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="javascript:void(0);">Phased Actuating Interface</a>
                                                        </h2>
                                                    </td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="profile.html">
                                                                Joshuah Runolfsdottir
                                                            </a>
                                                        </h2>
                                                    </td>
                                                    <td>https://phasedactuating.com</td>
                                                    <td>
                                                        132
                                                    </td>
                                                    <td>
                                                        <a href="javascript:void(0);" class="btn btn-disable">Disable</a>
                                                    </td>
                                                    <td class="text-end">
                                                        <a href="javascript:void(0);" class="btn btn-sm btn-secondary me-2" data-bs-toggle="modal" data-bs-target="#add-category"><i class="far fa-edit"></i></a>
                                                        <a href="javascript:void(0);" class="btn btn-sm btn-danger" data-bs-toggle="modal" data-bs-target="#delete_category"><i class="far fa-trash-alt"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="form-check custom-checkbox">
                                                            <input type="checkbox" class="form-check-input" id="customCheck2">
                                                            <label class="form-check-label" for="customCheck2"></label>
                                                        </div>
                                                    </td>
                                                    <td>C3</td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="javascript:void(0);"><img class="me-2" src="adminAssets/img/company/img-3.png" alt="User Image"></a>
                                                        </h2>
                                                    </td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="javascript:void(0);">Intuitive Global Encoding</a>
                                                        </h2>
                                                    </td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="profile.html">
                                                                Amy Wilkinson
                                                            </a>
                                                        </h2>
                                                    </td>
                                                    <td>https://globalencoding.com</td>
                                                    <td>
                                                        90
                                                    </td>
                                                    <td>
                                                        <a href="javascript:void(0);" class="btn btn-enable">Enabled</a>
                                                    </td>
                                                    <td class="text-end">
                                                        <a href="javascript:void(0);" class="btn btn-sm btn-secondary me-2" data-bs-toggle="modal" data-bs-target="#add-category"><i class="far fa-edit"></i></a>
                                                        <a href="javascript:void(0);" class="btn btn-sm btn-danger" data-bs-toggle="modal" data-bs-target="#delete_category"><i class="far fa-trash-alt"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="form-check custom-checkbox">
                                                            <input type="checkbox" class="form-check-input" id="customCheck3">
                                                            <label class="form-check-label" for="customCheck3"></label>
                                                        </div>
                                                    </td>
                                                    <td>C4</td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="javascript:void(0);"><img class="me-2" src="adminAssets/img/company/img-4.png" alt="User Image"></a>
                                                        </h2>
                                                    </td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="javascript:void(0);">Visionary Scalable Alliance</a>
                                                        </h2>
                                                    </td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="profile.html">
                                                                Jimmy Richardson
                                                            </a>
                                                        </h2>
                                                    </td>
                                                    <td>https://visionaryscalable.com</td>
                                                    <td>
                                                        110
                                                    </td>
                                                    <td>
                                                        <a href="javascript:void(0);" class="btn btn-disable">Disable</a>
                                                    </td>
                                                    <td class="text-end">
                                                        <a href="javascript:void(0);" class="btn btn-sm btn-secondary me-2" data-bs-toggle="modal" data-bs-target="#add-category"><i class="far fa-edit"></i></a>
                                                        <a href="javascript:void(0);" class="btn btn-sm btn-danger" data-bs-toggle="modal" data-bs-target="#delete_category"><i class="far fa-trash-alt"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="form-check form-checkbox">
                                                            <input type="checkbox" class="form-check-input" id="customCheck4">
                                                            <label class="form-check-label" for="customCheck4"></label>
                                                        </div>
                                                    </td>
                                                    <td>C5</td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="javascript:void(0);"><img class="me-2" src="adminAssets/img/company/img-5.png" alt="User Image"></a>
                                                        </h2>
                                                    </td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="javascript:void(0);">Self-Enabling Neutral Matrix</a>
                                                        </h2>
                                                    </td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="profile.html">
                                                                Damon Cohn
                                                            </a>
                                                        </h2>
                                                    </td>
                                                    <td>https://neutralmatrix.com</td>
                                                    <td>
                                                        158
                                                    </td>
                                                    <td>
                                                        <a href="javascript:void(0);" class="btn btn-disable">Disable</a>
                                                    </td>
                                                    <td class="text-end">
                                                        <a href="javascript:void(0);" class="btn btn-sm btn-secondary me-2" data-bs-toggle="modal" data-bs-target="#add-category"><i class="far fa-edit"></i></a>
                                                        <a href="javascript:void(0);" class="btn btn-sm btn-danger" data-bs-toggle="modal" data-bs-target="#delete_category"><i class="far fa-trash-alt"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="form-check custom-checkbox">
                                                            <input type="checkbox" class="form-check-input" id="customCheck6">
                                                            <label class="form-check-label" for="customCheck6"></label>
                                                        </div>
                                                    </td>
                                                    <td>C6</td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="javascript:void(0);"><img class="me-2" src="adminAssets/img/company/img-6.png" alt="User Image"></a>
                                                        </h2>
                                                    </td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="javascript:void(0);">Amaze Tech</a>
                                                        </h2>
                                                    </td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="profile.html">
                                                                Jacqueline Daye
                                                            </a>
                                                        </h2>
                                                    </td>
                                                    <td>https://amazetech.de</td>
                                                    <td>
                                                        120
                                                    </td>
                                                    <td>
                                                        <a href="javascript:void(0);" class="btn btn-enable">Enabled</a>
                                                    </td>
                                                    <td class="text-end">
                                                        <a href="javascript:void(0);" class="btn btn-sm btn-secondary me-2" data-bs-toggle="modal" data-bs-target="#add-category"><i class="far fa-edit"></i></a>
                                                        <a href="javascript:void(0);" class="btn btn-sm btn-danger" data-bs-toggle="modal" data-bs-target="#delete_category"><i class="far fa-trash-alt"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="form-check custom-checkbox">
                                                            <input type="checkbox" class="form-check-input" id="customCheck7">
                                                            <label class="form-check-label" for="customCheck7"></label>
                                                        </div>
                                                    </td>
                                                    <td>C7</td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="javascript:void(0);"><img class="me-2" src="adminAssets/img/company/img-7.png" alt="User Image"></a>
                                                        </h2>
                                                    </td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="javascript:void(0);">Park Inc</a>
                                                        </h2>
                                                    </td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="profile.html">
                                                                Tony Ingle
                                                            </a>
                                                        </h2>
                                                    </td>
                                                    <td>https://parkinc.de</td>
                                                    <td>
                                                        120
                                                    </td>
                                                    <td>
                                                        <a href="javascript:void(0);" class="btn btn-disable">Disable</a>
                                                    </td>
                                                    <td class="text-end">
                                                        <a href="javascript:void(0);" class="btn btn-sm btn-secondary me-2" data-bs-toggle="modal" data-bs-target="#add-category"><i class="far fa-edit"></i></a>
                                                        <a href="javascript:void(0);" class="btn btn-sm btn-danger" data-bs-toggle="modal" data-bs-target="#delete_category"><i class="far fa-trash-alt"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="form-check custom-checkbox">
                                                            <input type="checkbox" class="form-check-input" id="customCheck8">
                                                            <label class="form-check-label" for="customCheck8"></label>
                                                        </div>
                                                    </td>
                                                    <td>C8</td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="javascript:void(0);"><img class="me-2" src="adminAssets/img/company/img-8.png" alt="User Image"></a>
                                                        </h2>
                                                    </td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="javascript:void(0);">Tech Zone</a>
                                                        </h2>
                                                    </td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="profile.html">
                                                                Albert Boone
                                                            </a>
                                                        </h2>
                                                    </td>
                                                    <td>https://techzone.de</td>
                                                    <td>
                                                        120
                                                    </td>
                                                    <td>
                                                        <a href="javascript:void(0);" class="btn btn-enable">Enabled</a>
                                                    </td>
                                                    <td class="text-end">
                                                        <a href="javascript:void(0);" class="btn btn-sm btn-secondary me-2" data-bs-toggle="modal" data-bs-target="#add-category"><i class="far fa-edit"></i></a>
                                                        <a href="javascript:void(0);" class="btn btn-sm btn-danger" data-bs-toggle="modal" data-bs-target="#delete_category"><i class="far fa-trash-alt"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="form-check custom-checkbox">
                                                            <input type="checkbox" class="form-check-input" id="customCheck9">
                                                            <label class="form-check-label" for="customCheck9"></label>
                                                        </div>
                                                    </td>
                                                    <td>C9</td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="javascript:void(0);"><img class="me-2" src="adminAssets/img/company/img-9.png" alt="User Image"></a>
                                                        </h2>
                                                    </td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="javascript:void(0);">ABC Software</a>
                                                        </h2>
                                                    </td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="profile.html">
                                                                Kathleen Kaiser
                                                            </a>
                                                        </h2>
                                                    </td>
                                                    <td>https://abcsoftware.de</td>
                                                    <td>
                                                        120
                                                    </td>
                                                    <td>
                                                        <a href="javascript:void(0);" class="btn btn-enable">Enabled</a>
                                                    </td>
                                                    <td class="text-end">
                                                        <a href="javascript:void(0);" class="btn btn-sm btn-secondary me-2" data-bs-toggle="modal" data-bs-target="#add-category"><i class="far fa-edit"></i></a>
                                                        <a href="javascript:void(0);" class="btn btn-sm btn-danger" data-bs-toggle="modal" data-bs-target="#delete_category"><i class="far fa-trash-alt"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="form-check custom-checkbox">
                                                            <input type="checkbox" class="form-check-input" id="customCheck10">
                                                            <label class="form-check-label" for="customCheck10"></label>
                                                        </div>
                                                    </td>
                                                    <td>C10</td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="javascript:void(0);"><img class="me-2" src="adminAssets/img/company/img-10.png" alt="User Image"></a>
                                                        </h2>
                                                    </td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="javascript:void(0);">Host Technologies</a>
                                                        </h2>
                                                    </td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a href="profile.html">
                                                                Mickey Bernier
                                                            </a>
                                                        </h2>
                                                    </td>
                                                    <td>https://hosttechnologies.de</td>
                                                    <td>
                                                        120
                                                    </td>
                                                    <td>
                                                        <a href="javascript:void(0);" class="btn btn-disable">Disable</a>
                                                    </td>
                                                    <td class="text-end">
                                                        <a href="javascript:void(0);" class="btn btn-sm btn-secondary me-2" data-bs-toggle="modal" data-bs-target="#add-category"><i class="far fa-edit"></i></a>
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
        </div>


        <div class="modal fade custom-modal" id="add-category">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">

                    <div class="modal-header flex-wrap">
                        <h4 class="modal-title">Edit Provider</h4>
                        <button type="button" class="close" data-bs-dismiss="modal"><span>&times;</span></button>
                    </div>

                    <div class="modal-body">
                        <form>
                            <div class="form-group">
                                <label>Company Name</label>
                                <input type="text" class="form-control" value="Focused Holistic Hardware">
                            </div>
                            <div class="form-group">
                                <label>Primary Contact</label>
                                <input type="text" class="form-control" value="Emily Smith">
                            </div>
                            <div class="form-group">
                                <label>Website</label>
                                <input type="text" class="form-control" value="https://focusedhardware.de/">
                            </div>
                            <div class="form-group">
                                <label>Total Projects</label>
                                <input type="text" class="form-control" value="120">
                            </div>
                            <div class="form-group">
                                <label>Status</label>
                                <select class="form-control form-select">
                                    <option selected>Enabled</option>
                                    <option>Disable</option>
                                </select>
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


        <script src="adminAssets/js/jquery-3.7.1.min.js" type="89331437dcc86709a93430b9-text/javascript"></script>

        <script src="adminAssets/js/bootstrap.bundle.min.js" type="89331437dcc86709a93430b9-text/javascript"></script>

        <script src="adminAssets/js/feather.min.js" type="89331437dcc86709a93430b9-text/javascript"></script>

        <script src="adminAssets/plugins/slimscroll/jquery.slimscroll.min.js" type="89331437dcc86709a93430b9-text/javascript"></script>

        <script src="adminAssets/plugins/select2/js/select2.min.js" type="89331437dcc86709a93430b9-text/javascript"></script>

        <script src="adminAssets/plugins/moment/moment.min.js" type="89331437dcc86709a93430b9-text/javascript"></script>
        <script src="adminAssets/js/bootstrap-datetimepicker.min.js" type="89331437dcc86709a93430b9-text/javascript"></script>

        <script src="adminAssets/plugins/datatables/jquery.dataTables.min.js" type="89331437dcc86709a93430b9-text/javascript"></script>
        <script src="adminAssets/plugins/datatables/datatables.min.js" type="89331437dcc86709a93430b9-text/javascript"></script>

        <script src="adminAssets/js/script.js" type="89331437dcc86709a93430b9-text/javascript"></script>
        <script src="assets/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="89331437dcc86709a93430b9-|49" defer></script></body>

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/admin/providers.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:41:24 GMT -->
</html>