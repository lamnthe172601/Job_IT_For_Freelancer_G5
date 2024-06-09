<script>
    window.onload = function () {
        var currentURL = window.location.href;
        var links = document.querySelectorAll('#sidebar-menu a');

        links.forEach(function (link) {
            var linkHref = link.getAttribute('href');
            if (currentURL.includes(linkHref)) {
                link.parentNode.classList.add('active');
            } else {
                link.parentNode.classList.remove('active');
            }
        });
    }
</script>
<div class="sidebar" id="sidebar">
    <div class="sidebar-inner slimscroll">
        <div id="sidebar-menu" class="sidebar-menu">
            <ul>
                <li class="menu-title"><span>Main</span></li>
                <li >
                    <a href="dashboardAdmin"><i data-feather="home"></i> <span>Dashboard</span></a>
                </li>                           
                <li>
                    <a href="projectAdmin"><i data-feather="database"></i> <span>Projects</span></a>
                </li>
                <li>
                    <a href="manageFreelancerAdmin"><i data-feather="users"></i> <span>Freelancer</span></a>
                </li>
                <li>
                    <a href="manageRecruiterAdmin"><i data-feather="user-check"></i> <span>Recuiter</span></a>
                </li>                          
                <li>
                    <a href="categorieAdmin"><i data-feather="copy"></i> <span>Categories</span></a>
                </li>                        
                <li>
                    <a href="skillAdmin"><i data-feather="award"></i> <span>Skills</span></a>
                </li>
                <li>
                    <a href="blogAdmin"><i data-feather="clipboard"></i> <span>Blog</span></a>
                </li>
                <li>
                    <a href="verifyIdentityAdmin"><i data-feather="user-check"></i> <span>Verify Identity</span></a>
                </li>
                <li>
                    <a href="settingsAdmin"><i data-feather="settings"></i> <span>Settings</span></a>
                </li>                          

            </ul>
        </div>
    </div>
</div>