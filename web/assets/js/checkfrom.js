function FormValidate() {
    let checkmail = false;
    let checkun = false;
    let checkpass = false;
    let checkrepass = false;
    var email = document.getElementById('email').value.trim();
    var errorEmail = document.getElementById('errorEmail');
    var reGexEmail = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;

    var username = document.getElementById('username').value.trim();
    var errorUsername = document.getElementById('errorUsername');
    if (username === '' || username === null) {
        errorUsername.innerHTML = "Username are required fields.";
    } else if (username.length < 8 || username.length > 32) {
        errorUsername.innerHTML = "Username from 8 to 32 characters.";
    } else {
        errorUsername.innerHTML = '';
        checkun = true;
    }

    var reGexPass = /^(?=.*[0-9])(?=.*[A-Z])(?=.*[a-z])[a-zA-Z0-9]{8,16}$/;
    var passW = document.getElementById('password').value.trim();
    var errorPass = document.getElementById('errorPass');

    if (passW === '' || passW === null) {
        errorPass.innerHTML = "Password are required fields.";
    } else if (passW.length < 8 || passW.length > 16) {
        errorPass.innerHTML = "Password must be between 8 and 16 characters.";
    } else if (!reGexPass.test(passW)) {
        errorPass.innerHTML = "Password must contain at least one uppercase letter, one lowercase letter and one number.";
    } else {
        checkpass = true;
        errorPass.innerHTML = "";
    }
    
    if (email === '' || email === null) {
        errorEmail.innerHTML = "Email are required fields.";
    } else if (!reGexEmail.test(email)) {
        errorEmail.innerHTML = "Email is worng Format.";
        email = '';
    } else {
        errorEmail.innerHTML = '';
        checkmail=true;
    }

    var ConPass = document.getElementById('repassword').value.trim();
    var errorConPass = document.getElementById('errorRepass');

    if (ConPass === '' || ConPass === null) {
        errorConPass.innerHTML = "Confirm Password.";
    } 
    else if (ConPass !== passW) {
        errorConPass.innerHTML = "Confirmed Password does not match Password.";
    } else {
        errorConPass.innerHTML = "";
        checkrepass = true;
    }

    if (checkun && checkmail && checkpass && checkrepass && (reGexPass.test(ConPass) === reGexPass.test(passW)) && passW === ConPass ) {
        return true;
    } else {
        return false;
    }
}
