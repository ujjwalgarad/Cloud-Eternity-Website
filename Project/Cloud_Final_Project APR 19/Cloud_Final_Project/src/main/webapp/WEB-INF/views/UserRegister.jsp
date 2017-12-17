<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
		<div class="container-fluid">
			
				<div class=" box" >
						<div id="flight"> <img src="resources/images/logo1.png"></img></div><!-- Web sit logo-->
						<h1>Eternity Travels</h1>
				</div>
				<div class=" box">
					
				</div>
				<!-- Searchbar starts here-->
  				<div class=" box">
  					<div id="searchDiv">
						<form class="navbar" role="search">
  							<div class="form-group" id="SearchBar">
    							<input type="text"  id="searchtextbox"class="form-control" placeholder="Search "  size="30" onkeyup="ajaxFunction(this.value)">
								<div id="cityDiv"></div> 

    						</div>
						</form>

					</div>
					<!-- Login button  here-->
					<a id="modal_trigger" href="#modal" class=" btn btnHM LOR">Login or Register</a>
					<p id="messageuser"></p>
					
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

						<div class="action_btns">
							<div class="one_half"><a href="#" id="login_form" class="btnH">Login</a></div>
							<div class="one_half last"><a href="adduser.htm"  class="btnH">Sign up</a></div>
						</div>
					</div>

				<!-- Username & Password Login form -->
				<form:form action="login.htm" commandName="userAccount" method="post" autocomplete="on" >
					<div class="user_login">
						
							<label>Email/Username</label>
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
							<div class="one_half last"><input class="btnH btn_red" type="submit" value="Login" /></div>
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
					
  		</div>
  	</div>
  	<!-- Login Modla ends here-->

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
				<li><a href="index.htm">DESTINATIONS<span class="arrow">&#9660;</span></a>
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


<%   String msg1 = (String)session.getAttribute("message1");
	 String msg2 = (String)session.getAttribute("message2");
	  if(msg1==null && msg2==null){%>
<form:form action="adduser.htm" commandName="userAccount" method="post">
<div class="row" id="myform">
<h3>Welcome to user registration. Please fill out all details. </h3>
	<div class="row">
		<div class="col-sm-4"> <label>User Name:</label><br/>
		<form:input path="username" size="30" type="text"  required="required" placeholder="User Name"/><br/>
		</div>
		<div class="col-sm-4"> 
		<label>First Name:</label><br/>
			<form:input path="firstName" size="30" type="text"  required="required" placeholder="First Name"/><br/>
		</div>
		<div class="col-sm-4"> </div>
			<label>Last Name:</label><br/>
			<form:input path="lastName" size="30" type="text"  required="required" placeholder="Last Name"/><br/>
	</div>
	<br/>
	<div class="row">
	<div class="col-sm-4">
	<label>Password:</label><br/>
	<form:input path="password" size="30" type="password"  required="required" placeholder="Password" id="psw1" /> <br/><br/>
	</div>
	<div class="col-sm-4">
	<label>Re-enter Password:</label><br/>
	<input size="30" type="password" required="required" placeholder="Confirm Password" id="psw2" onchange="validatePWD()"/>
	<p id="pswMsg"> </p>
	<!-- <form:input path="password" size="30" type="password"  required="required" placeholder="Confirm Password" /> -->
	</div>
	<div class="col-sm-4">
	</div>
	
	</div>
	<div class="row">
	<div class="col-sm-12">
	<label>Address</label>
	</div>
	
	</div>
	
	<div class="row"> 
	<div class="col-sm-4">
	
	<label>Street Name:</label><br/>
	<form:input path="address.streetName" size="30" type="text"  required="required" placeholder="Street Name" /><br/>
	</div>
	<div class="col-sm-4">
	<label>City:</label><br/>
	<form:input path="address.city" size="30" type="text"  required="required" placeholder="City" /><br/>
	</div>
	<div class="col-sm-4">
	
	<label>Zipcode:</label><br/>
	<form:input path="address.zipcode" size="30" type="number"  required="required" placeholder="Zip Code"/><br/><br/>
	</div>
	</div>
	<div class="row">
		<div class="col-sm-4"> 
		<label>State:</label><br/>
	<form:input path="address.state" size="30" type="text"  required="required" placeholder="State" />
		</div>
		<div class="col-sm-4"> 
		<label>Country:</label><br/>
	<form:input path="address.country" size="30" type="text"  required="required" placeholder="Country" />
		</div>
		<div class="col-sm-4"> 
		</div>
	</div>
	<br/>
	<div class="row">
	<div class="col-sm-4">
	<label>Email Id:</label><br/>
	<form:input path="email" size="30" type="email"  required="required" placeholder="EMail"/>
	</div>
	<div class="col-sm-4">
	<label>Contact No:</label><br/>
	<form:input path="telephone" size="30" type="number"  required="required" placeholder="Contact No." />
	</div>
	<div class="col-sm-4">
	</div>
	
	</div>
	<br/>
	<div class="row">
	<div class="col-sm-12">
	<!-- <input type="submit" value="Create User" /> -->
	<button type="submit" class="btn btn-primary" id="createBTN">Create User</button>
	</div>
	
	</div>
	
	<br/><br/>
	
	
</div>
	<br/>
</form:form>

<%} %>

<% if (msg1!=null){ %>
<div class="regbody">
 <p class="regMsg">Congratulations!! <c:out value="${sessionScope.username}"/> <c:out value="${sessionScope.message1}"/></p>
 </div>
<%} %>
<% if (msg2!=null){ %>
<div class="regbody">
 <p class="regMsg"><c:out value="${sessionScope.message2}"/></p>
 </div>
<%} %>
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
					<div class="subbox"><p id="email">
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

  //to match password
  
  function validatePWD(){
	  var psw1 = document.getElementById("psw1").value;
	  var psw2 = document.getElementById("psw2").value;
	  
	  if(psw1!==psw2){
		  
		  var message =document.getElementById("pswMsg");
		  message.innerHTML = "Password mistmacth!!";
		  document.getElementById("createBTN").disabled = true;
	  }
	  else{
		  var message =document.getElementById("pswMsg");
		  message.innerHTML = "";
		  document.getElementById("createBTN").disabled = false;
	  }
	  
  }
  </script>


</html>