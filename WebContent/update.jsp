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
	<img src="http://www.wur.nl/upload/809425f4-7300-4fcf-a873-87a07e57c92b_shutterstock_482856469.jpg"  style="width:50%" style="height:50%">
	
	<%
	DB db = new DB();
	
	
	String action = request.getParameter("action");
	Double crop=Double.parseDouble(request.getParameter("crop"));
		String cropId = request.getParameter("cropId");
		
		%>
		
		
			
			
			
				<h3>UPDATE CROP</h3>	
		<form action="update1.jsp" method="get">
			<input type="text" name="txtCrop" value="<%= crop %>">
			<input type="submit" value="UPDATE CROP">
			
		</form>
	
</center>	
</body>
</html>