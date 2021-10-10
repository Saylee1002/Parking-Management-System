
<html>
<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
		
	<title>PARKING AREA DETAILS</title>

	<link rel="stylesheet" href="main.css">
	<link rel="stylesheet" href="login-register_1.css">
	 <script>
        function validate()
		{
	var parkid=document.myform.parkid.value;  
        var r=document.myform.r.value; 
        var add=document.myform.add.value; 
        var nos=document.myform.nos.value;  
        var nof=document.myform.nof.value;
        var ts=document.myform.ts.value;

        if(parkid=="" || parkid==null || isNaN(parkid)){
            document.getElementById("id").innerHTML;
            alert("Parking Id should not be blank & It should be in digits ");
            return false;
        }
            else if(r=="" ||r==null || isNaN(r))
        {
            document.getElementById("rate").innerHTML;
            alert("Rate should not be empty & only numbers allowed");
            return false;
        }
         else if(add=="" || add==null)
        {
            document.getElementById("address").innerHTML;
            alert("Address should not be blank");
            return false;
        }
         else if(nos=="" ||nos==null || isNaN(nos) ){  
        document.getElementById("nslots").innerHTML;
         alert("No. of slots should not be blank & only numbers allowed ");
         return false;  
         }
        else if(nof=="" ||nof==null || isNaN(nof) ){  
        document.getElementById("nfloors").innerHTML;
         alert("no. of floors should not be blank & only numbers allowed ");
         return false;  
         }
         else if(ts=="" ||ts==null || isNaN(ts) ){  
        document.getElementById("tslots").innerHTML;
         alert("Total slots should not be blank & only numbers allowed ");
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
                        <h1>REGISTER PARKING AREA</h1>
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
                            <span>Parking id</span>
                            <input type="id" name="parkid" id="id" placeholder="enter Parking Area Id">
                        </label>
                    </div>
		    <div class="form-row">
                        <label>
                            <span>Rate</span>
                            <input type="r" name="r" id="rate" placeholder="enter Rate">
                        </label>
                    </div>

                    <div class="form-row">
                        <label>
                            <span>Address</span>
                            <input type="add" name="add" id="address" placeholder="enter Address">
                    </div>     
                    <div class="form-row">
                        <label>
                            <span>No. of Slots</span>
                            <input type="nos" name="nos" id="nslots" placeholder="enter No of Slots">
                        </label>
                    </div>
                     <div class="form-row">
                        <label>
                            <span>No of Floors</span>
                            <input type="nof" name="nof" id="nfloors" placeholder="enter No of Floors">
                        </label>
                    </div>
                                        
                     <div class="form-row">
                        <label>
                            <span>Total Slots</span>
                            <input type="ts" name="ts" id="tslots" placeholder="enter Total Slots">
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


