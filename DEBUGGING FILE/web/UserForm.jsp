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
                    <a class="navbar-brand" href="${pageContext.request.contextPath}/Home" style="font-family: 'Karla', sans-serif; font-weight: 800; color: #96877e;">METRO THRIFT</a>
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
                    <form id="myForm" method="post" action="${pageContext.request.contextPath}/user" onsubmit="return formValidation()">
                        <tr>
                            <td><label style="color: #96877e;" for="UserID">User ID:</label></td>
                            <td><input type="text" id="UserID" name="UserID" placeholder=""
                                       required></td>
                        </tr>
                        <tr>
                            <td><label style="color: #96877e;" for="Firstname">First Name:</label></td>
                            <td><input type="text" id="Firstname" name="Firstname" placeholder="" 
                                       required></td>
                        </tr>
                        <tr>
                            <td><label style="color: #96877e;" for="Middlename">Middle Name</label></td>
                            <td><input type="text" id="Middlename" name="Middlename" placeholder=""></td>
                        </tr>
                        <tr>
                            <td><label style="color: #96877e;" for="Lastname">Last Name</label></td>
                            <td><input type="text" id="Lastname" name="Lastname" placeholder=""
                                       required></td>
                        </tr>
                        <tr>
                            <td><label style="color: #96877e;" for="UserRole">User Role</label></td>
                            <td>
                                <select name="cars" id="userrole">
                                    <option value="volvo">Admin</option>
                                    <option value="saab">Editor</option>
                                    <option value="opel">Viewer</option>
                                    <option value="audi">Customer</option>
                                </select></td>
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

            function formValidation() {
                var UserID = $("#UserID").val();
                console.log("UserID: " + UserID);
                if (!UserID.match(number)) {
                    alert("User ID must contain numbers only.");
                    return false;
                } else if (UserID.length !== 5 || isNaN(parseInt(UserID)) || !Number.isInteger(Number(UserID))) {
                    alert("User ID must be a 5-digit integer.");
                    return false;
                }

                var Firstname = $("#Firstname").val();
                console.log("First name: " + Firstname);
                if (!Firstname.match(characterOnly)) {
                    alert("First name must contain characters only and be atleast 1 character and be atleast 1 letter.");
                    return false;
                } else if (Firstname.length < 1) {
                    alert("First name must be atleast 1 character.");
                    return false;
                }



                var Middlename = $("#Middlename").val();
                console.log("Middle name: " + Middlename);
                if (!Middlename.match(characterOnly)) {
                    alert("Middle name must contain characters only and be atleast 1 letter.");
                    return false;
                } else if (Middlename.length < 1) {
                    alert("Middle name must be atleast 1 character.");
                    return false;
                }


                var Lastname = $("#Lastname").val();
                console.log("Last Name: " + Lastname);
                if (!Lastname.match(characterOnly)) {
                    alert("Last name must contain characters only and be atleast 1 letter.");
                    return false;
                } else if (Lastname.length < 1) {
                    alert("Last name must be atleast 1 character.");
                    return false;
                }

                return true;
            }
        </script>

    </body> 
</html>