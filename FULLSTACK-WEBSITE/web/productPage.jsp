<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/styles.css">
        <link rel="stylesheet" href="css/style.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Products</title>
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
        <%@include file="/navbar/nav_bar.jsp" %>
        <section class="new-products" id="metro">
            <div class="center-text">
                <div class="rotate-image">
                    <img src="img/elements/cross.png" alt="Cross" />
                    <b><h1 style="font-family: 'Karla', sans-serif; font-weight: 800;">PRODUCTS</h1></b>
                    <img src="img/elements/cross.png" alt="Cross" />
                </div>
            </div>

            <div id="main-content" class="products">
                <div class="card">
                    <img src="img/metrobox.jpg">
                    <img class="preview-image" src="img/metrobox_preview.jpg">
                    <div class="text" id="nameShirt1">
                        <h2>Metro Box Tee</h2>
                    </div>
                    <div class="price" id="priceShirt1">
                        <p>₱900.00</p>
                    </div>
                </div>
                <div class="card">
                    <img src="img/metro_sweater.jpg">
                    <img class="preview-image" src="img/metro_sweater_preview.jpg">
                    <div class="text" id="nameShirt2">
                        <h2>Metro Sweater</h2>
                    </div>
                    <div class="price" id="priceShirt2">
                        <p>₱1000.00</p>
                    </div>
                </div>
                <div class="card">
                    <img src="img/metrobeanie.jpg">
                    <div class="text" id="nameShirt3">
                        <h2>Metro Beanie</h2>
                    </div>
                    <div class="price" id="priceShirt3">
                        <p>₱600.00</p>
                    </div>
                </div>
                <div class="card">
                    <img src="img/knitted_v1.jpg">
                    <img class="preview-image" src="img/knitted_v1_preview.jpg">
                    <div class="text" id="nameShirt4">
                        <h2>Metro Knitted V.1</h2>
                    </div>
                    <div class="price" id="priceShirt4">
                        <p>₱1300.00</p>
                    </div>
                </div>
                <div class="card">
                    <img src="img/metrojacket.jpg">
                    <img class="preview-image" src="img/metrojacket_preview.jpg">
                    <div class="text" id="nameShirt4">
                        <h2>Metro Jacket V.1</h2>
                    </div>
                    <div class="price" id="priceShirt4">
                        <p>₱1500.00</p>
                    </div>
                </div>
                <div class="card">
                    <img src="img/metro_sweatpants.jpg">
                    <img class="preview-image" src="img/metro_sweatpants_preview.jpg">
                    <div class="text" id="nameShirt4">
                        <h2>Metro Sweatpants V.1</h2>
                    </div>
                    <div class="price" id="priceShirt4">
                        <p>₱900.00</p>
                    </div>
                </div>
                <div class="card">
                    <img src="img/metro_crop.jpg">
                    <img class="preview-image" src="img/metro_crop_preview.jpg">
                    <div class="text" id="nameShirt4">
                        <h2>Metro Crop V.1</h2>
                    </div>
                    <div class="price" id="priceShirt4">
                        <p>₱900.00</p>
                    </div>
                </div>
                <div class="card">
                    <img src="img/metro_crophoodie.jpg">
                    <img class="preview-image" src="img//metro_crophoodie_preview.jpg">
                    <div class="text" id="nameShirt4">
                        <h2>Metro Crop Hoodie V.1</h2>
                    </div>
                    <div class="price" id="priceShirt4">
                        <p>₱2000.00</p>
                    </div>
                </div>
            </div>
        </section>
    </body>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Set body font and background */
        body {
            background-size: cover;
            background-repeat: no-repeat;
            background-image: url('img/background.png');
            color: #96877e;
        }

        /* Center the text in the section */
        .center-text {
            text-align: center;
            margin-bottom: 20px;
            display: flex;
            justify-content: center;
        }
        .row {
            display: flex;
            align-items: center;
        }

        /* Style the section heading */
        h1 {
            font-size: 32px;
            color: #96877e;
            margin-bottom: 10px;
        }

        /* Style the products container */
        .products {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center; /* Added align-items property */
            margin-bottom: 20px;
        }

        /* Style each product card */
        .card {
            width: 400px;
            margin: 10px;
            background-color: #0a0a0a;
            padding: 20px;
            border-radius: 4px;
            box-shadow: 0 2px 4px rgba(255, 255, 255, 0.5); /* White drop shadow */
            text-align: center;
            border: 2px solid;
            border-image-slice: 1;
        }

        /* Style the product image */
        .card img {
            width: 100%;
            height: auto;
            margin-bottom: 10px;
            box-shadow: inset 0 0 10px rgba(255, 255, 255, 0.5); /* Inner shadow */
        }

        /* On hover, scale the product image */
        .card img:hover {
            transform: scale(0.9);
        }

        /* Style the product title */
        .card h2 {
            font-size: 20px;
            color: #96877e;
            margin-bottom: 10px;
        }

        /* Style the product price */
        .card .price {
            font-size: 16px;
            color: #96877e;
        }

        /* Style the product price paragraph */
        .card .price p {
            margin: 0;
        }

        .card img:hover {
            transform: scale(0.9);
        }

        .new-products {
            margin-top: 150px;
        }
        .rotate-image-container {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            width: 100%;
            display: flex;
            align-items: flex-end;
            justify-content: center;
        }

        .rotate-image {
            display: flex;
            align-items: flex-end;
            justify-content: center;
        }

        .rotate-image img {
            animation: rotate 4s infinite linear;
            width: 50px;
            height: 50px;
            margin-bottom: 10px;
        }

        @keyframes rotate {
            from {
                transform: rotate(0deg);
            }
            to {
                transform: rotate(360deg);
            }
        }
        .card .preview-image {
            display: none;
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 85%;
            object-fit: cover;
            z-index: 1;
        }

    </style>
    <div id="footer-content">
        <jsp:include page="/footer/footer.jsp" />
    </div>
    <script>
        // Get all product cards
        const cards = document.querySelectorAll('.card');

        // Add event listeners to each card
        cards.forEach((card) => {
            const mainImage = card.querySelector('img');
            const previewImage = card.querySelector('.preview-image');

            // Show the preview image on hover
            card.addEventListener('mouseenter', () => {
                previewImage.style.display = 'block';
                mainImage.style.opacity = '0.5';
            });

            // Hide the preview image when not hovering
            card.addEventListener('mouseleave', () => {
                previewImage.style.display = 'none';
                mainImage.style.opacity = '1';
            });
        });
    </script>
</html>
