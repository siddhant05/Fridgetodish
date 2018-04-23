<%@taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
<title>Fridge2dishes</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="stylish Sign in and Sign up Form A Flat Responsive widget, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--online_fonts-->
	<link href="//fonts.googleapis.com/css?family=Sansita:400,400i,700,700i,800,800i,900,900i&amp;subset=latin-ext" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet">
<!--//online_fonts-->
	
	<link href="resource/css/style_1.css" rel='stylesheet' type='text/css' media="all" />
	
	
	<script type="text/javascript">
	setTimeout(function(){
		$('#messagebox').fadeOut('slow');
	}, 18000);
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
	<form action="LoadDataForHome" method="get">
				<ul class="main-navigation">
					<li class="highlight with-sep"><a href="LoadDataForHome" title="">Home</a></li>
					<li class="current"><a class="smoothscroll"  href="#intro" title="">Sign Up</a></li>
					<li><a class="smoothscroll"  href="#faq" title="">FAQ</a></li>					
					<li class="highlight with-sep"><a href="#" title="">About us</a></li>					
				</ul>
				</form>
</nav>
</header>
<h1>Welcome Foodies!</h1>
<div class="form-w3ls">
	<div class="form-head-w3l">
		<h2><img border="0" alt="Andy" src="resource/images/mascot.png" width="90" height="90"></h2>
	</div>
    <ul class="tab-group cl-effect-4">
        <li class="tab active"><a href="#signin-agile">Sign In</a></li>
		<li class="tab"><a href="#signup-agile">Sign Up</a></li>        
    </ul>
    <div class="tab-content">
        <div id="signin-agile">   
			<form action="SignInServlet" method="post">
			
			
				
				<p class="header">User Name</p>
				<input type="text" name="user" placeholder="User Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'User Name';}" required="required">
				
				
				<p class="header">Password</p>
				<input type="password" name="password" placeholder="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="required">
				
				<input type="checkbox" id="brand" value="">
				<label for="brand"><span></span> Remember me?</label>
				
				<input type="submit" class="sign-in" value="Sign In">
			</form>
			
			<div id="messagebox"> 
			<c:if test="${param.failure eq 2}">
				<div class="alert alert-danger">
					<button href="#" type="button" class="close">
						<i class="glyphicon glyphicon-remove-circle text-danger"></i>
					</button>
					<h4 style="color:red"><center>Sorry!</center></h4>
					<p>
						<center>Invalid Credentials! Please enter again.</center>
					</p>
				</div>
			</c:if>
			<c:if test="${param.exists eq 1}">
				<div class="alert alert-danger">
					<button href="#" type="button" class="close">
						<i class="glyphicon glyphicon-remove-circle text-danger"></i>
					</button>
					<h4><center>Email already exists!</center></h4>
					<p>
						<center>A user with the same email id is already present in the system</center>
					</p>
				</div>
			</c:if>
	</div>
	
</script>
		</div>
		<div id="signup-agile">   
			<form action="SignUpServlet" method="post">
			
			<p class="header">First Name</p>
				<input type="text" name="first_name" placeholder="Your First Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your Full Name';}" required="required">
				
			<p class="header">Last Name</p>
				<input type="text" name="last_name" placeholder="Your Last Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your Full Name';}" required="required">
				
				<p class="header">User Name</p>
				<input type="text" name="user" placeholder="Type in a good user name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your Full Name';}" required="required">
				
					
				<p class="header">Email Address</p>
				<input type="email" name="email" placeholder="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="required">
				
				<p class="header">Password</p>
				<input type="password" name="password" placeholder="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="required">
				
				<p class="header">Confirm Password</p>
				<input type="password" name="password" placeholder="Confirm Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Confirm Password';}" required="required">
				
				<input type="submit" class="register" value="Sign up">
			</form>
		</div> 
    </div><!-- tab-content -->
    
</div> <!-- /form -->

<!-- footer
   ================================================== -->
   <footer>




      <div class="footer-bottom">

      	<div class="row">

      		<div class="col-twelve">
	      		<div class="copyright">
		         	<span>Copyright@fridgetodish.com</span> 
		         	<span>Design by <a href="#">Team 26</a></span>		         	
		         </div>

		         <div id="go-top" style="display: block;">
		            <a class="smoothscroll" title="Back to Top" href="#top"><i class="icon ion-android-arrow-up"></i></a>
		         </div>         
	      	</div>

      	</div> <!-- /footer-bottom -->     	

      </div>

   </footer>  
	  

<!-- js files -->
<script src='resource/js/jquery.min.js'></script>
<script src="resource/js/index.js"></script>
<!-- /js files -->
</body>
</html>
