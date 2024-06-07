<%-- 
    Document   : listPost
    Created on : Jun 6, 2024, 11:59:32 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/project-list.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:38:34 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
        <title>KofeJob</title>

        <link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/plugins/feather/feather.css">

        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

        <link rel="stylesheet" href="assets/plugins/select2/css/select2.min.css">

        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body>

        <div class="main-wrapper">


            <header class="header">
                <div class="container">
                    <nav class="navbar navbar-expand-lg header-nav p-0">
                        <div class="navbar-header">
                            <a id="mobile_btn" href="javascript:void(0);">
                                <span class="bar-icon">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </span>
                            </a>
                            <a href="index.html" class="navbar-brand logo">
                                <img src="assets/img/logo.svg" class="img-fluid" alt="Logo">
                            </a>
                        </div>
                        <div class="main-menu-wrapper">
                            <div class="menu-header">
                                <a href="index.html" class="menu-logo">
                                    <img src="assets/img/logo.svg" class="img-fluid" alt="Logo">
                                </a>
                                <a id="menu_close" class="menu-close" href="javascript:void(0);">
                                    <i class="fas fa-times"></i>
                                </a>
                            </div>
                            <ul class="main-nav">
                                <li class="has-submenu">
                                    <a href="index.html">Home <i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        <li><a href="index.html">Home</a></li>
                                        <li><a href="index-2.html">Home 2</a></li>
                                        <li><a href="index-3.html">Home 3</a></li>
                                        <li><a href="index-4.html">Home 4</a></li>
                                        <li><a href="index-5.html">Home 5</a></li>
                                    </ul>
                                </li>
                                <li class="has-submenu">
                                    <a href="javascript:void(0);">For Employers <i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        <li class="has-submenu">
                                            <a href="javascript:void(0);">Freelancer</a>
                                            <ul class="submenu">
                                                <li><a href="developer.html">Freelancer</a></li>
                                                <li><a href="developer-details.html">Freelancer Details</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="dashboard.html">Dashboard</a></li>
                                        <li><a href="company-profile.html">My Profile</a></li>
                                        <li><a href="manage-projects.html">Projects</a></li>
                                        <li><a href="favourites.html">Favourites</a></li>
                                        <li><a href="membership-plans.html">Membership</a></li>
                                        <li><a href="milestones.html">Milestones</a></li>
                                        <li><a href="chats.html">Chats</a></li>
                                        <li><a href="review.html">Review</a></li>
                                        <li><a href="deposit-funds.html">Payments</a></li>
                                        <li><a href="verify-identity.html">Verify Identity</a></li>
                                        <li><a href="profile-settings.html">Settings</a></li>
                                    </ul>
                                </li>
                                <li class="has-submenu active">
                                    <a href="javascript:void(0);">For Freelancer <i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        <li class="has-submenu active">
                                            <a href="javascript:void(0);">Projects</a>
                                            <ul class="submenu">
                                                <li class="active"><a href="project.html">Projects</a></li>
                                                <li><a href="project-details.html">Project Details</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="freelancer-dashboard.html">Dashboard</a></li>
                                        <li><a href="developer-profile.html">My Profile</a></li>
                                        <li><a href="freelancer-project-proposals.html">Projects</a></li>
                                        <li><a href="freelancer-favourites.html">Favourites</a></li>
                                        <li><a href="freelancer-membership.html">Membership</a></li>
                                        <li><a href="freelancer-change-password.html">Change Password</a></li>
                                        <li><a href="freelancer-chats.html">Chats</a></li>
                                        <li><a href="freelancer-review.html">Review</a></li>
                                        <li><a href="freelancer-withdraw-money.html">Payments</a></li>
                                        <li><a href="freelancer-verify-identity.html">Verify Identity</a></li>
                                        <li><a href="freelancer-profile-settings.html">Settings</a></li>
                                    </ul>
                                </li>
                                <li class="has-submenu">
                                    <a href="javascript:void(0);">Pages <i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        <li><a href="about.html">About us</a></li>
                                        <li><a href="blank-page.html">Starter Page</a></li>
                                        <li><a href="404-page.html">404 Page</a></li>
                                        <li><a href="login.html">Login</a></li>
                                        <li><a href="register.html">Register</a></li>
                                        <li><a href="onboard-screen.html">Onboard Screen</a></li>
                                        <li><a href="forgot-password.html">Forgot Password</a></li>
                                        <li><a href="change-passwords.html">Change Password</a></li>
                                    </ul>
                                </li>
                                <li class="has-submenu">
                                    <a href="javascript:void(0);">Blog <i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        <li><a href="blog-list.html">Blog List</a></li>
                                        <li><a href="blog-grid.html">Blog Grid</a></li>
                                        <li><a href="blog-details.html">Blog Details</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="admin/index.html" target="_blank">Admin</a>
                                </li>
                            </ul>
                        </div>
                        <ul class="nav header-navbar-rht reg-head">
                            <li><a href="register.html" class="reg-btn"><img src="assets/img/icon/users.svg" class="me-1" alt="img">Register</a></li>
                            <li><a href="login.html" class="log-btn"><img src="assets/img/icon/lock.svg" class="me-1" alt="img"> Login</a></li>
                            <li><a href="post-project.html" class="login-btn"><i class="feather-plus me-1"></i>Post a Project </a></li>
                        </ul>
                    </nav>
                </div>
            </header>


            <div class="bread-crumb-bar">
                <div class="container">
                    <div class="row align-items-center inner-banner">
                        <div class="col-md-12 col-12 text-center">
                            <div class="breadcrumb-list">
                                <h2>Project List</h2>
                                <nav aria-label="breadcrumb" class="page-breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                        <li class="breadcrumb-item" aria-current="page">Project</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="content">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-lg-4 col-xl-3 theiaStickySidebar">


                            <div class="card search-filter">
                                <div class="card-header d-flex justify-content-between">
                                    <h4 class="card-title mb-0">Search Filter</h4>
                                </div>
                                <div class="card-body">
                                    <div class="filter-widget">
                                        <h4 class="filter-title">
                                            <a href="javascript:void(0);" class="w-100" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                Category
                                                <span class="float-end"><i class="fa-solid fa-chevron-down"></i></span>
                                            </a>
                                        </h4>
                                        <div id="collapseOne" class="collapse show" data-bs-parent="#accordionExample1">
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span> Developer (25)
                                                </label>
                                            </div>
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span> UI Developer (62)
                                                </label>
                                            </div>
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span> React Developer (46)
                                                </label>
                                            </div>
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span> .Net Developer (37)
                                                </label>
                                            </div>
                                            <div id="collapseOnes" class="collapse" data-bs-parent="#accordionExample1">
                                                <div>
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="select_time">
                                                        <span class="checkmark"></span> UI Developer (62)
                                                    </label>
                                                </div>
                                                <div>
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="select_time">
                                                        <span class="checkmark"></span> React Developer (46)
                                                    </label>
                                                </div>
                                                <div>
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="select_time">
                                                        <span class="checkmark"></span> .Net Developer (37)
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="showmore mt-2">
                                                <a href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#collapseOnes" aria-expanded="true" aria-controls="collapseOne"><i class="feather-plus me-1"></i>Show More</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="filter-widget">
                                        <h4 class="filter-title">
                                            <a href="javascript:void(0);" class="w-100" data-bs-toggle="collapse" data-bs-target="#collapsproject" aria-expanded="true" aria-controls="collapseOne">
                                                Project Type
                                                <span class="float-end"><i class="fa-solid fa-chevron-down"></i></span>
                                            </a>
                                        </h4>
                                        <div id="collapsproject" class="collapse show" data-bs-parent="#accordionExample1">
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span>Fixed (6)
                                                </label>
                                            </div>
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span>Hourly (7)
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="filter-widget">
                                        <h4 class="filter-title">
                                            <a href="javascript:void(0);" class="w-100" data-bs-toggle="collapse" data-bs-target="#collapseOne1" aria-expanded="true" aria-controls="collapseOne">
                                                Project Duration
                                                <span class="float-end"><i class="fa-solid fa-chevron-down"></i></span>
                                            </a>
                                        </h4>
                                        <div id="collapseOne1" class="collapse show" data-bs-parent="#accordionExample1">
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span> 1-3 Weeks (4)
                                                </label>
                                            </div>
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span> 1 Month (2)
                                                </label>
                                            </div>
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span> Less than 3 Months (2)
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="filter-widget">
                                        <h4 class="filter-title">
                                            <a href="javascript:void(0);" class="w-100" data-bs-toggle="collapse" data-bs-target="#collapseskills" aria-expanded="true" aria-controls="collapseOne">
                                                Skills
                                                <span class="float-end"><i class="fa-solid fa-chevron-down"></i></span>
                                            </a>
                                        </h4>
                                        <div id="collapseskills" class="collapse show" data-bs-parent="#accordionExample1">
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span> After Effects (6)
                                                </label>
                                            </div>
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span> Android Developer (7)
                                                </label>
                                            </div>
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span> Backend Developer (7)
                                                </label>
                                            </div>
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span> Computer Operator (1)
                                                </label>
                                            </div>
                                            <div id="collapseOnes1" class="collapse" data-bs-parent="#accordionExample1">
                                                <div>
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="select_time">
                                                        <span class="checkmark"></span> After Effects (6)
                                                    </label>
                                                </div>
                                                <div>
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="select_time">
                                                        <span class="checkmark"></span> Android Developer (7)
                                                    </label>
                                                </div>
                                                <div>
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="select_time">
                                                        <span class="checkmark"></span> Backend Developer (7)
                                                    </label>
                                                </div>
                                                <div>
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="select_time">
                                                        <span class="checkmark"></span> Computer Operator (1)
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="showmore mt-2">
                                                <a href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#collapseOnes1" aria-expanded="true" aria-controls="collapseOne"><i class="feather-plus me-1"></i>Show More</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="filter-widget">
                                        <h4 class="filter-title">
                                            <a href="javascript:void(0);" class="w-100" data-bs-toggle="collapse" data-bs-target="#collapselanguage" aria-expanded="true" aria-controls="collapseOne">
                                                Languages
                                                <span class="float-end"><i class="fa-solid fa-chevron-down"></i></span>
                                            </a>
                                        </h4>
                                        <div id="collapselanguage" class="collapse show" data-bs-parent="#accordionExample1">
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span> English (5)
                                                </label>
                                            </div>
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span> Arabic (2)
                                                </label>
                                            </div>
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span>German (1)
                                                </label>
                                            </div>
                                            <div id="collapseOnes2" class="collapse" data-bs-parent="#accordionExample1">
                                                <div>
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="select_time">
                                                        <span class="checkmark"></span> English (5)
                                                    </label>
                                                </div>
                                                <div>
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="select_time">
                                                        <span class="checkmark"></span> Arabic (2)
                                                    </label>
                                                </div>
                                                <div>
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="select_time">
                                                        <span class="checkmark"></span>German (1)
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="showmore mt-2">
                                                <a href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#collapseOnes2" aria-expanded="true" aria-controls="collapseOne"><i class="feather-plus me-1"></i>Show More</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="filter-widget">
                                        <h4 class="filter-title">
                                            <a href="javascript:void(0);" class="w-100" data-bs-toggle="collapse" data-bs-target="#collapselanguagea" aria-expanded="true" aria-controls="collapseOne">
                                                Freelancer Type
                                                <span class="float-end"><i class="fa-solid fa-chevron-down"></i></span>
                                            </a>
                                        </h4>
                                        <div id="collapselanguagea" class="collapse show" data-bs-parent="#accordionExample1">
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span>Full Time (3)
                                                </label>
                                            </div>
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span> Part Time (4)
                                                </label>
                                            </div>
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span>Project Based (2)
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="filter-widget">
                                        <h4 class="filter-title">
                                            <a href="javascript:void(0);" class="w-100" data-bs-toggle="collapse" data-bs-target="#collapselocation" aria-expanded="true" aria-controls="collapseOne">
                                                Location
                                                <span class="float-end"><i class="fa-solid fa-chevron-down"></i></span>
                                            </a>
                                        </h4>
                                        <div id="collapselocation" class="collapse show" data-bs-parent="#accordionExample1">
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span>USA (25)
                                                </label>
                                            </div>
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span> IND (62)
                                                </label>
                                            </div>
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span>UK (46)
                                                </label>
                                            </div>
                                            <div>
                                                <label class="custom_check">
                                                    <input type="checkbox" name="select_time">
                                                    <span class="checkmark"></span>AUS (37)
                                                </label>
                                            </div>
                                            <div id="collapseOnes3" class="collapse" data-bs-parent="#accordionExample1">
                                                <div>
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="select_time">
                                                        <span class="checkmark"></span> IND (62)
                                                    </label>
                                                </div>
                                                <div>
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="select_time">
                                                        <span class="checkmark"></span>UK (46)
                                                    </label>
                                                </div>
                                                <div>
                                                    <label class="custom_check">
                                                        <input type="checkbox" name="select_time">
                                                        <span class="checkmark"></span>AUS (37)
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="showmore mt-2">
                                                <a href="javascript:void(0);" data-bs-toggle="collapse" data-bs-target="#collapseOnes3" aria-expanded="true" aria-controls="collapseOne"><i class="feather-plus me-1"></i>Show More</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="btn-search">
                                        <button type="button" class="btn btn-primary">Search</button>
                                        <button type="button" class="btn btn-block">Reset</button>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="col-md-12 col-lg-8 col-xl-9">
                            <div class="sort-tab develop-list-select">
                                <div class="row align-items-center">
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                        <div class="d-flex align-items-center">
                                            <div class="freelance-view">
                                                <h4>Found 9 Results</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 d-flex justify-content-sm-end">
                                        <div class="sort-by">
                                            <select class=" select">
                                                <option>Relevance</option>
                                                <option>Rating</option>
                                                <option>Popular</option>
                                                <option>Latest</option>
                                                <option>Free</option>
                                            </select>
                                        </div>
                                        <ul class="list-grid d-flex align-items-center">
                                            <li><a href="project.html"><i class="fas fa-th-large"></i></a></li>
                                            <li><a href="project-list.html" class="favour-active"><i class="fas fa-list"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="list-book-mark book-mark favour-book">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class=" project-list-card">
                                            <a href="javascript:void(0);" class="add-fav-list"><i class="fa-regular fa-heart"></i></a>
                                            <div class="company-detail-image">
                                                <img src="assets/img/default-logo.svg" class="img-fluid" alt="logo">
                                            </div>
                                            <div>
                                                <div class="company-title">
                                                    <p>UI/UX Developer</p>
                                                    <h4>Website Designer Required For Directory Theme</h4>
                                                </div>
                                                <div class="company-splits">
                                                    <div>
                                                        <div class="company-address">
                                                            <ul>
                                                                <li>
                                                                    <i class="feather-map-pin"></i>Los Angels
                                                                </li>
                                                                <li>
                                                                    <i class="feather-calendar"></i>Posted just now
                                                                </li>
                                                                <li>
                                                                    <i class="feather-file-2"></i>1 Proposal
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="company-description">
                                                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
                                                        </div>
                                                        <div class="company-description">
                                                            <div class="tags">
                                                                <a href="javascript:void(0);"><span class="badge badge-pill badge-design">After Effects</span></a>
                                                                <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Illustrator</span></a>
                                                                <a href="javascript:void(0);"><span class="badge badge-pill badge-design">HTML</span></a>
                                                                <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Whiteboard</span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="company-split-price">
                                                        <h5>$35-$350</h5>
                                                        <h6>Price : Fixed</h6>
                                                        <a href="project-details.html" class="btn btn-submits">Submit Proposal</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=" project-list-card">
                                            <a href="javascript:void(0);" class="add-fav-list"><i class="fa-regular fa-heart"></i></a>
                                            <div class="company-detail-image">
                                                <img src="assets/img/company/img-1.png" class="img-fluid" alt="logo">
                                            </div>
                                            <div>
                                                <div class="company-title">
                                                    <p>UI/UX Developer</p>
                                                    <h4>Create desktop applications with source PHP</h4>
                                                </div>
                                                <div class="company-splits">
                                                    <div>
                                                        <div class="company-address">
                                                            <ul>
                                                                <li>
                                                                    <i class="feather-map-pin"></i>Florida, USA
                                                                </li>
                                                                <li>
                                                                    <i class="feather-calendar"></i>Posted 1 day ago
                                                                </li>
                                                                <li>
                                                                    <i class="feather-file-2"></i>76 Proposal
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="company-description">
                                                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
                                                        </div>
                                                        <div class="company-description">
                                                            <div class="tags">
                                                                <a href="javascript:void(0);"><span class="badge badge-pill badge-design">After Effects</span></a>
                                                                <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Illustrator</span></a>
                                                                <a href="javascript:void(0);"><span class="badge badge-pill badge-design">HTML</span></a>
                                                                <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Whiteboard</span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="company-split-price">
                                                        <h5>$40-$350</h5>
                                                        <h6>Price : Fixed</h6>
                                                        <a href="project-details.html" class="btn btn-submits">Submit Proposal</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=" project-list-card">
                                            <a href="javascript:void(0);" class="add-fav-list"><i class="fa-regular fa-heart"></i></a>
                                            <div class="company-detail-image">
                                                <img src="assets/img/company/img-2.png" class="img-fluid" alt="logo">
                                            </div>
                                            <div>
                                                <div class="company-title">
                                                    <p>UI/UX Developer</p>
                                                    <h4>PHP, Javascript Projects for Beginners</h4>
                                                </div>
                                                <div class="company-splits">
                                                    <div>
                                                        <div class="company-address">
                                                            <ul>
                                                                <li>
                                                                    <i class="feather-map-pin"></i>Alabama, USA
                                                                </li>
                                                                <li>
                                                                    <i class="feather-calendar"></i>Posted 15 days ago
                                                                </li>
                                                                <li>
                                                                    <i class="feather-file-2"></i>15 Proposal
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="company-description">
                                                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
                                                        </div>
                                                        <div class="company-description">
                                                            <div class="tags">
                                                                <a href="javascript:void(0);"><span class="badge badge-pill badge-design">After Effects</span></a>
                                                                <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Illustrator</span></a>
                                                                <a href="javascript:void(0);"><span class="badge badge-pill badge-design">HTML</span></a>
                                                                <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Whiteboard</span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="company-split-price">
                                                        <h5>$45-$650</h5>
                                                        <h6>Price : Fixed</h6>
                                                        <a href="project-details.html" class="btn btn-submits">Submit Proposal</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=" project-list-card">
                                            <a href="javascript:void(0);" class="add-fav-list"><i class="fa-regular fa-heart"></i></a>
                                            <div class="company-detail-image">
                                                <img src="assets/img/company/img-3.png" class="img-fluid" alt="logo">
                                            </div>
                                            <div>
                                                <div class="company-title">
                                                    <p>UI/UX Developer</p>
                                                    <h4>Swift / SwiftUI Developer for B2B iOS apps</h4>
                                                </div>
                                                <div class="company-splits">
                                                    <div>
                                                        <div class="company-address">
                                                            <ul>
                                                                <li>
                                                                    <i class="feather-map-pin"></i>Texas, USA
                                                                </li>
                                                                <li>
                                                                    <i class="feather-calendar"></i>Posted 2 months ago
                                                                </li>
                                                                <li>
                                                                    <i class="feather-file-2"></i>44 Proposal
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="company-description">
                                                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
                                                        </div>
                                                        <div class="company-description">
                                                            <div class="tags">
                                                                <a href="javascript:void(0);"><span class="badge badge-pill badge-design">After Effects</span></a>
                                                                <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Illustrator</span></a>
                                                                <a href="javascript:void(0);"><span class="badge badge-pill badge-design">HTML</span></a>
                                                                <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Whiteboard</span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="company-split-price">
                                                        <h5>$100-$700</h5>
                                                        <h6>Price : Fixed</h6>
                                                        <a href="project-details.html" class="btn btn-submits">Submit Proposal</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=" project-list-card">
                                            <a href="javascript:void(0);" class="add-fav-list"><i class="fa-regular fa-heart"></i></a>
                                            <div class="company-detail-image">
                                                <img src="assets/img/company/img-4.png" class="img-fluid" alt="logo">
                                            </div>
                                            <div>
                                                <div class="company-title">
                                                    <p>UI/UX Developer</p>
                                                    <h4>Full-stack Developer to help us to build our</h4>
                                                </div>
                                                <div class="company-splits">
                                                    <div>
                                                        <div class="company-address">
                                                            <ul>
                                                                <li>
                                                                    <i class="feather-map-pin"></i>Kansas, USA
                                                                </li>
                                                                <li>
                                                                    <i class="feather-calendar"></i>Posted 3 months ago
                                                                </li>
                                                                <li>
                                                                    <i class="feather-file-2"></i>36 Proposal
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="company-description">
                                                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
                                                        </div>
                                                        <div class="company-description">
                                                            <div class="tags">
                                                                <a href="javascript:void(0);"><span class="badge badge-pill badge-design">After Effects</span></a>
                                                                <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Illustrator</span></a>
                                                                <a href="javascript:void(0);"><span class="badge badge-pill badge-design">HTML</span></a>
                                                                <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Whiteboard</span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="company-split-price">
                                                        <h5>$100-$700</h5>
                                                        <h6>Price : Fixed</h6>
                                                        <a href="project-details.html" class="btn btn-submits">Submit Proposal</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=" project-list-card">
                                            <a href="javascript:void(0);" class="add-fav-list"><i class="fa-regular fa-heart"></i></a>
                                            <div class="company-detail-image">
                                                <img src="assets/img/company/img-5.png" class="img-fluid" alt="logo">
                                            </div>
                                            <div>
                                                <div class="company-title">
                                                    <p>UI/UX Developer</p>
                                                    <h4>Website Designer Required For Directory Theme</h4>
                                                </div>
                                                <div class="company-splits">
                                                    <div>
                                                        <div class="company-address">
                                                            <ul>
                                                                <li>
                                                                    <i class="feather-map-pin"></i>California, USA
                                                                </li>
                                                                <li>
                                                                    <i class="feather-calendar"></i>Posted 1 months ago
                                                                </li>
                                                                <li>
                                                                    <i class="feather-file-2"></i>6 Proposal
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="company-description">
                                                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
                                                        </div>
                                                        <div class="company-description">
                                                            <div class="tags">
                                                                <a href="javascript:void(0);"><span class="badge badge-pill badge-design">After Effects</span></a>
                                                                <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Illustrator</span></a>
                                                                <a href="javascript:void(0);"><span class="badge badge-pill badge-design">HTML</span></a>
                                                                <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Whiteboard</span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="company-split-price">
                                                        <h5>$10-$70</h5>
                                                        <h6>Price : Fixed</h6>
                                                        <a href="project-details.html" class="btn btn-submits">Submit Proposal</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <ul class="paginations list-pagination">
                                            <li class="page-item"><a href="javascript:void(0);"><i class="feather-chevron-left"></i></a>
                                            </li>
                                            <li class="page-item"><a href="javascript:void(0);" class="active">1</a></li>
                                            <li class="page-item"><a href="javascript:void(0);">2</a></li>
                                            <li class="page-item"><a href="javascript:void(0);">3</a></li>
                                            <li class="page-item"><a href="javascript:void(0);">...</a></li>
                                            <li class="page-item"><a href="javascript:void(0);">10</a></li>
                                            <li class="page-item"><a href="javascript:void(0);"><i class="feather-chevron-right"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <footer class="footer">
                <div class="footer-top ">
                    <div class="container">
                        <div class="row">
                            <div class=" col-lg-4 col-md-12">
                                <div class="footer-bottom-logo">
                                    <a href="index.html" class="menu-logo">
                                        <img src="assets/img/logo.svg" class="img-fluid" alt="Logo">
                                    </a>
                                    <p>We’re always in search for talented and motivated people. Don’t be shy introduce yourself!</p>
                                    <ul>
                                        <li>
                                            <a href="javascript:void(0);"><i class="fa-brands fa-facebook-f" aria-hidden="true"></i></a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);"><i class="fa-brands fa-twitter" aria-hidden="true"></i></a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);"><i class="fa-brands fa-instagram" aria-hidden="true"></i></a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);"><i class="fa-brands fa-linkedin" aria-hidden="true"></i></a>
                                        </li>
                                    </ul>
                                    <a href="javascript:void(0);" class="btn btn-connectus">Contact with us</a>
                                </div>
                            </div>
                            <div class=" col-lg-8 col-md-12">
                                <div class="row">
                                    <div class="col-xl-3 col-md-6">
                                        <div class="footer-widget footer-menu">
                                            <h2 class="footer-title">Useful Links</h2>
                                            <ul>
                                                <li><a href="about.html"><i class="fas fa-angle-right me-1"></i>About Us</a></li>
                                                <li><a href="blog-list.html"><i class="fas fa-angle-right me-1"></i>Blog</a></li>
                                                <li><a href="login.html"><i class="fas fa-angle-right me-1"></i>Login</a></li>
                                                <li><a href="register.html"><i class="fas fa-angle-right me-1"></i>Register</a></li>
                                                <li><a href="forgot-password.html"><i class="fas fa-angle-right me-1"></i>Forgot Password</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-md-6">
                                        <div class="footer-widget footer-menu">
                                            <h2 class="footer-title">Help & Support</h2>
                                            <ul>
                                                <li><a href="javascript:void(0);"><i class="fas fa-angle-right me-1"></i>Browse Candidates</a></li>
                                                <li><a href="javascript:void(0);"><i class="fas fa-angle-right me-1"></i>Employers Dashboard</a></li>
                                                <li><a href="javascript:void(0);"><i class="fas fa-angle-right me-1"></i>Job Packages</a></li>
                                                <li><a href="javascript:void(0);"><i class="fas fa-angle-right me-1"></i>Jobs Featured</a></li>
                                                <li><a href="javascript:void(0);"><i class="fas fa-angle-right me-1"></i>Post A Job</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-md-6">
                                        <div class="footer-widget footer-menu">
                                            <h2 class="footer-title">Other Links</h2>
                                            <ul>
                                                <li><a href="freelancer-dashboard.html"><i class="fas fa-angle-right me-1"></i>Freelancers</a></li>
                                                <li><a href="freelancer-portfolio.html"><i class="fas fa-angle-right me-1"></i>Freelancer Details</a></li>
                                                <li><a href="project.html"><i class="fas fa-angle-right me-1"></i>Project</a></li>
                                                <li><a href="project-details.html"><i class="fas fa-angle-right me-1"></i>Project Details</a></li>
                                                <li><a href="post-project.html"><i class="fas fa-angle-right me-1"></i>Post Project</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-md-6">
                                        <div class="footer-widget footer-menu">
                                            <h2 class="footer-title">Connect With Us</h2>
                                            <ul>
                                                <li><a href="freelancer-chats.html"><i class="fas fa-angle-right me-1"></i>Chat</a></li>
                                                <li><a href="faq.html"><i class="fas fa-angle-right me-1"></i>Faq</a></li>
                                                <li><a href="freelancer-review.html"><i class="fas fa-angle-right me-1"></i>Reviews</a></li>
                                                <li><a href="privacy-policy.html"><i class="fas fa-angle-right me-1"></i>Privacy Policy</a></li>
                                                <li><a href="term-condition.html"><i class="fas fa-angle-right me-1"></i>Terms of use</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="footer-bottom">
                    <div class="container">

                        <div class="copyright">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="copyright-text text-center">
                                        <p class="mb-0">Copyright 2024 © KofeJob. All right reserved.</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </footer>

        </div>


        <div class="modal fade" id="rating">
            <div class="modal-dialog modal-dialog-centered modal-md">
                <div class="modal-content">
                    <div class="modal-header d-block b-0 pb-0">
                        <span class="modal-close float-end"><a href="javascript:void(0);" data-bs-dismiss="modal" aria-label="Close"><i class="fa fa-times orange-text"></i></a></span>
                    </div>
                    <div class="modal-body">
                        <form action="https://kofejob.dreamstechnologies.com/html/template/project.html">
                            <div class="modal-info">
                                <div class="text-center pt-0 mb-5">
                                    <h3>Please login to Favourite Freelancer</h3>
                                </div>
                                <div class="submit-section text-center">
                                    <button data-bs-dismiss="modal" class="btn btn-primary black-btn click-btn">Cancel</button>
                                    <button type="submit" class="btn btn-primary click-btn">Submit</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>


        <script src="assets/js/jquery-3.7.1.min.js" type="bc66fce3ba46b5bdad93a1f5-text/javascript"></script>

        <script src="assets/js/bootstrap.bundle.min.js" type="bc66fce3ba46b5bdad93a1f5-text/javascript"></script>

        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js" type="bc66fce3ba46b5bdad93a1f5-text/javascript"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js" type="bc66fce3ba46b5bdad93a1f5-text/javascript"></script>

        <script src="assets/plugins/select2/js/select2.min.js" type="bc66fce3ba46b5bdad93a1f5-text/javascript"></script>

        <script src="assets/js/range.js" type="bc66fce3ba46b5bdad93a1f5-text/javascript"></script>

        <script src="assets/js/profile-settings.js" type="bc66fce3ba46b5bdad93a1f5-text/javascript"></script>
        <script src="assets/js/script.js" type="bc66fce3ba46b5bdad93a1f5-text/javascript"></script>
        <script src="assets/cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="bc66fce3ba46b5bdad93a1f5-|49" defer></script></body>

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/project-list.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:38:36 GMT -->
</html>