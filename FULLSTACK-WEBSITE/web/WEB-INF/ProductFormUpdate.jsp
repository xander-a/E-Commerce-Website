<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Product Form</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/productForm.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/productForm.js"></script>
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
                    <a class="navbar-brand" href="#" style="font-family: 'Karla', sans-serif; font-weight: 800; color: #96877e;">METRO THRIFT</a>
                </div>
            </nav>
        </header>
        <div class="card" style="width: 400px; background-color: #212121; margin-top:150px;">
            <div style="color: #96877e;" class="card-header">
                <h3><b>Form</b></h3>
            </div>
            <br>
            <table>
                <form method="post" action="${pageContext.request.contextPath}/product/update" onsubmit="return formValidation()">
                    <tr>
                        <td><label style="color: #96877e;" for="productID">Product ID:</label></td>
                        <td><input type="text" id="productID" name="productID" placeholder=""
                                    value="<c:out value='${productDetails.productID}'/>" required></td>
                    </tr>
                    <tr>
                        <td><label style="color: #96877e;" for="productName">Product Name:</label></td>
                        <td><input type="text" id="productName" name="productName" placeholder="" 
                                    value="<c:out value='${productDetails.productName}'/>" required></td>
                    </tr>
                    <tr>
                        <td><label style="color: #96877e;" for="productDescription">Description:</label></td>
                        <td><input type="text" id="productDescription" name="productDescription" placeholder=""
                                   value="<c:out value='${productDetails.productDescription}'/>" required></td>
                    </tr>
                    <tr>
                        <td><label style="color: #96877e;" for="productSize">Size:</label></td>
                        <td><input type="text" id="productSize" name="productSize" placeholder=""
                                   value="<c:out value='${productDetails.productSize}'/>"required></td>
                    </tr>
                    <tr>
                        <td><label style="color: #96877e;" for="productPrice">Price:</label></td>
                        <td><input type="text" id="productPrice" name="productPrice" placeholder="" step="0.01"
                                   value="<c:out value='${productDetails.productPrice}'/>" required></td>
                    </tr>
                    <tr>
                        <td><label style="color: #96877e;" for="productQuantity">Quantity:</label></td>
                        <td><input type="text" id="productQuantity" name="productQuantity" placeholder="" 
                                   value="<c:out value='${productDetails.productQuantity}'/>" required></td>
                                   
                                   
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" value="Submit" class="btn btn-dark" style="color: #96877e;"></td>
                    </tr>
                </form>
            </table>

        </div>

    </body>

</html>
