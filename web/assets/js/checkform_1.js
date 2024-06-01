function FormValidate() {
    let checkemail = false;
    let checkfirstname = false;
    let checklastname = false;
    let checkphone = false;
    let checkdate = false;
    let checkskill = false;

    var email = document.getElementById('email').value.trim();
    var firstname = document.getElementById('firstname').value.trim();
    var lastname = document.getElementById('lastname').value.trim();
    var phone = document.getElementById('phone').value.trim();
    var dob = document.getElementById('dob').value;

    var eEmail = document.getElementById('eEmail');
    var ePhone = document.getElementById('ePhone');
    var eFirstname = document.getElementById('eFirstname');
    var eLastname = document.getElementById('eLastname');
    var eDob = document.getElementById('eDob');
    var eSkill = document.getElementById('eSkill');

    var reGexPass = /^(?=.*[0-9])(?=.*[A-Z])(?=.*[a-z])[a-zA-Z0-9]{8,16}$/;
    var reGexPhone = /(03|05|07|08|09|01[2|6|8|9])+([0-9]{8})\b/;

    var checkboxes = document.getElementsByName('skill');
    for (var i = 0; i < checkboxes.length; i++) {
        if (checkboxes[i].checked) {
            checkskill = true;
            break;
        }
    }
    if (!checkskill) {
        eSkill.innerHTML = "Choose at least one skill!";
        eSkill.style.display = 'block';
    } else {
        eSkill.style.display = 'none';
    }

    //check phone
    if (phone === null || phone === '') {
        ePhone.innerHTML = 'Phone Number is required fields.';
    } else if (!reGexPhone.test(phone)) {
        ePhone.innerHTML = 'Phone number is worng format!';
    } else {
        checkphone = true;
        ePhone.innerHTML = '';
    }

    //check email
    if (email === null || email === '') {
        eEmail.innerHTML = 'Email is required fields.';
    } else if (!reGexEmail.test(email)) {
        eEmail.innerHTML = 'Email is wrong format!';
    } else {
        eEmail.innerHTML = '';
        checkemail = true;

    }

    //check first name
    if (firstname === null || firstname === '') {
        eFirstname.innerHTML = "Firstname is required fields.";
    } else {
        checkfirstname = true;
        eFirstname.innerHTML = '';
    }

    //check last name
    if (lastname === null || lastname === '') {
        eLastname.innerHTML = "Lastname is required fields.";
    } else {
        checklastname = true;
        eLastname.innerHTML = '';
    }

    //check dob
    if (dob === null || dob === '') {
        eDob.innerHTML = "Date of Birth is required fields.";
    } else {
        checkdate = true;
        eDob.innerHTML = '';
    }




    if (checkdate && checkemail && checkfirstname && checklastname && checkphone && checkskill) {
        return true;
    } else {
        return false;
    }
}