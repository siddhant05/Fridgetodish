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
				<h2>Fish Curry</h2>
			</div>
		</section>
		

		<!-- Slider -->
		<div class="recipeSlider rsDefault">
		    <img itemprop="image" class="rsImg" src="resource/images/Malvani_Curry.jpg" alt="" />
		</div>


		<!-- Details -->
		<section class="recipe-details" itemprop="nutrition">
			<ul>
				<li>Serves: <strong itemprop="recipeYield">4 people</strong></li>
				<li>Prep Time: <strong itemprop="prepTime">30 Min</strong></li>
				<li>Cooking: <strong itemprop="cookTime">30 Min</strong></li>
				<li>Calories: <strong itemprop="calories">230 kcal</strong></li>
			</ul>
			<a href="#" id="bookmark_button" class="print" onclick="saveBookmarks()"><i class="fa fa-print"></i> Add to Bookmarks</a>
			
			<div class="clearfix"></div>
		</section>


		<!-- Text -->
		<p itemprop="description">A fish curry with loads of punch to it, which is just one of the reasons you will go back for a second helping.</p>


		<!-- Ingredients -->
		<h3>Ingredients</h3>
		<ul class="ingredients" style="list-style-type:none;">
			<li>
				<input id="check-1" type="checkbox" name="check" value="check-1">
				<label itemprop="ingredients" for="check-1">1 pound (500 grams) whole surmai (kingfish), pomfret, or mackerel</label>
			</li>

			<li>
				<input id="check-2" type="checkbox" name="check" value="check-2">
				<label itemprop="ingredients" for="check-2">1 tablespoon freshly squeezed lemon juice</label>
			</li>

			<li>
				<input id="check-3" type="checkbox" name="check" value="check-3">
				<label itemprop="ingredients" for="check-3">1 teaspoon ground turmeric</label>
			</li>

			<li>
				<input id="check-4" type="checkbox" name="check" value="check-4">
				<label itemprop="ingredients" for="check-4">1 teaspoon table salt</label>
			</li>

			<li>
				<input id="check-5" type="checkbox" name="check" value="check-5">
				<label itemprop="ingredients" for="check-5">1 teaspoon cumin seeds</label>
			</li>

			<li>
				<input id="check-6" type="checkbox" name="check" value="check-6">
				<label itemprop="ingredients" for="check-6">4 or 5 dried red chiles, stemmed</label>
			</li>	

			<li>
				<input id="check-7" type="checkbox" name="check" value="check-7">
				<label itemprop="ingredients" for="check-7">2 medium onions, chopped</label>
			</li>	

			<li>
				<input id="check-8" type="checkbox" name="check" value="check-8">
				<label itemprop="ingredients" for="check-8">2 tablespoons vegetable oil</label>
			</li>	
			<li>
				<input id="check-9" type="checkbox" name="check" value="check-9">
				<label itemprop="ingredients" for="check-9">1 medium tomato, chopped</label>
			</li>			
			
		</ul>


		<!-- Directions -->
		<h3>Directions</h3>
		<ol class="directions" itemprop="recipeInstructions">
			<li>Cut off the head of the fish and clean the insides. Wash thoroughly under running water. Cut the fish horizontally into 1-inch-thick (2½-cm-thick) slices and put in a bowl. Add the lemon juice, ½ teaspoon of the turmeric, and the salt, and stir well. Cover the bowl and put it in the refrigerator for 15 to 20 minutes to marinate.</li>
			<li>Place a small nonstick sauté pan over medium heat. Add the cumin and coriander, and dry-roast for 2 minutes or until fragrant.</li>
			<li>Let cool, then transfer to a food processor with the dried chiles, the remaining ½ teaspoon turmeric, the coconut, half of the onions, the peppercorns, tamarind pulp, and 1 cup (200 ml) water, and process to a smooth paste.</li>
			<li>Place a medium nonstick saucepan over medium heat and add the oil. When small bubbles appear at the bottom of the pan, add the remaining onion and sauté for 3 to 4 minutes or until lightly browned. Add the tomato and green chiles and sauté for 2 to 3 minutes or until the oil comes to the top. Add the coconut paste and cook over high heat for 1 minute. Add 1½ cups (300 ml) water and bring to a boil. Lower the heat to medium, add the marinated fish, and cook for 5 to 6 minutes or until the fish is cooked through. Transfer to a serving bowl and serve hot.</li>
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
					<h3><a href="recipepage2servlet">BBQ Chicken Legs</a></h3>
					
					

					<div class="recipe-meta"><i class="fa fa-clock-o"></i>1 Hour 15 min</div>

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
					<h3><a href="recipepage2servlet">Shahi Egg Masala</a></h3>
					
					

					<div class="recipe-meta"><i class="fa fa-clock-o"></i> 45 min</div>

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

				

			</fieldset>

			

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