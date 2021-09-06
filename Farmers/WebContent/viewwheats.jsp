<%@page import="com.jasleen.model.Wheat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.jasleen.dao.DB"%>
<%@page import="com.jasleen.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fevers</title>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body>

	<%
		User user = (User)session.getAttribute("keyUser");
		DB db = new DB();
	%>


	
	<div class="container">
  <h2>harvested wheat Record</h2>
  <p>Dear <%= user.name%>, your wheat records till date: </p>            
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Date Time</th>
        <th>Wheat</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
    
   	   <%
			ArrayList<Wheat> wheats = db.fetchWheats(user._id);
		
			for(Wheat wheat : wheats){
				
		%>
    
	      <tr>
	        <td><%= wheat.dateTimeStamp %></td>
	        <td><%= wheat.wheat %></td>
	        <td><a href='action.jsp?action=update&wheatid=<%=wheat._id%>&wheat=<%=wheat.wheat%>'>UPDATE</a>  <a href='action.jsp?action=delete&wheatid=<%=wheat._id%>'>DELETE</a></td>
	      </tr>
	      
      	<%			
				
			}
		%>
    </tbody>
  </table>
</div>
	

</body>
</html>