<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="true" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>

<html>
	<head>
		<title>Eternity Travels</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="text/javascript" src="resources/js/jquery-1.11.0.min.js"></script>
		
		<script type="text/javascript" src="resources/js/jquery.leanModal.min.js"></script>
		<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" />
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script type="text/javascript" src="resources/js/jquery.leanModal.min.js"></script>
		<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" />
		<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
		 <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
		<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Ek+Mukta">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
		<!-- Optional theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
		<!-- Latest compiled and minified JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
		<!-- CSS style file for all pages  <script src="<c:url value="/resources/css/Travel_world.css" />"></script>-->
		<link rel="stylesheet" type="text/css" href="resources/css/Travel_world.css" />
		
	</head>

	<body>
		<!-- Main header starts here-->
		<div class="container-fluid ">
			
				<div class=" box col-sm-4">
						<div id="flight"> <img src="resources/images/logo1.png"></img></div><!-- Web site logo-->
						<h1>Eternity Travels</h1>
				</div>
				<div class=" box col-sm-4" >
					
				</div>
				<!-- Searchbar starts here-->
				
  				<div class=" box col-sm-4 rightContainer">
  					<div class="leftBox">
  						<div class=" hbox col-sm-4" > <input type="text"  id="searchtextbox"class="form-control" placeholder="Search "  size="30" onkeyup="ajaxFunction(this.value)"></div >
  						<%
  						String username = (String)session.getAttribute("username");
  						String role = (String)session.getAttribute("role");
  						String msg = (String)session.getAttribute("message");
				   		System.out.println("My Role "+role);
				   		%>
  						
  						<div class=" hbox col-sm-4" > 
  						<% if (role!=null && role.equalsIgnoreCase("user")) {%>
  						<button id="myaccount" type="button"   class="btn btn-success"   >My Account</button>
  						<%} %>
  						<% if (role!=null && role.equalsIgnoreCase("admin")) {%>
  						<form:form action="admin.htm" commandName="userAccount" method="get" >
  						<input  href="admin.htm" id="admintask" type="submit" class="btn btn-warning" value="Admin Task">
  						</form:form>
  						<%} %>
  						</div >
  					</div>
  					<div class="rightBox">
  					<% if (role==null) {%>
  					<div id="logout" class=" hbox col-sm-4" ><a id="modal_trigger" href="#modal" class=" btn btnHM LOR"  onchange="logout()">Login or Register</a> </div >
  					<%}  else {%>
  					<a id="lgbtn" href="logout.htm" class=" btn btnHM LOR" onclick="closeSession()" >Logout</a>
  					
  					<%} %>
  					
  							<div class=" hbox col-sm-4" >
  					   <% 
  						if(username!=null){
  						%>	
  							 <br/> <span class="welcomeMessage"> Welcome <c:out value="${sessionScope.username}"/></span> </div >		
  						<% }else {%> 
  							<span class="welcomeMessage2"> <c:out value="${sessionScope.message}"/></span> </div >
  						<%} %>
  					    
						
  					</div> 
  				</div>
  		
  	</div>
  		<!-- Login modal begin-->				
<div id="modal" class="popupContainer" style="display:none;">
						<header class="popupHeader">
								<span class="header_title">Login</span>
								<span class="modal_close"><i class="fa fa-times"></i></span>
						</header>
		
			<section class="popupBody">
						<!-- social site Login -->
					<div class="social_login">
						<div class="">
							<a href="https://www.facebook.com/"  target="_blank" class="social_box fb">
							<span class="icon"><i class="fa fa-facebook"></i></span>
							<span class="icon_title">Connect with Facebook</span>
							</a>
							<a href="https://mail.google.com/"  target="_blank" class="social_box google">
							<span class="icon"><i class="fa fa-google-plus"></i></span>
							<span class="icon_title">Connect with Google</span>
							</a>
						</div>

						<div class="centeredText">
							<span>Or use your Email address</span>
						</div>

						<div class="action_btns" >
							<div class="one_half"><a href="#" id="login_form" class="btnH" >Login</a></div>
							<div class="one_half last"><a href="adduser.htm"  class="btnH">Sign up</a></div>
						</div>
					</div>

				<!-- Username & Password Login form -->
				<form:form action="login.htm" commandName="userAccount" method="post" autocomplete="on" >
					<div class="user_login">
						
							<label>Username</label>
							<form:input path="username" size="30"  id="userName"  required="required"/>
							<br/>
							<label>Password</label>
							<form:input path="password" size="30" type="password" id="userPass"  required="required" />
							<br/>
							<p id="message"><p/>
							<input type="checkbox" id="remember" > Remember me on this computer<br>
							<div class="checkbox">
							</div>

							<div class="action_btns">
							<div class="one_half"><a href="#" class="btnH back_btn"><i class="fa fa-angle-double-left"></i> Back</a></div>
							<div class="one_half last"><input  class="btnH btn_red" type="submit" value="Login"  onclick="logout()" /></div>
							</div>
						
						<a href="#" class="forgot_password">Forgot password?</a>
					</div>
					</form:form>

				<!-- Register Form -->
					<div class="user_register">
						<form>
						<label>Full Name</label>
						<input type="text" />
						<br />

						<label>Email Address</label>
						<input type="email" />
						<br />

						<label>Password</label>
						<input type="password" />
						<br />

						<div class="checkbox">
						<input  type="checkbox"id="send_updates"/>
						<label for="send_updates">Send me occasional email updates</label>
					</div>

					<div class="action_btns">
						<div class="one_half"><a href="#" class="btnH back_btn"><i class="fa fa-angle-double-left"></i> Back</a></div>
						<div class="one_half last"><a href="adduser.htm" class="btnH btn_red">Register</a></div>
					</div>
						</form>
					</div>
			</section>
	</div>
  	<!-- Login Modal ends here-->

		<!-- Main header ends here-->

		<!-- site container starts here-->
		<div class="container">
			<div class="row menu-wrap">
				<nav class="navigation">
				<ul id="formation" >
				<li><a href="/Cloud_Final_Project/">HOME</a></li>
				<li><a href="aboutus.htm">ABOUT US <span class="arrow">&#9660;</span></a>
					<ul class="sub-menu">
						 <li><a href="aboutus.htm">Information</a></li>
						 <li><a href="aboutus.htm">Policies</a></li>
						 <li><a href="aboutus.htm">Contact</a></li>
					</ul></li>
				<li><a href="destination.htm">DESTINATIONS<span class="arrow">&#9660;</span></a>
					<ul class="sub-menu">
						 <li><a href="destination.htm">Africa</a></li>
						 <li><a href="destination.htm">Asia/pacific</a></li>
						 <li><a href="destination.htm">Australia</a></li>
						 <li><a href="destination.htm">America</a></li>
					</ul></li>
				<li><a href="#">SERVICES<span class="arrow">&#9660;</span></a>
					<ul class="sub-menu">
						 <li><a href="#myModal" data-toggle="modal" data-target="#myModal" >Flight booking</a></li>
						 <li><a href="#myModal" data-toggle="modal" data-target="#myModal">Train Booking</a></li>
						 <li><a href="#myModal" data-toggle="modal" data-target="#myModal">Bus booking</a></li>
					</ul></li>
				<li><a href="testimonial.htm">TESTIMONIALS<span class="arrow">&#9660;</span></a>
					<ul class="sub-menu">
						 <li><a href="testimonial.htm">View one</a></li>
						 <li><a href="testimonial.htm">Write One</a></li>
					</ul></li>

				<li style="border-righr:1px;"><a href="#">TRAVEL ACCESSORIES<span class="arrow">&#9660;</span></a>
					<ul class="sub-menu">
						 <li><a href="http://www.amazon.com/" target="_blank">Amazon</a></li>
						 <li><a href="http://www.walmart.com/" target="_blank">Wallmart</a></li>
						 <li><a href="http://www.bestbuy.com/" target="_blank">Best Buy</a></li>
					</ul></li>
				
				</ul>
				</nav>
			</div>
			<!-- Navigation row ends here-->

			<!-- Main GIF animation image and test divs starts here-->
			<div class="row  greenGrass">
				<div class="col-lg-12"id="grassAnime">
				<img id ="grass" src="resources/images/header.gif"></img>
				</div>
				<!-- Main GIF image ends here-->
				<div class="slider1">
					<div class="textslider"><p>“We travel not to escape life, but for life not to escape us.” </p>
					</div>
					<div class="textslider"><p>“The world is a book, and those who do not travel read only one page.” – Saint Augustine</p>
					</div>
					<div class="textslider"><p>“Once a year, go someplace you’ve never been before.” – Dalai Lama</p>
					</div>
					<div class="textslider"><p> “Travel is the only thing you buy that makes you richer.”</p>
					</div>
				</div>
			</div>
			<!-- Text slider ends here-->

			<!-- Booking div starts here-->
			<div class="row" id="booking">

				<div class="col-lg-4 ticket">
					<img src="resources/images/flight.png" alt="flight">
					<div class="bookbutton">
						<button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal">
      					FLIGHT BOOKING
    					</button>
    				</div>
				</div>

				<div class="col-lg-4 ticket">
					<img src="resources/images/train.png" alt="train">
					<div class="bookbutton">
						<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
      					TRAIN BOOKING
    					</button>
    				</div>
				</div>

				<div class="col-lg-4 ticket">
					<img src="resources/images/bus.png" alt="bus">
					<div class="bookbutton">
						<button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal">
      					BUS BOOKING
    					</button>
    				</div>
				</div>
			</div>
			<!-- Booking icons ends here-->

			<!-- Modal for booking starts-->
	<div class="modal fade" id="myModal" role="dialog">
    	<div class="modal-dialog">
    		<!-- Modal content-->
      		<div class="modal-content">
        		<div class="modal-header" id="modhead">
         			 <button type="button" class="close" data-dismiss="modal">&times;</button>
         			 <h4 class="modal-title">Book Cheap Tickets</h4>
        		</div>
       		<div class="modal-body">
          	<form role="form" autocomplete="on">
          		<div>
          			<label class="lableName"><input type="radio" name="Journey" onclick="disableRetrun()">One way</label>
          			<label class="lableName"><input type="radio" name="Journey" onclick="enableRetrun()">Round Trip</label>
          		</div>
          		<table>
          			<tr>
          				<td>
          					<div class="location">
	          				<lable class="lableName">From :</label>
	          				<select class="form-control" id="sel1" style="width:200px">
	        				<option>Boston</option>
	        				<option>Bombay</option>
	       					<option>Chicago</option>
	        				<option>New York</option>
	     					</select>
     						</div>
     					</td>
     					<td>
     						<div>
	          				<lable class="lableName">To:</label>
	         				<select class="form-control" id="sel2" style="width:200px" >
	        				<option>Chicago</option>
	        				<option>Bombay</option>
	       					<option>Boston</option>
	        				<option>New York</option>
	     					</select>
	          				</div>
          				</td>
          			</tr>
          			<tr>
          				<td>
          					<div>
          						<lable class="lableName">Departure:</label><br>
          						<input type="text" id="datepicker" style="width:180px"><span class="glyphicon glyphicon-calendar cal " required></span>
          					</div>
          				</td>
          				<td>	
          					<div>	
          						<lable class="lableName">Return:</label><br>
          						<input type="text" id="datepicker1" style="width:180px" required>><span class="glyphicon glyphicon-calendar cal"></span>
          					</div>
          				</td>
          			</tr>
          			<tr>
          				<td style="width:50px">
		          			<lable class="lableName">Adult:</label>
		          			<select class="form-control" id="sel3"style="width:80px">
		        			<option>1</option>
		        			<option>2</option>
		       				<option>3</option>
		        			<option>4</option>
		     				</select>
          				</td>
          				<td>
	          				<lable class="lableName">Children:</label>
		         			<select class="form-control" id="sel4" style="width:80px">
		        			<option>0</option>
		        			<option>1</option>
		       				<option>2</option>
		        			<option>3</option>
		        			</select>
          				</td>
          			</tr>	
          			<tr>
          				<td>
		          			<lable class="lableName">Infant:</label>
		         			<select class="form-control" id="sel5" style="width:80px">
		        			<option>0</option>
		        			<option>1</option>
		       				<option>2</option>
		        			<option>3</option>
		     				</select>
          				</td>
          				<td>
		          			<lable class="lableName">Class:</label>
		         			<select class="form-control" id="sel6" style="width:120px">
		        			<option>Economy</option>
		        			<option>Business</option>
		       				</select>
          				</td>
          			</tr>	
          		</table>
  			</form>
        </div>
        <div class="modal-footer modfoot">
        	<button type="button" class="btn btn-primary" data-dismiss="modal">Submit</button>
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
      </div>
     </div>
  </div>
  <!-- Booking Model ends here-->

  <!-- Desitination image slide show starts here-->
			<div class="row">
			<div class="col-lg-8" id="slideshow">
				<div><img src="resources/images/london.jpg" alt="london"></div>
				<div><img src="resources/images/dubai.jpg" alt="dubai"></div>
				<div><img src="resources/images/china.jpg" alt="china"></div>
				<div><img src="resources/images/india.jpg" alt="india"></div>
				<div><img src="resources/images/sanfrancisco.jpg" alt="sanfrancisco"></div>
				<div><img src="resources/images/rio.jpg" alt="rio"></div>
				<div><img src="resources/images/singapore.jpg" alt="singapore"></div>
				<div><img src="resources/images/sydney.jpg" alt="sydney"></div>
				<div><img src="resources/images/paris.jpg" alt="paris"></div>
				<div><img src="resources/images/newyork.jpg" alt="snewyork"></div>
			</div>
			<!-- Slide show end-->

			<!-- Category section starts-->
				<div class="col-lg-4 categories">
					<div id="cateHeading"> Categories</div>
					<div id='destinations'>
						<ul class="dropdown">
							<li ><span class="glyphicon glyphicon-play"></span><a> Africa <span class="badge">2</span></a></li>
								<ul class="sub-menu2">
                					<li><a href="destination.htm">Pyramids of Giza-Egypt</a></li>
                					<li><a href="destination.htm">Cape Town</a></li>
                				</ul>
						</ul>
						<ul class="dropdown">
							<li><span class="glyphicon glyphicon-play"></span><a> Europe <span class="badge">5</span></a></li>
								<ul class="sub-menu2">
                					<li><a href="destination.htm">London</a></li>
                					<li><a href="destination.htm">Paris</a></li>
                					<li><a href="destination.htm">Barcelona</a></li>
                					<li><a href="destination.htm">Amesterdam</a></li>
                					<li><a href="destination.htm">Venice</a></li>
                				</ul>
						</ul>
						<ul class="dropdown">
							<li><span class="glyphicon glyphicon-play"></span><a> Australia <span class="badge">3</span></a></li>
								<ul class="sub-menu2">
                					<li><a href="destination.htm">Sydney</a></li>
                					<li><a href="destination.htm">Gold Cost</a></li>
                					<li><a href="destination.htm">Melbourne</a></li>
                				</ul>
						</ul>
						<ul class="dropdown">
							<li><span class="glyphicon glyphicon-play"></span><a> Asia <span class="badge">4</span></a></li>
								<ul class="sub-menu2">
                					<li><a href="destination.htm">Great Taj Mahal</a></li>
                					<li><a href="destination.htm">China Wall</a></li>
                					<li><a href="destination.htm">Mumbai</a></li>
                					<li><a href="destination.htm">Japan</a></li>
                				</ul>

						</ul>
						<ul class="dropdown">
							<li><span class="glyphicon glyphicon-play"></span><a> America <span class="badge">2</span></a></li>
							<ul class="sub-menu2">
                					<li><a href="destination.htm">San Francisco</a></li>
                					<li><a href="destination.htm">New York</a></li>
                					
                				</ul>

						</ul>
					</div>
				</div>
			</div>
			<!-- categorie  section end-->

			<!-- Main Text box starts-->
			<div class="row">
				<div class="col-lg-8  textline">
					<p>Journey is a teacher who helps you broaden your horizons. Travel is the class where you meet this amazing teacher. Experience you gain is ultimate and irreplaceable. Travel a lot, make it a habit and when you grow old you will grow wiser, full of stories to be told.</p>
					<p>
					We might read books, watch travel shows & surf internet for new places, but until you plan that trip, until you leave your sweet home, you would not know what you were missing. Travel with a free mind, without any stress or worry about travel arrangements.
					</p>
					<p>
					<span class="glyphicon glyphicon-forward"></span></span> Eternity Travels feels honored to help you in the minutest way to achieve the above.</p>
				</div>
			<!-- Main Text box ends-->

			<!-- Testimonials section starts-->
				<div class="col-lg-4 ">
					<div id="testHeading"> Testimonials</div>
					<div class="testimonial">
					<div class='testim'>
						<p> <strong>Relaxing Trip</strong></p><br/>
						<p>
						Thanks a lot Eternity for arranging such a wonderful trip at such short notice. It was truly a relaxing trip with no worries of planning.</p>
						<p><strong>Rick</strong></p>
						<a href="testimonial.htm">Read more</a><br/>
						
					</div>
					<div class='testim'>
						<p> <strong>Fun with Friends</strong></p><br/>
						<p>
						After a lot of postponing we were finally able to make that trip to Bora Bora. With the season just starting we thought it would be very expensive but somehow…</p>
						<p><strong>Swapnil</strong></p>
						<a href="testimonial.jsp" >Read more</a><br/>
						
					</div>
					<div class='testim'>
						<p> <strong>Professional Service</strong></p><br/>
						<p>
						I have utilized services of lots of travel agents but interacting with Eternity left a mark on my mind. The thorough professionalism with which they…</p>
						<p><strong>kareena Kapoor</strong></p>
						<a href="testimonial.htm">Read more</a><br/>
						
					</div>
				</div>
			</div>
			<!-- end of testimonial-->


			</div>
			<!-- row  end-->
			
		</div>
		<!-- site container ends here-->

		<!-- Main Footer section starts-->
		<div class="container-fluid bottom">
			<div class="row ">
				<div class="col-lg-4  col-md-4 footer">
					<div class="subbox"><img src="resources/images/compass.png" alt="compass"/>&nbsp;&nbsp;&nbsp;<strong id="traveler">Eternity Travels</strong><br/>
					</div>
					<div class="subbox"><p>Booking, reviews and advices on hotels, resorts, flights, vacation rentals, travel packages, and lots more!</p>
					</div>
					<div class="subbox">
						<a href="https://www.facebook.com/" target="_blank"><img src="resources/images/facebook.png" alt="facebook"/></a>
						<a href="https://www.linkedin.com/" target="_blank"><img src="resources/images/linkedin.png" alt="linkedin"/></a>
						<a href="https://twitter.com/?lang=en" target="_blank"><img src="resources/images/twitter.png" alt="twitter"/></a>
						<a href="https://www.instagram.com/?hl=en" target="_blank"><img src="resources/images/instagram.png" alt="instragram"/></a>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 footer">
					<div class="subbox"><strong id="traveler">Newsletter</strong><br/>
					</div>
					<div class="subbox"><p>Enter your E-mail Address</p>
					<form><input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email"></form>
					<p>*We nevener send spam</p>	
					<button type="submit" class="btn btn-warning">Submit</button>
					</div>
					
				</div>
				<div class="col-lg-4  col-md-4 footer">
						<div class="subbox">
							<ul>
								<li><a href="aboutus.htm">About US</a></li>
								<li><a href="aboutus.htm">Best Price Guarantee</a></li>
								<li><a href="http://www.cnn.com/travel" target="_blank">Travel News</a></li>
								<li><a href="https://www.linkedin.com/" target="_blank">Jobs</a></li>
								<li><a href="aboutus.htm">Privacy Policy</a></li>
								<li><a href="aboutus.htm">Terms of Use</a></li>
								<li><a href="testimonial.htm">Feedback</a></li>
							</ul>	
					</div>
					
				</div>
				<div class="col-lg-4  col-md-4 footer">
					<div class="subbox "><p id="que">Have Questions ?</p><br/>
					</div>
					<div class="subbox"><p id="contact">+1-857-300-8322</p>
					</div>
					<div class="subbox"><p id="emails">
						<a href="mailTo:swapnilhete@yahoo.com">support@eternity.com</a></p>
					</div>
				</div>
			</div>

		</div>

	<!-- Footer section end and HTML code ends here-->
		


	</body>
	<script>
	//slide show jquery 
	$("#slideshow > div:gt(0)").hide();
	setInterval(function() { 
 	 $('#slideshow > div:first')
    .fadeOut(1000)
    .next()
    .fadeIn(1000)
    .end()
    .appendTo('#slideshow');
	},  3000);

	//slide show for testimonials- jquery 
	$(".testimonial > div:gt(0)").hide();
	setInterval(function() { 
 	 $('.testimonial > div:first')
    .fadeOut(1000)
    .next()
    .fadeIn(1000)
    .end()
    .appendTo('.testimonial');
	},  4000);


	//slide show for text slider- jquery 
	$(".slider1 > div:gt(0)").hide();
	setInterval(function() { 
 	 $('.slider1 > div:first')
    .slideUp(1400)
    .next()
    .slideDown(1400)
    .end()
    .appendTo('.slider1');
	},  3600);

	//script for search button
	function ajaxFunction(cityName)   
	{
	
	var xmlHttp;
   
	try     // Firefox, Opera 8.0+, Safari
	{
		xmlHttp=new XMLHttpRequest();
	}
	catch (e)
	{
		try  // Internet Explorer
		{
			xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
		}
		catch (e)
		{
			try
			{
				xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
			}
			catch (e)
			{
				alert("Your browser does not support AJAX!");
				return false;
			}
		}
	}
	

	xmlHttp.open("GET", "cities.jsp?q=" + cityName, true);   
	xmlHttp.send();   

	
	//3. Check the server-data is ready
	xmlHttp.onreadystatechange=function()
	{
		if(xmlHttp.readyState==4)
		{
			//4. Manipulate the DOM
			var cityDiv = document.getElementById("cityDiv");
			var serverData = xmlHttp.responseText;
			cityDiv.innerHTML = serverData;
		}
	}

}

	//jQuery for Search div dislay and hide
$( "input" )
  .focusout(function() {
    
    $( "#cityDiv" ).hide("drop", { direction: "up" }, "slow");
  })
  $( "input" )
  .focus(function() {
    
    $( "#cityDiv" ).show("drop", { direction: "up" }, "slow");
  })


//Login model query

$("#modal_trigger").leanModal({top : 200, overlay : 0.6, closeButton: ".modal_close" });

	$(function(){
		// Calling Login Form
		$("#login_form").click(function(){
			$(".social_login").hide();
			$(".user_login").show();
			return false;
		});

		// Calling Register Form
		$("#register_form").click(function(){
			$(".social_login").hide();
			$(".user_register").show();
			$(".header_title").text('Register');
			return false;
		});

		// Going back to Social Forms
		$(".back_btn").click(function(){
			$(".user_login").hide();
			$(".user_register").hide();
			$(".social_login").show();
			$(".header_title").text('Login');
			return false;
		});

	})

	//JQuery date pickers
	$(function() {
    $( "#datepicker" ).datepicker();
    $( "#datepicker1" ).datepicker();
  });

	//Login check function
	/*
	var attempt = 6; // Variable to count number of failed attempts.
	// Below function Executes on click of login button.
	function validate(){
	var username = document.getElementById("userName").value;
	var password = document.getElementById("userPass").value;
	if ( username == "admin" && password == "admin"){
	document.getElementById("messageuser").innerHTML="Welcome: "+username;
	//window.location = "Travel_world.html"; // Redirecting to other page.
	return false;
	}
	else{
	attempt --;// Decrementing by one.
	document.getElementById("message").innerHTML="Incorrect Login .You have left "+attempt+" attempts";
	
	if( attempt == 0){

	document.getElementById("userName").disabled = true;
	document.getElementById("userPass").disabled = true;
	document.getElementById("modal_trigger").disabled = true;
	return false;
	}
	}
	}
	*/
	//JQuery for Categorie sub menu drop down effects
	$(document).ready(function() {
    $( '.dropdown' ).hover(
        function(){
            $(this).children('.sub-menu2').slideDown(300);
        },
        function(){
            $(this).children('.sub-menu2').slideUp(400);
        }
    );
});
	
	//function to disable return date if input is one-way
  function disableRetrun(){
  
  document.getElementById("datepicker1").disabled = true;
  
  return false;
  }
  function enableRetrun(){
  
  document.getElementById("datepicker1").disabled = false;
  
  return false;
  }
  
  //function to deactivate login button
  
  function logout(){
	  
	  //document.getElementById("logout").style.visibility = "hidden";
	  
	  document.getElementById("modal_trigger").style.display = "none";
	   function pdisplay(){
		   document.getElementById("logout").style.visibility = "hidden";
	   }
  }
  
  </script>
 

</html>