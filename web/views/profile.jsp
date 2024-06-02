<%-- 
    Document   : profile
    Created on : May 27, 2024, 2:45:43 AM
    Author     : DUC MINH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
<title>Profile</title>

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
                            <a href="home" class="navbar-brand logo">
                        <img style="margin: 20px;" src="assets/img/logo.svg" class="img-fluid" alt="Logo">
                    </a> 
                    <h1>Freelancer Profile</h1>
    <c:if test="${not empty freelancer}">
        <p>ID: ${Freelancer.freelanceID}</p>
        <p>First Name: ${Freelancer.firstName}</p>
        <p>Last Name: ${Freelancer.lastName}</p>
        <p>Image: <img src="${Freelancer.image}" alt="Freelancer Image" /></p>
        <p>Gender: ${Freelancer.gender ? 'Male' : 'Female'}</p>
        <p>Date of Birth: ${Freelancer.dob}</p>
        <p>Description: ${Freelancer.description}</p>
        <p>Email: ${Freelancer.email}</p>
        <p>Phone: ${Freelancer.phone}</p>
    </c:if>
    <c:if test="${empty Freelancer}">
        <p>Freelancer not found.</p>
    </c:if>
        
    </div>
                    </nav>
    
    </div>
            </header>

        </div>



</body>
</html>
