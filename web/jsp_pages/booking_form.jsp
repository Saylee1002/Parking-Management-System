<html>

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
		
	<title>Booking slot form</title>

	<link rel="stylesheet" href="main.css">
	<link rel="stylesheet" type="text/css" href="login-register_1.css">
	
        <script>
            function validate()
            {
                var bookid=document.myform.bookid.value;
                var parkid=document.myform.parkid.value;
                var vno=document.myform.vno.value;
                var i=document.myform.i.value;
                var o=document.myform.o.value;
               
                if(bookid=="" || bookid==null || isNaN(bookid)){
            document.getElementById("booki").innerHTML;
            alert("Booking Id should not be blank & It should be in digits ");
            return false;
        }
        else if(parkid=="" || parkid==null || isNaN(parkid)){
            document.getElementById("park").innerHTML;
            alert("Parking Id should not be blank & It should be in digits ");
            return false;
        }
        else if(vno=="" || vno== null || isNan(vno)){
            document.getElementById("vnp").innerHTML;
            alert("Vehicle no. plate should not be blank & It should be in digits ");
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
                        <h1>BOOKING DETAILS</h1>
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
                            <span>Booking id</span>
                            <input type="bookid" name="bookid" id="booki" placeholder="enter Booking Id" required><br><br>
                        </label>
                    </div>
		    <div class="form-row">
                        <label>
                            <span>Parking Area Id&nbsp;&nbsp;</span>
                            <input type="parkid" name="parkid" id="park" placeholder="Enter Parking Area Id" required><br><br>
                        </label>
                    </div>

                    <div class="form-row">
                        <label>
                            <span>Vehicle No. Plate</span>
                            <input type="vno" name="vno" id="vnp" placeholder="enter Vehicle No. Plate" required><br><br>
                        </label>
                    </div>     
                    <div class="form-row">
                        <label for="appt">
                            <span>In Time</span>
                            <input type="time" name="i" id="intime"  min="9:00" max="23:00" placeholder="Enter intime" required><br><br>
                        </label>
                    </div>
                     <div class="form-row">
                        <label for="appt">
                            <span>Out Time</span>
                            <input type="time" name="o" id="outime"  min="09:00" max="23:00" placeholder="Enter outtime" required><br><br><br><br>
                        </label>
                    </div>
                    
                    <input type="submit" name="btn_submit" value="SUBMIT"><br><br><br>
					
                </div>
	
            </div>
</center>
        </form>

    </div>

</body>

</html>
