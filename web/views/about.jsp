<%-- 
    Document   : about
    Created on : May 23, 2024, 12:47:27 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/about.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:34:50 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
        <title>KofeJob</title>

        <link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/owl.theme.default.min.css">

        <link rel="stylesheet" href="assets/plugins/aos/aos.css">

        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body class="about-us-page">

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
                                <h3>About Us</h3>
                                <nav aria-label="breadcrumb" class="page-breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="home"> Home</a></li>
                                        <li class="breadcrumb-item" aria-current="page">About Us</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <section class="section about">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-12 d-flex align-items-center aos" data-aos="fade-up">
                            <div class="about-content">
                                <h2>About We’re on a mission to empowering Jobs worldwide.</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est modi, saepe hic esse maxime quasi, sapiente ex debitis quis dolorum unde, neque quibusdam eveniet nobis enim porro repudiandae nesciunt quidem.</p>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magni delectus soluta adipisci beatae ullam quisquam, quia recusandae rem assumenda, praesentium porro sequi eaque doloremque tenetur incidunt officiis explicabo optio perferendis.</p>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <div class="about-content-img aos" data-aos="zoom-in">
                                <img src="assets/img/blog/aboutus.jpg" class="img-fluid" alt="img">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="about-content-img aos" data-aos="zoom-in">
                                <img src="assets/img/blog/aboutus1.jpg" class="img-fluid" alt="img">
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="section projects">
                <div class="container">
                    <div class="row row-gap">
                        <div class="col-md-12 col-sm-12 col-12 mx-auto text-center">
                            <div class="section-header aos  " data-aos="fade-up">
                                <h2 class="header-title">What’s great about it?</h2>
                                <p>All the features of kofejob below</p>
                            </div>
                        </div>

                        <div class="col-xl-3 col-md-6 aos d-flex  " data-aos="zoom-in" data-aos-duration="1000">
                            <div class="feature-items d-flex align-items-center justify-content-center flex-column">
                                <div class="feature-icon">
                                    <img src="assets/img/icon/great1.svg" class="img-fluid" alt="Img">
                                </div>
                                <div class="feature-content course-count text-center">
                                    <h3>Browse Portfolios</h3>
                                    <p>Find professionals you can trust by browsing their samples of previous work .</p>
                                </div>
                            </div>
                        </div>


                        <div class="col-xl-3 col-md-6 aos d-flex  " data-aos="zoom-in" data-aos-duration="1500">
                            <div class="feature-items d-flex align-items-center justify-content-center flex-column">
                                <div class="feature-icon">
                                    <img src="assets/img/icon/great2.svg" class="img-fluid" alt="Img">
                                </div>
                                <div class="feature-content course-count text-center">
                                    <h3>Fast Bids</h3>
                                    <p>Receive obligation free quotes from our talented freelancers fast. 80% of projects get bid</p>
                                </div>
                            </div>
                        </div>


                        <div class="col-xl-3 col-md-6 aos d-flex  " data-aos="zoom-in" data-aos-duration="2000">
                            <div class="feature-items d-flex align-items-center justify-content-center flex-column">
                                <div class="feature-icon">
                                    <img src="assets/img/icon/great3.svg" class="img-fluid" alt="Img">
                                </div>
                                <div class="feature-content course-count text-center">
                                    <h3>Quality Work</h3>
                                    <p>Kofejob.com has by far the largest pool of quality freelancers globally- over 50 million to choose from.</p>
                                </div>
                            </div>
                        </div>


                        <div class="col-xl-3 col-md-6 aos d-flex  " data-aos="zoom-in" data-aos-duration="2500">
                            <div class="feature-items d-flex align-items-center justify-content-center flex-column">
                                <div class="feature-icon">
                                    <img src="assets/img/icon/great4.svg" class="img-fluid" alt="Img">
                                </div>
                                <div class="feature-content course-count text-center">
                                    <h3>Track Progress</h3>
                                    <p>Keep up-to-date and on-the-go with our time tracker Always know what freelancers are up to.</p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>
            <section class="section review">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="aos aos-init " data-aos="fade-up">
                                <div class="demand-professional">
                                    <h2>We unleash your business potential.</h2>
                                    <p>Through strategy, design, and planning we build brand identities that connect with your template. We then fine-tune a marketing plan that allows us to laser focus.</p>
                                </div>
                                <div class="demand-post-job align-items-start">
                                    <div class="demand-post-img">
                                        <img src="assets/img/icon/checks.svg" alt="Img" class="img-fluid">
                                    </div>
                                    <div class="demand-content">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est modi, saepe hic esse maxime quasi, sapiente ex debitis quis dolorum unde, quibusdam eveniet nobis enim porro repudiandae nesciunt quidem.</p>
                                    </div>
                                </div>
                                <div class="demand-post-job align-items-start">
                                    <div class="demand-post-img">
                                        <img src="assets/img/icon/checks.svg" alt="Img" class="img-fluid">
                                    </div>
                                    <div class="demand-content">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est modi, saepe hic esse maxime quasi, sapiente ex debitis quis dolorum unde, quibusdam eveniet nobis enim porro repudiandae nesciunt quidem.</p>
                                    </div>
                                </div>
                                <div class="demand-post-job align-items-start">
                                    <div class="demand-post-img">
                                        <img src="assets/img/icon/checks.svg" alt="Img" class="img-fluid">
                                    </div>
                                    <div class="demand-content">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est modi, saepe hic esse maxime quasi, sapiente ex debitis quis dolorum unde, quibusdam eveniet nobis enim porro repudiandae nesciunt quidem.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="work-set-image">
                                <div class="recent-pro-img aos" data-aos="zoom-in" data-aos-duration="1000">
                                    <img src="assets/img/blog/abt3.png" alt="Img" class="img-fluid ">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="section feature-count feature-count-three">
                <div class="container">
                    <div class="row">
                        <div class="col-12 col-md-12 mx-auto">
                            <div class="section-header section-header-three feature-count-head aos  " data-aos="fade-up">
                                <h2 class="header-title">Achievement We Have Earned</h2>
                                <p>At Freelancer, we believe that talent is borderless and opportunity should be too.</p>
                            </div>
                        </div>
                    </div>
                    <div class="row section-bottom-cards">

                        <div class="col-xl-3 col-md-6">
                            <div class="feature-item freelance-count aos  " data-aos="fade-up">
                                <div class="feature-icon ">
                                    <img src="assets/img/icon/count-icon-01.svg" class="img-fluid" alt="Img">
                                </div>
                                <div class="feature-content course-count">
                                    <h3 class="counter-up">${NumberUsers}</h3>
                                    <p>Freelance developers</p>
                                </div>
                            </div>
                        </div>


                        <div class="col-xl-3 col-md-6">
                            <div class="feature-item aos  " data-aos="fade-up">
                                <div class="feature-icon">
                                    <img src="assets/img/icon/count-icon-02.svg" class="img-fluid" alt="Img">
                                </div>
                                <div class="feature-content course-count">
                                    <h3><span class="counter-up">${NumberPost}</span></h3>
                                    <p>Projects Added</p>
                                </div>
                            </div>
                        </div>


                        <div class="col-xl-3 col-md-6">
                            <div class="feature-item comp-project aos  " data-aos="fade-up">
                                <div class="feature-icon">
                                    <img src="assets/img/icon/count-icon-03.svg" class="img-fluid" alt="Img">
                                </div>
                                <div class="feature-content course-count">
                                    <h3 class="counter-up">${allpostopen}</h3>
                                    <p>Open projects</p>
                                </div>
                            </div>
                        </div>


                        <div class="col-xl-3 col-md-6">
                            <div class="feature-item comp-project aos  " data-aos="fade-up">
                                <div class="feature-icon">
                                    <img src="assets/img/icon/count-icon-04.svg" class="img-fluid" alt="Img">
                                </div>
                                <div class="feature-content course-count">
                                    <h3 class="counter-up">${NumberCompany}</h3>
                                    <p>Companies Registered</p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>

            <section class="section testimonial-section review review-four">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="section-header aos text-center" data-aos="fade-up">
                                <h2 class="header-title">Client testimonials</h2>
                                <p>Learning communicate to global world and build a bright future and career development, increase your skill with our histudy.</p>
                            </div>
                        </div>
                    </div>
                    <div id="testimonial-slider" class="owl-carousel owl-theme testimonial-slider aos" data-aos="fade-up">

                        <div class="review-blog">
                            <div class="review-top d-flex align-items-center">
                                <div class="review-img">
                                    <a href="#"><img class="img-fluid" src="assets/img/review/review-01.jpg" alt="Post Image"></a>
                                </div>
                                <div class="review-info">
                                    <h3><a href="#">Durso Raeen</a></h3>
                                    <h5>Project Lead</h5>
                                </div>
                            </div>
                            <div class="review-content">
                                <p class="ms-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Volutpat orci enim, mattis nibh aliquam dui, nibh faucibus aenean.</p>
                                <div class="rating">
                                    <i class="fas fa-star filled"></i>
                                    <i class="fas fa-star filled"></i>
                                    <i class="fas fa-star filled"></i>
                                    <i class="fas fa-star filled"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                            </div>
                        </div>


                        <div class="review-blog">
                            <div class="review-top d-flex align-items-center">
                                <div class="review-img">
                                    <a href="#"><img class="img-fluid" src="assets/img/review/review-02.jpg" alt="Post Image"></a>
                                </div>
                                <div class="review-info">
                                    <h3><a href="#">Camelia Rennesa</a></h3>
                                    <h5>Project Lead</h5>
                                </div>
                            </div>
                            <div class="review-content">
                                <p class="ms-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Volutpat orci enim, mattis nibh aliquam dui, nibh faucibus aenean.</p>
                                <div class="rating">
                                    <i class="fas fa-star filled"></i>
                                    <i class="fas fa-star filled"></i>
                                    <i class="fas fa-star filled"></i>
                                    <i class="fas fa-star filled"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                            </div>
                        </div>


                        <div class="review-blog">
                            <div class="review-top d-flex align-items-center">
                                <div class="review-img">
                                    <a href="#"><img class="img-fluid" src="assets/img/review/review-03.jpg" alt="Post Image"></a>
                                </div>
                                <div class="review-info">
                                    <h3><a href="#">Brayan</a></h3>
                                    <h5>Team Lead</h5>
                                </div>
                            </div>
                            <div class="review-content">
                                <p class="ms-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Volutpat orci enim, mattis nibh aliquam dui, nibh faucibus aenean.</p>
                                <div class="rating">
                                    <i class="fas fa-star filled"></i>
                                    <i class="fas fa-star filled"></i>
                                    <i class="fas fa-star filled"></i>
                                    <i class="fas fa-star filled"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                            </div>
                        </div>


                        <div class="review-blog">
                            <div class="review-top d-flex align-items-center">
                                <div class="review-img">
                                    <a href="#"><img class="img-fluid" src="assets/img/review/review-02.jpg" alt="Post Image"></a>
                                </div>
                                <div class="review-info">
                                    <h3><a href="#">Davis Payerf</a></h3>
                                    <h5>Project Lead</h5>
                                </div>
                            </div>
                            <div class="review-content">
                                <p class="ms-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Volutpat orci enim, mattis nibh aliquam dui, nibh faucibus aenean.</p>
                                <div class="rating">
                                    <i class="fas fa-star filled"></i>
                                    <i class="fas fa-star filled"></i>
                                    <i class="fas fa-star filled"></i>
                                    <i class="fas fa-star filled"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>

            <section class="section job-register">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="register-job-blk">
                                <div class="job-content-blk aos" data-aos="fade-up">
                                    <h2>Find Your Next Great Job Opportunity!</h2>
                                    <p>Quisque pretium dolor turpis, quis blandit turpis semper ut. Nam malesuada eros nec luctus laoreet.</p>
                                    <a href="Register" class="btn all-btn">Join Now</a>
                                </div>
                                <div class="see-all mt-0 aos opportunity   " data-aos="zoom-in">
                                    <img src="assets/img/job1.png" alt="img">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

                <%@ include file="footter.jsp" %>                  
                

        </div>


        <script src="assets/js/jquery-3.7.1.min.js" type="40d4e6485d3cee6d5cd77d1e-text/javascript"></script>

        <script src="assets/js/bootstrap.bundle.min.js" type="40d4e6485d3cee6d5cd77d1e-text/javascript"></script>

        <script src="assets/js/jquery.waypoints.js" type="40d4e6485d3cee6d5cd77d1e-text/javascript"></script>
        <script src="assets/js/jquery.counterup.min.js" type="40d4e6485d3cee6d5cd77d1e-text/javascript"></script>

        <script src="assets/plugins/aos/aos.js" type="40d4e6485d3cee6d5cd77d1e-text/javascript"></script>

        <script src="assets/js/owl.carousel.min.js" type="40d4e6485d3cee6d5cd77d1e-text/javascript"></script>

        <script src="assets/js/slick.js" type="40d4e6485d3cee6d5cd77d1e-text/javascript"></script>

        <script src="assets/js/script.js" type="40d4e6485d3cee6d5cd77d1e-text/javascript"></script>
        <script src="assets/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="40d4e6485d3cee6d5cd77d1e-|49" defer></script></body>

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/about.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:34:58 GMT -->
</html>
