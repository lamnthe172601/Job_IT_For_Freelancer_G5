<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
        <title>KofeJob</title>
        <link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/plugins/feather/feather.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <style>
            .no-blogs-found {
                text-align: center;
                font-size: 18px;
                color: #E65425;
                margin-top: 20px;
                padding: 10px;
                border-radius: 5px;
            }
            .blog-image {
                width: 100%;
                height: 270px; /* Chiều cao cố định, có thể thay đổi tùy nhu cầu */
                display: flex;
                align-items: center;
                justify-content: center;
            }
            /* Cố định kích thước của ảnh */
            .img-fluid {
                max-width: 100%;
                max-height: 100%;
                object-fit: cover; /* Đảm bảo ảnh vừa khít với khung mà không bị méo */
                display: block;
            }

            /* Đảm bảo chiều cao đồng đều cho các blog content */
            .blog-content {
                display: flex;
                flex-direction: column;
                justify-content: space-between;
                min-height: 180px; /* Chiều cao tối thiểu, có thể thay đổi tùy nhu cầu */
            }

            /* Đảm bảo khoảng cách đều giữa các form */
            .blog {
                height: 450px;
                margin-bottom: 5px; /* Khoảng cách giữa các blog, có thể thay đổi tùy nhu cầu */
            }
        </style>
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
                        </div>
                    </nav>
                </div>
            </header>
            <div class="bread-crumb-bar">
                <div class="container">
                    <div class="row align-items-center inner-banner">
                        <div class="col-md-12 col-12 text-center">
                            <div class="breadcrumb-list">
                                <h2>Blog Grid</h2>
                                <nav aria-label="breadcrumb" class="page-breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="home">Home</a></li>
                                        <li class="breadcrumb-item" aria-current="page">Blog Grid</li>

                                    </ol>
                                </nav>
                                <form action="searchBlog" method="get" style=" display: flex; align-items: center;">
                                    <input type="text" name="query" placeholder="Search blog..." style="padding: 5px; margin-right: 5px; border-radius: 10px; width: 250px;">
                                    <button type="submit" style="display: flex; align-items: center; padding: 5px 10px; background-color: rgb(230, 84, 37); color: white; border: none; cursor: pointer; margin-right: 5px; border-radius: 10px;">
                                        <i class="feather-search me-1"></i>Search
                                    </button>
                                </form>

                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <div class="content">
                <div class="container">
                    <div class="row blog-grid-row">
                        <c:choose>
                            <c:when test="${not empty blogs}">
                                <c:forEach var="blog" items="${blogs}">
                                    <div class="col-md-4 col-sm-12">
                                        <div class="blog grid-blog">
                                            <div class="blog-image">
                                                <a href="BlogDetails?blogId=${blog.blogID}">
                                                    <img class="img-fluid" src="assets/img/blog/${blog.image}" alt="${blog.title}">
                                                </a>
                                            </div>
                                            <div class="blog-content">
                                                <ul class="entry-meta meta-item">
                                                    <li><i class="far fa-clock"></i> <c:out value="${blog.date_blog}"/></li>
                                                </ul>
                                                <h3 class="blog-title"><a href="BlogDetails?blogId=${blog.blogID}"><c:out value="${blog.title}"/></a></h3>
                                                <p class="mb-0"><c:out value="${blog.description}"/></p>
                                                <div class="blog-read">
                                                    <a href="BlogDetails?blogID=${blog.blogID}">Read More <i class="fas fa-arrow-right ms-1"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </c:when>
                            <c:otherwise>
                                <div class="col-12">
                                    <p class="no-blogs-found">There are no blogs that match your query</p>
                                </div>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>

            <jsp:include page="footter.jsp" />
        </div>

        <script src="assets/js/jquery-3.7.1.min.js" type="8157e937c31e3b17dd795771-text/javascript"></script>
        <script src="assets/js/bootstrap.bundle.min.js" type="8157e937c31e3b17dd795771-text/javascript"></script>
        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js" type="8157e937c31e3b17dd795771-text/javascript"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js" type="8157e937c31e3b17dd795771-text/javascript"></script>
        <script src="assets/js/script.js" type="8157e937c31e3b17dd795771-text/javascript"></script>
        <script src="../../cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="8157e937c31e3b17dd795771-|49" defer></script>
        <script>
            document.addEventListener("DOMContentLoaded", function () {
                const maxLength = 100;
                const descriptions = document.querySelectorAll(".blog-content p.mb-0");

                descriptions.forEach(function (description) {
                    const text = description.innerText;
                    if (text.length > maxLength) {
                        description.innerText = text.substring(0, maxLength) + "...";
                    }
                });
            });
        </script>
    </body>
</html>
