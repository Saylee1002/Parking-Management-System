<!DOCTYPE html>
<html>

<head>

	<title>Welcome : <%=session.getAttribute("login")%></title>

	<link rel="stylesheet" href="main.css">
	<link rel="stylesheet" href="login-register_1.css">

</head>

<body>

    <div class="main-content">
	
	<center>
	
	<%
	if(session.getAttribute("login")==null || session.getAttribute("login")==" ") //check condition unauthorize user not direct access welcome.jsp page
	{
		response.sendRedirect("index.jsp"); 
	}
	%>
	
	<h1> Welcome, <%=session.getAttribute("login")%> </h1>

	<h2><a href="logout.jsp">Logout</a></h2>
    
	</center>
		
    </div>

</body>

</html>
