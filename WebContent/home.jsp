<%@ page import="com.auribises.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>


<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta name="description" content="">
		<meta name="author" content="Hakim El Hattab">

		<meta name="viewport" content="width=460, user-scalable=no" />
        
		<link href='https://fonts.googleapis.com/css?family=Roboto:400,500' rel='stylesheet' type='text/css'>
		
<!------ Include the above in your HEAD tag ---------->
<meta charset="UTF-8">
<title>Farmers welcome to Crop logs application</title>
<style>
body {
  background-image: url('https://image.freepik.com/free-photo/bale-agriculture-autumn-background-agricultural_121-72114.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}

</style>
</head>
<body>
<script src="script.js"></script>
<%
		User user = (User)session.getAttribute("keyUser");
	%>

<div class="container">
              <div class="row">
                <div class="col-xs-12 ">
                  <nav>
                    <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
                      <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true" style="color: #dec8ab">Home</a>
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
<p class="project-title">A new Farmer can refer these sites for details related to farming</p>

		

		<div class="credits">
			<font size="80px"><a href="https://www.fb.org/newsroom/fast-facts">Source related to Agriculture</a>
			<font size="80px"><a href="https://youtu.be/NCp93xbSwWM" target="_blank">Video related to Agriculture</a>
			
		</div>

		<style type="text/css" media="screen">
			.project-title {
				position: absolute;
				left: 25px;
				bottom: 8px;

				font-size: 16px;
				color:#d60000;
			}

			.credits {
				position: absolute;
				right: 80px;
				bottom: 25px;
				font-size: 15px;
				z-index: 20;
				color: #d60000;
				vertical-align: middle;
			}

			.credits * + * {
				margin-left: 15px;
			}

			.credits a {
				padding: 8px 10px;
				color:#d60000;
				border: 2px solid #999;
				text-decoration: none;
			}

			.credits a:hover {
				border-color:#d60000;
				color: #222;
			}

			@media screen and (max-width: 1040px) {
				.project-title {
					display: none;
				}

				.credits {
					width: 100%;
					left: 0;
					right: auto;
					bottom: 0;
					padding: 100px 0;
					background: #d60000;
					text-align: center;
				}

				.credits a {
					display: inline-block;
					margin-top: 7px;
					margin-bottom: 7px;
				}
			}
		</style>

		<script>
			var _gaq = [['_setAccount', 'UA-15240703-1'], ['_trackPageview']];
			(function(d, t) {
			var g = d.createElement(t),
			    s = d.getElementsByTagName(t)[0];
			g.async = true;
			g.src = ('https:' == location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
			s.parentNode.insertBefore(g, s);
			})(document, 'script');
		</script>




</body>
</html>