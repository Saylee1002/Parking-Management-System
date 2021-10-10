<%@ page import="java.sql.*"%>

<%
   String email=request.getParameter("email");
   String pass1=request.getParameter("pass");
   String cpass1=request.getParameter("cpass");
   
    if(pass1.equals(cpass1)){
    try
    {
        Class.forName("oracle.jdbc.driver.OracleDriver"); //load driver
        Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Saylee1002");
        PreparedStatement ps=conn.prepareStatement("insert into a_register12(email,pass1,cpass1) values(?,?,?)");
        ps.setString(1,email);
        ps.setString(2,pass1);
        ps.setString(3,cpass1);
       int x=ps.executeUpdate();
        if(x!=0)
        {
            out.print("Signup Successfull");
        }else{
            out.print("Something went wrong...");
        }
    }catch(Exception e)
    {
        out.print(e);
    }
    }else{
        out.print("Password not matching");
    }
    
  %>

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
               var email=document.myform.email.value;
               var pass=document.myform.pass.value;
               var cpass=document.myform.cpass.value;
               
               
               if(email=="" || email==null || email.indexOf('@')<=0 || email.charAt(email.length-4)!='.'){
                   document.getElementById("email").innerHTML;
                    alert("Invalid email id");
                    return false;  
               }
               else if(pass=="" || pass==null || pass.length<6 || pass.length>12)
               {
                   document.getElementById("passw").innerHTML;
                   alert("Password should not be blank or password length should be between 6 to 12 ");
                   return false;
               }
               else if(cpass=="" || cpass==null || cpass!=pass){
                   document.getElementById("cpassword").innerHTML;
                   alert("confirm password should be similar as password or it should not be blank");
                   return false;
               }
               else
               {
                   return true;
               }
            }
</script>

</head>
<center>  
    

    <div class="main-content">

        <form class="form-register" name="myform" method="post" onsubmit="return validate();">

            <div class="form-register-with-email">

                <div class="form-white-background">

                    <div class="form-title-row">
                        <h1>ADMIN SIGN UP FORM</h1>
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
                            <span>Email</span>
                            <input type="email" name="email" id="email" placeholder="enter email"  ><br><br>
                        </label>
                    </div>

                    <div class="form-row">
                        <label>
                            <span>Password</span>
                            <input type="password" name="pass" id="passw" placeholder="enter password"><br><br>
                        </label>
                    </div>

                    <div class="form-row">
                        <label>
                            <span>Confirm Password</span>
                            <input type="password" name="cpass" id="cpassword" placeholder="confirm password" ><br><br>
                        </label>
                    </div>
                             <input type="submit" name="btn_register" value="Register" ><br><br><br>
					
                </div>
				
                <a href="admin_login_2.jsp" class="form-log-in-with-existing">Already have an account? <b> Login here </b></a>
            </div>
            
        </form>
    </div>

</center>

</html>
