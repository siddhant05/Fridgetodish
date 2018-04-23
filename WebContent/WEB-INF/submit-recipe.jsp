<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

<!-- Basic Page Needs
================================================== -->
<meta charset="utf-8">
<title>Chow</title>

<!-- Mobile Specific Metas
================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
================================================== -->
<link rel="stylesheet" href="resource/css/style.css">
<link rel="stylesheet" href="resource/css/colors/green.css" id="colors">

<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

</head>

<body class="overflow-reset">

<!-- Wrapper -->
<div id="wrapper">


<!-- Header
================================================== -->
<header id="header">

<!-- Container -->
<div class="container">

	<!-- Logo / Mobile Menu -->
	<div class="three columns">
		<div id="logo">
			<h1><a href="index.html"><img src="resource/images/logo.jpg" alt="Chow" /></a></h1>
		</div>
	</div>


<!-- Navigation
================================================== -->
<div class="thirteen columns navigation">
	
	<nav id="navigation" class="menu nav-collapse">
		<ul>
			<li><a href="LoadDataForHome">Home</a></li>

			<li><a href="UserProfileServlet">My Profile</a>


			<li><a href="submit-recipe.html" id="current">Submit Recipe</a></li>
		</ul>
	</nav>

</div>

</div>
<!-- Container / End -->
</header>


<!-- Titlebar
================================================== -->
<section id="titlebar">
	<!-- Container -->
	<div class="container">

		<div class="eight columns">
			<h2>Submit Recipe</h2>
		</div>

		

	</div>
	<!-- Container / End -->
</section>




<!-- Content
================================================== -->
<div class="container">
	<div class="sixteen columns">
	<form action="" method="">
		<div class="submit-recipe-form">


			<!-- Recipe Title -->
			<h4>Recipe Title</h4>
			<nav class="title">
				<input class="search-field" name="recipe_title" id="recipe_title" type="text" placeholder="" value=""/>
			</nav>
			<div class="clearfix"></div>


			<div class="margin-top-25"></div>


			

			<div class="margin-top-25"></div>


			<!-- Short Summary -->
			<h4>Short summary</h4>
			<textarea class="WYSIWYG" name="summary" cols="40" rows="3" id="summary" spellcheck="true"></textarea>


			<div class="margin-top-25"></div>


			<div class="margin-top-30"></div>
			
			<a href="" class="button color big" onclick="saveuserrecipes()">Submit Recipe</a>

		</div>
		</form>
	</div>
</div>
<!-- Container / End -->


<div class="margin-top-50"></div>

</div>
<!-- Wrapper / End -->


<!-- Footer
================================================== -->
<!-- Footer / End -->

<<!-- Footer
================================================== -->

<!-- Footer Bottom / Start -->
<div id="footer-bottom">

	<!-- Container -->
	<div class="container" align="center">

		<div class="eight columns" align="center">© Copyright 2018 by Team 26. All Rights Reserved.</div>

	</div>
	<!-- Container / End -->

</div>
<!-- Footer Bottom / End -->

<!-- Back To Top Button -->
<div id="backtotop"><a href="#"></a></div>



<!-- Java resource/scripts
================================================== -->
<script src="resource/scripts/jquery-1.11.0.min.js"></script>
<script src="resource/scripts/jquery-migrate-1.2.1.min.js"></script>
<script src="resource/scripts/jquery.superfish.js"></script>
<script src="resource/scripts/jquery.royalslider.min.js"></script>
<script src="resource/scripts/responsive-nav.js"></script>
<script src="resource/scripts/hoverIntent.js"></script>
<script src="resource/scripts/isotope.pkgd.min.js"></script>
<script src="resource/scripts/chosen.jquery.min.js"></script>
<script src="resource/scripts/jquery.tooltips.min.js"></script>
<script src="resource/scripts/jquery.magnific-popup.min.js"></script>
<script src="resource/scripts/jquery.pricefilter.js"></script>
<script src="resource/scripts/jquery-ui.min.js"></script>
<script src="resource/scripts/custom.js"></script>
   <script src="resource/js/recipe.js"></script>


<!-- WYSIWYG Editor -->
<script type="text/javascript" src="resource/scripts/jquery.sceditor.bbcode.min.js"></script>
<script type="text/javascript" src="resource/scripts/jquery.sceditor.js"></script>




</body>
</html>