<?xml version="1.0" encoding="ISO-8859-1" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page session="false"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="com.fridgetodish.Pojo.User"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>



<head>
<title>Response Curves</title>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="viewport" content="width=device-width, initial-scale=1"></meta>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
<!-- <link rel="stylesheet" href="http://code.jquery.com/mobile/1.1.0/jquery.mobile-1.1.0.min.css" />
 -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
 -->
<!-- <link href="https://opensource.keycdn.com/fontawesome/4.7.0/font-awesome.min.css" rel="stylesheet" />
 -->
<link href="resource/css/bootstrap.min.css" rel="stylesheet" />

<link rel="stylesheet" href="resource/css/base.css">  
 <link rel="stylesheet" href="resource/css/main.css">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

    <%@page import="java.io.File"%>
    <%@page import="java.io.IOException"%>
    <%@page import="java.awt.image.BufferedImage"%>
    <%@page import="javax.imageio.ImageIO"%>
    <%@page import="java.io.ByteArrayOutputStream"%>

    <%@page import="java.math.BigInteger"%>
    <%@page import="javax.xml.bind.DatatypeConverter"%>
    <%@page import="java.awt.image.BufferedImage"%>
   
    <%@page import="java.awt.image.BufferedImage"%>
<link href="resource/css/metisMenu.min.css" rel="stylesheet" />
<!-- Custom CSS -->
<link href="resource/css/sb-admin-2.css" rel="stylesheet" />
<link href="resource/css/font-awesome.css" rel="stylesheet" />
<!-- Custom Fonts -->
<link href="resource/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<style type="text/css">
#wrapper {
	/* background: RGBA(24, 161, 196, 0.2); */
	/* background: url('/CAT-APP-PROJECT/resources/images/bgLight.jpg') repeat */
		center center fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	background-size: cover;
	-o-background-size: cover;
}
.testdiv{


    width: 600px;
    height: 400px;
    overflow: scroll;


}
</style>
<script type="text/javascript">

</script>
</head>
<body>

<!-- header 
   ================================================== -->
   <header>

   	<div class="row">

   		<div class="logo">
	         <a href="index.html"></a>
	      </div>

	   	<nav id="main-nav-wrap">
				<ul class="main-navigation">
					<li class="highlight with-sep"><a href="LoadDataForHome" title="">Home</a></li>
					<li><a class="smoothscroll"  href="#process" title="">Profile</a></li>
					<li><a class=""  href="LogoutServlet" title="">Logout</a></li>									
									
				</ul>
			</nav>

			<a class="menu-toggle" href="#"><span>Menu</span></a>
   		
   	</div>   	
   	
	
   </header> <!-- /header -->


	<div id="wrapper">
		
					<div class="row">
						<div class="col-lg-4" style="margin-top:120px">
							<div class="panel panel-primary">
								<div class="panel-heading">Welcome to Ingredient Selection Wizard</div>
								<!-- .panel-heading -->
								<form action="FetchRecipesServlet" method="post"
								class="">
								<div class="panel-body">
									<div class="panel-group" id="accordion">
										<div class="panel panel-primary">
											<div class="panel-heading">
												<h4 class="panel-title">

													<a data-toggle="collapse" data-parent="#accordion"
														href="#collapseOne" id="sac">Select Ingredient(s)</a>

												</h4>
											</div>
											<div id="collapseOne" class="panel-collapse collapse in">
												<div class="panel-body">
													
													<div class=" scrollerdiv pre-scrollable">
														<table class="table table-hover,table-fixed">
															<thead style="display: block; border-color: #e67e22;">
																
															</thead>
															<c:forEach var="item" items="${protien}">
																<tr class="ingredients">
																	<td><input type="checkbox" name="protien" id="protien"
																		value=<c:out value="${item.key}"/>> &nbsp;<label><c:out
																				value="${item.value}" /></label></td>
																</tr>

																
															</c:forEach>
														</table>
														
														
													</div>
													<button type="submit" name="findrecipe" id="findrecipe"
													class="btn btn-primary">Find Recipes</button>
												</div>
												
											</div>
										</div>
										
									</div>
								</div>
									</form>
							</div>
						
						</div>
						
						<div class="col-lg-8" style="margin-top:120px" >


							<div class="panel panel-primary">
								<div class="panel-heading">Here are some recommendations</div>
								<!-- /.panel-heading -->
								<div class="panel-body">
									<!-- Nav tabs -->
									<ul class="nav nav-pills">
										<li id="home" class="active"><a href="#home-pills"
											data-toggle="tab" id="recipediv">List of Recipes</a></li>
										<li id="chempr"><a href="#profile-pills" data-toggle="tab" id="chem">View Recipe</a></li>
										
										
										
										
										
										
									</ul>
									<div class="tab-content">
										<div class="tab-pane fade in active" id="home-pills">
										<div id="recipediv">
										<div class="panel-body">
													
													<div class=" scrollerdiv pre-scrollable">
														<table class="table">
															
															</thead>
															<c:forEach var="item" items="${recipes}">
																<tr class="danger">
																	<td><input type="radio" name="recipe" id="recipe"
																		value=<c:out value="${item.key}"/>> &nbsp;<label><c:out
																				value="${item.value}" /></label></td>
																</tr>

																
															</c:forEach>
														</table>
														
														
													</div>
													<button type="submit" name="viewrecipe" id="viewrecipe"
													class="btn btn-primary" onclick="ajaxforRecipeLoad()">View Recipe</button>
													<button type="submit" name="viewrecipe" id="viewrecipe"
													class="btn btn-primary">BookMark Recipe</button>
												</div>
										</div>
										<div id="button-div">
									   
										</div>
										</div>
										<div class="tab-pane fade" id="profile-pills">
										<div id="info">
											<c:forEach var="item" items="${desc}">
											<p><c:out value="${item.value}"/></p>
											</c:forEach>
											</div>
										</div>
										
									</div>
								</div>

							</div>

					</div>
				</div>
			</div>
	
	<!-- footer
   ================================================== -->
   <footer>

   	<div class="footer-main">

   		<div class="row">  

	      	 <!--<div class="col-four tab-full mob-full footer-info">            

	           <div class="footer-logo"></div>

	            <p>
		        	1600 Amphitheatre Parkway<br>
            	Mountain View, CA 94043 US<br>
		        	info@lhander.com &nbsp; +123-456-789
		        	</p>

		      </div>  --><!-- /footer-info -->
 
	      	<div class="col-two tab-1-3 mob-1-2 site-links">

	      		<h4>Site Links</h4>

	      		<ul>
	      				<li><a href="LoadDataForHome">Home</a></li>
						<li><a href="LoadDataForHome#features">Top Recipes</a></li>
						<li><a href="LoadDataForHome#process">Process</a></li>
						<li><a href="LoadDataForHome#faq">FAQs</a></li>
					</ul>

	      	</div> <!-- /site-links -->  

	      	<div class="col-two tab-1-3 mob-1-2 social-links">

	      		<h4>Social</h4>

	      		<ul>
	      				<li><a href="https://www.twitter.com/">Twitter</a></li>
						<li><a href="https://www.facebook.com/">Facebook</a></li>
						<li><a href="https://www.facebook.com/">Dribbble</a></li>
						<li><a href="https://www.google.com/">Google+</a></li>
						<li><a href="https://www.skype.com/">Skype</a></li>
					</ul>
	      	           	
	      	</div> <!-- /social --> 

	      	<div class="col-four tab-1-3 mob-full footer-subscribe">

	      		<h4>Subscribe</h4>

	      		<p>Keep yourself updated. Subscribe to our newsletter.</p>

	      		<div class="subscribe-form">
	      	
	      			<form id="mc-form" class="group" novalidate="true">

							<input type="email" value="" name="dEmail" class="email" id="mc-email" placeholder="type email &amp; hit enter" required=""> 
	   		
			   			<input type="submit" name="subscribe" >
		   	
		   				<label for="mc-email" class="subscribe-message"></label>
			
						</form>

	      		</div>	      		
	      	           	
	      	</div> <!-- /subscribe -->         

	      </div> <!-- /row -->

   	</div> <!-- /footer-main -->
		<div id="logout"></div>

      <div class="footer-bottom">

      	<div class="row">

      		<div class="col-twelve">
	      		<div class="copyright">
		         	<span> Copyright@fridgetodish.com</span> 
		         	<span>Design by <a href="#">Team 26</a></span>		         	
		         </div>

		         <div id="go-top" style="display: block;">
		            <a class="smoothscroll" title="Back to Top" href="#top"><i class="icon ion-android-arrow-up"></i></a>
		         </div>         
	      	</div>

      	</div> <!-- /footer-bottom -->     	

      </div>

   </footer>  

   <div id="preloader"> 
    	<div id="loader"></div>
   </div> 
	


	

	<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <script src="resource/js/index.js"></script>
   
    <!-- Java Script
   ================================================== --> 
   <script src="resource/js/jquery-1.11.3.min.js"></script>
   <script src="resource/js/jquery-migrate-1.2.1.min.js"></script>
   <script src="resource/js/plugins.js"></script>
   <script src="resource/js/index.js"></script>
   <script src="resource/js/main.js"></script>
</body>


</html>