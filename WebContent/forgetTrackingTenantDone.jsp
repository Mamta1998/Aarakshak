<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="database.*"%>
<!DOCTYPE html>
<html lang="en">
<!-- Basic -->

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Mobile Metas -->
<meta name="viewport"
	content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Site Metas -->
<title>Recovering Tenant Verification Application Tracking ID</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

<!-- Site Icons -->
<link rel="shortcut icon" href="#" type="image/x-icon" />
<link rel="apple-touch-icon" href="#" />

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<!-- Pogo Slider CSS -->
<link rel="stylesheet" href="css/pogo-slider.min.css" />
<!-- Site CSS -->
<link rel="stylesheet" href="css/style.css" />
<!-- Responsive CSS -->
<link rel="stylesheet" href="css/responsive.css" />
<!-- Custom CSS -->
<link rel="stylesheet" href="css/custom.css" />

<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<style>
.border
  { 
	
	border: 5px solid black;
	width: 40%;
	height: 94px;
	padding: 15px 15px 15px 15px;
	margin:70px 0px 0px 357px;

  }</style>
</head>

<body id="inner_page" data-spy="scroll" data-target="#navbar-wd"
	data-offset="98">

	<!-- LOADER -->
	<div id="preloader">
		<div class="loader">
			<img src="images/loader.gif" alt="#" />
		</div>
	</div>
	<!-- end loader -->
	<!-- END LOADER -->

	<!-- Start header -->
	<header class="top-header">
		<nav class="navbar header-nav navbar-expand-lg">
			<div class="container-fluid">

				<div class="collapse navbar-collapse justify-content-end"
					id="navbar-wd">
					<ul class="navbar-nav">
						<li><a class="nav-link active" href="index.html">Home</a></li>
						<li><a class="nav-link" href="about.html">About</a></li>
						<li><a class="nav-link" href="courses.html">Courses</a></li>
						<li><a class="nav-link" href="reaserch.html">Reaserch</a></li>
						<li><a class="nav-link" href="news.html">News</a></li>
						<li><a class="nav-link" href="contact.html">Contact us</a></li>
					</ul>
				</div>
      <iframe src="http://free.timeanddate.com/clock/i7boiza0/n176/ftbu/tt0/tw0/tm1/ta1/tb4" 
frameborder="0" width="108" height="34"></iframe>



			</div>
		</nav>
	</header>
	<!-- End header -->

	<!-- section -->

	<section class="inner_banner">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="full">
						<h3>Recover TrackID</h3>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- end section -->

	<!-- section -->
	<div class="section layout_padding contact_section"
		style="background: #f6f6f6;">
		<div class="container">
			<div class="row">
				
				<div class="col-lg-4 col-md-4 col-sm-12">
					<div class="contact_form">
						<form method="post" action="checkAnswer.jsp">
						<%
			try {
				String aadhar = request.getParameter("aadhar").replaceAll("\\s","");
				String dateRecieved = request.getParameter("date").replaceAll("\\s","");
				
				register_pojo obj = new register_pojo();
				obj.setAadharNo(aadhar);
				obj.setDateRecieved(dateRecieved);
				
				String question = null, answer = null, track = null;
				
				Connection conn = DBConnection.getConnection();
				String query = "Select question,TrackID,answer from tenant where aadharNo=? and dateRecieved=?";
				PreparedStatement myStmt = conn.prepareStatement(query);
				myStmt.setString(1, obj.getAadharNo());
				myStmt.setString(2, obj.getDateRecieved());
				
				ResultSet myrs = myStmt.executeQuery();
				
				while (myrs.next()) {
					track = myrs.getString("TrackID");
					question = myrs.getString("question");
					answer = myrs.getString("answer");

				}
				out.println("<input type =\"hidden\"" + " name = \"a\"" + "value=" + answer + ">");
				out.println("<input type =\"hidden\"" + " name = \"b\"" + "value=" + track + ">");
		%>
		<center><div class="border">
			<%
				out.println("<h2 style=\"color:black;\">"+question+ "</h2>");
			%>
		</div>
							
							<h1></h1>
								<div class="full field">
									<input type="text" name="ans" placeholder="Your Answer" required/> 
								</div>
								
								
								
								<div class="full field">
									<div class="center">
										<button>Check</button>
									</div>
								</div>
							</center>
						</form>
						<%} 
		catch (Exception e) {
			e.getMessage();
		}
	%>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end section -->

 
     <!-- Start Footer -->
	<footer class="footer-box">
		<div class="container">

			<div class="row">

				<div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
					<div class="footer_blog footer_menu white_fonts">

						<h1>
							<b>Aarakshak</b>
						</h1>

						<div class="full white_fonts">
							<p>Aarashak is a website for the UP Police that helps them to
								handle the online requests more easily and dynamically.</p>
						</div>
					</div>
				</div>

				<div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
					<div class="footer_blog footer_menu white_fonts">
						<h3>Quick links</h3>
						<ul>
							<li><a href="#">> FIR</a></li>
							<li><a href="#">> SHO</a></li>
							<li><a href="#">> Senior Officers</a></li>
							<li><a href="#">> Track FIR</a></li>

						</ul>
					</div>
				</div>



				<div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
					<div class="footer_blog full white_fonts">
						<h3>Emergency Helpline</h3>
						<ul class="full">
							<li><span>Police : 100</span></li>
							<li><span>Fire : 101</span></li>
							<li><span>Health : 108</span></li>
							<li><span>Women : 1090</span></li>
							<li><span>Single Number for all helpline :<br>112
							</span></li>
						</ul>
					</div>
				</div>

			</div>

		</div>
	</footer>
	<!-- End Footer -->

    <div class="footer_bottom">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <p class="crp">© Copyrights reserved by Aarakshak</p>
                </div>
            </div>
        </div>
    </div>

	<a href="#" id="scroll-to-top" class="hvr-radial-out"><i
		class="fa fa-angle-up"></i></a>

	<!-- ALL JS FILES -->
	<script src="js/jquery.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<!-- ALL PLUGINS -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/jquery.pogo-slider.min.js"></script>
	<script src="js/slider-index.js"></script>
	<script src="js/smoothscroll.js"></script>
	<script src="js/form-validator.min.js"></script>
	<script src="js/contact-form-script.js"></script>
	<script src="js/isotope.min.js"></script>
	<script src="js/images-loded.min.js"></script>
	<script src="js/custom.js"></script>
	<script>
	/* counter js */

(function ($) {
	$.fn.countTo = function (options) {
		options = options || {};
		
		return $(this).each(function () {
			// set options for current element
			var settings = $.extend({}, $.fn.countTo.defaults, {
				from:            $(this).data('from'),
				to:              $(this).data('to'),
				speed:           $(this).data('speed'),
				refreshInterval: $(this).data('refresh-interval'),
				decimals:        $(this).data('decimals')
			}, options);
			
			// how many times to update the value, and how much to increment the value on each update
			var loops = Math.ceil(settings.speed / settings.refreshInterval),
				increment = (settings.to - settings.from) / loops;
			
			// references & variables that will change with each update
			var self = this,
				$self = $(this),
				loopCount = 0,
				value = settings.from,
				data = $self.data('countTo') || {};
			
			$self.data('countTo', data);
			
			// if an existing interval can be found, clear it first
			if (data.interval) {
				clearInterval(data.interval);
			}
			data.interval = setInterval(updateTimer, settings.refreshInterval);
			
			// initialize the element with the starting value
			render(value);
			
			function updateTimer() {
				value += increment;
				loopCount++;
				
				render(value);
				
				if (typeof(settings.onUpdate) == 'function') {
					settings.onUpdate.call(self, value);
				}
				
				if (loopCount >= loops) {
					// remove the interval
					$self.removeData('countTo');
					clearInterval(data.interval);
					value = settings.to;
					
					if (typeof(settings.onComplete) == 'function') {
						settings.onComplete.call(self, value);
					}
				}
			}
			
			function render(value) {
				var formattedValue = settings.formatter.call(self, value, settings);
				$self.html(formattedValue);
			}
		});
	};
	
	$.fn.countTo.defaults = {
		from: 0,               // the number the element should start at
		to: 0,                 // the number the element should end at
		speed: 1000,           // how long it should take to count between the target numbers
		refreshInterval: 100,  // how often the element should be updated
		decimals: 0,           // the number of decimal places to show
		formatter: formatter,  // handler for formatting the value before rendering
		onUpdate: null,        // callback method for every time the element is updated
		onComplete: null       // callback method for when the element finishes updating
	};
	
	function formatter(value, settings) {
		return value.toFixed(settings.decimals);
	}
}(jQuery));

jQuery(function ($) {
  // custom formatting example
  $('.count-number').data('countToOptions', {
	formatter: function (value, options) {
	  return value.toFixed(options.decimals).replace(/\B(?=(?:\d{3})+(?!\d))/g, ',');
	}
  });
  
  // start all the timers
  $('.timer').each(count);  
  
  function count(options) {
	var $this = $(this);
	options = $.extend({}, options || {}, $this.data('countToOptions') || {});
	$this.countTo(options);
  }
});
	</script>
</body>

</html>