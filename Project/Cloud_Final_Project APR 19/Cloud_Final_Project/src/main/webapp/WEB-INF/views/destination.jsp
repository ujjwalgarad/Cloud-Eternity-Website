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
		<div class="row destinationName">
			<h3>Africa</h3>
					<div class="row desti">
						<div class="col-lg-4">
						<img src="resources/images/africa1.jpg" alt="africa"></img>
						</div>
						<div class="col-lg-8">

						<p class="abtus">
							South Africa is a popular tourist destination and the industry accounts for a substantial amount of the country's revenue. According to the World Travel & Tourism Council, the tourism industry directly contributed ZAR102 billion to South African GDP in 2012, and supports 10.3% of jobs in the country. South Africa offers both domestic and international tourists a wide variety of options, among others the picturesque natural landscape and game reserves, diverse cultural heritage and highly regarded wines. Some of the most popular destinations include several national parks, such as the expansive Kruger National Park in the north of the country, the coastlines and beaches of the KwaZulu-Natal and Western Cape provinces, and the major cities like Cape Town, Johannesburg and Durban....
						</p>
						<button type="button" class=" btn .btn-warning" >More..</button>
						</div>
					</div>
		</div>

		<div class="row destinationName">
			<h3>Asia</h3>
					<div class="row desti">
						<div class="col-lg-4">
						<img src="resources/images/asia1.jpg" alt="africa"></img>
						</div>
						<div class="col-lg-8">

						<p class="abtus">
							Asia is too massive and diverse to conceptualize as a single digestible travel "destination". Even defining the borders of this continent is difficult - from the mountains around the Black Sea in the west, to the snow fields of Siberia in the east, there are more people and cities in Asia than outside of it.
							  Asia's and the world's highest point is Mount Everest, along the border of Tibet and Nepal, which rises to 8,848m (29,028 ft) above sea level. Its lowest point is the Dead Sea, located at the meeting points of Israel, the Palestinian Territories, and Jordan, whose surface is 400m (1,312 ft) below sea level. Asia's longest river is the Yangtze, which runs 6,300km (3,915 miles) through China, all the way from the high Tibetan Plateau to Shanghai. Its largest lake is the 386,400km² (149,200 square mile) Caspian Sea, which is surrounded by several Central Asian nations.
							  Asia is bounded by the Pacific Ocean to the east, by Australia to the southeast, and by the Indian Ocean to the south. It's bordered by the Red Sea to the southwest, by Europe and the Urals to the west, and by the Arctic Ocean to the north.
							  Travel options range widely, from the desert ruins and modern mega-malls of the Middle East to the magnificent ancient monuments in South Asia, and from the beach bungalows and jungle treks of Southeast Asia to the mega-cities and technology capitals of East Asia...
						</p>
						<button type="button" class=" btn .btn-warning" >More..</button>
						</div>
					</div>
		</div>

		<div class="row destinationName">
			<h3>Europe</h3>
					<div class="row desti">
						<div class="col-lg-4">
						<img src="resources/images/europe1.jpg" alt="africa"></img>
						</div>
						<div class="col-lg-8">

						<p class="abtus">
							Europe encompasses an area of 10,180,000km² (3,930,000 square miles), stretching from Asia to the Atlantic, and from Africa to the Arctic. European countries welcome more than 480 million international visitors per year, more than half of the global market, and 7 of the 10 most visited countries are European nations.
							It's easy to see why - a well preserved cultural heritage, open borders and efficient infrastructure makes visiting Europe a breeze, and rarely will you have to travel more than a few hours before you can immerse yourself in a new culture, and dive into a different phrasebook. Although it is the world's smallest continent in land surface area, there are profound differences between the cultures and ways of life in its countries.
							The eastern border of Europe, for instance, is not well defined. The Caucasus states are sometimes considered part of Asia due to geography, and much of Russia and almost all of Turkey are geographically Asian. The UK, Ireland and Iceland all manage to sneak in.
							Must-visits include France, Italy, Germany, Spain, and the United Kingdom. Don't let your sense of adventure fail you by missing out on Scandinavia, Poland, Portugal, or the microstates of Andorra, Liechtenstein and Luxembourg...
						</p>
						<button type="button" class=" btn .btn-warning" >More..</button>
						</div>
					</div>
		</div>

		<div class="row destinationName">
			<h3>America</h3>
					<div class="row desti">
						<div class="col-lg-4">
						<img src="resources/images/america1.jpg" alt="africa"></img>
						</div>
						<div class="col-lg-8">

						<p class="abtus">
							The United States of America is a large country in North America, often referred to as the "USA", the "US", the "United States", "America", or simply "the States". Home to the world's third-largest population, with over 318 million people, it includes both densely populated cities with sprawling suburbs and vast, uninhabited natural areas.
							With its history of mass immigration dating from the 17th century, it is a "melting pot" of cultures from around the world and plays a dominant role in the world's cultural landscape. It's famous for its wide array of popular tourist destinations, ranging from the skyscrapers of Manhattan and Chicago, to the natural wonders of Yellowstone and Alaska, to the warm, sunny beaches of Florida, Hawaii and Southern California.
						</p>
						<button type="button" class=" btn .btn-warning" >More..</button>
						</div>
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