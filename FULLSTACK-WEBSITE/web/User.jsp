<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/styles.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/user.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>User</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/user.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.6.4.min.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="img/Untitled-1.png" rel="icon">
        <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap" rel="stylesheet">
    </head>
    <body>
        <%@include file="/navbar/nav_bar.jsp" %>

        <div class="container" style="padding-top: 100px">
            <h1 style="color: #96877e;">User Management</h1>
            <form id="searchForm" style="color: #96877e;">
                <div class="form-group mb-2">
                    <label for="UserID">User ID</label>
                    <input type="text" class="form-control" id="UserID" name="id">
                </div>
                <div class="form-group mb-2">
                    <label for="UserName">User Name</label>
                    <input type="text" class="form-control" id="UserName" name="id">
                </div>
                <center><td colspan="2"><a href="?" class="btn btn-dark" style="color: #96877e;"id="userformBtn" >Search</a></td></center>
            </form>
        </div>

        <section class="d-flex container-lg justify-content-center" style="color: #96877e;">
            <div class="container mt-5">
                <h2 class="text-center">User's Info</h2>
                <p class="text-center"><c:out value="${message}"/> </p>
                <table id="UserTable" class="table" style="color: #96877e;">
                    <thread>
                        <tr>
                            <th>User ID</th>
                            <th>User Name</th>
                            <th>Description</th>
                            <th>User Role</th>   
                            <th>Login Status</th>
                            <th>Account Status</th>
                            <th></th>
                        </tr>
                    </thread>
                    <tbody id="UserList" class="mb-3" style='height: 20vh;'>
                        <c:forEach items="${userList}" var="user">
                        <tr>
                            <td>${user.userID}</td>
                            <td>${user.firstName}</td>
                            <td>${user.middleName}</td>
                            <td>${user.userRole}</td>
                            <td>${user.loginStatus}</td>
                            <td>${user.accountStatus}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/user/update/form?UserID=${user.userID}" class="btn btn-sm btn-link">Edit</a>
                                <a href="${pageContext.request.contextPath}/user/delete?UserID=${user.userID}" class="btn btn-sm btn-link">Delete</a>
                            </td>   
                            <td></td>                      
                        </tr>
                      </c:forEach>
                    </tbody>
                </table>
                <center><td colspan="2"><a href="${pageContext.request.contextPath}/user/create/form" class="btn btn-dark" style="color: #96877e; align-content: fixed;" id="userformBtn">Add User</a></td> </center>

                <br><br><br><br>
            </div>
                </section>

                <%@include file="/footer/footer.jsp"%>
                </body>
                </html>