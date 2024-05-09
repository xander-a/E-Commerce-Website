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
    </head>
    <body>

        <header>
            <nav>
                <div class="container">
                    <a class="navbar-brand" href="#" style="font-family: 'Karla', sans-serif; font-weight: 800; color: #96877e;">METRO THRIFT</a>
                </div>
            </nav>
        </header>

        <main>
            <div class="container d-flex justify-content-center align-items-center" style="min-height: 100px;">
                <div class="card text-white" style="width: 400px; background-color: #212121;">
                    <div class="card-header text-center" style="color: #96877e;">
                        <h2><b>Login Now</b></h2>
                    </div>
                    <div class="card-body">
                        <form method="post" action="${pageContext.request.contextPath}/login/update">
                             <div class="mb-3">
                                <input type="text" class="form-control" name="UserID" placeholder="Enter your UserID" value="<c:out value='${loginDetails.UserID}'/>" required>
                            </div>
                            <div class="mb-3">
                                <input type="text" class="form-control" name="username" placeholder="Enter your Username" value="<c:out value='${loginDetails.username}'/>" required>
                            </div>

                            <div class="mb-3">
                                <input type="password" class="form-control" name="password" placeholder="Enter your Password" value="<c:out value='${loginDetails.password}'/>"  required>
                            </div>
                        <a href="${pageContext.request.contextPath}/login/update/form?UserID=${user.userID}" class="btn btn-sm btn-link">Edit</a>
                            <button style="color: #96877e;" type="submit" class="btn btn-primary btn-light w-100">LOGIN</button>
                        </form>

                        <p style="color: #96877e;"  class="mt-3 text-center">Don't have an account? <a href="${pageContext.request.contextPath}/customer/registration" class="text-white">Register Here</a></p>
                    </div>
                </div>
            </div>
        </main>
    </body>
</html>