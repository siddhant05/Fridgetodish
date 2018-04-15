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

<!-- CSS links
   ================================================== -->
<link rel="stylesheet" href="resource/css/base.css">  
<link rel="stylesheet" href="resource/css/main.css">
<link rel="stylesheet" href="resource/css/font-awesome.css" />
<link rel="stylesheet" href="resource/css/fonts.css">  
<link rel="stylesheet" href="resource/css/metisMenu.css">  
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />

<!-- <link rel="stylesheet" href="http://code.jquery.com/mobile/1.1.0/jquery.mobile-1.1.0.min.css" /> -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" /> -->

<link href="resource/css/font-awesome.min.css" rel="stylesheet" />
<link href="resource/css/bootstrap.min.css"    rel="stylesheet" />



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
<link href="resource/css/metisMenu.min.css"
	rel="stylesheet" />
<!-- Custom CSS -->
<link href="resource/css/sb-admin-2.css"
	rel="stylesheet" />
<link href="resource/css/font-awesome.css"
	rel="stylesheet" />
<!-- Custom Fonts -->
<link
	href="resource/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
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
/* function filterchem() {

		var input = jQuery("#chemsearch").val();
		var lListSize = jQuery(".chemical").length
		for (var i = 0; i < lListSize; i++) {
			if (jQuery(".chemical")[i].innerHTML.indexOf(input) > -1) {
				document.getElementsByClassName("chemical")[i].style.display = "";
			} else {
				document.getElementsByClassName("chemical")[i].style.display = "none";
			}
		}  */
		/* var input, listsize, i;
		input =jQuery("#chemsearch").val();
		listsize=jQuery("#li").size(); */

	
	
	/*  $(function () {
	    var showModal = function () {
	        var $input = $(this);
	        var imgAlt = $input.attr("alt");
	        $("#theModal h4.modal-title").html(imgAlt);
	        var img = this;
	        var imageHeight = $input.height();
	        var imagWidth = $input.width();
	        var NewimgWidth = imagWidth * 2;
	        var NewImgHeight = imageHeight * 2;
	        var picSrc = $input.attr("src");
	        $("#theModal img").attr('src', picSrc);
	        //set new image width
	        $("div.modal-dialog").css("width", NewimgWidth);
	        $("#theModal img").width(NewimgWidth);
	        //set new image height
	        $("#theModal img").height(NewImgHeight);        
	        $("#theModal").modal("show");
	    };
	    var MyHtml = '<div id="theModal" class="modal fade">' +
	            ' <div class="modal-dialog ">' +
	                '<div class="modal-content">' +
	                    ' <div class="modal-header">' +
	                        '<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>' +
	                        '<h4 class="modal-title">Hello!</h4>' +
	                     '</div>' +
	                    '<div class="modal-body">' +
	                       '  <img not-to-enlarge="true" class="img-responsive" + src=""alt="...">' +
	                    '</div>' +
	                     '<div class="modal-footer">' +
	                         '<button type="button" class="btn btn-default" data-dismiss="modal">' +
	                            'Close' +
	                         '</button>' +
	                     '</div>' +
	                 '</div>' +
	             '</div>' +
	         '</div>';
	    $("div.body-content").append(MyHtml);
	    $("img[not-to-enlarge!=true]").click(showModal);
	    $("img[not-to-enlarge!=true]").css("cursor", "pointer");
	}); */
	
</script>
</head>
<body>




	<!-- Left Menu -->
	<div id="wrapper">
		

		

			<!-- <div class="panel panel-default">
				<div class="panel-heading">Response Curves</div>
				.panel-heading
				<div class="panel-body"> -->

					<div class="row">
						<div class="col-lg-4">
							<div class="panel panel-primary">
								<div class="panel-heading">Select Ingredients</div>
								<!-- .panel-heading -->
								<div class="panel-body">
									<div class="panel-group" id="accordion">
										<div class="panel panel-primary">
											<div class="panel-heading">
												<h4 class="panel-title">

													<a data-toggle="collapse" data-parent="#accordion"
														href="#collapseOne" id="sac">Select Protein(s)</a>

												</h4>
											</div>
											<div id="collapseOne" class="panel-collapse collapse in">
												<div class="panel-body">
													<div class="input-group custom-search-form">
														<input type="text" class="form-control" id="chemsearch"
															onkeyup="filterchem()" placeholder="Search Cas Number...">
													</div>
													<div class=" scrollerdiv pre-scrollable">
														<table class="table table-hover,table-fixed">
															<thead style="display: block; border-color: #e67e22;">
																
															</thead>
															<c:forEach var="item" items="${chemicals}">
																<tr class="chemical">
																	<td><input type="radio" name="cas" id="cas"
																		onclick="displayChemicalData()"
																		value=<c:out value="${item.key}"/>> &nbsp;<label><c:out
																				value="${item.value}" /></label></td>
																</tr>

																</li>
															</c:forEach>
														</table>
													</div>
												</div>
											</div>
										</div>
										<div class="panel panel-primary">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" data-parent="#accordion"
														href="#collapseTwo" id="sacl">Select Vegetable(s) </a>

												</h4>
											</div>
											<div id="collapseTwo" class="panel-collapse collapse">
												<div class="panel-body">
													<div class=" scrollerdiv pre-scrollable">
														<table class="table table-hover,table-fixed">

															<c:forEach var="item" items="${cell}">
																<tr class="cell">
																	<td><input type="radio" name="cell" id="cell"
																	onclick="displayPhenoData()"	value=<c:out value="${item.key}"/>></input> &nbsp; 
																	<label><c:out value="${item.value}" /></label></td>
																</tr>

																
															</c:forEach>
														</table>
													</div>
												</div>
											</div>
										</div>


										<div class="panel panel-primary">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" data-parent="#accordion"
														href="#collapseThree">Select spice(s)</a>

												</h4>
											</div>
											<div id="collapseThree" class="panel-collapse collapse">
												<div class="panel-body">
													<div class=" scrollerdiv pre-scrollable">

														<table id="phenotable" class="table table-hover,table-fixed">

														</table>
													</div>
												</div>
											</div>
										</div>
										<div class="panel panel-primary">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" data-parent="#accordion"
														href="#collapseFour">Select dairy product(s)</a>
												</h4>
											</div>
											<div id="collapseFour" class="panel-collapse collapse">
												<div class="panel-body">
													<div class=" scrollerdiv pre-scrollable">
														<table id="timepointtable" class="table table-hover,table-fixed">

														</table>
													</div>
												</div>
											</div>
										</div>


									</div>
								</div>
							</div>
						</div>

						<div class="col-lg-8">


							<div class="panel panel-primary">
								<div class="panel-heading">Here are some recommendations</div>
								<!-- /.panel-heading -->
								<div class="panel-body">
									<!-- Nav tabs -->
									<ul class="nav nav-pills">
										<li id="home" class="active"><a href="#home-pills"
											data-toggle="tab" id="hp">Best Suited Recipe</a></li>
										<li id="chempr"><a href="#profile-pills" data-toggle="tab" id="chem">More Recipes</a></li>
										<li id="assaytext"><a href="#messages-pills" data-toggle="tab" id="assay">Nutrition Values</a>
										</li>
										
										
									</ul>
									<div class="tab-content">
										<div class="tab-pane fade in active test" id="home-pills">
										<div id="img-div">
										
										</div>
										<div id="button-div">
									   
										</div>
										</div>
										<div class="tab-pane fade" id="profile-pills">
										
										</div>
										<div class="tab-pane fade" id="messages-pills">
											
										</div>
										<div class="tab-pane fade" id="settings-pills">
											
										</div>
										<div class="tab-pane fade" id="credits-pills">
									
										</div>
									</div>
								</div>

							</div>

						<!-- </div> -->
					</div>
				</div>
			</div>
		<div id="theModal" class="modal fade" aria-hidden="true" style="display: none;"> <div class="modal-dialog " style="width: 800px;"><div class="modal-content"> <div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button><h4 class="modal-title">Enlarged image</h4></div><div class="modal-body">  <img not-to-enlarge="true" class="img-responsive" +="" src="/Content/Images/ImageEnlarge/emilia-clarke.jpg" alt="..." style="width: 800px; height: 412px;"></div><div class="modal-footer"><button type="button" class="btn btn-default" data-dismiss="modal">Close</button></div></div></div></div>
	


	<!-- <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
		<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
		METISMENU SCRIPTS
		<script src="/CAT-APP-PROJECT/resources/js/jquery.metisMenu.js"></script>

		</script>
		<script src="/CAT-APP-PROJECT/resources/js/Response/Response.js"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->

<!-- 	<!--  -->
	

	<!-- <script src="/CAT-APP-PROJECT/resources/js/Response/Response.js"></script> -->
	
	<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   
</body>


</html>