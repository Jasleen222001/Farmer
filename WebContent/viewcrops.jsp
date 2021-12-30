<%@page import="com.auribises.model.Crop"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.auribises.dao.DB"%>
<%@page import="com.auribises.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Crops</title>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style>
body {
  background:  url("https://images.pexels.com/photos/2100002/pexels-photo-2100002.jpeg?cs=srgb&dl=agriculture-countryside-crop-2100002.jpg&fm=jpg") no-repeat fixed center;
}
</style>
</head>
<body>

	<%
		User user = (User)session.getAttribute("keyUser");
		DB db = new DB();
	%>

<%-- 	<center>
		<h3>All Fevers </h3>
		
		<%
			ArrayList<Fever> fevers = db.fetchFevers(user._id);
		
			for(Fever fever : fevers){
				
		%>
			
			Fever: <%= fever.fever %>
			<br/>
			
		<%			
				
			}
		%>
		
	</center> --%>
	
	<div class="container">
  <h2>Crop Record</h2>
  <p>Dear <%= user.name%>, your crop records till date: </p>            
  <table class="table table-striped" border="1" bgcolor="#fff8dc">
    <thead>
      <tr>
        <th>Date Time</th>
        <th>Crop</th>
        
        <th>Action</th>
        
        
        
       
        
      </tr>
    </thead>
    <tbody>
    
   	   <%
			ArrayList<Crop> crops = db.fetchCrops(user._id);
		
			for(Crop crop : crops){
				
		%>
    
	      <tr>
	        <td><%= crop.dateTimeStamp %></td>
	        <td><%= crop.crop %></td>
	        
	        <td><a href='update.jsp?action=update&cropid=<%=crop._id%>&crop=<%=crop.crop%>'>UPDATE</a>  <a href='action.jsp?action=delete&cropid=<%=crop._id%>'>DELETE</a></td>
	        
	      </tr>
	      
      	<%			
				
			}
		%>
    </tbody>
  </table>
</div>
	

</body>
</html>