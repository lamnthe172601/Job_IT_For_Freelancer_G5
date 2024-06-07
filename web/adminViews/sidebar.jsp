<div class="header">

    <div class="header-left">
        <a href="home" class="logo">
            <img src="adminAssets/img/logo.png" alt="Logo">

        </a>
        <a href="home" class="logo logo-small">
            <img src="adminAssets/img/logo-small.png" alt="Logo" width="30" height="30">
        </a>
        <a href="javascript:void(0);" id="toggle_btn">
            <i class="feather-chevrons-left"></i>
        </a>
        <a class="mobile_btn" id="mobile_btn">
            <i class="feather-chevrons-left"></i>
        </a>
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
                                        <img class="avatar-img rounded-circle" alt="Img" src="adminAssets/img/profiles/avatar-02.jpg">
                                    </span>
                                    <div class="media-body flex-grow-1">
                                        <p class="noti-details"><span class="noti-title">Brian Johnson</span> paid the invoice <span class="noti-title">#DF65485</span></p>
                                        <p class="noti-time"><span class="notification-time">4 mins ago</span></p>
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
                    <img src="${adminProfile.getImage()}" alt="Img">
                    <span class="status online"></span>
                </span>
            </a>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="profileAdmin"><i data-feather="user" class="me-1"></i> Profile</a>
                <a class="dropdown-item" href="settings.html"><i data-feather="settings" class="me-1"></i> Settings</a>
                <a class="dropdown-item" href="logout"><i data-feather="log-out" class="me-1"></i> Logout</a>
            </div>
        </li>

    </ul>

</div>


<div class="sidebar" id="sidebar">
    <div class="sidebar-inner slimscroll">
        <div id="sidebar-menu" class="sidebar-menu">
            <ul>
                <li class="menu-title"><span>Main</span></li>
                <li id="dashboard" >
                    <a href="dashboardAdmin"><i data-feather="home"></i> <span>Dashboard</span></a>
                </li>                           
                <li id="projects">
                    <a href="projectAdmin"><i data-feather="database"></i> <span>Projects</span></a>
                </li >
                <li  id="freelancer">
                    <a href="manageFreelancerAdmin"><i data-feather="users"></i> <span>Freelancer</span></a>
                </li>
                <li id="recruiter">
                    <a href="manageRecruiterAdmin"><i data-feather="user-check"></i> <span>Recuiter</span></a>
                </li>                          
                <li id="categories">
                    <a href="categorieAdmin"><i data-feather="copy"></i> <span>Categories</span></a>
                </li>                        
                <li id="skills">
                    <a href="skillAdmin"><i data-feather="award"></i> <span>Skills</span></a>
                </li>
                <li id="blog">
                    <a href="blogAdmin"><i data-feather="clipboard"></i> <span>Blog</span></a>
                </li>
                <li id="verify-Identity">
                    <a href="verifyIdentityAdmin"><i data-feather="user-check"></i> <span>Verify Identity</span></a>
                </li>
                <li id="settings">
                    <a href="settingsAdmin"><i data-feather="settings"></i> <span>Settings</span></a>
                </li>                        

            </ul>
        </div>
    </div>
</div>
