function FormValidate() {
    let checkemail = false;
    let checkfirstname = false;
    let checklastname = false;
    let checkphone = false;
    let checkdate = false;


    var email = document.getElementById('email').value.trim();
    var firstname = document.getElementById('firstname').value.trim();
    var lastname = document.getElementById('lastname').value.trim();
    var phone = document.getElementById('phone').value.trim();
    var dob = document.getElementById('dob').value.trim();

    var eEmail = document.getElementById('eEmail');
    var ePhone = document.getElementById('ePhone');
    var eFirstname = document.getElementById('eFirstname');
    var eLastname = document.getElementById('eLastname');
    var eDob = document.getElementById('eDob');

    var reGexEmail = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    var reGexPhone = /(03|05|07|08|09|01[2|6|8|9])+([0-9]{8})\b/;


    //check phone
    if (phone === null || phone === '') {
        ePhone.innerHTML = 'Phone number are required fields.';
    } else if (!reGexPhone.test(phone)) {
        ePhone.innerHTML = 'Phone number is worng format.';
    } else {
        checkphone = true;
        ePhone.innerHTML = '';
    }

    //check email
    if (email === null || email === '') {
        eEmail.innerHTML = 'Email are required fields.';
    } else if (!reGexEmail.test(email)) {
        eEmail.innerHTML = 'Email is wrong format.';
    } else {
        eEmail.innerHTML = '';
        checkemail = true;
    }

    //check first name
    if (firstname === null || firstname === '') {
        eFirstname.innerHTML = "Firstname are required fields.";
    } else {
        checkfirstname = true;
        eFirstname.innerHTML = '';
    }

    //check last name
    if (lastname === null || lastname === '') {
        eLastname.innerHTML = "Lastname are required fields.";
    } else {
        checklastname = true;
        eLastname.innerHTML = '';
    }

    //check dob
    if (dob === null || dob === '') {
        eDob.innerHTML = "Date of Birth are required fields.";
    }
    else{
        checkdate = true;
        eDob.innerHTML = '';
    }

    var eSkill = document.getElementById('eSkill');
    var checkboxes = document.getElementsByName('skill');
    let isChecked = false;
    for (var i = 0; i < checkboxes.length; i++) {
        if (checkboxes[i].checked) {
            isChecked = true;
            break;
        }
    }
    if (!isChecked) {
        eSkill.innerHTML = "Choose at least one.";
    }else{
        eSkill.innerHTML ='';
        isChecked=true;
    }




    if (checkdate && checkemail && checkfirstname && checklastname && checkphone &&isChecked) {
        return true;
    } else {
        return false;
    }
}