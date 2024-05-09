/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


           $(document).ready(function () {
                $('#myForm').submit(function (e) {
                    e.preventDefault();
                    var UserID = $('#UserID').val();
                    var Firstname = $('#Firstname').val();
                    var Middlename = $('#Middlename').val();
                    var Lastname = $('#Lastname').val();
                    var UserRole = $('#UserRole').val();

                    var UserIDRegex = /^[0-9]{5}$/;
                    if (!UserIDRegex.test(UserID)) {    
                        alert('User ID should be at least 5 characters long');
                        return false;
                    } else if (parseInt(UserID) <= 0) {
                        alert("User ID must be greater than 0.");
                        return false;
                    }

                    var FirstnameRegex = /^[a-zA-Z\s]+$/;
                    if (!FirstnameRegex.test(Firstname)) {
                        alert('First name should be at least 2 characters long and can only contain letters.');
                        return false;
                    }

                    if (Middlename !== '') {
                        var MiddlenameRegex = /^[a-zA-Z\s]+$/;
                        if (!MiddlenameRegex.test(Middlename)) {
                            alert('Middle name should only contain letters.');
                            return false;
                        }
                    }

                    var LastnameRegex = /^[a-zA-Z\s]+$/;
                    if (!LastnameRegex.test(Lastname)) {
                        alert('Last name should be at least 2 characters long and can only contain letters.');
                        return false;
                    }

                    var UserRoleRegex = /^[a-zA-Z\s]+$/;
                    if (!UserRoleRegex.test(UserRole)) {
                        alert('User Role can contain any characters.');
                        return false;
                    }
                    window.location.href = 'User.jsp';
                });
            });

            