<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <title>User Form</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/userForm.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/userForm.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.6.4.min.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="${pageContext.request.contextPath}/img/Untitled-1.png" rel="icon">
        <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    </head>
    <body>
        <header>
            <nav>
                <div class="container">
                    <a class="navbar-brand"  style="font-family: 'Karla', sans-serif; font-weight: 800; color: #96877e;">METRO THRIFT</a>
                </div>
            </nav>
        </header>

        <main>    

            <div class="card" style="width: 400px; background-color: #212121; margin-top:110px;">
                <div style="color: #96877e;" class="card-header">

                    <h3><strong>User Form</strong></h3>
                    <p class="text-center"><c:out value="${message}"/> </p>
                </div>
                <br>
                <table>
                    <form id="myForm" method="post" action="${pageContext.request.contextPath}/user/update" onsubmit="return formValidation()">
                        <tr>
                            <td><label style="color: #96877e;" for="UserID">User ID:</label></td>
                            <td><input type="text" id="UserID" name="UserID" placeholder="" value="<c:out value='${userDetails.userID}'/>" 
                                       required></td>
                        </tr>
                        <tr>

                        
                            <td><label style="color: #96877e;" for="Password">Password:</label></td>
                            <td><input style="color: #96877e" type="password" id="password_1" class="form-control" name="password" value="<c:out value='${userDetails.password}'/>"  required></td>
<tr>
                        </tr>    
                        </tr>
                        <tr>
                            <td><label style="color: #96877e;" for="Firstname">First Name:</label></td>
                            <td><input type="text" id="Firstname" name="firstName" placeholder=""  value="<c:out value='${userDetails.firstName}'/>" 
                                       required></td> 
                        </tr>
                        <tr>
                            <td><label style="color: #96877e;" for="Middlename">Middle Name</label></td>
                            <td><input type="text" id="Middlename" name="middleName" placeholder="" value="<c:out value='${userDetails.middleName}'/>"  ></td>
                        </tr>
                        <tr>
                            <td><label style="color: #96877e;" for="Lastname">Last Name</label></td>
                            <td><input type="text" id="Lastname" name="lastName" placeholder="" value="<c:out value='${userDetails.lastName}'/>" 
                                       required></td>
                        </tr>
                        <tr>
                            <td><label style="color: #96877e;" for="address">Address</label></td>
                            <td><input type="text" id="address" name="completeAddress" placeholder="" value="<c:out value='${userDetails.completeAddress}'/>" 
                                       required></td>
                        </tr>
                        <tr>
                            <td><label style="color: #96877e;" for="birthday">Birthday</label></td>
                            <td><input type="text" id="birthday" name="birthday" placeholder="" value="<c:out value='${userDetails.birthday}'/>" 
                                       required></td>
                        </tr>
                        <tr>
                            <td><label style="color: #96877e;" for="mobile">Mobile</label></td>
                            <td><input type="text" id="mobile" name="mobileNumber" placeholder="" value="<c:out value='${userDetails.mobileNumber}'/>" 
                                       required></td>
                        </tr>
                        <tr>
                            <td><label style="color: #96877e;" for="AccountStatus">Account Status:</label></td>
                            <td><input type="text" id="AccountStatus" name="accountStatus" placeholder="" value="<c:out value='${userDetails.accountStatus}'/>" 
                                       required></td>
                        </tr>
                        <tr>
                            <td><label style="color: #96877e;" for="LoginStatus">Login Status:</label></td>
                            <td><input type="text" id="LoginStatus" name="loginStatus" placeholder="" value="<c:out value='${userDetails.loginStatus}'/>" 
                                       required></td>
                        </tr>
                        <tr>
                            <td><label style="color: #96877e;" for="UserRole">User Role</label></td>
                            <td>
                                <select name="userRole" id="userrole">
                                    <option value="Administrator" ${userDetails.userRole == 'Admin' ? 'selected' : ''}>Administrator</option>
                                    <option value="Customer"> ${userDetails.userRole == 'Customer' ? 'selected' : ''}Customer</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2"><input type="submit" class="btn btn-dark" style="color: #96877e;"></td>
                        </tr>
                        
                    </form>

            </div>
        </main>                
        <script>
    var characterOnly = /^[A-Za-z\s]+$/;
    var number = /^[0-9]+$/;
    var alphanumeric = /^[a-zA-Z0-9\s]+$/;
    var decimal = /^[0-9]*[.][0-9]+$/;
    var passwordFormat = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_])[A-Za-z\d\W_]{8,}$/;
    var birthdayFormat = /^\d{2}\/\d{2}\/\d{4}$/;
    var mobileFormat = /^[0-9]{11}$/;
    var addressFormat = /^[a-zA-Z0-9\s.,'-]+$/;

    function formValidation() {
        
        var UserID = $("input[name='UserID']").val();
        console.log("UserID: " + UserID);
        if (!UserID.match(number)) {
            alert("User ID must contain numbers only.");
            return false;
        } else if (UserID.length !== 5 || isNaN(parseInt(UserID)) || !Number.isInteger(Number(UserID))) {
            alert("User ID must be a 5-digit integer.");
            return false;
        }

        var Password = $("input[name='Password']").val();
        console.log("Password: " + Password);
        if (Password.length < 8 || Password.length > 16) {
            alert("Password must be 8-16 characters long.");
            return false;
        } else if (!password.match(passwordFormat)) {
            alert('Password must be alphanumeric and contain at least 1 uppercase letter, 1 lowercase letter, 1 number, and 1 special character.');
            return false;
        }

        var Firstname = $("input[name='Firstname']").val();
        console.log("First name: " + Firstname);
        if (!Firstname.match(characterOnly)) {
            alert("First name must contain characters only and be at least 1 character long.");
            return false;
        } else if (Firstname.length < 1) {
            alert("First name must be at least 1 character long.");
            return false;
        }

        var Middlename = $("input[name='Middlename']").val();
        console.log("Middle Name: " + Middlename);
        if (Middlename.trim().length > 0 && !Middlename.match(characterOnly)) {
            alert("Middle name must contain characters only and be at least 2 characters long.");
            return false;
        }

        var Lastname = $("input[name='Lastname']").val();
        console.log("Last Name: " + Lastname);
        if (!Lastname.match(characterOnly)) {
            alert("Last name must contain characters only and be at least 1 character long.");
            return false;
        } else if (Lastname.length < 1) {
            alert("Last name must be at least 1 character long.");
            return false;
        }

        var address = $("input[name='address']").val();
        console.log("Address: " + address);
        if (!address.match(addressFormat) || address.length <= 1) {
            alert("Address must be alphanumeric and have more than one character.");
            return false;
        }

        var birthday = $("input[name='birthday']").val();
        console.log("Birthday: " + birthday);
        if (!birthday.match(birthdayFormat)) {
            alert("Birthday should be in MM/DD/YYYY format.");
            return false;
        }

        var mobile = $("input[name='mobile']").val();
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