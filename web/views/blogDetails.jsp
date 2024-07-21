<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zxx">

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/blog-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:35:42 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
        <title>KofeJob</title>

        <link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

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
                            <a href="home" class="navbar-brand logo">
                                <img src="assets/img/logo.svg" class="img-fluid" alt="Logo">
                            </a>
                        </div>
                        <div class="main-menu-wrapper">
                            <div class="menu-header">
                                <a href="home" class="menu-logo">
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
                                <h2>Blog Details</h2>
                                <nav aria-label="breadcrumb" class="page-breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="home"> Home</a></li>
                                        <li class="breadcrumb-item" aria-current="page">Blog Details</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


                    <div style="padding-top: 10px" class="content">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-md-12">
                            <div class="blog-view">
                                <div class="blog-single-post pro-post widget-box">
                                    <div class="blog-image">
                                        <a href="javascript:void(0);"><img style="margin-left: 8px;height: 400px; width: 800px; border-radius: 10px"  alt="Img" src="${blog.image}" class="img-fluid"></a>
                                    </div>
                                    <h3 class="blog-title">${blog.title}</h3>
                                    <div class="blog-info clearfix">
                                        <div class="post-left">
                                            <ul>
                                                <li>
                                                    <div class="post-author">
                                                        <a href=""><img src="assets/img/img-02.jpg" alt="Post Author"><span>John Doe</span></a>
                                                    </div>
                                                </li>
                                                <li><a href="javascript:void(0);"><i class="far fa-calendar"></i>4 May 2021</a></li>
                                                
                                                <li><i class="fas fa-tags"></i>${blog.tag}</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="blog-content">
                                        <p>${blog.description}</p>
                                        
                                    </div>
                                </div>
                                         
                               
                                
                                
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-12 sidebar-right theiaStickySidebar">
                           
                           <div class=" pro-post widget-box post-widget">
                                <h4 class="pro-title">Latest Posts</h4>
                                <div class="pro-content pt-0">
                                    <ul class="latest-posts">
                                        
                                        <c:forEach items="${blognew}" var="i">
                                        <li>
                                            <div class="post-thumb">
                                                <a href="blog-details.html">
                                                    <img class="img-fluid" src="${i.image}" alt="Img">
                                                </a>
                                            </div>
                                            <div class="post-info">
                                                <h4>
                                                    <a href="blog-details.html">${i.title}</a>
                                                </h4>
                                                <a href="javascript:void(0);" class="posts-date"><i class="feather-calendar"></i> 2 May 2021</a>
                                            </div>
                                        </li>
                                          </c:forEach>  
                                    </ul>
                                </div>
                            </div>
                                          

                        </div>

                    </div>
                </div>
            </div>


            <jsp:include page="footter.jsp" />

        </div>


        <script src="assets/js/jquery-3.7.1.min.js" type="3706df7bc96e1a1ec45abd23-text/javascript"></script>

        <script src="assets/js/bootstrap.bundle.min.js" type="3706df7bc96e1a1ec45abd23-text/javascript"></script>

        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js" type="3706df7bc96e1a1ec45abd23-text/javascript"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js" type="3706df7bc96e1a1ec45abd23-text/javascript"></script>

        <script src="assets/js/script.js" type="3706df7bc96e1a1ec45abd23-text/javascript"></script>
        </body>

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/blog-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:35:42 GMT -->
</html>
