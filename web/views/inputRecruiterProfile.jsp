<%-- 
    Document   : inputRecruiterProfile
    Created on : May 25, 2024, 8:26:30 PM
    Author     : tanng
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/onboard-screen-employer.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:38:40 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
        <title>KLTTLJob</title>

        <link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

        <link rel="stylesheet" href="assets/plugins/select2/css/select2.min.css">

        <link rel="stylesheet" href="assets/plugins/feather/feather.css">

        <link rel="stylesheet" href="assets/css/bootstrap-datetimepicker.min.css">

        <link rel="stylesheet" href="assets/plugins/fancybox/jquery.fancybox.min.css">

        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body>
        <header class="header" 
                <div class="container">                                                                   
            <a href="home" class="navbar-brand logo">
                <img style="margin: 20px;" src="assets/img/logo.svg" class="img-fluid" alt="Logo">
            </a>                                                               
        </div>
    </header>
    <div  class="on-board field-card select-account select-btn">
        <form action="InputRecruiterProfile" method="post" onsubmit="return FormValidate();">
            <div style="margin-top: 50px;" class="text-center onboard-head">
                <h2>Personal Info</h2>
                <p>Tell a bit about yourself. This information will appear on your public profile, so that potential buyers can get to know you better.</p>
            </div>
            <div class="field-item personal-info space-info">

                <div class="row">
                    <!--                    <div class="col-md-12 col-lg-12">
                                            <div class="pro-form-img">
                                                <div class="profile-pic">
                                                    Profile Photo
                                                </div>
                                                <div class="upload-files">
                                                    <label class="file-upload image-upbtn ">
                                                        <i class="feather-upload me-2"></i>Upload Photo <input type="file">
                                                    </label>
                                                    <span>For better preview recommended size is 450px x 450px. Max size 5mb.</span>
                                                </div>
                                            </div>
                                        </div>-->

                    <div class="col-md-6 col-lg-6">
                        <div class="input-block">
                            <label class="form-label">First Name<span class="label-star"> *</span></label>
                            <input oninput="checkFirstname()" type="text" class="form-control" id="firstname" name="firstname">
                            <div style="color: red" id="eFirstname"></div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6">
                        <div class="input-block">
                            <label class="form-label">Last Name<span class="label-star"> *</span></label>
                            <input oninput="checkLastName()" type="text" class="form-control" id="lastname" name="lastname">
                            <div style="color: red" id="eLastname"></div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6">
                        <div class="input-block">
                            <label class="form-label">Date of Birth<span class="label-star"> *</span></label>
                            <div class="cal-icon">
                                <input oninput="checkdob()" type="text" class="form-control datetimepicker" placeholder="Choose" name="dob" id="dob">
                                <div style="color: red" id="eDob"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6">
                        <div class="input-block">
                            <label class="form-label">Gender</label>
                            <select name="gender"class="form-control select">
                                <option value="1">Male</option>
                                <option value="0">Female</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-6">
                        <div class="input-block">
                            <label class="form-label">Phone Number<span class="label-star"> *</span></label>
                            <input oninput="checkPhone()" type="text" class="form-control" id="phone" name="phone">
                            <div style="color: red" id="ePhone"></div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6">
                        <div class="input-block">
                            <label class="form-label">Email Address<span class="label-star"> *</span></label>
                            <input oninput="checkEmail1()" type="text" class="form-control" id="email" name="email">
                            <div style="color: red" id="eEmail"></div>
                        </div>
                    </div>
                </div>

            </div>



            <div class="on-board field-card select-account select-btn">
                <div class="text-center onboard-head">
                    <h2>Company Details</h2>
                    <p>This is your time to shine. Let potential buyers know what you do best and how you gained your skills, certifications and experience</p>
                </div>
                <div class="field-item personal-info space-info">

                    <div class="row">
                        <div class="col-md-12">
                            <h4>Details</h4>
                        </div>
                        <div class="col-md-6">
                            <div class="input-block">
                                <label class="form-label">Company Name<span class="label-star"> *</span></label>
                                <input oninput="checkCompany()" type="text" class="form-control" name="companyname" id="companyname">
                                <div style="color: red" id="eCompanyname"></div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-6">
                            <div class="input-block">
                                <label class="form-label">Established On</label>
                                <div class="cal-icon">
                                    <input type="text" name="established" class="form-control datetimepicker" placeholder="Choose">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="input-block">
                                <label class="form-label">Website</label>
                                <input type="text" name="website" class="form-control">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="input-block">
                                <label class="form-label">Location</label>
                                <input type="text" name="location" class="form-control">
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="input-block">
                                <label class="form-label">Team Size</label>
                            </div>
                            <div class="check-radio">
                                <ul>
                                    <li>
                                        <c:forEach items="${listTeamSize}" var="i" varStatus="loop">
                                            <label class="custom_radio me-4">                                              
                                                <input type="radio" name="budget" value="${i.id}" <c:if test="${loop.first}">checked</c:if>>
                                                <span class="checkmark"></span> ${i.name}
                                            </label>
                                        </c:forEach>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="input-block min-characters">
                                <label class="form-label">Describe</label>
                                <textarea class="form-control" rows="5" name="describe"></textarea>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
            <div class="text-center">
                <a style="margin-bottom: 100px" class="file-upload image-upbtn back "href="SelectAccountType">Back</a>
                <button style="margin-bottom: 100px" class="file-upload image-upbtn submit " type="">Submit</button>
            </div>
        </form>
    </div>
        
        <style>

a.back {
    display: inline-block;
    padding: 10px 20px;
    background-color: black;
    color: white;
    border: 2px solid black;
    text-decoration: none;
    transition: background-color 0.3s, color 0.3s;
}

a.back:hover {
    background-color: white;
    color: black;
}

/* CSS cho nút Submit */
button.submit {
    display: inline-block;
    padding: 10px 20px;
    background-color: #DD4B39; /* Màu cam đỏ */
    color: white;
    border: 2px solid black;
    text-decoration: none;
    transition: background-color 0.3s, color 0.3s;
}

button.submit:hover {
    background-color: white;
    color: black;
}
        </style>


    <script src="assets/js/checkform_2.js"></script>
    <script src="assets/js/checkform_3.js"></script>

    <script data-cfasync="false" src="assets/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-3.7.1.min.js" type="7080e2a7a4fb758dacdaf0ab-text/javascript"></script>

    <script src="assets/js/bootstrap.bundle.min.js" type="7080e2a7a4fb758dacdaf0ab-text/javascript"></script>

    <script src="assets/js/moment.min.js" type="7080e2a7a4fb758dacdaf0ab-text/javascript"></script>
    <script src="assets/js/bootstrap-datetimepicker.min.js" type="7080e2a7a4fb758dacdaf0ab-text/javascript"></script>

    <script src="assets/js/circle-progress.min.js" type="7080e2a7a4fb758dacdaf0ab-text/javascript"></script>

    <script src="assets/plugins/select2/js/select2.min.js" type="7080e2a7a4fb758dacdaf0ab-text/javascript"></script>

    <script src="assets/js/script.js" type="7080e2a7a4fb758dacdaf0ab-text/javascript"></script>
    <script src="assets/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="7080e2a7a4fb758dacdaf0ab-|49" defer></script></body>

<!-- Mirrored from kofejob.dreamstechnologies.com/html/template/onboard-screen-employer.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:38:40 GMT -->
</html>
