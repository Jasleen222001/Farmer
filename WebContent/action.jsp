
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
	<img src="https://researchmatters.in/sites/default/files/DSC_2517.JPG"  style="width:50%" style="height:30%">
	<%
		User user = (User)session.getAttribute("keyUser");
	%>
	
		
<div class="w3-container w3-center w3-teal" style="width:50%" style="height:50%">
      <h2><p><%= user.name %></p></h2>
       </div>
     

	<%
		DB db = new DB();
	
		String action = request.getParameter("action");
		String cropId = request.getParameter("cropid");
		String crop = request.getParameter("crop");
		%>
		<% 
		
			db.deleteCrop(cropId);
		
	%>
			<h3>Crop Record Deleted</h3>
	
	
</center>	
</body>
</html>