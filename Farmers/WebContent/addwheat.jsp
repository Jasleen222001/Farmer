<%@page import="com.jasleen.dao.DB"%>
<%@page import="com.jasleen.model.Wheat"%>
<%@page import="com.jasleen.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Fever</title>
</head>
<body>

	<%
		User user = (User)session.getAttribute("keyUser");
	%>

	<center>
		<h4>Welcome to  Wheat Records of Farmers</h4> 
		<b><%= user.name %></b>
	

	<%
		
		Wheat wheat = new Wheat();
		wheat.userId = user._id;
		wheat.wheat = Double.parseDouble(request.getParameter("txtWheat"));
		
		DB db = new DB();
		db.logWheat(wheat);
		
	%>
	
	<p>Your harvested wheat has been Recorded Successfully: <%= wheat.wheat %></p>
	
	
	
	</center>
	

</body>
</html>