/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


var characterOnly = /^[A-Za-z\s]+$/;
        var number = /^[0-9]+$/;
        var alphanumeric = /^[a-zA-Z0-9\s]+$/;
        var decimal = /^[0-9]*[.][0-9]+$/;

        function formValidation() {
            var productID = $("#productID").val();
            console.log("Product ID: " + productID);
           if (!productID.match(number)) {
                alert("Product ID must contain numbers only.");
                return false;
              } else if (productID.length !== 5 || isNaN(parseInt(productID)) || !Number.isInteger(Number(productID))) {
                alert("Product ID must be a 5-digit integer.");
                return false;
              }
            var productName = $("#productName").val();
            console.log("Product Name: " + productName);
            if (!productName.match(characterOnly)) {
                alert("Product Name must contain characters only.");
                return false;
            } else if (productName.length < 3) {
                alert("Product Name must be 3 or more characters.");
                return false;
            }

            var productDescription = $("#productDescription").val();
            console.log("Description: " + productDescription);
            if (!productDescription.match(characterOnly)) {
                alert("Description must contain characters only.");
                return false;
            } else if (productDescription.length < 3) {
                alert("Description must be 3 or more characters.");
                return false;
            }
            
            var productSize = $("#productSize").val();
                console.log("Size: " + productSize);
                if (!productSize.match(alphanumeric)) {
                    alert("Product Size must be alphanumeric");
                    return false;
                }

            var productPrice = $("#productPrice").val();
            console.log("Price: " + productPrice);
            if (!productPrice.match(decimal) && !productPrice.match(number)) {
                alert("Price must contain numbers only.");
                return false;
            } else if (parseFloat(productPrice) <= 0.00) {
                alert("Price must be greater than 0.00");
                return false;
            }

            var productQuantity = $("#productQuantity").val();
            console.log("Quantity: " + productQuantity);
            if (!productQuantity.match(number)) {
                alert("Quantity must contain numbers only.");
                return false;
            } else if (parseInt(productQuantity) <= 0) {
                alert("Quantity must be greater than 0.");
                return false;
            }

            return true;
        }