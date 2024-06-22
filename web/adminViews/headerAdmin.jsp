<div class="header">

    <div class="header-left">
        <a href="javascript:void(0);" class="logo">
            <img src="adminAssets/img/logo.png" alt="Logo">
        </a>
        <a href="javascript:void(0);" class="logo logo-small">
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
        <li class="nav-item dropdown has-arrow main-drop">
            <a href="javascript:void(0);" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
                <span class="user-img">
                    <img src="${adminProfile.image}" alt="Img">
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