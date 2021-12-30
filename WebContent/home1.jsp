<%@ page import="com.auribises.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Welcome</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <head>
	<title>Animated Dynamic Form</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
</head>
  
  <style>
  div {
    font-style: oblique;
   font-family: "Times New Roman", Times, serif;
 
  background-repeat: no-repeat;
   background-attachment: fixed;
 
   
  background-size: 100% 100%;
}
  body {
  font-weight: bold;
  font-family: "Times New Roman", Times, serif;
  background-image: url('http://wallpapercave.com/wp/wp1886370.jpg');
  background-repeat: no-repeat;
   background-attachment: fixed;
 
   
  background-size: 100% 100%;
}
  
  </style>
</head>
<body>
<body class="w3-light-grey w3-content" style="max-width:1600px">

<div class="w3-top" >
  <div class="w3-bar w3-green w3-card" >
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="style2.html" class="w3-bar-item w3-button w3-padding-large">HOME</a>
    <a href="crops.html" class="w3-bar-item w3-button w3-padding-large w3-hide-small">CROP</a>
    <a href="about.html" class="w3-bar-item w3-button w3-padding-large w3-hide-small">ABOUT</a>
    <a href="Logout" class="w3-bar-item w3-button w3-padding-large w3-hide-small">LOGOUT</a>
    
    <a href="javascript:void(0)" class="w3-padding-large w3-hover-red w3-hide-small w3-right"><i class="fa fa-search"></i></a>
  </div>
</div>

	<%
		User user = (User)session.getAttribute("keyUser");
	%>
<div class="container h-200" style="width:3000px">
	<div class="d-flex justify-content-center">
		<div class="card mt-5 col-md-4 animated bounceInDown myForm">
			<div class="card-header">
				<h4>Welcome Home, Dear <%= user.name %></h4>
			</div>
	<center>
	<div class="card-body">
			
					
							
						
	
		<h3>Log Your Crop Details Here</h3>
		<a href="viewcrops.jsp">VIEW ALL CROP RECORDS</a>
		<br><br>
			<div class="input-group mt-3">
			<div class="card-body" style="width:400px">
				
					<div id="dynamic_container">
						
							
						<div class="input-group mt-5 "style="width:400px">
							
							
		<form action="addcrop.jsp" method="get">
		<div class="form-group" >
		<label for="text">Enter Quantity of crops harvested in kg:</label>
		<br>
			<input type="text" name="txtCrop" val="eg: 55kg"style="color:#000080" placeholder="Enter Quantity" required>
			<input type="submit" value="LOG CROP">
			 
			 </form>
			
			
		<br>
		
		<table>
		</table>
		
	</center>
</div>
</div>
</div>
</body>
</html>