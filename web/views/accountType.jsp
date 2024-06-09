<%-- 
    Document   : inputFreelancerInfo
    Created on : May 24, 2024, 11:58:39 PM
    Author     : tanng
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/onboard-screen.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:35:08 GMT -->
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

        <link rel="stylesheet" href="assets/css/bootstrap-datetimepicker.min.css">

        <link rel="stylesheet" href="assets/plugins/fancybox/jquery.fancybox.min.css">

        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body>

        <div class="main-wrapper">

            <div class="page-wrapper board-screen">
                <div class="content container-fluid">
                    <div class="acc-content">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="multistep-form">
                                    <div class="text-center on-board select-account group-select">
                                        <div class="select-type">
                                            <div class="account-onborad onboard-head">
                                                <h2>Select Account Type</h2>                                               
                                                    <div class="select-box d-flex justify-content-center">
                                                        <input checked="checked" id="freelance" type="radio" name="typeaccount" value="1">
                                                        <label class="employee-level free-lance-img accounts_type" data-id="freelance" for="freelance">

                                                            <!--<img src="assets/img/icon/checks.svg" alt="Img" class="checks-set">-->
                                                            <a href="InputFreelancerProfile"> <img src="assets/img/select-04.svg" alt="Img" class="img-fluid"></a>
                                                            <span>Freelancer</span>

                                                        </label>
                                                        <input id="employee" class="accounts_type" type="radio" name="typeaccount" value="2">
                                                        <label class="employee-level employee-img accounts_type" data-id="employee" for="employee">

                                                            <a href="InputRecruiterProfile"><img src="assets/img/select-05.svg" alt="Img" class="img-fluid"></a>
                                                            <span>Recruiter</span></a></label>
                                                    </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
                <style>
button.submit {
    display: inline-block;
    padding: 10px 20px;
    background-color: tomato; /* Màu cam đỏ */
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


        <script data-cfasync="false" src="assets/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-3.7.1.min.js" type="625b9fc8f423323d8794fc95-text/javascript"></script>

        <script src="assets/js/bootstrap.bundle.min.js" type="625b9fc8f423323d8794fc95-text/javascript"></script>

        <script src="assets/js/moment.min.js" type="625b9fc8f423323d8794fc95-text/javascript"></script>
        <script src="assets/js/bootstrap-datetimepicker.min.js" type="625b9fc8f423323d8794fc95-text/javascript"></script>

        <script src="assets/js/circle-progress.min.js" type="625b9fc8f423323d8794fc95-text/javascript"></script>

        <script src="assets/plugins/select2/js/select2.min.js" type="625b9fc8f423323d8794fc95-text/javascript"></script>

        <script src="assets/js/script.js" type="625b9fc8f423323d8794fc95-text/javascript"></script>
        <script src="assets/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="625b9fc8f423323d8794fc95-|49" defer></script></body>
    <script src="assets/js/checkfrom_1.js"></script>
    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/onboard-screen.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:35:30 GMT -->
</html>
