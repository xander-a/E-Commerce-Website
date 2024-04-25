<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/styles.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Metro Thrift Co.</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/jquery-3.6.4.min.js">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="img/Untitled-1.png" rel="icon">
        <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap" rel="stylesheet">
    </head>
    <body>
        <%@include file="/navbar/nav_bar.jsp"%>

        <div class="slideShow"></div>
        <br>
        <div class="rotate-image">
            <img src="img/elements/cross.png" alt="Cross" />
            <img src="img/elements/cross.png" alt="Cross" />
            <img src="img/elements/cross.png" alt="Cross" />
            <img src="img/elements/cross.png" alt="Cross" />
            <img src="img/elements/cross.png" alt="Cross" />
        </div>
        <div class="container-sm" style="max-width: 1000px; margin: 0 auto;text-align: center;">
            <div class="image-grid">
                <div class="image">
                    <img src="img/headlines/headline4.png" alt="Image 1">
                </div>
                <div class="image">
                    <img src="img/headlines/headline5.png" alt="Image 2">
                </div>
                <div class="image">
                    <img src="img/headlines/headline6.png" alt="Image 3">
                </div>
                <div class="image">
                    <img src="img/headlines/headline3.png" alt="Image 4">
                </div>
            </div>
            <div class="container">
                <div class="text-center mt-5">
                    <td colspan="2">
                        <a href="#" class="btn btn-dark" style="color: #96877e; font-size: 24px; padding: 10px 20px; border-radius: 8px; width: 100%;" id="addProductBtn">Shop Now</a>
                    </td>
                </div>
            </div>

        </div>
        <br>
        <%@include file="/footer/footer.jsp"%>
    </body>
</html>
