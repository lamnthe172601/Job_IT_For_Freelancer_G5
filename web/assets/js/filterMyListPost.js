/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

       
           

        
            document.addEventListener("DOMContentLoaded", function () {
                const skillsLink = document.getElementById('skillsLink');
                const collapseOne1 = document.getElementById('collapseOne1');
                const showMoreBtn1 = document.getElementById('showMoreBtn1');
                const hiddenSkills = document.querySelectorAll('#collapseOne1 .skill-item[style*="display:none"]');

                // Toggle Skills section
                skillsLink.addEventListener('click', function () {
                    if (collapseOne1.classList.contains('show')) {
                        collapseOne1.classList.remove('show');
                        collapseOne1.style.display = 'none';
                        skillsLink.querySelector('i').className = 'fa-solid fa-chevron-down';
                    } else {
                        collapseOne1.classList.add('show');
                        collapseOne1.style.display = 'block';
                        skillsLink.querySelector('i').className = 'fa-solid fa-chevron-up';
                    }
                });

                // Show more functionality
                showMoreBtn1.addEventListener('click', function () {
                    hiddenSkills.forEach(skill => {
                        skill.style.display = 'block';
                    });
                    showMoreBtn1.style.display = 'none';
                });
            });


            document.addEventListener("DOMContentLoaded", function () {
                const projectDurationLink = document.getElementById('projectDurationLink');
                const collapseOneDuration = document.getElementById('collapseOneDuration');

                projectDurationLink.addEventListener('click', function () {
                    if (collapseOneDuration.classList.contains('show')) {
                        collapseOneDuration.classList.remove('show');
                        collapseOneDuration.style.display = 'none';
                        projectDurationLink.querySelector('i').className = 'fa-solid fa-chevron-down';
                    } else {
                        collapseOneDuration.classList.add('show');
                        collapseOneDuration.style.display = 'block';
                        projectDurationLink.querySelector('i').className = 'fa-solid fa-chevron-up';
                    }
                });
            });


            document.addEventListener("DOMContentLoaded", function () {
                const categoryLink = document.querySelector('.filter-title a');
                const collapseOne = document.getElementById('collapseOne');

                categoryLink.addEventListener('click', function () {
                    // Toggle hiển thị ẩn của collapseOne
                    if (collapseOne.style.display !== 'none') {
                        collapseOne.style.display = 'none';
                    } else {
                        collapseOne.style.display = 'block';
                    }
                });
            });

            document.addEventListener("DOMContentLoaded", function () {
                const projectTypeLink = document.getElementById('projectTypeLink');
                const collapsProject = document.getElementById('collapsproject');

                projectTypeLink.addEventListener('click', function () {
                    if (collapsProject.style.display === 'none' || collapsProject.style.display === '') {
                        collapsProject.style.display = 'block';
                        projectTypeLink.querySelector('i').className = 'fa-solid fa-chevron-up';
                    } else {
                        collapsProject.style.display = 'none';
                        projectTypeLink.querySelector('i').className = 'fa-solid fa-chevron-down';
                    }
                });
            });

            document.addEventListener('DOMContentLoaded', function () {
                const showMoreBtn = document.getElementById('showMoreBtn5');
                const collapseOnes = document.getElementById('collapseOnes');

                showMoreBtn.addEventListener('click', function () {
                    const expanded = showMoreBtn.getAttribute('aria-expanded') === 'true';

                    if (!expanded) {
                        // Show the hidden categories
                        collapseOnes.classList.add('show');
                        showMoreBtn.setAttribute('aria-expanded', 'true');
                        showMoreBtn.innerHTML = '<i class="feather-minus me-1"></i>Show Less';
                    } else {
                        // Hide the categories
                        collapseOnes.classList.remove('show');
                        showMoreBtn.setAttribute('aria-expanded', 'false');
                        showMoreBtn.innerHTML = '<i class="feather-plus me-1"></i>Show More';
                    }
                });
            });

            document.addEventListener("DOMContentLoaded", function () {
                const showMoreBtn = document.getElementById('showMoreBtn1');
                const collapseOnes1 = document.getElementById('collapseOnes1');

                let isExpanded = false;

                showMoreBtn.addEventListener('click', function () {
                    if (!isExpanded) {
                        // Hiển thị tất cả các skill còn lại
                        collapseOnes1.style.display = 'block';
                        showMoreBtn.innerHTML = '<i class="feather-minus me-1"></i>Show Less';
                        isExpanded = true;
                    } else {
                        // Thu gọn lại
                        collapseOnes1.style.display = 'none';
                        showMoreBtn.innerHTML = '<i class="feather-plus me-1"></i>Show More';
                        isExpanded = false;
                    }
                });
            });

        

