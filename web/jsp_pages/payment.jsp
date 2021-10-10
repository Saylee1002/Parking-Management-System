<%@ page import="java.sql.*" %> 


<html>

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
		
	<title>Payment details </title>

	<link rel="stylesheet" href="main.css">
	<link rel="stylesheet" href="login-register_1.css">
	
	<!--javascript for payment details form validation-->
	<script>	
	
		function validate()
		{
			var chn= document.myform.chn.value; 
			var cn= document.myform.cn.value;
			var expiryDate= document.myform.expiryDate.value;
			var cvv=document.myform.cvv.value; 
			
			
			if(chn=='' || chn==null) 
            {
                        document.getElementById("cardh").innerHTML;
			alert("Enter Card Holder Name Alphabet Only....!");
                        return false;                    
            }
			else if(cn=="" || cn==null || isNaN(cn) || cn.length<15)
                         {
                             document.getElementById("cardno").innerHTML;
                             alert("Not a valid credit card or debit card number or It should not be blank!");
                            return false;
                         }
                        
			else if (expiryDate=="" || expiryDate==null )
                        {
                            document.getElementById("expiry").innerHTML;
                         alert("Not a valid expiry date or it should not be blank");
                         return false;
                        }
                           
			else if(cvv=='' || cvv==null ||cvv.length<3 || isNaN(cvv)) 
            {                   
                                document.getElementById("cvv1").innerHTML;
				alert("cvv should not be blank");
                                return false;                    
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
                        <h1>PAYMENT DETAILS</h1>
                    </div>
				   
					<p style="color:green">				   		
					<%
					if(request.getAttribute("successMsg")!=null)
					{
						out.println(request.getAttribute("successMsg")); //payment done success message
					}
					%>
					</p>
				   
				   </br>
                             
                    <div class="form-row">
                        <label>
                            <span>Choose payment method</span>
                            <select>
                           
                            <option value="Select">Choose payment method</option>
                            <option value="credit card">CREDIT CARD</option>
                            <option value="Debit card">DEBIT CARD</option>
                            <option value="Cash">CASH</option>
                            </select><br><br>
                        </label>
                    </div>
                  
                    <div class="form-row">
                        <label>
                            <span>Card Holder Name</span>
                            <input type="text" name="chn" id="cardh" placeholder="enter card holder name"><br><br>
                        </label>
                    </div>
		    <div class="form-row">
                        <label>
                            <span>Card No</span>
                            <input type="cn" name="cn" id="cardno" placeholder="enter Card no"><br><br>
                        </label>
                    </div>

                    <div class="form-row">
                        <label>
                            <span>Expiry date</span>
                            <input type="date" name="expiryDate" id="expiry" placeholder="enter expiry date"><br><br>
                        </label>
                    </div>

                    <div class="form-row">
                        <label>
                            <span>CVC</span>
                            <input type="cvv" name="cvv" id="cvv1" placeholder="enter CVV"><br><br><br><br>
                        </label>
                    </div>

                                   <input type="submit" name="btn_submit" value="Submit"><br><br><br>
					
                
</center>
        </form>

    </div>

</body>

</html>