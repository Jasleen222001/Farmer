 <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.auribises.model.User"%>
<%@ page import="java.time.LocalDateTime" %>
<%@page import="com.auribises.model.User"%>
<%@page import="com.auribises.model.Crop"%>
<%@page import="com.auribises.dao.DB"%>
<!DOCTYPE html>
<html lang="en">
<meta charset="UTF-8">
<title>My Title</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
</style>
<style>
body {background-color: #ffffe0;}
</style>
<script src=""></script>
<body >

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">



	<center>
		<title>DATA ENTERED</title>
	</head>
	
	<body>
	<center>
	<img src="https://blog.machinefinder.com/wp-content/uploads/2013/11/Grain-Storage-1.jpg"  style="width:50%" style="height:50%">
	
		<%
		User user = (User)session.getAttribute("keyUser");
	%>
<h4>Update Crops</h4> 

      
      <%
		Crop crop=new Crop();
      crop.userId = user._id;
      crop.crop = Double.parseDouble(request.getParameter("txtCrop"));
      
	%>
	

	
<%

	%>
	<p>Your Crop has been updated Successfully: <%= crop.crop %></p>
    <form action="viewcrops.jsp" method="get">
			
		</form>
	</body>
</html>
