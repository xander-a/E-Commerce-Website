<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/styles.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/products.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Products</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/products.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.6.4.min.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="img/Untitled-1.png" rel="icon">
        <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap" rel="stylesheet">
    </head>
    <style>

    </style>
    <body>
        <%@include file="/navbar/nav_bar.jsp" %>



        <div class="container" style="padding-top: 100px">
            <h1 style="color: #96877e;">Product Search</h1>
            <form id="searchForm" style="color: #96877e;">
                <div class="form-group mb-2">
                    <label for="inputProductID">Product ID</label>
                    <input type="text" class="form-control" id="inputProductID" name="id">
                </div>
                <div class="form-group mb-2">
                    <label for="inputProductName">Product Name</label>
                    <input type="text" class="form-control" id="inputProductName" name="id">
                </div>
                <center><td colspan="2"><a href="${pageContext.request.contextPath}/products/create" class="btn btn-dark" style="color: #96877e;"id="addProductBtn" >Search</a></td></center>
            </form>
        </div>



        <section class="d-flex container-lg justify-content-center" style="color: #96877e;">
            <div class="container mt-5">

                <h2 class="text-center">Product List</h2>
                <p class="text-center"><c:out value="${message}"/> </p>
                <table id="productTable" class="table" style="color: #96877e;"id="addProductBtn";">
                    <thread>
                        <tr>
                            <th>Product ID</th>
                            <th>Product Name</th>
                            <th>Description</th>
                            <th>Size</th>
                            <th>Price</th>
                            <th>Quantity</th> 
                        </tr>
                    </thread>
                    <tbody id="productList" class="mb-3" style='height: 45vh;'>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>                    
                        </tr>
                    </tbody>
                </table>
                <center><td colspan="2"><a href="${pageContext.request.contextPath}/products/create" class="btn btn-dark" style="color: #96877e;"id="addProductBtn" >Add Product</a></td></center>
                <br><br><br><br>
                </section>
                <%@include file="/footer/footer.jsp"%>
                </body>
                </html>