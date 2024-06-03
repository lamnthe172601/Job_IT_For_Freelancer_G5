function checkUsername() {
    var username = document.getElementById('username').value.trim();
    var errorUsername = document.getElementById('errorUsername');
    if (username === '' || username === null) {
        errorUsername.innerHTML = "Username are required fields.";
        document.getElementById('username').style.borderColor = "red";
    } else if (username.length < 8 || username.length > 32) {
        errorUsername.innerHTML = "Username are from 8 to 32!";
        document.getElementById('username').style.borderColor = "red";
    } else {
        errorUsername.innerHTML = '';
        document.getElementById('username').style.borderColor = "#00FF00";
    }
}

function checkEmail() {
    var email = document.getElementById('email').value.trim();
    var errorEmail = document.getElementById('errorEmail');
    var reGexEmail = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    if (email === '' || email === null) {
        document.getElementById('email').style.borderColor = "red";
        errorEmail.innerHTML = "Email are required fields.";
    } else if (!reGexEmail.test(email)) {
        document.getElementById('email').style.borderColor = "red";
        errorEmail.innerHTML = "Email is wrong Format!";
    } else {
        errorEmail.innerHTML = '';
        document.getElementById('email').style.borderColor = "#00FF00";
    }
}

function checkpass() {
    var reGexPass = /^(?=.*[0-9])(?=.*[A-Z])(?=.*[a-z])[a-zA-Z0-9]{8,16}$/;
    var passW = document.getElementById('password').value.trim();
    var errorPass = document.getElementById('errorPass');
        if (passW === '' || passW === null) {
            document.getElementById('password').style.borderColor = "red";
        errorPass.innerHTML = "Password are required fields.";
    } else if (passW.length < 8 || passW.length > 16) {
        document.getElementById('password').style.borderColor = "red";
        errorPass.innerHTML = "Password must be between 8 and 16 characters!";
    } else if (!reGexPass.test(passW)) {
        document.getElementById('password').style.borderColor = "red";
        errorPass.innerHTML = "Password must contain at least one uppercase letter, one lowercase letter and one number.";
    } else {
        errorPass.innerHTML = "";
        document.getElementById('password').style.borderColor = "#00FF00";
    }
    
    
        var ConPass = document.getElementById('repassword').value.trim();
    var errorConPass = document.getElementById('errorRepass');

    if (ConPass === '' || ConPass === null) {
        document.getElementById('repassword').style.borderColor = "red";
        errorConPass.innerHTML = "Confirm Password.";
    } 
    else if (ConPass !== passW) {
        document.getElementById('repassword').style.borderColor = "red";
        errorConPass.innerHTML = "Confirmed Password does not match Password.";
    } else {
        errorConPass.innerHTML = "";
        document.getElementById('repassword').style.borderColor = "#00FF00";
    }
}

