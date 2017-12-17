<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!doctype html>
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

		<link rel="stylesheet" type="text/css" href="resources/css/Travel_world.css" />
		
	</head>

	<body>
		<!-- Main header starts here-->
		<div class="container-fluid">
			
				<div class=" box" >
						<div id="flight"> <img src="resources/images/logo1.png"></img></div>
						<h1>Eternity Travels</h1>
				</div>
				<div class=" box">
					
				</div>
  				<div class=" box">
  					<div id="searchDiv">
						<form class="navbar" role="search">
  							<div class="form-group" id="SearchBar">
    							<input type="text"  id="searchtextbox"class="form-control" placeholder="Search "  size="30" onkeyup="ajaxFunction(this.value)">
								<div id="cityDiv"></div> 

    						</div>
						</form>

					</div>
					<a id="modal_trigger" href="#modal" class=" btn btnHM LOR">Login or Register</a>
					<p id="messageuser"></p>
					
				
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
							<div class="one_half last"><a href="#" id="register_form" class="btnH">Sign up</a></div>
						</div>
					</div>

				<!-- Username & Password Login form -->
					<div class="user_login">
						<form autocomplete="on" >
							<label>Email / Username</label>
							<input type="text"  id="userName" name="userName" required/>
							<br />
							<label>Password</label>
							<input type="password" id="userPass" name="userPass" required />
							<br />
							<p id="message"><p/>
							<div class="checkbox">
								<input id="remember" type="checkbox" />
								<label for="remember">Remember me on this computer</label>
							</div>

							<div class="action_btns">
							<div class="one_half"><a href="#" class="btnH back_btn"><i class="fa fa-angle-double-left"></i> Back</a></div>
							<div class="one_half last"><a href="#" class="btnH btn_red" onclick="validate();">Login</a></div>
							</div>
						</form>
						<a href="#" class="forgot_password">Forgot password?</a>
					</div>

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
						<div class="one_half last"><a href="#" class="btnH btn_red">Register</a></div>
					</div>
						</form>
					</div>
			</section>
	</div>
					
  		</div>
  	</div>
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

			<div class="row">
				<div class="col-lg-12">
					<h3>About Us</h3>
					<hr>
					<p class="abtus">Welcome to a infinity of travels world - Eternity Travels</p>
					<p class="abtus"> We introduce ourselves as a fast growing Tour Operator and Travel Agent which started as a small group on 12th December, 2011 with an assurance to be an efficient travel company which offers multi-product travel services. Millions may offer the same services as we do but we serve with a difference.</P><br>

					<p class="abtus">We at Eternity Travels believe in</p>
					<blockquote>&#8216; Quality is a State of Mind&#8217; &#8211; Swami Vivekananda</blockquote><br>
					<p class="abtus">
					We not only offer services at affordable rates, we do it with ‘Quality’ and in the process, build relations.
					At Eternity Travels, you will find a team of dedicated professionals, each contributing their optimum expertise to deliver and ensure complete satisfaction of our clients.</p>
					<p class="abtus">
					Customer satisfaction is our ultimate motive and we strive hard to make every travel we provide to be a memorable experience. We offer a complete travel management, in other words everything from planning to execution of tours. Whether you are a large corporate client demanding custom travel services or an individual traveler looking for a weekend getaway, you will always receive our professional and personal attention.</p>
				</div>
			</div>
				<div class="row">
				<div class="col-lg-12">
					<h3>Policies</h3>
					<hr>
					<p class="abtus">
						As a Eternity Travels Site user, you are in control of all your travel planning. We know you want to remain in control of your personal information as well. As one of the pioneers in online travel, we realize that earning and retaining your trust is of paramount importance and it's a responsibility we take very seriously, every day. </p><br>
					<p class="abtus">
					That's why we've provided this Privacy Policy, which sets forth our policies regarding the collection, use and protection of the personal information of those using the Eternity Travels website. Personal information means information that can be linked to a specific individual, such as name, address, telephone number, e-mail address and credit card number. </p><br>
					<p class="abtus">
					We encourage you to review our Privacy Policy, and become familiar with it, but you should know that we do not sell or rent our customers' personal information to third parties. </p><br>
					<p class="abtus">
					Please note that we review our Privacy Policy from time to time, and we may make periodic changes to the policy in connection with that review. Therefore, you may wish to bookmark this page and/or periodically review this page to make sure you have the latest version. Regardless of later updates, we will abide by the privacy practices described to you in this Privacy Policy at the time you provided us with your personal information.</p><br>
				</div>
			</div>

				<div class="row">
				<div class="col-lg-12">
					<h3>Contact Us</h3>
					<hr>
					<p> 32 Clearway Street, Boston, Massachusetts-02115- USA</p>
				</div>
			</div>
			
			

		</div>
		<!-- site container ends here-->

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
  <!--Model ends here-->
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
						support@eternity.com</p>
					</div>
				</div>
			</div>

		</div>
		


	</body>
	<script>
	
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
$( "input" )
  .focusout(function() {
    
    $( "#cityDiv" ).hide("drop", { direction: "up" }, "slow");
  })
  $( "input" )
  .focus(function() {
    
    $( "#cityDiv" ).show("drop", { direction: "up" }, "slow");
  })


//new model query

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

	$(function() {
    $( "#datepicker" ).datepicker();
    $( "#datepicker1" ).datepicker();
  });

	//Login check function

	var attempt = 6; // Variable to count number of attempts.
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

  </script>


</html>