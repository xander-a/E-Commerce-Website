<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
        <style>
            .text {
            }

            .navbar {
                background-color: rgba(0, 0, 0, 0.8);
                height: 80px;
            }

            .navbar-brand {
                font-size: 24px;
                padding: 10px 0;
                color: #96877e; /* Set the color of the navbar brand */
            }

            .navbar-nav .nav-link {
                font-size: 20px;
                margin: 0 5px;
                color: #96877e;
            }

            .nav-icon li {
                display: inline-block;
            }

            .nav-icon a {
                color: #96877e;
                text-decoration: none;
            }

            .nav-icon i {
                font-size: 18px;
            }

            /* Adjustments for alignment */
            .navbar-nav {
                align-items: center;
            }
        </style>
        <title>Navigation Bar</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark">
            <div class="container">
                <a class="navbar-brand" href="${pageContext.request.contextPath}/Home" style="font-family: 'Karla', sans-serif; font-weight: 800; color: #96877e;">METRO THRIFT</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav" >
                    <ul class="navbar-nav ms-auto bg-0a0a0a">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/Home" style="color: #96877e;">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/products" style="color: #96877e;">Products</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/user" style="color: #96877e;">User Management</a>
                        </li>

                    </ul>
                    <div class="nav-icon navbar-nav ms-auto bg-0a0a0a" >
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a href="${pageContext.request.contextPath}/home" class="nav-link" aria-current="page" style="color: #96877e;">User<i class="bi bi-person-circle"></i></a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link" aria-current="page" style="color: #96877e;">Search<i class="bi bi-search"></i></a>
                            </li>
                            <li class="nav-item">
                                <a href="product_page.jsp" class="nav-link" aria-current="page" style="color: #96877e;">Add to Cart<i class="bi bi-cart4"></i></a>
                            </li>   
                        </ul>
                    </div>
                </div>
            </div>
        </nav>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
