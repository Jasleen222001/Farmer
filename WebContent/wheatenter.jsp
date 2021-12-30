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
<title>Wheats</title>

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
              <div class="row">
                <div class="col-xs-12 ">
                  <nav>
                    <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
                      <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Home</a>
                      <a class="nav-item nav-link" id="nav-crop-tab" data-toggle="tab" href="crops.html" role="tab" aria-controls="nav-crop" aria-selected="true">Crops</a>
                      
                      <a class="nav-item nav-link" id="nav-about-tab" data-toggle="tab" href="#nav-about" role="tab" aria-controls="nav-contact" aria-selected="false">About</a>
                      <a class="nav-item nav-link" id="nav-logout-tab" data-toggle="tab" href="#nav-logout" role="tab" aria-controls="nav-about" aria-selected="false">Logout</a>
                    </div>
                   
                  </nav>
                  <div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
                    Content farm. Jump to navigation Jump to search. In the context of the World Wide Web, a content farm (or content mill) is a company that employs large numbers of freelance writers to generate large amounts of textual content which is specifically designed to satisfy algorithms for maximal retrieval by automated search engines.
</div>
</div>
</div>
</div>


<h3>Log Your Harvested crop  Details are Here</h3>
		<a href="viewcrops.html">VIEW ALL CROP RECORDS</a>
		<br><br>

<form action="addcrops.jsp" method="get">
			<input type="text" name="txtcrop" value="eg: 55">
			<input type="submit" value="LOG CROP">
		</form>


</body>
</html>