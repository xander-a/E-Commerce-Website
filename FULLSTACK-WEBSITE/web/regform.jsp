<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">

        <link rel="stylesheet" href="css/styles.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/regForm.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Registration Form</title>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/regForm.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="${pageContext.request.contextPath}/img/Untitled-1.png" rel="icon">
        <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap" rel="stylesheet">
    </head>
    <body>
        <header>
            <nav>
                <div class="container" style="height: 30px;">
                    <a class="navbar-brand" style="font-family: 'Karla', sans-serif; font-weight: 800; color: #96877e;">METRO THRIFT</a>
                </div>
            </nav>
        </header>

        <main>

            <div class="container d-flex justify-content-center align-items-center" style="margin-top: 50px;">
                <div class="card text-white" style="width: 400px; background-color: #212121;">
                    <div class="card-header text-center" style="color: #96877e;">

                        <h2><b>Registration Form</b></h2>


                        
                    </div>
                    <div class="card-body">
                        <form id="myForm" method="post" action="${pageContext.request.contextPath}/regform/create" onsubmit="return formValidation()">
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="Username">@‎</span>
                                <input type="text" class="form-control" id="username" name="username" placeholder="Username" required>
                            </div>

                            <div class="input-group mb-3">
                                <span class="input-group-text" id="Password">PW</span>
                                <input style="color: #161719" type="password" id="password" class="form-control" name="password" placeholder="Password" required>
                            </div>

                            <div class="input-group mb-3">
                                <span class="input-group-text" id="confirmpassword">CPW</span>
                                <input style="color: #161719" type="password" id="confirmPassword" class="form-control" name="confirmPassword" placeholder="Confirm Password" required >
                            </div>

                            <div class="input-group mb-3">
                                <span class="input-group-text" id="firstname">FN‎</span>
                                <input type="text" class="form-control" id="firstName" name ="firstName" placeholder="First Name" required>
                            </div>

                            <div class="input-group mb-3">
                                <span class="input-group-text" id="middlename">MN</span>
                                <input type="text" class="form-control" id="middleName" name ="middleName" placeholder="Middle Name">
                            </div>

                            <div class="input-group mb-3">
                                <span class="input-group-text" id="lastname">LN‎ ‎ </span>
                                <input type="text" class="form-control" id="lastName" name ="lastName" placeholder="Last Name" required>
                            </div>

                            <div class="input-group mb-3">
                                <span class="input-group-text" id="Address">Address</span>
                                <input type="text" class="form-control" id="address" name="address" placeholder="Address" required>
                            </div>

                            <div class="input-group mb-3">
                                <span class="input-group-text" id="Birthday">Birthday</span>
                                <input type="text" class="form-control" id="birthday" name="birthday" placeholder="Birthday" required>
                            </div>

                            <div class="input-group mb-1">
                                <span class="input-group-text" id="Mobile">Mobile Number</span>
                                <input type="text" class="form-control" id="mobile" name ="mobile" placeholder="Mobile Number" required>
                            </div>

                            <br>
                            <button style="color: #96877e;" type="submit" id="submit-btn" class="btn btn-dark w-100">SAVE</button>
                        </form>
                    </div>
                </div>
            </div>
        </main>
        <script>
            var characterOnly = /^[A-Za-z\s]+$/;
            var numeric = /^[0-9]+$/;
            var alphanumeric = /[A-Za-z0-9\s]+$/;
            var decimal = /^[0-9]*[.][0-9]+$/;
            var passwordFormat = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_])[A-Za-z\d\W_]{8,}$/;
            var addressFormat = /^[a-zA-Z0-9\s.,'-]+$/;
            var birthdayFormat = /^\d{2}\/\d{2}\/\d{4}$/;
            var mobileFormat = /^[0-9]{11}$/;

            function formValidation() {

                var username = $("#username").val();
                console.log("Username: " + username);
                if (!username.match(alphanumeric)) {
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
                } else if (!password.match(passwordFormat)) {
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
                    alert("First name must contain characters and be atleast 2 letters.");
                    return false;
                } else if (firstName.length < 1) {
                    alert("First name must be 1 character.");
                    return false;
                }

                var middleName = $("#middleName").val();
                console.log("Middle Name: " + middleName);
                if (middleName.trim().length > 0 && !middleName.match(characterOnly)) {
                    alert("Middle name must contain characters and be atleast 2 letters.");
                    return false;
                }

                var lastName = $("#lastName").val();
                console.log("Last Name: " + lastName);
                if (!lastName.match(characterOnly)) {
                    alert("Last name must contain characters and be atleast 2 letters.");
                    return false;
                }

                var address = $("#address").val();
                console.log("Address: " + address);
                if (!address.match(addressFormat) || address.length <= 1) {
                    alert("Address must be alphanumeric and have more than one character");
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
        </script>            


    </body>
</html>