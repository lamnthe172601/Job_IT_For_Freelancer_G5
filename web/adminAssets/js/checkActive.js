window.addEventListener('load', function() {
    var currentPath = window.location.pathname;
    var sidebarItems = document.querySelectorAll('.sidebar-menu li');

    sidebarItems.forEach(function(item) {
        var itemPath = item.querySelector('a').getAttribute('href');
        if (currentPath.endsWith(itemPath)) {
            item.classList.add('active');
        } else {
            item.classList.remove('active');
        }
    });
});