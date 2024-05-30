function FormValidate() {
    let user = false;
    let pass = false;


    var username = document.getElementById('user').value;
    var errorUsername = document.getElementById('userFail');
    if (username === '' || username === null) {
        errorUsername.innerHTML = "Please Input Username!";
    } else {
        errorUsername.innerHTML = '';
        user = true;
    }

   
    var passW = document.getElementById('pass').value;
    var errorPass = document.getElementById('passFail');

    if (passW === '' || passW === null) {
        errorPass.innerHTML = "Please Input Password!";
    } else {
        pass = true;
        errorPass.innerHTML = "";
    }
    
  

   

    if (pass && user  ) {
        return true;
    } else {
        return false;
    }
}/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


