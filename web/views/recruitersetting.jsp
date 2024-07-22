<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/profile-settings.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:34:09 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
        <title>KofeJob</title>

        <link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

        <link rel="stylesheet" href="assets/plugins/feather/feather.css">

        <link rel="stylesheet" href="assets/css/bootstrap-datetimepicker.min.css">

        <link rel="stylesheet" href="assets/plugins/select2/css/select2.min.css">

        <link rel="stylesheet" href="assets/plugins/datatables/datatables.min.css">

        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body class="dashboard-page">

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

            <div class="content content-page bookmark">
                <div class="container">
                    <div class="row">

                        <div class="col-xl-3 col-lg-4 theiaStickySidebar">
                            <div class="settings-widget">


                                <div class="settings-menu">
                                    <div id="sidebar-menu" class="sidebar-menu">
                                        <ul>
                                            <li class="nav-item">
                                                <a href="Dashboard" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-01.svg" alt="Img"> Dashboard
                                                </a>
                                            </li>
                                            <li class="nav-item submenu">
                                                <a href="companydetail" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-02.svg" alt="Img"> Projects

                                                </a>

                                            </li>
                                            <li class="nav-item submenu">
                                                <a href="RecruiterFavourites" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-03.svg" alt="Img"> Favourites

                                                </a>

                                            </li>

                                            <li class="nav-item submenu">
                                                <a href="recruitersetting" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-10.svg" alt="Img"> Settings

                                                </a>

                                            </li>
                                            <li class="nav-item">
                                                <a href="home" class="nav-link">
                                                    <img src="assets/img/icon/sidebar-icon-11.svg" alt="Img"> Logout
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-9 col-lg-8">
                            <div class="pro-pos">
                                <div class="setting-content employee-profile-new">
                                    <form action="updateRecruiterProfile" method="post">
                                        <div class="card">
                                            <div class="pro-head">
                                                <h3>Profile Setting</h3>
                                            </div>
                                            <div class="pro-body">
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <div class="form-row pro-pad pt-0 ps-0">
                                                            <div class="input-block col-md-6 pro-pic">                                             
                                                                <label class="form-label">Profile Picture</label>
                                                                <div class="d-flex align-items-center">
                                                                    <div class="upload-images">
                                                                        <img src="${recruiter.image}" alt="Image" id="blah">
                                                                    </div>
                                                                    <div class="ms-3">
                                                                        <label for="recruiter-image" class="form-label"> Upload Image</label>

                                                                        <input type="file" class="form-control" name="image" id="recruiter-image" accept="image/*">
                                                                        </label>
                                                                      
                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="container">
                                                            <h2>Recruiter Profile</h2>
                                                            <div class="row">
                                                                <div class="col-lg-6 col-md-12">
                                                                    <div class="mb-3">
                                                                        <label class="form-label">First Name</label>
                                                                        <input oninput="checkfn()" type="text" class="form-control" id="firstname" name="firstName" value="${recruiter.firstName}" maxlength="20" required>
                                                                        <div style="color: red" id="eFirstname"></div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6 col-md-12">
                                                                    <div class="mb-3">
                                                                        <label class="form-label">Last Name</label>
                                                                        <input oninput="checkln()" type="text" class="form-control" id="lastname" name="lastName" value="${recruiter.lastName}" maxlength="20" required>
                                                                        <div style="color: red" id="eLastname"></div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6 col-md-12">
                                                                    <div class="mb-3">
                                                                        <label class="form-label">Phone Number</label>
                                                                        <input oninput="checkphone()" type="text" class="form-control" id="phone" name="phoneNumber" value="${recruiter.phone}" pattern="^0\d{9}$" title="Phone number must be 10 digits starting with 0" maxlength="10" required>
                                                                        <div style="color: red" id="ePhone"></div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6 col-md-12">
                                                                    <div class="mb-3">
                                                                        <label class="form-label">Email</label>
                                                                        <input oninput="checkEmail()" type="email" class="form-control" id="email" name="email" value="${recruiter.email}" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Please enter a valid email address" maxlength="30" required>
                                                                        <div style="color: red" id="eEmail"></div>
                                                                    </div>
                                                                </div>

                                                                <div class="col-lg-12">
                                                                    <h2>Company Details</h2>
                                                                    <div class="mb-3">                                                                     
                                                                        <label class="form-label">Company Name</label>
                                                                        <input oninput="checkcompany()" type="text" class="form-control" id="companyname" name="companyName" value="${company.companyName}" maxlength="20" required>                                                                  
                                                                        <div style="color: red" id="eCompanyname"></div>
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label class="form-label">Established On</label>
                                                                        <input type="date" class="form-control" name="establishedOn" value="${company.establishedOn}" required>
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label class="form-label">Website</label>
                                                                        <input type="text" class="form-control" name="website" value="${company.website}" maxlength="50" required>
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label class="form-label">Describe</label>
                                                                        <textarea rows="4" class="form-control" name="describe" maxlength="500" required>${company.describe}</textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="card text-end border-0">
                                                                <div class="pro-body">
                                                                    <button class="btn btn-secondary click-btn btn-plan">Cancel</button>
                                                                    <button class="btn btn-primary click-btn btn-plan" type="submit">Update</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>



            <%@ include file="footter.jsp" %>                  


        </div>


        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
        <script src="assets/js/script.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>
        <script src="../../cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="ba3353e5dfbf68844181f2d9-|49" defer></script></body>
    <script src="assets/js/checkinput.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <script>
        $(document).ready(function () {
            var messageModal =
        <c:if test="${sessionScope.check == 1}">
            `<div class="modal custom-modal fade" id="messageModal" tabindex="-1" role="dialog">
                  <div class="modal-dialog modal-dialog-centered" role="document">
                      <div class="modal-content">
                          <div class="modal-body text-center">
                              <div class="checkmark-circle">
                                  <div class="background"></div>
                                  <div class="checkmark"></div>
                              </div>
                              <h3>Notification</h3>
                              <p>Update successful</p>
                              <a href="recruitersetting" style="margin-left= 50%  width: 4%; background-color: #6c5ce7; border-color: #6c5ce7;" data-bs-dismiss="modal" class="btn btn-primary cancel-btn">OK</a>
                          </div>
                      </div>
                  </div>
              </div>`</c:if>
        <c:remove var="check" scope="session" />
            ;
            $('body').append(messageModal);
            $('#messageModal').modal('show');
        });
    </script>

    <style>
        .modal-body.text-center {
            text-align: center;
        }
        .checkmark-circle {
            width: 80px;
            height: 80px;
            position: relative;
            display: inline-block;
            vertical-align: top;
            margin-bottom: 10px;
        }
        .background {
            width: 100%;
            height: 100%;
            border-radius: 50%;
            background: #f8f8f8;
            position: absolute;
        }
        .checkmark {
            width: 50px;
            height: 15px;
            border-width: 5px;
            border-style: solid;
            border-color: #28a745;
            border-top: none;
            border-right: none;
            transform: rotate(-45deg);
            position: absolute;
            top: 35%;
            left: 25%;
        }
        .notification-title {
            margin-top: 20px;
            margin-bottom: 20px;
            font-size: 24px;
            font-weight: bold;
        }
        .notification-message {
            margin-bottom: 30px;
            font-size: 16px;

        }

    </style>
    <script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-3.7.1.min.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>

    <script src="assets/js/bootstrap.bundle.min.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>

    <script src="assets/plugins/select2/js/select2.min.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>

    <script src="assets/js/moment.min.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>
    <script src="assets/js/bootstrap-datetimepicker.min.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>

    <script src="assets/plugins/datatables/jquery.dataTables.min.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>
    <script src="assets/plugins/datatables/datatables.min.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>

    <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>
    <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>

    <script src="assets/js/script.js" type="ba3353e5dfbf68844181f2d9-text/javascript"></script>
    <script src="../../cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="ba3353e5dfbf68844181f2d9-|49" defer></script></body>
<script src="assets/js/checkinput.js"></script>


</html>


