<%-- 
    Document   : skillAdmin
    Created on : Jun 14, 2024, 1:14:36 AM
    Author     : DUC MINH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>

<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/admin/skills.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:41:41 GMT -->
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Kofejob - Bootstrap Admin HTML Template</title>

        <link rel="shortcut icon" href="adminAssets/img/favicon.png">
        <link rel="stylesheet" href="adminAssets/css/bootstrap.min.css">
        <link rel="stylesheet" href="adminAssets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="adminAssets/plugins/fontawesome/css/all.min.css">
        <link rel="stylesheet" href="adminAssets/css/feather.css">
        <link rel="stylesheet" href="adminAssets/plugins/select2/css/select2.min.css">
        <link rel="stylesheet" href="adminAssets/css/bootstrap-datetimepicker.min.css">
        <link rel="stylesheet" href="adminAssets/plugins/datatables/datatables.min.css">
        <link rel="stylesheet" href="adminAssets/css/style.css">
    </head>
    <body>

        <div class="main-wrapper">
            <%@ include file="headerAdmin.jsp" %>
            <%@ include file="sidebar.jsp" %>
            <!--            <div class="header">
            
                            <div class="header-left">
                                <a href="index.html" class="logo">
                                    <img src="assets/img/logo.png" alt="Logo">
                                </a>
                                <a href="index.html" class="logo logo-small">
                                    <img src="assets/img/logo-small.png" alt="Logo" width="30" height="30">
                                </a>
            
                                <a href="javascript:void(0);" id="toggle_btn">
                                    <i class="feather-chevrons-left"></i>
                                </a>
            
            
                                <a class="mobile_btn" id="mobile_btn">
                                    <i class="feather-chevrons-left"></i>
                                </a>
            
                            </div>
            
            
                            <div class="top-nav-search">
                                <form>
                                    <input type="text" class="form-control" placeholder="Start typing your Search...">
                                    <button class="btn" type="submit"><i class="feather-search"></i></button>
                                </form>
                            </div>
            
            
                            <ul class="nav user-menu">
            
                                <li class="nav-item dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
                                        <i class="feather-bell"></i> <span class="badge badge-pill">5</span>
                                    </a>
                                    <div class="dropdown-menu notifications">
                                        <div class="topnav-dropdown-header">
                                            <span class="notification-title">Notifications</span>
                                            <a href="javascript:void(0)" class="clear-noti"> Clear All</a>
                                        </div>
                                        <div class="noti-content">
                                            <ul class="notification-list">
                                                <li class="notification-message">
                                                    <a href="javascript:void(0);">
                                                        <div class="media d-flex">
                                                            <span class="avatar avatar-sm flex-shrink-0">
                                                                <img class="avatar-img rounded-circle" alt="Img" src="assets/img/profiles/avatar-02.jpg">
                                                            </span>
                                                            <div class="media-body flex-grow-1">
                                                                <p class="noti-details"><span class="noti-title">Brian Johnson</span> paid the invoice <span class="noti-title">#DF65485</span></p>
                                                                <p class="noti-time"><span class="notification-time">4 mins ago</span></p>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="notification-message">
                                                    <a href="javascript:void(0);">
                                                        <div class="media d-flex">
                                                            <span class="avatar avatar-sm flex-shrink-0">
                                                                <img class="avatar-img rounded-circle" alt="Img" src="assets/img/profiles/avatar-03.jpg">
                                                            </span>
                                                            <div class="media-body flex-grow-1">
                                                                <p class="noti-details"><span class="noti-title">Marie Canales</span> has accepted your estimate <span class="noti-title">#GTR458789</span></p>
                                                                <p class="noti-time"><span class="notification-time">6 mins ago</span></p>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="notification-message">
                                                    <a href="javascript:void(0);">
                                                        <div class="media d-flex">
                                                            <div class="avatar avatar-sm flex-shrink-0">
                                                                <span class="avatar-title rounded-circle bg-primary-light"><i class="far fa-user"></i></span>
                                                            </div>
                                                            <div class="media-body flex-grow-1">
                                                                <p class="noti-details"><span class="noti-title">New user registered</span></p>
                                                                <p class="noti-time"><span class="notification-time">8 mins ago</span></p>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="notification-message">
                                                    <a href="javascript:void(0);">
                                                        <div class="media d-flex">
                                                            <span class="avatar avatar-sm flex-shrink-0">
                                                                <img class="avatar-img rounded-circle" alt="Img" src="assets/img/profiles/avatar-04.jpg">
                                                            </span>
                                                            <div class="media-body flex-grow-1">
                                                                <p class="noti-details"><span class="noti-title">Barbara Moore</span> declined the invoice <span class="noti-title">#RDW026896</span></p>
                                                                <p class="noti-time"><span class="notification-time">12 mins ago</span></p>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="notification-message">
                                                    <a href="javascript:void(0);">
                                                        <div class="media d-flex">
                                                            <div class="avatar avatar-sm flex-shrink-0">
                                                                <span class="avatar-title rounded-circle bg-info-light"><i class="far fa-comment"></i></span>
                                                            </div>
                                                            <div class="media-body flex-grow-1">
                                                                <p class="noti-details"><span class="noti-title">You have received a new message</span></p>
                                                                <p class="noti-time"><span class="notification-time">2 days ago</span></p>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="topnav-dropdown-footer">
                                            <a href="javascript:void(0);">View all Notifications</a>
                                        </div>
                                    </div>
                                </li>
            
            
                                <li class="nav-item dropdown has-arrow main-drop">
                                    <a href="javascript:void(0);" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
                                        <span class="user-img">
                                            <img src="assets/img/profiles/avatar-07.jpg" alt="Img">
                                            <span class="status online"></span>
                                        </span>
                                    </a>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="profile.html"><i data-feather="user" class="me-1"></i> Profile</a>
                                        <a class="dropdown-item" href="settings.html"><i data-feather="settings" class="me-1"></i> Settings</a>
                                        <a class="dropdown-item" href="login.html"><i data-feather="log-out" class="me-1"></i> Logout</a>
                                    </div>
                                </li>
            
                            </ul>
            
                        </div>
            
            
                        <div class="sidebar" id="sidebar">
                            <div class="sidebar-inner slimscroll">
                                <div id="sidebar-menu" class="sidebar-menu">
                                    <ul>
                                        <li class="menu-title"><span>Main</span></li>
                                        <li>
                                            <a href="index.html"><i data-feather="home"></i> <span>Dashboard</span></a>
                                        </li>
                                        <li>
                                            <a href="categories.html"><i data-feather="copy"></i> <span>Categories</span></a>
                                        </li>
                                        <li>
                                            <a href="projects.html"><i data-feather="database"></i> <span>Projects</span></a>
                                        </li>
                                        <li>
                                            <a href="users.html"><i data-feather="users"></i> <span>Freelancer</span></a>
                                        </li>
                                        <li>
                                            <a href="deposit.html"><i data-feather="user-check"></i> <span>Deposit</span></a>
                                        </li>
                                        <li>
                                            <a href="withdrawn.html"><i data-feather="user-check"></i> <span>Withdrawn</span></a>
                                        </li>
                                        <li>
                                            <a href="transaction.html"><i data-feather="clipboard"></i> <span>Transaction</span></a>
                                        </li>
                                        <li>
                                            <a href="providers.html"><i data-feather="user-check"></i> <span>Providers</span></a>
                                        </li>
                                        <li>
                                            <a href="subscription.html"><i data-feather="user-check"></i> <span>Subscription</span></a>
                                        </li>
                                        <li>
                                            <a href="reports.html"><i data-feather="pie-chart"></i> <span>Reports</span></a>
                                        </li>
                                        <li>
                                            <a href="roles.html"><i data-feather="clipboard"></i> <span>Roles</span></a>
                                        </li>
                                        <li class="active">
                                            <a href="skills.html"><i data-feather="award"></i> <span>Skills</span></a>
                                        </li>
                                        <li>
                                            <a href="verify-identity.html"><i data-feather="user-check"></i> <span>Verify Identity</span></a>
                                        </li>
                                        <li>
                                            <a href="settings.html"><i data-feather="settings"></i> <span>Settings</span></a>
                                        </li>
                                        <li class="menu-title"><span>UI Interface</span></li>
                                        <li>
                                            <a href="components.html"><i data-feather="pocket"></i> <span>Components</span></a>
                                        </li>
                                        <li class="submenu">
                                            <a href="javascript:void(0);"><i data-feather="file-minus"></i> <span> Forms</span> <span class="menu-arrow"></span></a>
                                            <ul>
                                                <li><a href="form-basic-inputs.html">Basic Inputs</a></li>
                                                <li><a href="form-input-groups.html">Input Groups</a></li>
                                                <li><a href="form-horizontal.html">Horizontal Form</a></li>
                                                <li><a href="form-vertical.html">Vertical Form</a></li>
                                                <li><a href="form-mask.html">Form Mask</a></li>
                                                <li><a href="form-validation.html">Form Validation</a></li>
                                            </ul>
                                        </li>
                                        <li class="submenu">
                                            <a href="javascript:void(0);"><i data-feather="align-justify"></i> <span> Tables</span> <span class="menu-arrow"></span></a>
                                            <ul>
                                                <li><a href="tables-basic.html">Basic Tables</a></li>
                                                <li><a href="data-tables.html">Data Table</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>-->


            <div class="page-wrapper">
                <div class="content container-fluid">

                    <div class="page-header">
                        <div class="row align-items-center">
                            <div class="col">
                                <h3 class="page-title">Skills</h3>
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                    <li class="breadcrumb-item active">Skills</li>
                                </ul>
                            </div>
                            <div class="col-auto">
                                <a href="javascript:void(0);" class="btn add-button me-2" data-bs-toggle="modal" data-bs-target="#add-category">
                                    <i class="fas fa-plus"></i>
                                </a>
                                <a class="btn filter-btn" href="javascript:void(0);" id="filter_search">
                                    <i class="fas fa-filter"></i>
                                </a>
                            </div>
                        </div>
                    </div>


                    <div class="card filter-card" id="filter_inputs">
                        <div class="card-body pb-0">
                            <form action="SearchSkill" method="post">
                                <div class="row filter-row">
                                    <div class="col-sm-6 col-md-3">
                                        <div class="form-group">
                                            <label>Skill</label>
                                            <input class="form-control" type="text" name="skill">
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-3">
                                        <div class="form-group">
                                            <label>From Date</label>
                                            <div class="cal-icon">
                                                <input class="form-control datetimepicker" type="text">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-3">
                                        <div class="form-group">
                                            <label>To Date</label>
                                            <div class="cal-icon">
                                                <input class="form-control datetimepicker" type="text">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-3">
                                        <div class="form-group">
                                            <button class="btn btn-primary btn-block" type="submit">Submit</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                    <%
                        String message = (String) session.getAttribute("message");
                        if (message != null) {
                    %>
                    <div class="alert alert-success" role="alert">
                        <%= message %>
                    </div>
                    <%
                            session.removeAttribute("message");
                        }
                        String error = (String) session.getAttribute("error");
                        if (error != null) {
                    %>
                    <div class="alert alert-danger" role="alert">
                        <%= error %>
                    </div>
                    <%
                            session.removeAttribute("error");
                        }
                    %>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-center table-hover mb-0 datatable">
                                            <thead>
                                                <tr>
                                                    <th>Skill</th>
                                                    <th>Description</th>
                                                    <th class="text-end">Actions</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    List<Map<String, String>> skillSets = (List<Map<String, String>>) request.getAttribute("skillSets");
                                                    if (skillSets != null) {
                                                        for (Map<String, String> skillSet : skillSets) {
                                                %>
                                                <tr>
                                                    <td><%= skillSet.get("skill_set_name") %></td>
                                                    <td><%= skillSet.get("description") %></td>
                                                    <td class="text-end">
                                                        <a href="javascript:void(0);" class="btn btn-sm btn-secondary me-2" data-bs-toggle="modal" data-bs-target="#edit-category"
                                                           onclick="editSkill('<%= skillSet.get("skill_set_ID") %>', '<%= skillSet.get("skill_set_name") %>', '<%= skillSet.get("description") %>')">
                                                            <i class="far fa-edit"></i>
                                                        </a>
                                                        <a href="javascript:void(0);" class="btn btn-sm btn-danger" data-bs-toggle="modal" data-bs-target="#delete_category"
                                                           onclick="document.getElementById('deleteSkillSetID').value = '<%= skillSet.get("skill_set_ID") %>'">
                                                            <i class="far fa-trash-alt"></i>
                                                        </a>
                                                    </td>
                                                </tr>
                                                <%
                                                        }
                                                    }
                                                %>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>


        <div class="modal fade custom-modal" id="add-category" role="dialog">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Add New Skill</h4>
                        <button type="button" class="close" data-bs-dismiss="modal"><span>&times;</span></button>
                    </div>
                    <div class="modal-body">
                        <form action="addSkill" method="post">
                            <div class="form-group">
                                <label>Skill Name</label>
                                <input type="text" name="skillSetName" class="form-control" >
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <textarea name="description" class="form-control"></textarea>
                            </div>
                            <div class="mt-4">
                                <button type="submit" class="btn btn-primary btn-block">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>


        <div class="modal fade custom-modal" id="edit-category" role="dialog">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Edit Skill</h4>
                        <button type="button" class="close" data-bs-dismiss="modal"><span>&times;</span></button>
                    </div>
                    <div class="modal-body">
                        <form action="editSkill" method="post">
                            <input type="hidden" id="editSkillSetID" name="skillSetID">
                            <div class="form-group">
                                <label>Skill Name</label>
                                <input type="text" id="editSkillSetName" name="skillSetName" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <textarea id="editDescription" name="description" class="form-control"></textarea>
                            </div>
                            <div class="mt-4">
                                <button type="submit" class="btn btn-primary btn-block">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>


        <div class="modal custom-modal fade" id="delete_category" role="dialog">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="form-header">
                            <p>Are you sure you want to delete this skill?</p>

                        </div>
                        <form action="deleteSkill" method="post">
                            <input type="hidden" id="deleteSkillSetID" name="skillSetID">
                            <div class="modal-btn delete-action">
                                <div class="row">
                                    <div class="col-6">
                                        <button type="submit" style="width: 100%" class="btn btn-primary continue-btn">Yes</button>
                                    </div>
                                    <div class="col-6">
                                        <a href="javascript:void(0);" data-bs-dismiss="modal" class="btn btn-primary cancel-btn">Cancel</a>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>



        <script>
            function editSkill(skillSetID, skillSetName, description) {
                document.getElementById("editSkillSetID").value = skillSetID;
                document.getElementById("editSkillSetName").value = skillSetName;
                document.getElementById("editDescription").value = description;
            }

            function deleteSkill(skillSetID) {
                if (confirm("Are you sure?")) {
                    var xhr = new XMLHttpRequest();
                    xhr.open("POST", "DeleteSkill", true);
                    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                    xhr.onreadystatechange = function () {
                        if (xhr.readyState === 4 && xhr.status === 200) {
                            alert(xhr.responseText);
                            window.location.reload();
                        }
                    };
                    xhr.send("skillSetID=" + skillSetID);
                }
            }

            function confirmDelete() {
                // Find the skillSetID from the modal and call deleteSkill
                var skillSetID = document.getElementById("deleteSkillSetID").value;
                deleteSkill(skillSetID);
            }
        </script>
        <script src="assets/js/jquery-3.7.1.min.js" type="a94573ecdb54ed8c1a4f750c-text/javascript"></script>

        <script src="assets/js/bootstrap.bundle.min.js" type="a94573ecdb54ed8c1a4f750c-text/javascript"></script>

        <script src="assets/js/feather.min.js" type="a94573ecdb54ed8c1a4f750c-text/javascript"></script>

        <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js" type="a94573ecdb54ed8c1a4f750c-text/javascript"></script>

        <script src="assets/plugins/moment/moment.min.js" type="a94573ecdb54ed8c1a4f750c-text/javascript"></script>
        <script src="assets/js/bootstrap-datetimepicker.min.js" type="a94573ecdb54ed8c1a4f750c-text/javascript"></script>

        <script src="assets/plugins/datatables/jquery.dataTables.min.js" type="a94573ecdb54ed8c1a4f750c-text/javascript"></script>
        <script src="assets/plugins/datatables/datatables.min.js" type="a94573ecdb54ed8c1a4f750c-text/javascript"></script>

        <script src="assets/js/script.js" type="a94573ecdb54ed8c1a4f750c-text/javascript"></script>
        <script src="assets/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="a94573ecdb54ed8c1a4f750c-|49" defer></script></body>

    <!-- Mirrored from kofejob.dreamstechnologies.com/html/template/admin/skills.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 15 May 2024 10:41:41 GMT -->
</html>
