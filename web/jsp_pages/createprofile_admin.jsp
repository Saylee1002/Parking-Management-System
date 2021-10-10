
<!DOCTYPE html>
<html>

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
		
	<title>Sign up </title>

	<link rel="stylesheet" href="main.css">
	<link rel="stylesheet" type="text/css" href="login-register_1.css">
	
        <script>
        function validate()
		{
	var name=document.myform.name.value;  
        var dob=document.myform.dob.value; 
        var uadd=document.myform.uadd.value; 
        var email=document.myform.email.value;  
        var mobile=document.myform.mobile.value;

        if(name=="" || name==null){
            document.getElementById("fname").innerHTML;
            alert("Name should not be blank");
            return false;
        }
        
            else if(dob=="" ||dob==null)
        {
            document.getElementById("dateob").innerHTML;
            alert("Enter valid date of birth");
            return false;
        }
         else if(uadd=="" || uadd==null)
        {
            document.getElementById("add").innerHTML;
            alert("Address should not be blank");
            return false;
        }
         else if(email=="" || email==null || email.indexOf('@')<=0 || email.charAt(email.length-4)!='.'){  
        document.getElementById("email").innerHTML;
         alert("Invalid email id");
         return false;  
         }
        else if(mobile=="" || mobile==null || isNaN(mobile) || mobile.length<10 || mobile.length>10){  
        document.getElementById("mobileno").innerHTML;
         alert("Mobile no. must be of 10 digits");
         return false;  
         }
        else{  
         return true;  
  }}
                 
                      
            	</script>	


</head>

<center>     
<body>

    <div class="main-content">

        <form class="form-register" name="myform" method="post" onsubmit="return validate();">

            <div class="form-register-with-email">

                <div class="form-white-background">

                    <div class="form-title-row">
                        <h1>CREATE PROFILE</h1>
                    </div>
				   
					<p style="color:green">				   		
					<%
					if(request.getAttribute("successMsg")!=null)
					{
						out.println(request.getAttribute("successMsg")); //register success message
					}
					%>
					</p>
				   
				
                                   
                   

                    <div class="form-row">
                        <label>
                            <span>Full Name</span>
                            <input type="text" name="name" id="fname" placeholder="enter fullname" ><br><br>
                        </label>
                    </div>

                    <div class="form-row">
                        <label>
                            <span>Date of Birth</span>
                            <input type="dob" name="dob" id="dateob" placeholder="enter dob" ><br><br>
                        </label>
                    </div>

                    <div class="form-row">
                        <label>
                            <span>Address</span>
                            <input type="address" name="uadd" id="add" placeholder="Enter address"><br><br>
                        </label>
                    </div>
                                   
                    <div class="form-row">
                        <label>
                            <span>Email Id</span>
                            <input type="email" name="email" id="email" placeholder="Enter email id"><br><br>
                        </label>
                    </div>
                                   
                    <div class="form-row">
                        <label>
                            <span>Mobile No</span>
                            <input type="mobile" name="mobile" id="mobileno" placeholder="Enter mobile"><br><br>
                        </label>
                    </div>
   
              	<input type="submit" name="btn_submit" value="SUBMIT"><br><br>
                    </div>
            </div>
        </form>
        </div>
    </body>
</center>
</html>