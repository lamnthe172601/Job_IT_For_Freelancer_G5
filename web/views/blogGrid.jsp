<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
        <title>KofeJob</title>
        <link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/plugins/feather/feather.css">
        <link rel="stylesheet" type="text/css" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" type="text/css" href="assets/plugins/fontawesome/css/all.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        <style>
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
            .blog-content p {
                word-break: break-word; /* Chuyển từ dài xuống dòng mới */
                overflow-wrap: break-word; /* Chuyển từ dài xuống dòng mới */
                white-space: pre-wrap; /* Giữ khoảng trắng và xuống dòng khi cần */
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
                            <ul class="main-nav">
                                <li class="active has-submenu">
                                    <a href="home">Home <i class="fas "></i></a>

                                </li>

                                <c:if test="${sessionScope.account.roleID.getRoleID() == 3 || sessionScope.account.roleID.getRoleID() == null}">
                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">For Freelancer<i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu"> 

                                            <li><a href="PostFavourites">Jobs Favourites</a></li>                                                                                                                 
                                            <li><a href="ListApply">Jobs Apply</a></li>
                                            <li><a href="JobforFreelancer">Jobs For you</a></li>
                                        </ul>
                                    </li>

                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">For Jobs<i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">

                                            <li><a href="AllListPost">Jobs List</a></li>                                        

                                        </ul>
                                    </li>
                                </c:if>
                                <c:if test="${sessionScope.account.roleID.getRoleID() == 4}">
                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">Find Freelancer<i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">

                                            <li><a href="ListFreelancer">List Freelancer</a></li>

                                        </ul>
                                    </li>
                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">My Post<i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">
                                            <li><a href="CreatePost">Create a new Project</a></li>
                                            <li><a href="myListJobProject">My list project</a></li>


                                        </ul>
                                    </li>
                                </c:if>
                                <li class="has-submenu">
                                    <a href="javascript:void(0);">About<i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">                                                                           

                                        <li><a href="blogGrid">Blog</a></li>
                                        <li><a href="About">About us</a></li>
                                        <li><a href="ContactUs">Contact us</a></li>
                                    </ul>
                                </li>

                                <c:if test="${sessionScope.account.roleID.getRoleID() == 3}">

                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">Hello ${sessionScope.account.username} <i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">
                                            <li><a href="MyProfile?id=${sessionScope.account.userID}">My Profile</a></li>                      
                                            <li><a href="changePass">Change Password</a></li>                                                                                     
                                            <li><a href="UpdateProfile?id=${sessionScope.account.userID}">Settings</a></li>
                                            <li><a href="logout">Logout</a></li>
                                        </ul>
                                    </li>
                                </c:if>
                                <c:if test="${sessionScope.account.roleID.getRoleID() == 4}">
                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">Hello ${sessionScope.account.username} <i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">

                                            <li><a href="Dashboard">Dashboard</a></li>
                                            <li><a href="companydetail">My Profile</a></li>
                                            <li><a href="manageJobsPosts">Projects</a></li>
                                            <li><a href="RecruiterFavourites">Favourites</a></li>                                                                                       
                                            <li><a href="recruitersetting">Settings</a></li>
                                            <li><a href="logout">Logout</a></li>
                                        </ul>
                                    </li>
                                </c:if>
                                <c:if test="${sessionScope.account.roleID.getRoleID() == 1 || sessionScope.account.roleID.getRoleID() == 2}">
                                    <li>
                                        <a href="home" target="_blank">Admin</a>
                                        <ul class="submenu">

                                            <li><a href="dashboardAdmin">Dashboard</a></li>                                           
                                            <li><a href="profile-settings">Settings</a></li>
                                            <li><a href="logout">Logout</a></li>
                                        </ul>
                                    </li>
                                </c:if>
                                <c:if test="${sessionScope.account == null}">
                                    <li><a href="Register" class="reg-btn"><img src="assets/img/icon/users.svg" class="me-1" alt="img">Register</a></li>
                                    <li><a href="login" class="log-btn active"><img src="assets/img/icon/lock.svg" class="me-1" alt="img"> Login</a></li>
                                        </c:if>
                            </ul>
                        </div>
                        <ul style="margin-left: 5px;" class="nav header-navbar-rht">                       
                                <li>
                                    <form action="searchBlog" method="get" style=" display: flex;
                                          align-items: center;">
                                        <c:if test="${txtSearch == null}">
                                            <input type="text" name="query" placeholder="Search Blog" style="padding: 5px;margin-right: 5px; border-radius: 10px; width: 250px;">
                                        </c:if>
                                        <c:if test="${txtSearch != null}">
                                            <input type="text" name="query" value="${txtSearch}" style="padding: 5px;margin-right: 5px; border-radius: 10px; width: 250px;">
                                        </c:if>
                                        <button type="submit" style="display: flex;
                                                align-items: center;
                                                padding: 5px 10px;
                                                background-color: rgb(230, 84, 37);
                                                color: white;
                                                border: none;
                                                cursor: pointer;
                                                margin-right: 5px;
                                                border-radius: 10px;">
                                            <i class="feather-search me-1"></i>Search
                                        </button>
                                    </form>
                                </li>                            

                        </ul>
                  </nav>      
                </div>  
         </header>       
        </div>
    

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
                    </div>

                </div>
            </div>
        </div>
    </div>


    <div class="content">
        <div class="container">
            <div class="row blog-grid-row">
                <c:forEach var="blog" items="${listBlog}">
                    <div class="col-md-4 col-sm-12">
                        <div class="blog grid-blog">
                            <div class="blog-image">
                                <a href="BlogDetails?blogID=${blog.blogID}">
                                    <img class="img-fluid" src="${blog.image}">
                                </a>
                            </div>
                            <div class="blog-content">
                                <ul class="entry-meta meta-item">
                                    <li><i class="far fa-clock"></i> <c:out value="${blog.date_blog}"/></li>
                                </ul>
                                <h3 class="blog-title"><a href="BlogDetails?blogID=${blog.blogID}""><c:out value="${blog.title}"/></a></h3>
                                <p class="mb-0"><c:out value="${blog.description}"/></p>
                                <div class="blog-read">
                                    <a href="BlogDetails?blogID=${blog.blogID}">Read More <i class="fas fa-arrow-right ms-1"></i></a>
                                </div>
                            </div>

                        </div>
                    </div>
                </c:forEach>
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
        const maxLength = 50;
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
