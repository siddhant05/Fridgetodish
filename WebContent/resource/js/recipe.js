/**
	* This function is used to send fetch and save requests for saving comments.
	*
	* @author  Siddant Mohanty
	* @version 1.0
	* @since   2018-03-10 
	*/
	


function saveComments(){

	var lRecipeid;
	var lComments;
	lRecipeid=jQuery("#recipeid").val();
	lComments=jQuery("#comments").val();
	var lCombinedHTML="";
	jQuery("#commentlist").html("");
	$
			.ajax({
				type : "POST",
				url : "SavereviewServlet",
				contentType : "application/x-www-form-urlencoded; charset=UTF-8",
				data : {
					'recipeid' : lRecipeid,
					'comments' : lComments,
				},
				success : function(responseText) {
					var lData = responseText.getElementsByTagName("review");
					
					for(var i=0;i<lData.length;i++){
	            		var lName=lData[i].childNodes[0].firstChild.nodeValue;
	            		var lDate=lData[i].childNodes[2].firstChild.nodeValue;
	            		var lComment=lData[i].childNodes[1].firstChild.nodeValue;
					
					 var lHTML='<li>'+
					 '<div class="avatar"><img src="http://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&amp;s=70" alt="" /></div>'+
					 '<div class="comment-content"><div class="arrow-comment"></div>'+
					 '<div class="comment-by"><strong>'+lName+'</strong><span class="date">'+lDate+'</span>'+
					 '</div>'+
					 	'<p>'+lComment+'</p>'+
					 	'<div class="rating five-stars">'+
					 		'<div class="star-rating"></div>'+
					 		'<div class="star-bg"></div>'+
					 	'</div>'+
					 '</div>'+
					 '</li>';
					lCombinedHTML=lCombinedHTML+lHTML;
					
				}
					alert("Comments saved successfully");
					jQuery("#commentlist").html(lCombinedHTML);
				}

			});


}

/**
* This function is used to set paramter in recipe page.
*
* @author  Siddant Mohanty
* @version 1.0
* @since   2018-03-10 
*/

function setParametersinPage(){
	
	var lRecipeid;
	lRecipeid=jQuery("#recipeid").val();
	
	var lCombinedHTML="";
	jQuery("#commentlist").html("");
	$
			.ajax({
				type : "POST",
				url : "FindCommentsServlet",
				contentType : "application/x-www-form-urlencoded; charset=UTF-8",
				data : {
					'recipeid' : lRecipeid,
					
				},
				success : function(responseText) {
					var lData = responseText.getElementsByTagName("review");
					
					for(var i=0;i<lData.length;i++){
	            		var lName=lData[i].childNodes[0].firstChild.nodeValue;
	            		var lDate=lData[i].childNodes[2].firstChild.nodeValue;
	            		var lComment=lData[i].childNodes[1].firstChild.nodeValue;
					
					 var lHTML='<li>'+
					 '<div class="avatar"><img src="http://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&amp;s=70" alt="" /></div>'+
					 '<div class="comment-content"><div class="arrow-comment"></div>'+
					 '<div class="comment-by"><strong>'+lName+'</strong><span class="date">'+lDate+'</span>'+
					 '</div>'+
					 	'<p>'+lComment+'</p>'+
					 	'<div class="rating five-stars">'+
					 		'<div class="star-rating"></div>'+
					 		'<div class="star-bg"></div>'+
					 	'</div>'+
					 '</div>'+
					 '</li>';
					lCombinedHTML=lCombinedHTML+lHTML;
					
				}
					
					jQuery("#commentlist").html(lCombinedHTML);
				}

			});



	
}

/**
* This function is used to send bookmark save ajax request to servlet.
*
* @author  Siddant Mohanty
* @version 1.0
* @since   2018-03-10 
*/


function saveBookmarks(){

	var lRecipeid;
	
	lRecipeid=jQuery("#recipeid").val();
	
	jQuery
			.ajax({
				type : "POST",
				url : "SaveBookmarks",
				contentType : "application/x-www-form-urlencoded; charset=UTF-8",
				data : {
					'recipeid' : lRecipeid,
					
				},
				success : function(responseText) {
					alert("Bookmark saved successfully");
					jQuery("#bookmark_button").hide();
					
				}

			});

	

}

/**
* This function is used to send bookmark load ajax request to servlet.
*
* @author  Siddant Mohanty
* @version 1.0
* @since   2018-03-10 
*/

function findbookmarks(){
	var lCombinedHTML="";
	jQuery
			.ajax({
				type : "POST",
				url : "Findbookmarks",
				contentType : "application/x-www-form-urlencoded; charset=UTF-8",
				data : {
					
					
				},
				success : function(responseText) {
					var lData = responseText.getElementsByTagName("recipe");
					
					if(lData.length>0){
						
						
						for(var i=0;i<lData.length;i++){
		            		var lName=lData[i].childNodes[0].firstChild.nodeValue;
		            		var lPath=lData[i].childNodes[1].firstChild.nodeValue;
						
						 var lHTML='<li>'+
						 '<div>'+
						 '<div><strong><a href="'+lPath+'">'+lName+'</a></strong>'+
						 '</div>'+
						 '</div>'+
						 '</li>';
						lCombinedHTML=lCombinedHTML+lHTML;
						
					}
						
					}else{
						lCombinedHTML='<li>'+
								'<div>'+
									'<div><strong>There are no recipes stored</strong>'+
						 '</div>'+
						 '</div>'+
						 '</li>';
					}
					
					
					jQuery("#savedishes").html(lCombinedHTML);
				}

			});



	

	
}
