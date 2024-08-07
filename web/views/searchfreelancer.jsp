<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>

<html lang="en">

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/developer.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:29:40 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
        <title>KofeJob</title>

        <link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

        <link rel="stylesheet" href="assets/plugins/select2/css/select2.min.css">

        <link rel="stylesheet" href="assets/plugins/feather/feather.css">

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
                            
                            
                            
                           <jsp:include page="header.jsp" />




                    </nav>
                </div>
            </header>


            <div class="bread-crumb-bar">
                <div class="container">
                    <div class="row align-items-center inner-banner">
                        <div class="col-md-12 col-12 text-center">
                            <div class="breadcrumb-list">
                                <h2>Freelancer Grid</h2>
                                <form class="form" name="title" id="store" method="get" action="search">
                                    <div class="form-inner">
                                        <div class="input-group">
                                            <input type="text" class="form-control" name="searchInput" placeholder="Keywords">
                                            <input type="hidden" name="op" value="freelancer">
                                            <button class="btn btn-primary sub-btn" type="submit">Search</button>
                                        </div>
                                    </div>
                                </form>
                                <nav aria-label="breadcrumb" class="page-breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="index.html"> Home</a></li>
                                        <li class="breadcrumb-item" aria-current="page">Developers</li>
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
                                                Freelancer Type
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
                                            <select class="select ">
                                                <option>Sort by (Default)</option>
                                                <option>Relevance</option>
                                                <option>Rating</option>
                                                <option>Popular</option>
                                                <option>Latest</option>
                                                <option>Free</option>
                                            </select>
                                        </div>
                                        <ul class="list-grid d-flex align-items-center">
                                            <li><a href="developer.html" class="favour-active"><i class="fas fa-th-large"></i></a></li>
                                            <li><a href="developer-list.html"><i class="fas fa-list"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-lg-6 col-xl-4">
                                    <div class="freelance-widget">
                                        <div class="freelance-content">
                                            <a data-bs-toggle="modal" href="#rating" class="favourite"><i class="feather-heart"></i></a>
                                            <div class="freelance-img">
                                                <a href="developer-details.html">
                                                    <img src="assets/img/user/avatar-1.jpg" alt="User Image">
                                                    <span class="verified"><i class="fas fa-check-circle"></i></span>
                                                </a>
                                            </div>
                                            <div class="freelance-info">
                                                <h3><a href="developer-details.html">George Wells</a></h3>
                                                <div class="freelance-specific">UI/UX Designer</div>
                                                <div class="freelance-location"> <i class="feather-map-pin me-1"></i>Alabama, USA</div>
                                                <div class="rating">
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star"></i>
                                                    <span class="average-rating">4.7 (32)</span>
                                                </div>
                                                <div class="freelance-tags">
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Web Design</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">UI Design</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Node Js</span></a>
                                                </div>
                                                <div class="freelancers-price">$25 Hourly</div>
                                            </div>
                                        </div>
                                        <div class="cart-hover">
                                            <a href="javascript:void(0);" class="btn-invite mb-2 w-100 d-block" tabindex="-1">Invite</a>
                                            <a href="developer-details.html" class="btn-cart" tabindex="-1">View Profile</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-6 col-xl-4">
                                    <div class="freelance-widget">
                                        <div class="freelance-content">
                                            <a data-bs-toggle="modal" href="#rating" class="favourite favourited"><i class="feather-heart"></i></a>
                                            <div class="freelance-img">
                                                <a href="developer-details.html">
                                                    <img src="assets/img/user/avatar-2.jpg" alt="User Image">
                                                    <span class="verified"><i class="fas fa-check-circle"></i></span>
                                                </a>
                                            </div>
                                            <div class="freelance-info">
                                                <h3><a href="developer-details.html">Timothy Smith</a></h3>
                                                <div class="freelance-specific">PHP Developer</div>
                                                <div class="freelance-location"> <i class="feather-map-pin me-1"></i>Illinois, USA</div>
                                                <div class="rating">
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star"></i>
                                                    <span class="average-rating">4.8 (55)</span>
                                                </div>
                                                <div class="freelance-tags">
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Web Design</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">UI Design</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Node Js</span></a>
                                                </div>
                                                <div class="freelancers-price">$21 Hourly</div>
                                            </div>
                                        </div>
                                        <div class="cart-hover">
                                            <a href="javascript:void(0);" class="btn-invite mb-2 w-100 d-block" tabindex="-1">Invite</a>
                                            <a href="developer-details.html" class="btn-cart" tabindex="-1">View Profile</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-6 col-xl-4">
                                    <div class="freelance-widget">
                                        <div class="freelance-content">
                                            <a data-bs-toggle="modal" href="#rating" class="favourite"><i class="feather-heart"></i></a>
                                            <div class="freelance-img">
                                                <a href="developer-details.html">
                                                    <img src="assets/img/user/avatar-3.jpg" alt="User Image">
                                                    <span class="verified"><i class="fas fa-check-circle"></i></span>
                                                </a>
                                            </div>
                                            <div class="freelance-info">
                                                <h3><a href="developer-details.html">Janet Paden</a></h3>
                                                <div class="freelance-specific">Graphic Designer</div>
                                                <div class="freelance-location"> <i class="feather-map-pin me-1"></i>New York, USA</div>
                                                <div class="rating">
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star"></i>
                                                    <span class="average-rating">4.1 (30)</span>
                                                </div>
                                                <div class="freelance-tags">
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Web Design</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">UI Design</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Node Js</span></a>
                                                </div>
                                                <div class="freelancers-price">Free</div>
                                            </div>
                                        </div>
                                        <div class="cart-hover">
                                            <a href="javascript:void(0);" class="btn-invite mb-2 w-100 d-block" tabindex="-1">Invite</a>
                                            <a href="developer-details.html" class="btn-cart" tabindex="-1">View Profile</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-6 col-xl-4">
                                    <div class="freelance-widget">
                                        <div class="freelance-content">
                                            <a data-bs-toggle="modal" href="#rating" class="favourite"><i class="feather-heart"></i></a>
                                            <div class="freelance-img">
                                                <a href="developer-details.html">
                                                    <img src="assets/img/user/avatar-4.jpg" alt="User Image">
                                                    <span class="verified"><i class="fas fa-check-circle"></i></span>
                                                </a>
                                            </div>
                                            <div class="freelance-info">
                                                <h3><a href="developer-details.html">James Douglas</a></h3>
                                                <div class="freelance-specific">iOS Developer</div>
                                                <div class="freelance-location"> <i class="feather-map-pin me-1"></i>Florida, USA</div>
                                                <div class="rating">
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star"></i>
                                                    <i class="fas fa-star"></i>
                                                    <span class="average-rating">3.2 (22)</span>
                                                </div>
                                                <div class="freelance-tags">
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Web Design</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">UI Design</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Node Js</span></a>
                                                </div>
                                                <div class="freelancers-price">Free</div>
                                            </div>
                                        </div>
                                        <div class="cart-hover">
                                            <a href="javascript:void(0);" class="btn-invite mb-2 w-100 d-block" tabindex="-1">Invite</a>
                                            <a href="developer-details.html" class="btn-cart" tabindex="-1">View Profile</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-6 col-xl-4">
                                    <div class="freelance-widget">
                                        <div class="freelance-content">
                                            <a data-bs-toggle="modal" href="#rating" class="favourite"><i class="feather-heart"></i></a>
                                            <div class="freelance-img">
                                                <a href="developer-details.html">
                                                    <img src="assets/img/user/avatar-5.jpg" alt="User Image">
                                                    <span class="verified"><i class="fas fa-check-circle"></i></span>
                                                </a>
                                            </div>
                                            <div class="freelance-info">
                                                <h3><a href="developer-details.html">Floyd Lewis</a></h3>
                                                <div class="freelance-specific">SEO Developer</div>
                                                <div class="freelance-location"> <i class="feather-map-pin me-1"></i>Texas, USA</div>
                                                <div class="rating">
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star"></i>
                                                    <span class="average-rating">4.9 (40)</span>
                                                </div>
                                                <div class="freelance-tags">
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Web Design</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">UI Design</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Node Js</span></a>
                                                </div>
                                                <div class="freelancers-price">$30 Hourly</div>
                                            </div>
                                        </div>
                                        <div class="cart-hover">
                                            <a href="javascript:void(0);" class="btn-invite mb-2 w-100 d-block" tabindex="-1">Invite</a>
                                            <a href="developer-details.html" class="btn-cart" tabindex="-1">View Profile</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-6 col-xl-4">
                                    <div class="freelance-widget">
                                        <div class="freelance-content">
                                            <a data-bs-toggle="modal" href="#rating" class="favourite"><i class="feather-heart"></i></a>
                                            <div class="freelance-img">
                                                <a href="developer-details.html">
                                                    <img src="assets/img/user/avatar-6.jpg" alt="User Image">
                                                    <span class="verified"><i class="fas fa-check-circle"></i></span>
                                                </a>
                                            </div>
                                            <div class="freelance-info">
                                                <h3><a href="developer-details.html">Jacqueline Daye</a></h3>
                                                <div class="freelance-specific">SM Developer</div>
                                                <div class="freelance-location"> <i class="feather-map-pin me-1"></i>California, USA</div>
                                                <div class="rating">
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star"></i>
                                                    <span class="average-rating">4.3 (35)</span>
                                                </div>
                                                <div class="freelance-tags">
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Web Design</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">UI Design</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Node Js</span></a>
                                                </div>
                                                <div class="freelancers-price">$12 Hourly</div>
                                            </div>
                                        </div>
                                        <div class="cart-hover">
                                            <a href="javascript:void(0);" class="btn-invite mb-2 w-100 d-block" tabindex="-1">Invite</a>
                                            <a href="developer-details.html" class="btn-cart" tabindex="-1">View Profile</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-6 col-xl-4">
                                    <div class="freelance-widget">
                                        <div class="freelance-content">
                                            <a data-bs-toggle="modal" href="#rating" class="favourite"><i class="feather-heart"></i></a>
                                            <div class="freelance-img">
                                                <a href="developer-details.html">
                                                    <img src="assets/img/user/avatar-7.jpg" alt="User Image">
                                                    <span class="verified"><i class="fas fa-check-circle"></i></span>
                                                </a>
                                            </div>
                                            <div class="freelance-info">
                                                <h3><a href="developer-details.html">Crystal Kemper</a></h3>
                                                <div class="freelance-specific">Network Engineer</div>
                                                <div class="freelance-location"> <i class="feather-map-pin me-1"></i>Maryland, USA</div>
                                                <div class="rating">
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star"></i>
                                                    <i class="fas fa-star"></i>
                                                    <span class="average-rating">3.5 (28)</span>
                                                </div>
                                                <div class="freelance-tags">
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Web Design</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">UI Design</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Node Js</span></a>
                                                </div>
                                                <div class="freelancers-price">$20 Hourly</div>
                                            </div>
                                        </div>
                                        <div class="cart-hover">
                                            <a href="javascript:void(0);" class="btn-invite mb-2 w-100 d-block" tabindex="-1">Invite</a>
                                            <a href="developer-details.html" class="btn-cart" tabindex="-1">View Profile</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-6 col-xl-4">
                                    <div class="freelance-widget">
                                        <div class="freelance-content">
                                            <a data-bs-toggle="modal" href="#rating" class="favourite"><i class="feather-heart"></i></a>
                                            <div class="freelance-img">
                                                <a href="developer-details.html">
                                                    <img src="assets/img/user/avatar-8.jpg" alt="User Image">
                                                    <span class="verified"><i class="fas fa-check-circle"></i></span>
                                                </a>
                                            </div>
                                            <div class="freelance-info">
                                                <h3><a href="developer-details.html">Tony Ingle</a></h3>
                                                <div class="freelance-specific">Business Analyst</div>
                                                <div class="freelance-location"> <i class="feather-map-pin me-1"></i>Missouri, USA</div>
                                                <div class="rating">
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star"></i>
                                                    <i class="fas fa-star"></i>
                                                    <i class="fas fa-star"></i>
                                                    <span class="average-rating">2.1 (15)</span>
                                                </div>
                                                <div class="freelance-tags">
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Web Design</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">UI Design</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Node Js</span></a>
                                                </div>
                                                <div class="freelancers-price">Free</div>
                                            </div>
                                        </div>
                                        <div class="cart-hover">
                                            <a href="javascript:void(0);" class="btn-invite mb-2 w-100 d-block" tabindex="-1">Invite</a>
                                            <a href="developer-details.html" class="btn-cart" tabindex="-1">View Profile</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-6 col-xl-4">
                                    <div class="freelance-widget">
                                        <div class="freelance-content">
                                            <a data-bs-toggle="modal" href="#rating" class="favourite"><i class="feather-heart"></i></a>
                                            <div class="freelance-img">
                                                <a href="developer-details.html">
                                                    <img src="assets/img/user/avatar-9.jpg" alt="User Image">
                                                    <span class="verified"><i class="fas fa-check-circle"></i></span>
                                                </a>
                                            </div>
                                            <div class="freelance-info">
                                                <h3><a href="developer-details.html">Kathleen Kaiser</a></h3>
                                                <div class="freelance-specific">IT Project Manager</div>
                                                <div class="freelance-location"> <i class="feather-map-pin me-1"></i>Kansas, USA</div>
                                                <div class="rating">
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star"></i>
                                                    <span class="average-rating">4.5 (36)</span>
                                                </div>
                                                <div class="freelance-tags">
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Web Design</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">UI Design</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Node Js</span></a>
                                                </div>
                                                <div class="freelancers-price">$25 Hourly</div>
                                            </div>
                                        </div>
                                        <div class="cart-hover">
                                            <a href="javascript:void(0);" class="btn-invite mb-2 w-100 d-block" tabindex="-1">Invite</a>
                                            <a href="developer-details.html" class="btn-cart" tabindex="-1">View Profile</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-6 col-xl-4">
                                    <div class="freelance-widget">
                                        <div class="freelance-content">
                                            <a data-bs-toggle="modal" href="#rating" class="favourite"><i class="feather-heart"></i></a>
                                            <div class="freelance-img">
                                                <a href="developer-details.html">
                                                    <img src="assets/img/user/avatar-10.jpg" alt="User Image">
                                                    <span class="verified"><i class="fas fa-check-circle"></i></span>
                                                </a>
                                            </div>
                                            <div class="freelance-info">
                                                <h3><a href="developer-details.html">Veronica Cheek</a></h3>
                                                <div class="freelance-specific">Software Architect</div>
                                                <div class="freelance-location"> <i class="feather-map-pin me-1"></i>Vermont, USA</div>
                                                <div class="rating">
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star"></i>
                                                    <i class="fas fa-star"></i>
                                                    <i class="fas fa-star"></i>
                                                    <span class="average-rating">2.3 (20)</span>
                                                </div>
                                                <div class="freelance-tags">
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Web Design</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">UI Design</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Node Js</span></a>
                                                </div>
                                                <div class="freelancers-price">$26 Hourly</div>
                                            </div>
                                        </div>
                                        <div class="cart-hover">
                                            <a href="javascript:void(0);" class="btn-invite mb-2 w-100 d-block" tabindex="-1">Invite</a>
                                            <a href="developer-details.html" class="btn-cart" tabindex="-1">View Profile</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-6 col-xl-4">
                                    <div class="freelance-widget">
                                        <div class="freelance-content">
                                            <a data-bs-toggle="modal" href="#rating" class="favourite"><i class="feather-heart"></i></a>
                                            <div class="freelance-img">
                                                <a href="developer-details.html">
                                                    <img src="assets/img/user/avatar-11.jpg" alt="User Image">
                                                    <span class="verified"><i class="fas fa-check-circle"></i></span>
                                                </a>
                                            </div>
                                            <div class="freelance-info">
                                                <h3><a href="developer-details.html">Andrew Glover</a></h3>
                                                <div class="freelance-specific">Software Developer</div>
                                                <div class="freelance-location"> <i class="feather-map-pin me-1"></i>Virginia, USA</div>
                                                <div class="rating">
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star"></i>
                                                    <span class="average-rating">5.0 (4)</span>
                                                </div>
                                                <div class="freelance-tags">
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Web Design</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">UI Design</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Node Js</span></a>
                                                </div>
                                                <div class="freelancers-price">$8 Hourly</div>
                                            </div>
                                        </div>
                                        <div class="cart-hover">
                                            <a href="javascript:void(0);" class="btn-invite mb-2 w-100 d-block" tabindex="-1">Invite</a>
                                            <a href="developer-details.html" class="btn-cart" tabindex="-1">View Profile</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-6 col-xl-4">
                                    <div class="freelance-widget">
                                        <div class="freelance-content">
                                            <a data-bs-toggle="modal" href="#rating" class="favourite"><i class="feather-heart"></i></a>
                                            <div class="freelance-img">
                                                <a href="developer-details.html">
                                                    <img src="assets/img/user/avatar-12.jpg" alt="User Image">
                                                    <span class="verified"><i class="fas fa-check-circle"></i></span>
                                                </a>
                                            </div>
                                            <div class="freelance-info">
                                                <h3><a href="developer-details.html">Mickey Bernier</a></h3>
                                                <div class="freelance-specific">QA Engineer</div>
                                                <div class="freelance-location"> <i class="feather-map-pin me-1"></i>Colorado, USA</div>
                                                <div class="rating">
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star"></i>
                                                    <span class="average-rating">5.0 (4)</span>
                                                </div>
                                                <div class="freelance-tags">
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Web Design</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">UI Design</span></a>
                                                    <a href="javascript:void(0);"><span class="badge badge-pill badge-design">Node Js</span></a>
                                                </div>
                                                <div class="freelancers-price">Free</div>
                                            </div>
                                        </div>
                                        <div class="cart-hover">
                                            <a href="javascript:void(0);" class="btn-invite mb-2 w-100 d-block" tabindex="-1">Invite</a>
                                            <a href="developer-details.html" class="btn-cart" tabindex="-1">View Profile</a>
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


           <jsp:include page="footter.jsp" />

        </div>


        <div class="modal fade" id="rating">
            <div class="modal-dialog modal-dialog-centered modal-md">
                <div class="modal-content">
                    <div class="modal-header d-block b-0 pb-0">
                        <span class="modal-close float-end"><a href="javascript:void(0);" data-bs-dismiss="modal" aria-label="Close"><i class="far fa-times-circle orange-text"></i></a></span>
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


        <script src="assets/js/jquery-3.7.1.min.js" type="6afd00299c64b072e6c7887a-text/javascript"></script>

        <script src="assets/js/bootstrap.bundle.min.js" type="6afd00299c64b072e6c7887a-text/javascript"></script>

        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js" type="6afd00299c64b072e6c7887a-text/javascript"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js" type="6afd00299c64b072e6c7887a-text/javascript"></script>

        <script src="assets/plugins/select2/js/select2.min.js" type="6afd00299c64b072e6c7887a-text/javascript"></script>

        <script src="assets/js/profile-settings.js" type="6afd00299c64b072e6c7887a-text/javascript"></script>
        <script src="assets/js/script.js" type="6afd00299c64b072e6c7887a-text/javascript"></script>
        <script src="../../cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="6afd00299c64b072e6c7887a-|49" defer></script></body>

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/developer.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:29:56 GMT -->
</html>