
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
	<img src="https://media.istockphoto.com/photos/money-bag-on-the-background-of-agricultural-crops-in-the-hand-of-the-picture-id1212035778?k=6&m=1212035778&s=170667a&w=0&h=cFUaX_lC0KOqObNrmg4YcVJ0yTo0BAxRIyOQUM7qBWU="  style="width:50%" style="height:50%">
	<%
		User user = (User)session.getAttribute("keyUser");
	%>
	
		
<div class="w3-container w3-center w3-teal" style="width:50%" style="height:50%">
      <h2><p><%= user.name %></p></h2>
       </div>
      <%
		Crop crop=new Crop();
      crop.userId = user._id;
      crop.crop = Double.parseDouble(request.getParameter("txtCrop"));
	%>
	</div>

<div class="w3-container w3-center w3-teal" style="width:50%" style="height:50%">	
<%
DB db = new DB();
db.logCrop(crop);
	%>
		<h2><p>Your Crop has been Recorded Successfully: <%= crop.crop %></p></h2>
    </div>
    <center>
	</body>
</html>