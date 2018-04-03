<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ page import="com.fridgetodish.Pojo.*"%>

<!DOCTYPE html>
<!--[if IE 8 ]><html class="no-js oldie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="no-js oldie ie9" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html class="no-js" lang="en"> <!--<![endif]-->
<head>

   <!--- basic page needs
   ================================================== -->
   <meta charset="utf-8">
	<title>fridgetodish | About Me</title>
	<meta name="description" content="">  
	<meta name="author" content="">

   <!-- mobile specific metas
   ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

 	<!-- CSS
   ================================================== -->
   <link rel="stylesheet" href="resource/css/base.css">  
   <link rel="stylesheet" href="resource/css/main.css">
	<style>
* {box-sizing: border-box, margin: auto, color: red}
body {font-family: "Lato", sans-serif;}
	/* Style the tab */
.tab {
    float: left;
    border: 1px solid #ccc;
    background-color: #f1f1f1;
    width: 15%;
    height: 200px;

}

/* Style the buttons inside the tab */
.tab button {
    display: block;
    background-color: inherit;
    color: black;
    padding: 0px 16px;
    width: 100%;
    border: none;
    outline: none;
    text-align: left;
    cursor: pointer;
    transition: 0.3s;
    font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
    background-color: #ddd;
}

/* Create an active/current "tab button" class */
.tab button.active {
    background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
    float: left;
    padding: 10px 12px;
    border: 1px solid #ccc;
    width: 75%;
    border-left: none;
    height: 200px;
}
</style>
</head>

<body id="top">

	<!-- header 
   ================================================== -->
   <header>

   	<div class="row">

   		<div class="logo">
	         <a href="LoadDataForHome"></a>
	      </div>
<!-- highlight with-sep -->
	   	<nav id="main-nav-wrap">
	   	
				<ul class="main-navigation">
					<li ><a class=""  href="LoadDataForHome" title="">Home</a></li>
					<li class="current"><a class=""  href="#process" title="">My Profile</a></li>
					<li><a class=""  href="LogoutServlet" title="">Logout</a></li>					
				</ul>
			</nav>

			<a class="menu-toggle" href="#"><span>Menu</span></a>
   		
   	</div>   	
   	
	
   </header> <!-- /header -->


   <!-- Process Section
   ================================================== -->
   <section id="process">  

   	<div class="row section-intro">
   		<div class="col-twelve with-bottom-line">

   			<h3>My Information</h3>

   		</div>   		
   	</div>

<div class="tab" style="height:250px;margin-left:10px">
  <button class="tablinks" onclick="openCity(event, 'About Me')" id="defaultOpen">About Me</button>
  <button class="tablinks" onclick="openCity(event, 'My Bookmarks')">My Bookmarks</button>
  <button class="tablinks" onclick="openCity(event, 'My Uploaded Dishes')">My Uploaded Dishes</button>
</div>

<div id="About Me" class="tabcontent" style="height:250px">
  <h3>About Me</h3>
  <table class="table table-user-information">
									<tbody>
										<tr>
											<td>First name</td>
											<td><%=((User) request.getSession().getAttribute("user")).getFirst_name().toString()%></td>
										</tr>
										<tr>
											<td>Last name</td>
											<td><%=((User) request.getSession().getAttribute("user")).getLast_name().toString()%></td>
										
										</tr>
										<tr>
											<td>Email</td>
											<td><%=((User) request.getSession().getAttribute("user")).getEmail().toString()%></td>
										</tr>
								</tbody>
								</table>
</div>

<div id="My Bookmarks" class="tabcontent" style="height:250px">
  <h3>My Bookmarks</h3><p>xxx</p> 
</div>

<div id="My Uploaded Dishes" class="tabcontent" style="height:250px">
  <h3>My Uploaded Dishes</h3><p>xxx</p>
</div>

<script>
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>

   </section> <!-- /process-->    



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

   <!-- Java Script
   ================================================== --> 
   <script src="resource/js/jquery-1.11.3.min.js"></script>
   <script src="resource/js/jquery-migrate-1.2.1.min.js"></script>
   <script src="resource/js/plugins.js"></script>
   <script src="resource/js/index.js"></script>
   <script src="resource/js/main.js"></script>

</body>

</html>