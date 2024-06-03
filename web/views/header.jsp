<header class="header header-three">
                <div class="container-fluid">
                    <nav class="navbar navbar-expand-lg header-nav">
                        <div class="navbar-header">
                            <a id="mobile_btn" href="javascript:void(0);">
                                <span class="bar-icon">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </span>
                            </a>
                            <a href="home" class="navbar-brand logo scroll-logo">
                                <img src="assets/img/logo-white.svg" class="img-fluid" alt="Logo">
                            </a>
                            <a href="home" class="navbar-brand logo original-logo">
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
                                        
                                            <li><a href="jobFavourites">Jobs Favourites</a></li>
                                                                                                                                                           
                                        <li><a href="jobsApply">Jobs Apply</a></li>
                                        <li><a href="jobforyou">Jobs For you</a></li>
                                    </ul>
                                </li>
                               
                                <li class="has-submenu">
                                    <a href="javascript:void(0);">For Jobs<i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                                                                                                                                                                                  
                                        <li><a href="jobsList">Jobs List</a></li>
                                        <li><a href="newsJobs">News Jobs</a></li>
                                        <li><a href="findJobs">Find Jobs</a></li>  
                                        <li><a href="company">Company</a></li>
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
                                                                                                                                                                                                  
                                        <li><a href="jobsList">List Post</a></li>
                                        <li><a href="newsJobs">Reviews</a></li>
                                        
                                    </ul>
                                </li>
                                </c:if>
                                <li class="has-submenu">
                                    <a href="javascript:void(0);">About<i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        
                                        <li><a href="blogList">Blog List</a></li>
                                        <li><a href="blogGrid">Blog Grid</a></li>
                                        <li><a href="AboutUs">About us</a></li>
                                         <li><a href="ContactUs">Contact us</a></li>
                                    </ul>
                                </li>
                                <c:if test="${sessionScope.account.roleID.getRoleID() == 3}">
                                    
                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">Hello ${sessionScope.account.username} <i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">
                                           
                                            <li><a href="dashboard">Dashboard</a></li>
                                            <li><a href="MyProfile">My Profile</a></li>
                                            <li><a href="Project">Projects</a></li>                        
                                            <li><a href="changePassword">Change Password</a></li>                                                                                     
                                            <li><a href="profile-settings">Settings</a></li>
                                            <li><a href="logout">Logout</a></li>
                                        </ul>
                                    </li>
                                </c:if>
                                <c:if test="${sessionScope.account.roleID.getRoleID() == 4}">
                                    <li class="has-submenu">
                                        <a href="javascript:void(0);">Hello ${sessionScope.account.username} <i class="fas fa-chevron-down"></i></a>
                                        <ul class="submenu">
                                            
                                            <li><a href="dashboard.html">Dashboard</a></li>
                                            <li><a href="companydetail">My Profile</a></li>
                                            <li><a href="company-details.html">Company Details</a></li>
                                            <li><a href="manage-projects.html">Projects</a></li>
                                            <li><a href="favourites.html">Favourites</a></li>
                                                                                       
                                            <li><a href="recruitersetting">Settings</a></li>
                                            <li><a href="logout">Logout</a></li>
                                        </ul>
                                    </li>
                                </c:if>
                                <c:if test="${sessionScope.account.roleID.getRoleID() == 1 || sessionScope.account.roleID.getRoleID() == 2}">
                                    <li>
                                        <a href="/admin/index.html" target="_blank">Admin</a>
                                        <ul class="submenu">
                                            
                                            <li><a href="dashboard.html">Dashboard</a></li>
                                            <li><a href="recruiterprofile">My Profile</a></li>
                                            <li><a href="company-details.html">Company Details</a></li>
                                            <li><a href="manage-projects.html">Projects</a></li>
                                            <li><a href="favourites.html">Favourites</a></li>
                                                                                       
                                            <li><a href="profile-settings.html">Settings</a></li>
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
                        <ul class="nav header-navbar-rht">

                            
                             <c:if test="${sessionScope.account.roleID.getRoleID() == null}">
                            <li><a href="login" class="login-btn"><i class="feather-plus me-1"></i>Post a Project </a></li>
                             </c:if>
                             <c:if test="${sessionScope.account.roleID.getRoleID() == 4}">
                            <li><a href="postProject" class="login-btn"><i class="feather-plus me-1"></i>Post a Project </a></li>
                             </c:if>
                             <c:if test="${sessionScope.account.roleID.getRoleID() == 3}">
                            <li><a href="searchJob" class="login-btn"><i class="feather-plus me-1"></i>Search a Job IT </a></li>
                             </c:if>
                        </ul>
                    </nav>
                </div>
            </header>