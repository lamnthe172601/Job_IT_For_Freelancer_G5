<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
                <li><a href="jobforyou">Jobs For you</a></li>
            </ul>
        </li>

        <li class="has-submenu">
            <a href="javascript:void(0);">For Jobs<i class="fas fa-chevron-down"></i></a>
            <ul class="submenu">

                <li><a href="AllListPost">Jobs List</a></li>                                        
                <li><a href="SreachJob">Find Jobs</a></li>  
            </ul>
        </li>
    </c:if>
    <c:if test="${sessionScope.account.roleID.getRoleID() == 4}">
        <li class="has-submenu">
            <a href="javascript:void(0);">Find Freelancer<i class="fas fa-chevron-down"></i></a>
            <ul class="submenu">

                <li><a href="jobsList">Top Freelancer</a></li>
                <li><a href="newsJobs">Skills</a></li>

            </ul>
        </li>
        <li class="has-submenu">
            <a href="javascript:void(0);">My Post<i class="fas fa-chevron-down"></i></a>
            <ul class="submenu">
                <li><a href="CreatePost">Create a new Post</a></li>
                <li><a href="myListJobProject">My List Post</a></li>
                <li><a href="newsJobs">Reviews</a></li>

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
                <li><a href="changePassword">Change Password</a></li>                                                                                     
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
                <li><a href="company-details">Company Details</a></li>
                <li><a href="manage-projects">Projects</a></li>
                <li><a href="favourites">Favourites</a></li>                                                                                       
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


    <c:if test="${sessionScope.account.roleID.getRoleID() == null ||  sessionScope.account.roleID.getRoleID() == 3 || sessionScope.account.roleID.getRoleID() == 4}">
        <li>
            <form action="SearchInHome" method="get" style=" display: flex;
                  align-items: center;">
                <c:if test="${txtSearch == null}">
                    <input type="text" name="txtSearch" placeholder="Search..." style="padding: 5px;margin-right: 5px; border-radius: 10px; width: 250px;">
                </c:if>
                <c:if test="${txtSearch != null}">
                    <input type="text" name="txtSearch" value="${txtSearch}" style="padding: 5px;margin-right: 5px; border-radius: 10px; width: 250px;">
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
    </c:if>


</ul>
