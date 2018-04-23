<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page import="com.fridgetodish.Pojo.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

<!-- Basic Page Needs
================================================== -->
<meta charset="utf-8">
<title>Fridge2Dish</title>

<!-- Mobile Specific Metas
================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
================================================== -->
<link rel="stylesheet" href="resource/css/style_2.css">
<link rel="stylesheet" href="resource/css/colors/green.css" id="colors">
<link rel="stylesheet" href="resource/css/base_1.css">  
<link rel="stylesheet" href="resource/css/main_1.css">

<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<!-- script
   ================================================== -->
	<script src="js/modernizr.js"></script>
</head>

<body onload="setParametersinPage()">

<!-- Wrapper -->
<div id="wrapper">


<!-- Header
================================================== -->
<header>

   	<div class="row">

   		<div class="logo">
	         <a href="index.html"></a>
	      </div>

	   	<nav id="main-nav-wrap">
				<ul class="main-navigation">
					<li class="highlight with-sep"><a href="LoadDataForHome" title="">Home</a></li>
					<li><a class="smoothscroll"  href="UserProfileServlet" title="">Profile</a></li>
					<li><a class=""  href="LogoutServlet" title="">Logout</a></li>									
									
				</ul>
			</nav>

			

			<a class="menu-toggle" href="#"><span>Menu</span></a>
   		
   	</div>   	
   	
	
   </header> <!-- /header -->

<!-- /header -->
</br>
<!-- Container -->


</br>


<!-- Content
================================================== -->
<div style="margin-top:190px" class="container" itemscope itemtype="http://schema.org/Recipe">

	<!-- Recipe -->
	<div class="twelve columns">
	<div class="alignment">

		<!-- Header -->
		<section class="recipe-header">
			<div class="title-alignment">
				<h2>Bacon & Egg Quesadillas</h2>
			</div>
		</section>
		

		<!-- Slider -->
		<div class="recipeSlider rsDefault">
		    <img itemprop="image" class="rsImg" src="resource/images/Bacon & Egg Quesadillas.jpg" alt="" />
		</div>


		<!-- Details -->
		<section class="recipe-details" itemprop="nutrition">
			<ul>
				<li>Serves: <strong itemprop="recipeYield">1 people</strong></li>
				<li>Prep Time: <strong itemprop="prepTime">5 Min</strong></li>
				<li>Cooking: <strong itemprop="cookTime">10 Min</strong></li>
				<li>Calories: <strong itemprop="calories">517 cal</strong></li>
			</ul>
			<a href="#" id="bookmark_button" class="print" onclick="saveBookmarks()"><i class="fa fa-print"></i> Add to Bookmarks</a>
			
			<div class="clearfix"></div>
		</section>


		<!-- Text -->
		<p itemprop="description">Bacon, Egg & Cheese Quesadillas Recipe ~ Crispy, Pan Fried Tortillas Stuffed with Bacon, Egg & Cheese! Makes the Perfect Quick, Easy Breakfast Recipe!</p>


		<!-- Ingredients -->
		<h3>Ingredients</h3>
		<ul class="ingredients" style="list-style-type:none;">
			<li>
				<input id="check-1" type="checkbox" name="check" value="check-1">
				<label itemprop="ingredients" for="check-1">4 large flour Tortillas</label>
			</li>

			<li>
				<input id="check-1" type="checkbox" name="check" value="check-1">
				<label itemprop="ingredients" for="check-1">4 slices crisp-cooked bacon</label>
			</li>

			<li>
				<input id="check-3" type="checkbox" name="check" value="check-3">
				<label itemprop="ingredients" for="check-3">1/4 cup	sliced onions</label>
			</li>

			<li>
				<input id="check-4" type="checkbox" name="check" value="check-4">
				<label itemprop="ingredients" for="check-4">8 Eggs, beaten</label>
			</li>
		
			<li>
				<input id="check-5" type="checkbox" name="check" value="check-5">
				<label itemprop="ingredients" for="check-5">1 cup shredded Pepper Jack cheese</label>
			</li>
			
		</ul>


		<!-- Directions -->
		<h3>Directions</h3>
		<ol class="directions" itemprop="recipeInstructions">
			<li>SPRINKLE 1/4 cup cheese on one side of each tortilla. TOP each with 1 bacon slice and 1 tbsp. green onion.</li> 
			<li>COAT large nonstick skillet with cooking spray; HEAT over medium heat until hot. POUR IN eggs. As eggs begin to set, GENTLY PULL the eggs across the pan with an inverted turner, forming large soft curds. CONTINUE cooking – pulling, lifting and folding eggs – until thickened and no visible liquid egg remains. Do not stir constantly.</li>
			<li>SPOON eggs on top of bacon, dividing evenly. FOLD tortilla over filling to cover, pressing gently.</li>
			<li>CLEAN skillet. COAT with cooking spray; HEAT over medium-low heat until hot. TOAST quesadillas, one at a time, just until cheese is melted, 1 to 2 minutes per side. CUT into wedges.</li>
		</ol>


		
		<div class="clearfix"></div>

		
		<!-- Meta -->
<!--  		<div class="post-meta">
			By <a href="#" itemprop="author">Sandra Fortin</a>, on
			<meta itemprop="datePublished" content="2014-30-10">30th November, 2014</meta>
		</div>  -->


		<div class="margin-bottom-40"></div>


		<!-- Headline -->
 		<h3 class="headline">You may also like</h3>
		<span class="line margin-bottom-35"></span>
		<div class="clearfix"></div>

		<div class="related-posts">
		<!-- Recipe #1 -->
			<div class="four recipe-box columns">


				<!-- Content -->
				<div class="recipe-box-content">
					<h3><a href="recipepage2servlet">Malvani Fish Curry</a></h3>
					
					

					<div class="recipe-meta"><i class="fa fa-clock-o"></i> 45 min</div>

					<div class="clearfix"></div>
				</div>
			</div>

			<!-- Recipe #2 -->
			<div class="four recipe-box columns">

				<!-- Thumbnail -->
				
				
				<!-- Content -->
				<div class="recipe-box-content">
					<h3><a href="recipepage3servlet">Chicken Tikka Masala</a></h3>
					
					

					<div class="recipe-meta"><i class="fa fa-clock-o"></i> 1 hr</div>

					<div class="clearfix"></div>
				</div>
			</div>

			<!-- Recipe #3 -->
			<div class="four recipe-box columns">

				
				<!-- Content -->
				<div class="recipe-box-content">
					<h3><a href="recipepage2servlet">Chunky Beef Stew</a></h3>
					
					

					<div class="recipe-meta"><i class="fa fa-clock-o"></i>1 Hour 15 min</div>

					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>


		<div class="margin-top-15"></div>


		<!-- Comments
		================================================== -->
		
			<div class="clearfix"></div>
			<br>


		<!-- Add Comment
		================================================== -->

		<h3 class="headline">Add Review</h3><span class="line margin-bottom-35"></span><div class="clearfix"></div>
		
		<!-- Add Comment Form -->
		<form id="add-review" class="add-comment">
			<fieldset>

				
					
				
				
			<div class="clearfix"></div>
				
				<div>
				<%
				String lRecipeid = (String)request.getAttribute("recipeid");
				%>
				<input type="hidden" name="recipeid" id="recipeid"
												value="<%=lRecipeid%>" />
					<label>Comment: <span>*</span></label>
					<textarea cols="40" rows="3" name="comments" id="comments"></textarea>
				</div>

			<a href="#" class="button medium color" onclick="saveComments()">Add Review</a>

				

			</fieldset>"clearfix"></div>

		</form>

	</div>
	</div>


<!-- Sidebar
================================================== -->
<div class="four columns">

	


	<!-- Author Box -->
	<div class="widget">
		<div style="margin-top: -20px;"class="author-box">
			<span class="title">Chef</span>
			<span class="name">Andy </span>
			
			<img src="resource/images/chef-1.png" alt="">
			<p>I'm chef Andy and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.</p>
		</div>
	</div>


	


	

</div>


</div>
<!-- Container / End -->


</div>
<!-- Wrapper / End -->

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

		                 
	      	</div>

      	</div> <!-- /footer-bottom -->     	

      </div>

   </footer>  

   <div id="preloader"> 
    	<div id="loader"></div>
   </div> 
	


	
<!-- Java Script
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
<script src="resource/scripts/custom.js"></script>
	<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
   
    <!-- Java Script
   ================================================== --> 
   <script src="resource/js/jquery-1.11.3.min.js"></script>
   <script src="resource/js/jquery-migrate-1.2.1.min.js"></script>
   <script src="resource/js/plugins.js"></script>
   <script src="resource/js/index.js"></script>
   <script src="resource/js/main.js"></script>
   <script src="resource/js/recipe.js"></script>
</body>


</html>