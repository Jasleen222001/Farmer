<%-- <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.auribises.model.User"%>
<%@ page import="java.time.LocalDateTime" %>
<%@page import="com.auribises.model.User"%>
<%@page import="com.auribises.model.Crop"%>
<%@page import="com.auribises.dao.DB"%>
<!DOCTYPE html>
<html>
	<head>
		
	</head>
	<body>
		<%
		User user = (User)session.getAttribute("keyUser");
	%>
<h4>Update Crops</h4> 
<jsp:useBean id = "date" class = "java.util.Date" /> 
      <p>The date/time is <%= user.name %>
      
      <%
		Crop crop=new Crop();
      crop.userId = user._id;
      crop.crop = Double.parseDouble(request.getParameter("txtCrop"));
      crop.cropid=crop.cropId;
     
	%>
	

	
<%
DB db = new DB();
db.ProfitLoss(crop);
	%>
	<p>Profit <%= crop.crop %></p>
    
	</body>
</html>
--%>