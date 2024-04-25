    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.6.4.min.js"></script>
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
                        <a class="navbar-brand" href="${pageContext.request.contextPath}/Home" style="font-family: 'Karla', sans-serif; font-weight: 800; color: #96877e;">METRO THRIFT</a>
                    </div>
                </nav>
            </header>

           <main>

                    <div class="container d-flex justify-content-center align-items-center" style="margin-top: 50px;">
                        <div class="card text-white" style="width: 400px; background-color: #212121;">
                            <div class="card-header text-center" style="color: #96877e;">

                                <h2><b>Registration Form</b></h2>
                                

                            <p class="text-center"><c:out value="${message}"/></p>
                            </div>
                            <div class="card-body">
                                <form id="myForm" method="post" action="${pageContext.request.contextPath}/RegistrationForm" onsubmit="return formValidation()">
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
                                        <input type="text" class="form-control" id="firstName" name ="first-name" placeholder="First Name" required>
                                    </div>

                                    <div class="input-group mb-3">
                                        <span class="input-group-text" id="middlename">MN</span>
                                        <input type="text" class="form-control" id="middleName" name ="middle-name" placeholder="Middle Name">
                                    </div>

                                    <div class="input-group mb-3">
                                        <span class="input-group-text" id="lastname">LN‎ ‎ </span>
                                        <input type="text" class="form-control" id="lastName" name ="last-name" placeholder="Last Name" required>
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


        </body>
    </html>