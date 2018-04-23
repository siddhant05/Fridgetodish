$('.form').find('input, textarea').on('keyup blur focus', function (e) {
  
  var $this = $(this),
      label = $this.prev('label');

	  if (e.type === 'keyup') {
			if ($this.val() === '') {
          label.removeClass('active highlight');
        } else {
          label.addClass('active highlight');
        }
    } else if (e.type === 'blur') {
    	if( $this.val() === '' ) {
    		label.removeClass('active highlight'); 
			} else {
		    label.removeClass('highlight');   
			}   
    } else if (e.type === 'focus') {
      
      if( $this.val() === '' ) {
    		label.removeClass('highlight'); 
			} 
      else if( $this.val() !== '' ) {
		    label.addClass('highlight');
			}
    }

});

$('.tab a,.links a').on('click', function (e) {
  
  e.preventDefault();
  
  $(this).parent().addClass('active');
  $(this).parent().siblings().removeClass('active');
  
  target = $(this).attr('href');

  $('.tab-content > div').not(target).hide();
  
  $(target).fadeIn(600);
  
});


  /*----------------------------------------------------*/
  /*  Sticky Navigation
  ------------------------------------------------------*/
   $(window).on('scroll', function() {

    var y = $(window).scrollTop(),
        topBar = $('header');
     
     if (y > 1) {
        topBar.addClass('sticky');
     }
      else {
         topBar.removeClass('sticky');
      }
    
  });
  

  /*-----------------------------------------------------*/
    /* Mobile Menu
   ------------------------------------------------------ */  
   var toggleButton = $('.menu-toggle'),
       nav = $('.main-navigation');

   toggleButton.on('click', function(event){
    event.preventDefault();

    toggleButton.toggleClass('is-clicked');
    nav.slideToggle();
  });

    if (toggleButton.is(':visible')) nav.addClass('mobile');

    $(window).resize(function() {
    if (toggleButton.is(':visible')) nav.addClass('mobile');
      else nav.removeClass('mobile');
    });

    $('#main-nav-wrap li a').on("click", function() {   

    if (nav.hasClass('mobile')) {       
      toggleButton.toggleClass('is-clicked'); 
      nav.fadeOut();      
    }     
    });


   /*----------------------------------------------------*/
    /* Highlight the current section in the navigation bar
    ------------------------------------------------------*/
  var sections = $("section"),
  navigation_links = $("#main-nav-wrap li a");  

  sections.waypoint( {

       handler: function(direction) {

       var active_section;

      active_section = $('section#' + this.element.id);

      if (direction === "up") active_section = active_section.prev();

      var active_link = $('#main-nav-wrap a[href="#' + active_section.attr("id") + '"]');     

         navigation_links.parent().removeClass("current");
      active_link.parent().addClass("current");

    }, 

    offset: '25%'

  });

  /*----------------------------------------------------*/
    /* Smooth Scrolling
    ------------------------------------------------------*/
    $('.smoothscroll').on('click', function (e) {
    
    e.preventDefault();

    var target = this.hash,
      $target = $(target);

      $('html, body').stop().animate({
        'scrollTop': $target.offset().top
      }, 800, 'swing', function () {
        window.location.hash = target;
      });

    });
    
    /**
	* This function is used to send recipe load ajax request to servlet.
	*
	* @author  Siddant Mohanty
	* @version 1.0
	* @since   2018-03-10 
	*/
	
    
    function ajaxforRecipeLoad(){

  
		var lIngredientID = jQuery('[name="Ingredients"]').val();
		var lCombinedHTML="";
		var lPaginationCount="";
		
    	jQuery("#recipelist").html("");
    	jQuery
    			.ajax({
    				type : "GET",
    				url : "FetchRecipesServlet",
    				contentType : "application/x-www-form-urlencoded; charset=UTF-8",
    				data : {
    					'lRC' : lIngredientID
    				},
    				success : function(responseText) {
    					
    					var lData = responseText.getElementsByTagName("recipe");
    					lPaginationCount=lData.length;
    					jQuery("#recipeheading").html("Suggested Recipes")
    	            	for(var i=0;i<lData.length;i++){
    	            		
    	            		//var lIsotopetag='<div class="four isotope-box columns">';
    	            		var lName=lData[i].childNodes[1].firstChild.nodeValue;
        					var lRecipeLink=lData[i].childNodes[2].firstChild.nodeValue;
        					var lImageLink=lData[i].childNodes[3].firstChild.nodeValue;
    	            		var lTime=lData[i].childNodes[4].firstChild.nodeValue;
        					var lID=lData[i].childNodes[0].firstChild.nodeValue;
    	            		var lHTML='<div class="four isotope-box columns">'+
    	            				  '<div class="thumbnail-holder" style="height: auto;">'+
    	            				  '<a href="'+lRecipeLink+'?recipe='+lID+'">'+
    	        						'<img src="'+lImageLink+'" alt="">'+
    	        						'<div class="hover-cover"></div>'+
    	        						'<div class="hover-icon">View Recipe</div>'+
    	        					'</a>'+
    	        					'</div>'+

    	        				
    	        				'<div class="recipe-box-content">'+
    	        					'<h3><a href="'+lRecipeLink+'?recipe='+lID+'">'+lName+'</a></h3>'+

    	        					'<div class="rating five-stars">'+
    	        						
    	        						'<div class="recipe-meta"><i class="fa fa-clock-o"></i>'+ lTime+'</div><div class="clearfix"></div></div></div></div>';
    	        					
    	            		
    	            		//var lHTML=lIsotopetag+'<div class="thumbnail-holder"><a href="'+lRecipeLink+'">'+'<img src="'+lImageLink+'" alt=""/><div class="hover-cover"></div><div class="hover-icon">View Recipe</div></a>'+'</div></div><div class="recipe-box-content"><h3><a href="'+lRecipeLink+'">'+lName+'</a></h3><div class="rating five-stars">'+'<div class="star-rating"></div><div class="star-bg"></div></div><div class="recipe-meta"><i class="fa fa-clock-o"></i>'  + ''+lTime+'</div>';
    	            		
    	            		lCombinedHTML=lCombinedHTML+lHTML;  
    	            	}
    	            	
    						jQuery("#recipelist").html(lCombinedHTML);
    						if(lPaginationCount<4){
    							jQuery(".pagination-container").hide();
    						}
    						
    				}

    			});

    }