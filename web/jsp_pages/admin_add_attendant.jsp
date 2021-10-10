
<html>
<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
		
	<title>Add Attendant details</title>

	<link rel="stylesheet" href="main.css">
	<link rel="stylesheet" href="login-register_1.css">
	
        <script>
            function validate()
            {
              var name=document.myform.name.value; 
              var dob=document.myform.dob.value; 
              var id=document.myform.id.value;
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
        else if(id=="" ||id==null || isNaN(id))
        {
            document.getElementById("idno").innerHTML;
            alert("Id should not be empty & only numbers allowed");
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
  }
         
              
              
              
            }
        </script>
</head>

<center>
<body>

    <div class="main-content">

        <form class="form-register" name="myform" method="post" onsubmit="return validate();">

            <div class="form-register-with-email">

                <div class="form-white-background">

                    <div class="form-title-row">
                        <h1>ADD ATTENDANT</h1>
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
                            <input type="text" name="name" id="fname" placeholder="enter Full Name">
                        </label>
                    </div>
		    <div class="form-row">
                        <label>
                            <span>Date of Birth</span>
                            <input type="dob" name="dob" id="dateob" placeholder="enter Date of Birth">
                        </label>
                    </div>

                    <div class="form-row">
                        <LABEL>
                                <span>Id Proof Type</span>
                                <select id="idptype" name="Id Proof Type">
                                 <option value="acard">Addhaar Card</option>
                                 <option value="pcard">Pan Card</option>
                                 <option value="vcard">Voter Id</option>
                                 <option value="dlicense">Driving License</option>
                                </select>
                        </label>
                    </div>     
                                        
                    <div class="form-row">
                        <label>
                            <span>Id No.</span>
                            <input type="id" name="id" id="idno" placeholder="enter Id No.">
                        </label>
                    </div>
                     <div class="form-row">
                        <label>
                            <span>Mobile No.</span>
                            <input type="mobile" name="mobile" id="mobileno" placeholder="enter Mobile No.">
                        </label>
                    </div>
                                        
                     <div class="form-row">
                        <label>
                            <span>Email Id</span>
                            <input type="email" name="email" id="email" placeholder="enter Email Id">
                        </label>
                    </div>
                    
                    <input type="submit" name="btn_submit" value="SUBMIT"><br><br><br>
					
                </div>
	
            </div>

        </form>

    </div>

</body>
</center>
</html>


