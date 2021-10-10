


<html><head>
<link rel="stylesheet" type="text/css" href="login-register_1.css">
<script>
    var attempt = 3; // Variable to count number of attempts.
// Below function Executes on click of login button.
function validate(){
var username = document.getElementById("username").value;
var password = document.getElementById("password").value;
if ( username == "Saylee@gmail.com" && password == "formget#123"){
alert ("Login successfully");
window.location = "User.html"; // Redirecting to other page.
return false;
}
else{
attempt --;// Decrementing by one.
alert("You have left "+attempt+" attempt;");
// Disabling fields after 3 attempts.
if( attempt == 0){
document.getElementById("username").disabled = true;
document.getElementById("password").disabled = true;
document.getElementById("submit").disabled = true;
return false;
}
}
}
    </script>
    </head>

<center>
<form class="form-register" method="post" name="myform" onsubmit="return validate();">

    <div class="form-register-with-email">

        <div class="form-white-background">

            <div class="form-title-row">
                <h1>USER LOGIN FORM</h1>
            </div>
          
            <p style="color:red">         
            <%
            if(request.getAttribute("errorMsg")!=null)
            {
               out.println(request.getAttribute("errorMsg")); //error message for email or password 
            }
            %>
            </p>
       
            </br>

            <div class="form-row">
               <label>
                   <span>Email</span>
                   <input type="text" name="username" id="username" placeholder="enter email"><br><br>
               </label>
            </div>

            <div class="form-row">
               <label>
                   <span>Password</span>
                   <input type="password" name="password" id="password" placeholder="enter password"><br><br>
               </label>
            </div>

            <input type="submit" name="btn_login" value="Login"><br><br>
                  
        </div>
            
        <a href="user_registration.jsp" class="form-log-in-with-existing">You Don't have an account? <b> Register here </b></a>

   </div>

</form></center></html>