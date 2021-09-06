<%@ page import="com.jasleen.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>

	<%
		User user = (User)session.getAttribute("keyUser");
	%>

	<center>
		<h3>Welcome Home, Dear <%= user.name %></h3>
		<h4><%= user.email %></h4>
	
		<h3>Log Your Harvested crop  Details are Here</h3>
		<a href="viewwheats.jsp">VIEW ALL WHEAT RECORDS</a>
		<br><br>
		
		<form action="addwheat.jsp" method="get">
			<input type="text" name="txtwheat" val="eg: 55">
			<input type="submit" value="LOG WHEAT">
		</form>
		
		<br>
		
		<table>
		</table>
		
	</center>

</body>
</html>