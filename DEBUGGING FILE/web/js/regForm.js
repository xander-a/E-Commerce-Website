var characterOnly = /^[A-Za-z\s]+$/;
var number = /^[0-9]+$/;
var alphanumeric = /^[a-zA-Z0-9\s]+$/;
var decimal = /^[0-9]*[.][0-9]+$/;
var passwordFormat = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_])[A-Za-z\d\W_]{8,}$/;
var addressFormat = /^[a-zA-Z0-9\s.,'-]+$/;
var birthdayFormat = /^\d{2}\/\d{2}\/\d{4}$/;
var mobileFormat = /^[0-9]{11}$/;

function formValidation() {

    var username = $("#username").val();
    console.log("Username: " + username);
    if (username.match(alphanumeric)) {
        alert("Username must be alphanumeric");
        return false;
    } else if (username.length < 4 || username.length > 5) {
        alert("Username should be 4-5 characters long and must be alphanumeric.");
        return false;
    }

    var password = $("#password").val();
    console.log("Password: " + password);
    if (password.length < 8 || password.length > 16) {
        alert("Password must be 8-16 characters long.");
        return false;
    } else if(!password.match(passwordFormat)){
        alert('Password must be alphanumeric, and contains at least 1 uppercase letter, 1 lowercase letter, 1 number, and 1 special character.');
        return false;
    }

    var confirmPassword = $("#confirmPassword").val();
    if (password !== confirmPassword) {
        alert('Password and Confirm Password do not match.');
          return false;
          }
          
    var firstName = $("#firstName").val();
    console.log("First Name: " + firstName);
    if (!firstName.match(characterOnly)) {
        alert("First name must contain characters and be atleast 1 letter.");
        return false;
    } else if (firstName.length < 1) {
        alert("First name must be 1 character.");
        return false;
    }

    var middleName = $("#middleName").val();
    console.log("Middle Name: " + middleName);
    if (!middleName.match(characterOnly)) {
        alert("Middle name must contain characters only");
        return false;
    } 
    
    var lastName = $("#lastName").val();
    console.log("Last Name: " + lastName);
    if (!lastName.match(characterOnly)) {
        alert("Last name must contain characters only and be atleast 1 letter.");
        return false;
    } 

 var address = $("#address").val();
    console.log("Address: " + address);
    if (address.match(addressFormat)) {
        alert("Address must be alphanumeric");
        return false;
    } 

    var birthday = $("#birthday").val();
    console.log("Birthday: " + birthday);
    if (!birthday.match(birthdayFormat)) {
        alert("Birthday should be in MM/DD/YYYY format.");
        return false;
    }
    

    var mobile = $("#mobile").val();
    console.log("Mobile Number: " + mobile);
    if (!mobile.match(mobileFormat)) {
        alert("Mobile number must be a numeric value and have 11 digits.");
        return false;
    }

    return true;
}