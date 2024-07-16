<%-- 
    Document   : homepage
    Created on : Jun 7, 2024, 11:45:22 PM
    Author     : Admin
--%>

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

        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

        <link rel="stylesheet" href="assets/plugins/feather/feather.css">

        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/owl.theme.default.min.css">

        <link rel="stylesheet" href="assets/plugins/aos/aos.css">

        <link rel="stylesheet" href="assets/plugins/select2/css/select2.min.css">

        <link rel="stylesheet" href="assets/css/style.css">

        <style>
            .project-img {
                position: relative;
            }

            .favorite-icon {
                position: absolute;
                top: 0;
                right: 0;
                font-size: 24px; /* Kích thước to hơn */
                color: #777; /* Màu mặc định */
                transition: color 0.3s ease; /* Hiệu ứng chuyển đổi màu */
                z-index: 1; /* Đảm bảo nằm trên cùng */
            }

            .favorite-icon:hover {
                color: red; /* Màu đỏ khi hover */
            }



        </style>
    </head>
    <body class="home-page bg-two">

        <div id="global-loader">
            <div class="whirly-loader"> </div>
            <div class="loader-img">
                <img src="assets/img/load-icon.svg" class="img-fluid" alt="Img">
            </div>
        </div>


        <div class="main-wrapper">
            <header class="header header-two">

                <div class="container">
                    <nav class="navbar navbar-expand-lg header-nav p-0">
                        <div class="navbar-header header-select">
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


            <section style="padding-top: 0px" class="section home-banner  home-two">
                <div class="container">
                    <div class="row align-items-center">
                        <div class=" col-lg-6 col-md-12">
                            <div class="banner-content aos" data-aos="fade-up">
                                <div class="market-place">
                                    <h3>With the world's #1 Developers Marketplace</h3>
                                </div>
                                <h1>Get the perfect <br>Developers & Projects</h1>

                                <div class="home-count">
                                    <ul class="nav">
                                        <li class="course-count"><span class="counter-up">${NumberUsers}</span><span class="list-count">Freelance developers</span></li>
                                        <li class="course-count"><span class="counter-up">${NumberPost} </span><span>+</span><span class="list-count">Projects Added</span></li>
                                        <li class="course-count"><span class="counter-up">919,207</span><span class="list-count">Completed projects</span></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-lg-5">
                            <div class="banner-two-img aos" data-aos="fade-up">
                                <img src="assets/img/home-two-banner-bg-01.png" class="img-fluid trusted-user-img aos" data-aos="zoom-in" alt="banner" data-aos-duration="3000">
                                <img src="assets/img/home-two-banner-bg-02.png" class="img-fluid best-marketing-img aos" data-aos="zoom-in" alt="banner" data-aos-duration="3000">
                            </div>
                        </div>
                    </div>

                </div>
            </section>

            <!--            post project for you        -->
            <c:if test="${sessionScope.account.roleID.getRoleID() == 3}">        
                <section class="section feature-project home-two-projects">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-12 mx-auto">
                                <div class="section-header section-header-two text-center aos" data-aos="fade-up">
                                    <h2 class="header-title">Featured Projects <span> For You</span></h2>
                                    <p>We have over 2000+ Projects waiting for you</p>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <c:forEach items="${getPostsByFreelancerSkill}" var="list">
                                <div class="col-lg-4 col-md-6 d-flex">
                                    <div class="project-item feature-project-item aos" data-aos="fade-up">
                                        <div class="project-img position-relative">
                                            <!-- Hình ảnh -->
                                            <a href="project.html"><img style="width: 326px; height: 230px;" src="${list.image}" alt="Img" class="img-fluid"></a>
                                            <!-- Biểu tượng trái tym -->

                                            <a class="yeuthich" post-id="${list.postID}">
                                                <div class="favorite-icon" onclick="toggleHeart(this)" >


                                                    <c:set var="favo" value="false" />
                                                    <c:forEach items="${postFavourites}" var="post">
                                                        <c:choose>
                                                            <c:when test="${list.postID == post.postID}">
                                                                <c:set var="favo" value="true" />
                                                            </c:when>                                                                
                                                        </c:choose>
                                                    </c:forEach>
                                                    <c:choose>
                                                        <c:when test="${favo}">
                                                            <a href="javascript:void(0);" ><i onclick="toggleFavorite(${list.postID})" id="favourite_${list.postID}" class="fas fa-heart"></i></a>
                                                            </c:when>
                                                            <c:otherwise>
                                                            <a href="javascript:void(0);" ><i onclick="toggleFavorite(${list.postID})" id="favourite_${list.postID}" class="far fa-heart"></i></a>
                                                            </c:otherwise>
                                                        </c:choose>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="feature-content">
                                            <!-- Các nội dung khác -->
                                            <div class="feature-time-blk">
                                                <a href="javascript:void(0);" class="btn btn-primary green-active">${list.durationID.durationName}</a>
                                                <span><i class="far fa-clock me-1"></i> ${list.datePost}</span>
                                            </div>
                                            <h4><a href="project.html">${list.getTitle()}</a></h4>
                                            <ul class="feature-project-list nav">
                                                <li><i class="feather-user me-1"></i>${list.caID.categoriesName}</li>
                                                <li><i class="feather-map-pin me-1"></i>${list.location}</li>
                                            </ul>
                                            <div class="feature-foot">
                                                <div class="logo-company">
                                                    <a href="project.html">
                                                        <img src="assets/img/icon/logo-icon-01.svg" class="me-1" alt="icon">
                                                        <span>${list.recruiterID.fullName()}</span>
                                                    </a>
                                                </div>
                                                <a href="PostDetails?postID=${list.postID}" class="bid-now">Bid Now <i class="feather-arrow-right ms-1"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                            <div class="col-xl-12">
                                <div class="more-project text-center aos" data-aos="fade-up">
                                    <a href="JobforFreelancer" class="btn btn-primary">View More Projects</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </c:if>         



            <c:if test="${sessionScope.account.roleID.getRoleID() == null}">              
                <section style="margin-top: 100px;" class="section platform">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="plat-form-img aos" data-aos="fade-up">
                                    <img src="assets/img/plat-form.png" alt="Img" class="img-fluid">
                                </div>
                            </div>
                            <div class="col-md-6 d-flex align-items-center">
                                <div class="platform-group aos" data-aos="fade-up">
                                    <h1>Discover Project Around your Location <span> In Our Platform</span></h1>
                                    <h5>Get Inspired by Development Projects</h5>
                                    <p>We Provide Stable Service With Experts Freelancers around the globe, are looking for work and provide the best they have .Experience state-of-the-art marketplace platform with the Kofejob. We combine the experience of our global community around the globe for a best marketplace theme.</p>
                                    <div class="market-place-btn platform-btn">
                                        <a href="Register" class="btn btn-primary market-project me-2">Find Jobs Projects</a>
                                        <a href="Register" class="btn btn-primary project-post">Post a Project</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </c:if> 


            <!--            the new post project        -->
            <c:if test="${sessionScope.account.roleID.getRoleID() == 3}">           
                <section class="section feature-project home-two-projects">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-12 mx-auto">
                                <div class="section-header section-header-two text-center aos" data-aos="fade-up">
                                    <h2 class="header-title">The New Projects <span> Update</span></h2>
                                    <p>Summary of latest project articles </p>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <c:forEach items="${listpost}" var="list">
                                <div class="col-lg-4 col-md-6 d-flex">
                                    <div class="project-item feature-project-item aos" data-aos="fade-up">
                                        <div class="project-img position-relative">
                                            <!-- Hình ảnh -->
                                            <a href="PostDetails?postID=${list.postID}"><img style="width: 326px; height: 230px;" src="${list.image}" alt="Img" class="img-fluid"></a>
                                            <!-- Biểu tượng trái tym -->
                                            <div class="favorite-icon" onclick="toggleHeart(this)" >
                                                <c:set var="favo" value="false" />
                                                <c:forEach items="${postFavourites}" var="post">
                                                    <c:choose>
                                                        <c:when test="${list.postID == post.postID}">
                                                            <c:set var="favo" value="true" />
                                                        </c:when>                                                                
                                                    </c:choose>
                                                </c:forEach>
                                                <c:choose>
                                                    <c:when test="${favo}">
                                                        <a href="javascript:void(0);" ><i onclick="toggleFavorite(${list.postID})" id="favourite_${list.postID}" class="fas fa-heart"></i></a>
                                                        </c:when>
                                                        <c:otherwise>
                                                        <a href="javascript:void(0);" ><i onclick="toggleFavorite(${list.postID})" id="favourite_${list.postID}" class="far fa-heart"></i></a>
                                                        </c:otherwise>
                                                    </c:choose>
                                            </div>
                                        </div>
                                        <div class="feature-content">
                                            <!-- Các nội dung khác -->
                                            <div class="feature-time-blk">
                                                <a href="javascript:void(0);" class="btn btn-primary green-active">${list.durationID.durationName}</a>
                                                <span><i class="far fa-clock me-1"></i> ${list.datePost}</span>
                                            </div>
                                            <h4><a href="PostDetails?postID=${list.postID}">${list.getTitle()}</a></h4>
                                            <ul class="feature-project-list nav">
                                                <li><i class="feather-user me-1"></i>${list.caID.categoriesName}</li>
                                                <li><i class="feather-map-pin me-1"></i>${list.location}</li>
                                            </ul>
                                            <div class="feature-foot">
                                                <div class="logo-company">
                                                    <a href="PostDetails?postID=${list.postID}">
                                                        <img src="assets/img/icon/logo-icon-01.svg" class="me-1" alt="icon">
                                                        <span>${list.recruiterID.fullName()}</span>
                                                    </a>
                                                </div>
                                                <a href="PostDetails?postID=${list.postID}" class="bid-now">Bid Now <i class="feather-arrow-right ms-1"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>

                            <div class="col-xl-12">
                                <div class="more-project text-center aos" data-aos="fade-up">
                                    <a href="" class="btn btn-primary">View More Projects</a>
                                </div>
                            </div>
                        </div> 
                    </div>
                </section>
            </c:if> 


            <!--            the top freelancer by skill       -->
            <c:if test="${sessionScope.account.roleID.getRoleID() == 4}">          
                <section class="section feature-developer home-two-developers">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-12 mx-auto">
                                <div class="section-header section-header-two text-center aos" data-aos="fade-up">
                                    <h2 class="header-title">Featured <span>Developers</span></h2>
                                    <p>We have over 1400+ Developers </p>
                                </div>
                            </div>
                        </div>
                        <div class="row">

                            <c:forEach items="${freelancerSkill}" var="freelancerSkill">
                                <div class="col-xl-3 col-md-6">
                                    <div class="feature-develop-blk aos" data-aos="fade-up">
                                        <div class="developer-sub-blk">
                                            <div class="img-developer">
                                                <a href=""><img src="${freelancerSkill.freelancer.getImage()}" class="me-2" alt="Img"></a>
                                            </div>
                                            <div class="developer-content">
                                                <h4><a href="ViewFreelancerProfile?id=${freelancerSkill.freelancer.getFreelanceID()}">${freelancerSkill.freelancer.fullname()}</a></h4>
                                                <p>${freelancerSkill.skills.skill_set_ID.skill_set_name}</p>
                                                <div class="rating">
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <i class="fas fa-star filled"></i>
                                                    <span class="average-rating">5.0</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="hour-rate">
                                            <ul class="nav">
                                                <li><i class="  me-1"></i><span id="describe-text">${freelancerSkill.freelancer.describe}</span></li>

                                                <script>
                                                    // Function to truncate text to the first 5 words followed by '...'
                                                    function truncateText(selector, maxWords) {
                                                        const element = document.querySelector(selector);
                                                        if (element) {
                                                            let text = element.textContent;
                                                            let words = text.split(' ');
                                                            if (words.length > maxWords) {
                                                                text = words.slice(0, maxWords).join(' ') + '...';
                                                            }
                                                            element.textContent = text;
                                                        }
                                                    }

                                                    // Usage
                                                    truncateText('#describe-text', 5); // Truncate to 5 words
                                                </script>

                                                <li>
                                                    <div class="favorite-icon" onclick="toggleHeart(this)" >
                                                        <i class="far fa-heart"></i>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>

                            <div class="col-xl-12">
                                <div class="more-project text-center aos" data-aos="fade-up">
                                    <a href="ListFreelancer" class="btn btn-primary">View More Freelancers</a>
                                </div>
                                <div class="review-bottom text-center aos" data-aos="fade-up">
                                    <div class="client-rate">
                                        <h4>Clients rate our Data Processing Executives</h4>
                                        <div class="rating">
                                            <i class="fas fa-star filled"></i>
                                            <i class="fas fa-star filled"></i>
                                            <i class="fas fa-star filled"></i>
                                            <i class="fas fa-star filled"></i>
                                            <i class="fas fa-star filled"></i>
                                            <span class="average-rating">5.0 (30)</span>
                                        </div>
                                        <p>from 4227 reviews</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </c:if> 

            <!--the post project by categori-->
            <c:if test="${sessionScope.account.roleID.getRoleID() == 4}">           
                <section style="padding-top: 0px" class="section feature-project home-two-projects">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-12 mx-auto">
                                <div class="section-header section-header-two text-center aos" data-aos="fade-up">
                                    <h2 class="header-title">The Jobs Project<span> By Categories</span></h2>
                                    <p>Summary of latest project articles </p>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <c:forEach items="${getOtherPostsBySimilarCategories}" var="list">
                                <div class="col-lg-4 col-md-6 d-flex">
                                    <div class="project-item feature-project-item aos" data-aos="fade-up">
                                        <div class="project-img position-relative">
                                            <!-- Hình ảnh -->
                                            <a href="PostDetails?postID=${list.postID}"><img style="width: 326px; height: 230px;" src="${list.image}" alt="Img" class="img-fluid"></a>
                                            <!-- Biểu tượng trái tym -->
                                            <div class="favorite-icon" onclick="toggleHeart(this)" >
                                                <i class="far fa-heart"></i>
                                            </div>
                                        </div>
                                        <div class="feature-content">
                                            <!-- Các nội dung khác -->
                                            <div class="feature-time-blk">
                                                <a href="javascript:void(0);" class="btn btn-primary green-active">${list.durationID.durationName}</a>
                                                <span><i class="far fa-clock me-1"></i> ${list.datePost}</span>
                                            </div>
                                            <h4><a href="PostDetails?postID=${list.postID}">${list.getTitle()}</a></h4>
                                            <ul class="feature-project-list nav">
                                                <li><i class="feather-user me-1"></i>${list.caID.categoriesName}</li>
                                                <li><i class="feather-map-pin me-1"></i>${list.location}</li>
                                            </ul>
                                            <div class="feature-foot">
                                                <div class="logo-company">
                                                    <a href="PostDetails?postID=${list.postID}">
                                                        <img src="assets/img/icon/logo-icon-01.svg" class="me-1" alt="icon">
                                                        <span>${list.recruiterID.fullName()}</span>
                                                    </a>
                                                </div>
                                                <a href="PostDetails?postID=${list.postID}" class="bid-now">View<i class="feather-arrow-right ms-1"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>

                            <div class="col-xl-12">
                                <div class="more-project text-center aos" data-aos="fade-up">
                                    <a href="PostDetails?postID=${list.postID}" class="btn btn-primary">View More Projects</a>
                                </div>
                            </div>
                        </div> 
                    </div>
                </section>
            </c:if>

            <c:if test="${sessionScope.account.roleID.getRoleID() == null}">              
                <section style="padding-top: 0px" class="section top-skill">
                    <div class="container">
                        <div class="section-header section-header-two text-center aos" data-aos="fade-up">
                            <h2 class="header-title">Featured <span> Skills</span></h2>
                            <p>Get work done in over 1800 different categories </p>
                        </div>
                        <div class="row justify-content-center aos" data-aos="fade-up">
                            <div class="skill-custom-col">
                                <div class="skills-feature">
                                    <div class="skill-icon">
                                        <img src="assets/img/icon/skill-icon-01.svg" alt="Img">
                                    </div>
                                    <span>Translation</span>
                                </div>
                            </div>
                            <div class="skill-custom-col">
                                <div class="skills-feature">
                                    <div class="skill-icon">
                                        <img src="assets/img/icon/skill-icon-02.svg" alt="Img">
                                    </div>
                                    <span>Research Writing</span>
                                </div>
                            </div>
                            <div class="skill-custom-col">
                                <div class="skills-feature">
                                    <div class="skill-icon">
                                        <img src="assets/img/icon/skill-icon-03.svg" alt="Img">
                                    </div>
                                    <span>Web Scraping</span>
                                </div>
                            </div>
                            <div class="skill-custom-col">
                                <div class="skills-feature">
                                    <div class="skill-icon">
                                        <img src="assets/img/icon/skill-icon-04.svg" alt="Img">
                                    </div>
                                    <span>Article Writing</span>
                                </div>
                            </div>
                            <div class="skill-custom-col">
                                <div class="skills-feature">
                                    <div class="skill-icon">
                                        <img src="assets/img/icon/skill-icon-05.svg" alt="Img">
                                    </div>
                                    <span>HTML 5</span>
                                </div>
                            </div>
                            <div class="skill-custom-col">
                                <div class="skills-feature">
                                    <div class="skill-icon">
                                        <img src="assets/img/icon/skill-icon-06.svg" alt="Img">
                                    </div>
                                    <span>Website Design</span>
                                </div>
                            </div>
                            <div class="skill-custom-col">
                                <div class="skills-feature">
                                    <div class="skill-icon">
                                        <img src="assets/img/icon/skill-icon-07.svg" alt="Img">
                                    </div>
                                    <span>Mobile Apps</span>
                                </div>
                            </div>
                            <div class="skill-custom-col">
                                <div class="skills-feature">
                                    <div class="skill-icon">
                                        <img src="assets/img/icon/skill-icon-08.svg" alt="Img">
                                    </div>
                                    <span>Android Apps</span>
                                </div>
                            </div>
                            <div class="skill-custom-col">
                                <div class="skills-feature">
                                    <div class="skill-icon">
                                        <img src="assets/img/icon/skill-icon-09.svg" alt="Img">
                                    </div>
                                    <span>Iphone Apps</span>
                                </div>
                            </div>
                            <div class="skill-custom-col">
                                <div class="skills-feature">
                                    <div class="skill-icon">
                                        <img src="assets/img/icon/skill-icon-10.svg" alt="Img">
                                    </div>
                                    <span>Software Architecture</span>
                                </div>
                            </div>
                            <div class="skill-custom-col">
                                <div class="skills-feature">
                                    <div class="skill-icon">
                                        <img src="assets/img/icon/skill-icon-11.svg" alt="Img">
                                    </div>
                                    <span>Graphic Design</span>
                                </div>
                            </div>
                            <div class="skill-custom-col">
                                <div class="skills-feature">
                                    <div class="skill-icon">
                                        <img src="assets/img/icon/skill-icon-12.svg" alt="Img">
                                    </div>
                                    <span>Logo Design</span>
                                </div>
                            </div>
                            <div class="skill-custom-col">
                                <div class="skills-feature">
                                    <div class="skill-icon">
                                        <img src="assets/img/icon/skill-icon-13.svg" alt="Img">
                                    </div>
                                    <span>Public Relations</span>
                                </div>
                            </div>
                            <div class="skill-custom-col">
                                <div class="skills-feature">
                                    <div class="skill-icon">
                                        <img src="assets/img/icon/skill-icon-14.svg" alt="Img">
                                    </div>
                                    <span>Proofreading</span>
                                </div>
                            </div>
                            <div class="skill-custom-col">
                                <div class="skills-feature">
                                    <div class="skill-icon">
                                        <img src="assets/img/icon/skill-icon-15.svg" alt="Img">
                                    </div>
                                    <span>Photoshop</span>
                                </div>
                            </div>
                            <div class="skill-custom-col">
                                <div class="skills-feature">
                                    <div class="skill-icon">
                                        <img src="assets/img/icon/skill-icon-16.svg" alt="Img">
                                    </div>
                                    <span>Technical Writing</span>
                                </div>
                            </div>
                            <div class="skill-custom-col">
                                <div class="skills-feature">
                                    <div class="skill-icon">
                                        <img src="assets/img/icon/skill-icon-17.svg" alt="Img">
                                    </div>
                                    <span>Blogging</span>
                                </div>
                            </div>
                            <div class="skill-custom-col">
                                <div class="skills-feature">
                                    <div class="skill-icon">
                                        <img src="assets/img/icon/skill-icon-18.svg" alt="Img">
                                    </div>
                                    <span>Internet Marketing</span>
                                </div>
                            </div>
                            <div class="skill-custom-col">
                                <div class="skills-feature">
                                    <div class="skill-icon">
                                        <img src="assets/img/icon/skill-icon-19.svg" alt="Img">
                                    </div>
                                    <span>eCommerce</span>
                                </div>
                            </div>
                            <div class="skill-custom-col">
                                <div class="skills-feature">
                                    <div class="skill-icon">
                                        <img src="assets/img/icon/skill-icon-20.svg" alt="Img">
                                    </div>
                                    <span>Data Entry</span>
                                </div>
                            </div>
                            <div class="skill-custom-col">
                                <div class="skills-feature">
                                    <div class="skill-icon">
                                        <img src="assets/img/icon/skill-icon-21.svg" alt="Img">
                                    </div>
                                    <span>Link Building</span>
                                </div>
                            </div>
                            <div class="skill-custom-col">
                                <div class="skills-feature">
                                    <div class="skill-icon">
                                        <img src="assets/img/icon/skill-icon-22.svg" alt="Img">
                                    </div>
                                    <span>C++ Programming</span>
                                </div>
                            </div>
                            <div class="skill-custom-col">
                                <div class="skills-feature">
                                    <div class="skill-icon">
                                        <img src="assets/img/icon/skill-icon-23.svg" alt="Img">
                                    </div>
                                    <span>C# Programming</span>
                                </div>
                            </div>
                            <div class="skill-custom-col">
                                <div class="skills-feature">
                                    <div class="skill-icon">
                                        <img src="assets/img/icon/skill-icon-24.svg" alt="Img">
                                    </div>
                                    <span>Content Writing</span>
                                </div>
                            </div>
                            <div class="skill-custom-col">
                                <div class="skills-feature">
                                    <div class="skill-icon">
                                        <img src="assets/img/icon/skill-icon-25.svg" alt="Img">
                                    </div>
                                    <span>Marketing</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </c:if>

            <c:if test="${sessionScope.account.roleID.getRoleID() == 3}">      
                <section class="section update-project">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-12 mx-auto">
                                <div class="section-header section-header-two text-center aos" data-aos="fade-up">
                                    <h2 class="header-title">Jobs By <span> Positions </span></h2>
                                    <p>Get work done in over 60 different Positions</p>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <c:forEach items="${listCC}" var="categori">
                                <div class="col-xl-3 col-md-6">
                                    <div class="aos" data-aos="fade-up">
                                        <a href="postbycategory?categoryID=${categori.caID}" class="update-project-blk move-box ">
                                            <div class="update-content">
                                                <h6>${categori.categoriesName}</h6>
                                                <p>${categoriesPostCount[categori.categoriesName]}  Projects Available</p>
                                            </div>
                                            <div class="update-icon-end">
                                                <i class="feather-arrow-right"></i>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </c:forEach>



                            <div class="col-xl-12">
                                <div class="more-project text-center aos" data-aos="fade-up">
                                    <a href="/Job_IT_For_Freelancer_G5/AllListPost" class="btn btn-primary">View More Projects</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </c:if>  

            <c:if test="${sessionScope.account.roleID.getRoleID() == 3}">           
                <section class="section job-location home-two-jobsec">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-12 mx-auto">
                                <div class="section-header section-header-two d-block text-center section-locate aos" data-aos="fade-up">
                                    <h2 class="header-title">Jobs By <span>Locations</span></h2>
                                    <p>Find your favourite jobs and get the benefits of yourself</p>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <c:forEach var="location" items="${locations}">
                                <div class="col-xl-3 col-md-4">
                                    <div class="job-locate-blk aos" data-aos="fade-up">
                                        <div class="location-img">
                                            <a href="postbylocation?location=${location[0]}"><img class="img-fluid" src="${location[1]}" alt="Img"></a>
                                        </div>
                                        <div class="job-it-content">
                                            <h6>${location[0]}</h6>
                                            <ul class="nav job-locate-foot">
                                                <li>${locationPostCount[location[0]] != null ? locationPostCount[location[0]] : 0} Companies</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </section>
            </c:if> 




            


            <section style="padding-top: 0px" class="section blog-tricks">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="section-header section-header-two text-center aos" data-aos="fade-up">
                                <h2 class="header-title">Featured <span>Blogs</span></h2>
                                <p>Read Our Article To Get Tricks </p>
                            </div>
                        </div>
                    </div>
                    <div class="row aos" data-aos="fade-up">
                        <c:forEach items="${listblogs}" var="blog">
                            <div class="col-lg-4 col-md-6">
                                <div class="grid-blog blog-two aos" data-aos="fade-up">
                                    <div class="blog-image">
                                        <a href="BlogDetails?blogID=${blog.blogID}"><img style="width: 331px; height: 207px;" class="img-fluid" src="assets/img/blog/${blog.image}" alt="Post Image"></a>
                                    </div>
                                    <div class="blog-content">
                                        <div class="feature-time-blk">
                                            <span class="badge bg-pink d-flex align-items-center"><i class="feather-tag me-1"></i>${blog.tag}</span>
                                            <span><i class="far fa-calendar me-1"></i>${blog.date_blog}</span>
                                        </div>
                                        <h3 class="blog-title mt-0"><a href="BlogDetails?blogID=${blog.blogID}">${blog.title}</a></h3>
                                        <p>${blog.description}</p>
                                        <div class="blog-read">
                                            <a href="BlogDetails?blogID=${blog.blogID}">Read More <i class="fas fa-arrow-right ms-1"></i></a>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </c:forEach>
                    </div>
            </section>


            <section class="section review review-two">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="section-header section-header-two text-center aos" data-aos="fade-up">
                                <h2 class="header-title">Reviews Of The <span>Users</span></h2>
                                <p>What our Clients say about us </p>
                            </div>
                        </div>
                    </div>
                    <div class="row aos" data-aos="fade-up">
                        <div class="col-lg-4 col-md-6">

                            <div class="review-blog user-review">
                                <div class="review-top ">
                                    <div class="review-img mx-auto">
                                        <a href="review.html"><img class="img-fluid" src="assets/img/review/review-01.jpg" alt="Post Image"></a>
                                    </div>
                                    <div class="review-info text-center">
                                        <h3><a href="review.html">Durso Raeen</a></h3>
                                        <h5>Project Lead</h5>
                                    </div>
                                </div>
                                <div class="review-content text-center">
                                    <p>Respond to every review, both positive and negative. Thank clients for positive feedback and address concerns in negative reviews professionally and empathetically.</p>
                                </div>
                                <div class="rating">
                                    <i class="fas fa-star filled"></i>
                                    <i class="fas fa-star filled"></i>
                                    <i class="fas fa-star filled"></i>
                                    <i class="fas fa-star filled"></i>
                                    <i class="fas fa-star"></i>
                                    <span class="average-rating">5.0</span>
                                </div>
                            </div>

                        </div>
                        <div class="col-lg-4 col-md-6">

                            <div class="review-blog user-review">
                                <div class="review-top ">
                                    <div class="review-img mx-auto">
                                        <a href="review.html"><img class="img-fluid" src="assets/img/review/review-02.jpg" alt="Post Image"></a>
                                    </div>
                                    <div class="review-info text-center">
                                        <h3><a href="review.html">Camelia Rennesa</a></h3>
                                        <h5>Team Lead</h5>
                                    </div>
                                </div>
                                <div class="review-content text-center">
                                    <p>Respond promptly to reviews. Aim to acknowledge and reply to reviews within a reasonable timeframe, ideally within 24-48 hours.</p>
                                </div>
                                <div class="rating">
                                    <i class="fas fa-star filled"></i>
                                    <i class="fas fa-star filled"></i>
                                    <i class="fas fa-star filled"></i>
                                    <i class="fas fa-star filled"></i>
                                    <i class="fas fa-star"></i>
                                    <span class="average-rating">5.0</span>
                                </div>
                            </div>

                        </div>
                        <div class="col-lg-4 col-md-6">

                            <div class="review-blog user-review">
                                <div class="review-top ">
                                    <div class="review-img mx-auto">
                                        <a href="review.html"><img class="img-fluid" src="assets/img/review/review-03.jpg" alt="Post Image"></a>
                                    </div>
                                    <div class="review-info text-center">
                                        <h3><a href="review.html">Brayan</a></h3>
                                        <h5>Project Lead</h5>
                                    </div>
                                </div>
                                <div class="review-content text-center">
                                    <p>Maintain a professional and courteous tone in all responses, even when addressing negative reviews. Avoid getting defensive or confrontational.</p>
                                </div>
                                <div class="rating">
                                    <i class="fas fa-star filled"></i>
                                    <i class="fas fa-star filled"></i>
                                    <i class="fas fa-star filled"></i>
                                    <i class="fas fa-star filled"></i>
                                    <i class="fas fa-star"></i>
                                    <span class="average-rating">5.0</span>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </section>        

            <section class="section job-register-two">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="register-job-blk justify-content-center">
                                <div class="job-content-blk text-center aos" data-aos="fade-up">
                                    <h2>Find Your Next Great Job Opportunity!</h2>
                                    <p>Quisque pretium dolor turpis, quis blandit turpis semper ut. Nam malesuada eros nec luctus laoreet.</p>
                                </div>
                                <div class="bg-img">
                                    <img src="assets/img/bg/job-sec-bg-01.png" class="img-fluid job-right-bg" alt="Img">
                                    <img src="assets/img/bg/job-sec-bg-02.png" class="img-fluid job-left-bg" alt="Img">
                                </div>
                            </div>
                            <div class="sign-in-btn text-center mt-5 aos" data-aos="fade-up">
                                <a href="Register" class="btn btn-primary">Register Kofejob </a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <footer class="footer footer-two" id="bottom-scroll">
                <div class="footer-top ">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-3 col-md-3">
                                <div class="footer-widget footer-menu">
                                    <h2 class="footer-title">Useful Links</h2>
                                    <ul>
                                        <li><a href="javascript:void(0);">Browse Candidates</a></li>
                                        <li><a href="javascript:void(0);">Employers Dashboard</a></li>
                                        <li><a href="javascript:void(0);">Job Packages</a></li>
                                        <li><a href="javascript:void(0);">Jobs Featured</a></li>
                                        <li><a href="javascript:void(0);">Post A Job</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-xl-2 col-md-3">
                                <div class="footer-widget footer-menu">
                                    <h2 class="footer-title">Pages</h2>
                                    <ul>
                                        <li><a href="freelancer-dashboard.html">Freelancers</a></li>
                                        <li><a href="freelancer-portfolio.html">Freelancer Details</a></li>
                                        <li><a href="project.html">Project</a></li>
                                        <li><a href="project-details.html">Project Details</a></li>
                                        <li><a href="post-project.html">Post Project</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-4">
                                <div class="footer-widget footer-menu">
                                    <h2 class="footer-title">Featured Categories</h2>
                                    <ul>
                                        <li><a href="javascript:void(0);">Website Design</a></li>
                                        <li><a href="javascript:void(0);">Mobile Apps</a></li>
                                        <li><a href="javascript:void(0);">Android Apps</a></li>
                                        <li><a href="javascript:void(0);">iPhone Apps</a></li>
                                        <li><a href="javascript:void(0);">Software Architecture</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-xl-4 col-md-6">
                                <div class="footer-widget footer-menu">
                                    <h2 class="footer-title">Get Contact</h2>
                                    <ul class="info-contact">
                                        <li>Phone: (406) 555-0120</li>
                                        <li>E-mail: <a href="https://kofejob.dreamstechnologies.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="bdd4d3dbd2fdd8c5dcd0cdd1d893ded2d0">[email&#160;protected]</a></li>
                                    </ul>
                                    <h2 class="footer-title mb-0">Newsletter</h2>
                                    <div class="banner-content aos aos-init aos-animate" data-aos="fade-up">
                                        <form class="form" name="store" method="post" action="https://kofejob.dreamstechnologies.com/html/template/project.html">
                                            <div class="form-inner mb-0">
                                                <div class="input-group">
                                                    <input type="email" class="form-control" placeholder="Enter Your Email here..">
                                                    <button class="btn btn-primary sub-btn" type="submit">Subscribe</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="footer-bottom">

                    <div class="copyright">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="copyright-text text-center">
                                    <p class="mb-0">Copyright 2024 &copy; KofeJob. All right reserved. </p>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </footer>

        </div>

        <button class="scroll-top scroll-top-next scroll-to-target" data-target="html">
            <span class="ti-angle-up"><i class="feather-arrow-up"></i></span>
        </button>


        <script >
            function toggleHeart(icon) {
                icon.querySelector('i').classList.toggle('far'); // Thêm hoặc xóa class 'far' (trắng)
                icon.querySelector('i').classList.toggle('fas'); // Thêm hoặc xóa class 'fas' (đỏ)

            }
        </script>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script>
            function addToFavorites(postID) {
                $.ajax({
                    url: 'AddFavourites',
                    type: 'GET',
                    data: {
                        postID: postID
                    },
                    success: function (response) {
                        // Xử lý phản hồi thành công (nếu cần)
                        //alert('Đã thêm vào danh sách yêu thích!');
                        $('#favourite_' + postID).remove('far').addClass('fas');
                    },
                    error: function (xhr, status, error) {
                        // Xử lý lỗi (nếu có)
                        alert('Đã xảy ra lỗi: ' + error);
                    }
                });
            }

            function removeFromFavorites(postID) {
                $.ajax({
                    url: 'DeleteFavourites',
                    type: 'GET',
                    data: {
                        postID: postID
                    },
                    success: function (response) {
                        // Xử lý phản hồi thành công (nếu cần)
                        //alert('Đã xóa khỏi danh sách yêu thích!');
                        $('#favourite_' + postID).remove('fas').addClass('far');
                    },
                    error: function (xhr, status, error) {
                        // Xử lý lỗi (nếu có)
                        alert('Đã xảy ra lỗi: ' + error);
                    }
                });
            }
        </script>
        <script>
            function toggleFavorite(postId) {
                var favouriteLink = $('#favourite_' + postId);

                if (favouriteLink.hasClass('fas')) {
                    // Remove from favorites
                    $.ajax({
                        url: 'DeleteFavourites', // Thay đổi đường dẫn phù hợp
                        type: 'GET',
                        data: {
                            postID: postId
                        },
                        success: function (response) {
                            favouriteLink.removeClass('fas').addClass('far');
                            favouriteLink.attr('onclick', 'toggleFavorite(' + postId + ')');
                        },
                        error: function (xhr, status, error) {
                            console.error(error);
                        }
                    });
                } else {
                    // Add to favorites
                    $.ajax({
                        url: 'AddFavourites', // Thay đổi đường dẫn phù hợp
                        type: 'GET',
                        data: {
                            postID: postId
                        },
                        success: function (response) {
                            favouriteLink.removeClass('far').addClass('fas');
                            favouriteLink.attr('onclick', 'toggleFavorite(' + postId + ')');
                        },
                        error: function (xhr, status, error) {
                            console.error(error);
                        }
                    });
                }
            }
            
        </script>
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
        <script data-cfasync="false" src="assets/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-3.7.1.min.js" type="94bd991bf5d56390f4d2da30-text/javascript"></script>

        <script src="assets/js/bootstrap.bundle.min.js" type="94bd991bf5d56390f4d2da30-text/javascript"></script>

        <script src="assets/js/owl.carousel.min.js" type="94bd991bf5d56390f4d2da30-text/javascript"></script>

        <script src="assets/js/jquery.waypoints.js" type="94bd991bf5d56390f4d2da30-text/javascript"></script>
        <script src="assets/js/jquery.counterup.min.js" type="94bd991bf5d56390f4d2da30-text/javascript"></script>

        <script src="assets/plugins/aos/aos.js" type="94bd991bf5d56390f4d2da30-text/javascript"></script>

        <script src="assets/plugins/select2/js/select2.min.js" type="94bd991bf5d56390f4d2da30-text/javascript"></script>

        <script src="assets/js/slick.js" type="94bd991bf5d56390f4d2da30-text/javascript"></script>

        <script src="assets/js/script.js" type="94bd991bf5d56390f4d2da30-text/javascript"></script>
        <script src="assets/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="94bd991bf5d56390f4d2da30-|49" defer></script></body>
</body>
<!-- Mirrored from kofejob.dreamstechnologies.com/html/template/index-2.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:27:29 GMT -->
</html>
