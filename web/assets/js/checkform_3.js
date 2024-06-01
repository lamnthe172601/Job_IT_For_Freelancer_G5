function checkUsername() {
    var username = document.getElementById('username').value.trim();
    var errorUsername = document.getElementById('errorUsername');
    if (username === '' || username === null) {
        errorUsername.innerHTML = "Username is required fields.";
        document.getElementById('username').style.borderColor="red";
    } else if (username.length < 8 || username.length > 32) {
        errorUsername.innerHTML = "Please Input Username from 8 to 32!";
        document.getElementById('username').style.borderColor="red";
    } else {
        document.getElementById('username').style.borderColor="#00FF7F";
        errorUsername.innerHTML = '';
    }
}

function checkPassword() {
    var reGexPass = /^(?=.*[0-9])(?=.*[A-Z])(?=.*[a-z])[a-zA-Z0-9]{8,16}$/;
    var passW = document.getElementById('password').value.trim();
    var errorPass = document.getElementById('errorPass');

    if (passW === '' || passW === null) {
        errorPass.innerHTML = "Password is required fields.";
        document.getElementById('password').style.borderColor="red";
    } else if (passW.length < 8 || passW.length > 16) {
        errorPass.innerHTML = "Password must be between 8 and 16 characters!";
        document.getElementById('password').style.borderColor="red";
    } else if (!reGexPass.test(passW)) {
        errorPass.innerHTML = "Password must contain at least one uppercase letter, one lowercase letter and one number!";
        document.getElementById('password').style.borderColor="red";
    } else {
        errorPass.innerHTML = "";
        document.getElementById('password').style.borderColor="#00FF7F";
    }
    
    var ConPass = document.getElementById('repassword').value.trim();
    var errorConPass = document.getElementById('errorRepass');

    if (ConPass === '' || ConPass === null) {
        errorConPass.innerHTML = "Confirm Password!";
        document.getElementById('repassword').style.borderColor="red";
    } 
    else if (ConPass !== passW) {
        errorConPass.innerHTML = "Confirmed Password does not match Password!";
        document.getElementById('repassword').style.borderColor="red";
    } else {
        errorConPass.innerHTML = "";
        document.getElementById('repassword').style.borderColor="#00FF7F";       
    }
}

function checkEmail() {
    var email = document.getElementById('email').value.trim();
    var errorEmail = document.getElementById('errorEmail');
    var reGexEmail = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
        if (email === '' || email === null) {
            document.getElementById('email').style.borderColor="red";
        errorEmail.innerHTML = "Email is required fields.";
    } else if (!reGexEmail.test(email)) {
        document.getElementById('email').style.borderColor="red";
        errorEmail.innerHTML = "Email is worng Format!";
        email = '';
    } else {
        errorEmail.innerHTML = '';
        document.getElementById('email').style.borderColor="#00FF7F";
    }
}


function checkFirstname(){
    var firstname = document.getElementById('firstname').value.trim();
    var eFirstname = document.getElementById('eFirstname');
    if (firstname === null || firstname === '') {
        eFirstname.innerHTML = "First name is required fields.";
    } else {
        eFirstname.innerHTML = '';
    }
}

function checkLastName(){
    var lastname = document.getElementById('lastname').value.trim();
    var eLastname = document.getElementById('eLastname');
        if (lastname === null || lastname === '') {
        eLastname.innerHTML = "Last name is required fields.";
    } else {
        eLastname.innerHTML = '';
    }
}

function checkPhone(){
    var phone = document.getElementById('phone').value.trim();
    var ePhone = document.getElementById('ePhone');
    var reGexPhone = /(03|05|07|08|09|01[2|6|8|9])+([0-9]{8})\b/;
        if (phone === null || phone === '') {
        ePhone.innerHTML = 'Phone number is required fields.';
    } else if (!reGexPhone.test(phone)) {
        ePhone.innerHTML = 'Phone number is worng format.';
    } else {
        ePhone.innerHTML = '';
    }
}

function checkCompany(){
    var eCompanyname=document.getElementById('eCompanyname');
    var company=document.getElementById('companyname').value.trim();
        if (company === null || company === '') {
        eCompanyname.innerHTML = 'Company Name is required fields.';
    } else {
        eCompanyname.innerHTML = '';
    }
}

function checkEmail1() {
    var email = document.getElementById('email').value.trim();
    var errorEmail = document.getElementById('eEmail');
    var reGexEmail = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
        if (email === '' || email === null) {
        errorEmail.innerHTML = "Email is required fields.";
    } else if (!reGexEmail.test(email)) {
        errorEmail.innerHTML = "Email is worng Format!";
        email = '';
    } else {
        errorEmail.innerHTML = '';
    }
}

function checkdob(){
    var dob = document.getElementById('dob').value;
    var eDob = document.getElementById('eDob');
        if (dob === null || dob === '') {
        eDob.innerHTML = "Date of Birth is required fields.";
    } else {
        eDob.innerHTML = '';
    }
}








