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
            <div class="page-wrapper">
                <div class="content container-fluid">

                    <div class="page-header">
                        <div class="row align-items-center">
                            <div class="col">
                                <h3 class="page-title">Skills</h3>
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
                        <form name="addSkillForm" action="addSkill" method="post" onsubmit="return validateAddForm();">                            
                            <div class="form-group">
                                <label>Skill Name</label>
                                <input type="text" name="skillSetName" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <textarea name="description" class="form-control" required></textarea>
                            </div>
                            <div id="addSkillError" class="error-message" style="color:red;">
                                <%= request.getAttribute("addSkillError") != null ? request.getAttribute("addSkillError") : "" %>
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
                        <form name="editSkillForm" action="updateSkill" method="post" onsubmit="return validateEditForm();">
                            <input type="hidden" id="editSkillSetID" name="skillSetID" >
                            <div class="form-group">
                                <label>Skill Name</label>
                                <input type="text" id="editSkillSetName" name="skillSetName" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <textarea id="editDescription" name="description" class="form-control" required></textarea>
                            </div>
                            <div id="editSkillError" class="error-message" style="color:red;">
                                <%= request.getAttribute("editSkillError") != null ? request.getAttribute("editSkillError") : "" %>
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
            function validateAddForm() {
                var skillSetName = document.forms["addSkillForm"]["skillSetName"].value.trim();
                var description = document.forms["addSkillForm"]["description"].value.trim();
                var errorDiv = document.getElementById("addSkillError");

                if (skillSetName === "" || description === "") {
                    errorDiv.innerText = "Skill Name and Description cannot be empty or just spaces.";
                    return false;
                }
                errorDiv.innerText = ""; // Clear the error message if validation passes
                return true;
            }

            function validateEditForm() {
                var skillSetName = document.forms["editSkillForm"]["skillSetName"].value.trim();
                var description = document.forms["editSkillForm"]["description"].value.trim();
                var errorDiv = document.getElementById("editSkillError");

                if (skillSetName === "" || description === "") {
                    errorDiv.innerText = "Skill Name and Description cannot be empty or just spaces.";
                    return false;
                }
                errorDiv.innerText = ""; // Clear the error message if validation passes
                return true;
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
