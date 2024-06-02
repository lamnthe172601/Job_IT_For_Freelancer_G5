function FormValidate() {
    let checkemail = false;
    let checkfirstname = false;
    let checklastname = false;
    let checkphone = false;
    let checkdate = false;
    let checkcompanyname=false;

    var email = document.getElementById('email').value;
    var firstname = document.getElementById('firstname').value;
    var lastname = document.getElementById('lastname').value;
    var phone = document.getElementById('phone').value;
    var dob = document.getElementById('dob').value;
    var company=document.getElementById('companyname').value;

    var eEmail = document.getElementById('eEmail');
    var ePhone = document.getElementById('ePhone');
    var eFirstname = document.getElementById('eFirstname');
    var eLastname = document.getElementById('eLastname');
    var eDob = document.getElementById('eDob');
    var eCompanyname=document.getElementById('eCompanyname');

    var reGexEmail = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    var reGexPhone = /(03|05|07|08|09|01[2|6|8|9])+([0-9]{8})\b/;

    if (company === null || company === '') {
        eCompanyname.innerHTML = 'Please Input Company Name';
    } else {
        eCompanyname.innerHTML = '';
        checkcompanyname = true;
    }
    

    //check phone
    if (phone === null || phone === '') {
        ePhone.innerHTML = 'Please Input Your Phone!';
    } else if (!reGexPhone.test(phone)) {
        ePhone.innerHTML = 'Phone number is worng format!';
    } else {
        checkphone = true;
        ePhone.innerHTML = '';
    }

    //check email
    if (email === null || email === '') {
        eEmail.innerHTML = 'Please Input your Email!';
    } else if (!reGexEmail.test(email)) {
        eEmail.innerHTML = 'Email is wrong format!';
    } else {
        eEmail.innerHTML = '';
        checkemail = true;
    }

    //check first name
    if (firstname === null || firstname === '') {
        eFirstname.innerHTML = "Please Input Your Firstname!";
    } else {
        checkfirstname = true;
        eFirstname.innerHTML = '';
    }

    //check last name
    if (lastname === null || lastname === '') {
        eLastname.innerHTML = "Please Input Your Lastname!";
    } else {
        checklastname = true;
        eLastname.innerHTML = '';
    }

    //check dob
    if (dob === null || dob === '') {
        eDob.innerHTML = "Please Input Your Date of Birth!";
    } else {
        checkdate = true;
        eDob.innerHTML = '';
    }




    if (checkdate && checkemail && checkfirstname && checklastname && checkphone && checkcompanyname) {
        return true;
    } else {
        return false;
    }
}