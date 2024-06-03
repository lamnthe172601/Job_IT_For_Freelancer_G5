function FormValidate() {
    let checkpass = false;
    let checkrepass = false;
    var reGexPass = /^(?=.*[0-9])(?=.*[A-Z])(?=.*[a-z])[a-zA-Z0-9]{6,16}$/;
    var passW = document.getElementById('password').value.trim();
    var errorPass = document.getElementById('errorPass');
    
    
    if (passW === '' || passW === null) {
        errorPass.innerHTML = "Password are required fields.";
    } else if (passW.length < 8 || passW.length > 16) {
        errorPass.innerHTML = "Password must be between 8 and 16 characters!";
    } else if (!reGexPass.test(passW)) {
        errorPass.innerHTML = "Password must contain at least one uppercase letter, one lowercase letter and one number!";
    } else {
        checkpass = true;
        errorPass.innerHTML = "";
    }
    
    var ConPass = document.getElementById('repassword').value.trim();
    var errorConPass = document.getElementById('errorRepass');

    if (ConPass === '' || ConPass === null) {
        errorConPass.innerHTML = "Confirmed Password are required fields.";
    } 
    else if (ConPass !== passW) {
        errorConPass.innerHTML = "Confirmed Password does not match Password!";
    } else {
        errorConPass.innerHTML = "";
        checkrepass = true;
    }
    if (checkpass && checkrepass && (reGexPass.test(ConPass) === reGexPass.test(passW)) && passW === ConPass ) {
        return true;
    } else {
        return false;
    }
}


