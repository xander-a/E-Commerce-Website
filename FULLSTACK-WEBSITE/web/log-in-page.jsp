<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/css/bootstrap.min.css">
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/styles.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="img/Untitled-1.png" rel="icon">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/jquery-3.6.4.min.js">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="${pageContext.request.contextPath}/img/Untitled-1.png" rel="icon">
        <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <style>
            .fade-in {
                opacity: 0;
                transition: opacity 0.5s ease-in-out;
            }
            .fade-in.active {
                opacity: 1;
            }
            .fade-out {
                opacity: 1;
                transition: opacity 0.5s ease-in-out;
            }
            .fade-out.inactive {
                opacity: 0;
            }
        </style>
    </head>
    <body>

        <header>
            <nav>
                <div class="container">
                    <a class="navbar-brand" style="font-family: 'Karla', sans-serif; font-weight: 800; color: #96877e;">METRO THRIFT</a>
                </div>
            </nav>
        </header>
        <main>
            <main>
                <div class="container d-flex justify-content-center align-items-center" style="min-height: 100px;">
                    <div class="card text-white" style="width: 400px; background-color: #212121;">
                        <div class="card-header text-center" style="color: #96877e;">
                            <h2><b>Login Now</b></h2>
                        </div>

                        <div class="card-body">
                            <form method="post" action="${pageContext.request.contextPath}/login/create" onsubmit="return formValidation()">

                                <div class="mb-3">
                                    <input type="text" class="form-control" name="username" placeholder="Enter your Username" required>
                                </div>

                                <div class="mb-3">
                                    <input type="password" class="form-control" name="password" placeholder="Enter your Password" required>
                                </div>

                                <button style="color: #96877e;" type="submit" class="btn btn-primary btn-light w-100">LOGIN</button>
                            </form>

                            <p style="color: #96877e;"  class="mt-3 text-center">Don't have an account? <a href="${pageContext.request.contextPath}/regform/create/form" class="text-white">Register Here</a></p>
                            <p style="color: #96877e;"  class="mt-3 text-center">Forgot Password? <a href="${pageContext.request.contextPath}/login/create/form" class="text-white">Change password here</a></p>
                        </div>
                    </div>
            </main>

            <main>
                <section class="d-flex container-lg justify-content-center fade-in" style="color: #96877e;">
                    <div class="container mt-5">

                        <h2 class="text-center">CUSTOMER</h2>
                        <p class="text-center"><c:out value="${message}"/> </p>
                        <table id="productTable" class="table" style="color: #96877e;"id="addProductBtn";">
                            <thread>
                                <tr>
                                    <th>Username</th>
                                    <th>First Name</th>
                                    <th>Middle Name</th>
                                    <th>Last Name</th>
                                    <th>Mobile Number</th>
                                    <th></th>
                                </tr>
                            </thread>
                            <tbody id="RegformList" class="mb-3" style='height: 45vh;'>
                                <c:forEach items="${regformList}" var="user">
                                    <tr>
                                        <td>${user.username}</td>
                                        <td>${user.firstName}</td>
                                        <td>${user.middleName}</td>
                                        <td>${user.lastName}</td>
                                        <td>${user.mobile}</td>
                                        <td>
                                            <a href="${pageContext.request.contextPath}/regform/update/form?username=${user.username}" class="btn btn-sm btn-link">Edit</a>
                                            <a href="${pageContext.request.contextPath}/regform/delete?username=${user.username}" class="btn btn-sm btn-link">Delete</a>
                                        </td>   
                                        <td></td>                      
                                    </tr>
                                </c:forEach>
                            </tbody>
                            </tbody>
                        </table>
                </section>
            </main>
        </main>
        <script>
//            var Format = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[A-Za-z\d]{8,}$/;
//
//
//            function formValidation() {
//
//                var username = $("input[name='username']").val();
//                console.log("username: " + username);
//                if (username.length < 8 || username.length > 16) {
//                    alert("Username must be 8-16 characters long.");
//                    return false;
//                } else if (!username.match(Format)) {
//                    alert('Username must be alphanumeric');
//                    return false;
//                }
//
//                var password = $("input[name='password']").val();
//                if (username !== password) {
//                    alert('Username and Password do not match.');
//                    return false;
//                }
//                return true;
//            }
//
//            $(document).ready(function () {
//                var previousScroll = 0;
//                $(window).scroll(function () {
//                    var currentScroll = $(this).scrollTop();
//                    if (currentScroll > previousScroll) {
//                        // Scrolling down
//                        $('section').removeClass('fade-in').addClass('fade-out');
//                    } else {
//                        // Scrolling up
//                        $('section').removeClass('fade-out').addClass('fade-in');
//                    }
//                    previousScroll = currentScroll;
//                });
//            });
        </script>

    </body>
</html>