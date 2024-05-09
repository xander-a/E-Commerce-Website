var Format = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_])[A-Za-z\d\W_]{8,}$/;

function formValidation() {
    
    var username = $("#username").val();
    console.log("username: " + username);
    if (username.length < 8 || username.length > 16) {
        alert("Username must be 8-16 characters long.");
        return false;
    } else if(!username.match(Format)){
        alert('Username must be alphanumeric');
        return false;
    }

    var password = $("#password").val();
    if (username !== password) {
        alert('Username and Password do not match.');
          return false;
          }
              return true;
}




