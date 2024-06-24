function checkfn() {
    var firstname = document.getElementById('firstname').value.trim();
    var eFirstname = document.getElementById('eFirstname');
    if (firstname === null || firstname === '') {
        eFirstname.innerHTML = "Firstname are required fields.";
    } else {
        eFirstname.innerHTML = '';
    }
}

function checkln() {
    var lastname = document.getElementById('lastname').value.trim();
    var eLastname = document.getElementById('eLastname');
    if (lastname === null || lastname === '') {
        eLastname.innerHTML = "Lastname are required fields.";
    } else {
        eLastname.innerHTML = '';
    }
}

function checkEmail() {
    var email = document.getElementById('email').value.trim();
    var eEmail = document.getElementById('eEmail');
    var reGexEmail = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    if (email === null || email === '') {
        eEmail.innerHTML = 'Email are required fields.';
    } else if (!reGexEmail.test(email)) {
        eEmail.innerHTML = 'Email is wrong format.';
    } else {
        eEmail.innerHTML = '';
    }
}

function checkphone() {
    var phone = document.getElementById('phone').value.trim();
    var ePhone = document.getElementById('ePhone');
    var reGexPhone = /(03|05|07|08|09|01[2|6|8|9])+([0-9]{8})\b/;
    if (phone === null || phone === '') {
        ePhone.innerHTML = 'Phone are required fields.';
    } else if (!reGexPhone.test(phone)) {
        ePhone.innerHTML = 'Phone number is worng format.';
    } else {
        ePhone.innerHTML = '';
    }

}

function checkcompany() {
    var company = document.getElementById('companyname').value.trim();
    var eCompanyname = document.getElementById('eCompanyname');
    if (company === null || company === '') {
        eCompanyname.innerHTML = 'Company Name are required fields.';
    } else {
        eCompanyname.innerHTML = '';
    }

}

function checkdob() {
    var dob = document.getElementById('dob').value.trim();
    var eDob = document.getElementById('eDob');
    if (dob === null || dob === '') {
        eDob.innerHTML = "Date of Birth are required fields.";
    } else {
        eDob.innerHTML = '';
    }
}

   function checkCategory() {
            var category = document.getElementById('categoryname').value.trim();
            var eCategoryname = document.getElementById('eCategoryname');
            if (category === null || category === '') {
                eCategoryname.innerHTML = 'Category Name is a required field.';
            } else {
                eCategoryname.innerHTML = '';
            }
        }

function checkDuplicateCategoryName(caID) {
    var editCategoryNameInput = document.getElementById('edit-categoryname-' + caID);
    var categoryName = editCategoryNameInput.value.trim();
    var eCategoryname = document.getElementById('eCategoryname-' + caID);
    var isDuplicate = false;

    // Lặp qua các phần tử input tên danh mục để kiểm tra trùng tên
    var categoryElements = document.getElementsByClassName('edit-categoryname');
    for (var i = 0; i < categoryElements.length; i++) {
        var currentCategoryInput = categoryElements[i];
        var currentCategoryID = currentCategoryInput.id.split('-')[1]; // Lấy ra ID của danh mục

        // Kiểm tra nếu là input tên danh mục khác và có cùng giá trị với danh mục hiện tại
        if (currentCategoryInput !== editCategoryNameInput && currentCategoryInput.value.trim() === categoryName) {
            isDuplicate = true;
            break;
        }
    }

    // Hiển thị thông báo lỗi nếu trùng tên
    if (isDuplicate) {
        eCategoryname.innerHTML = 'Category Name is already taken.';
        document.getElementById('edit-category-btn-' + caID).disabled = true;
    } else {
        eCategoryname.innerHTML = '';
        document.getElementById('edit-category-btn-' + caID).disabled = false;
    }
}






