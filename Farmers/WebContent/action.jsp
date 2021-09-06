<%@page import="com.jasleen.dao.DB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action</title>
</head>
<body>

	<center>

	<%
		DB db = new DB();
	
		String action = request.getParameter("action");
		String wheatId = request.getParameter("wheatid");
		String wheat = request.getParameter("wheat");
		
		if(action.equals("delete")){
			// delete the wheat record
			db.deleteWheat(wheatId);
	%>
			<h3>Wheat Record Deleted</h3>
	<%			
		}else{
			
	%>	
		<h3>UPDATE WHEAT RECORD</h3>	
		<form action="" method="get">
			<input type="text" name="txtwheat" value="<%=wheat%>">
			<input type="submit" value="UPDATE WHEAT">
		</form>
	<%			// update the fever record
		}
	%>
	</center>

</body>
</html>