<!-- creating new user in admin table -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="database.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
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
<title>User Created Successfully</title>
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
    <link rel="stylesheet" type="text/css" href="css/style2.css">
<link rel="stylesheet" type="text/css" href="css/style1.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
<style type="text/css">
.session-Container {
text-align: center;
background-color:#FFC300;
}
.session-Police {
    display: inline;
    background-color:#FFC300;
}
.session-User {
    display: inline;
    padding-left: 44px;
    padding-right: 44px;
    background-color:#FFC300;
 }
 .session-Logout {
 background-color:#FFC300;
 }
</style>
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
                <div class="collapse navbar-collapse justify-content-end" id="navbar-wd">
                    <ul class="navbar-nav">
                        <li><a class="nav-link active" href="index.html">Home</a></li>
                        <li><a class="nav-link" href="about.html">About</a></li>
                        <li><a class="nav-link" href="courses.html">FAQ</a></li>
                        <li><a class="nav-link" href="Services.html">Services</a></li>
						<li><a class="nav-link" href="ContactUs.jsp">Contact us</a></li>
                    </ul>
                </div>
             
                   <iframe src="http://free.timeanddate.com/clock/i7boiza0/n176/ftbu/tt0/tw0/tm1/ta1/tb4" frameborder="0" width="108" height="34"></iframe>

              
            </div>
        </nav>
    </header>
	<!-- End header -->

	
     <%
			HttpSession sess=request.getSession();
			String user=sess.getAttribute("admin").toString();
		%>
			
	
		<!-- admin name and police station displayed by making session -->
		<div class="session-Container">
		<p>
		
		<div class ="session-User"> User  :  <%out.println(user); %> </div>
		<!-- Link for admin(police officer) logout -->
		<a href="adminLogout.jsp" class = "session-Logout"> Logout</a>
		</p>
	</div>

	<!-- section -->
	<div class="section layout_padding contact_section"
		style="background: #f6f6f6;">
<%
	try
		{
			String policeStation=null;	
			String id=request.getParameter("ID");
			String password=request.getParameter("password");
			String email=request.getParameter("email");
			String role=request.getParameter("role");
			System.out.println("role:-"+role);
			if(role.equals("P"))
			{
			 policeStation=request.getParameter("policeStation").replaceAll("\\s","");
			System.out.println(policeStation);
			}
			
			Date current_date=new Date();
			String date=String.valueOf(current_date.getDate());
			String month=String.valueOf(current_date.getMonth()+1);
			String year=String.valueOf(current_date.getYear()+1900);
			String dateRecieved=year+"-"+month+"-"+date;
			
			AdminPojo obj=new AdminPojo();
			obj.setId(id);
			obj.setPassword(password);
			obj.setEmail(email);
			obj.setRole(role);
			obj.setPoliceStation(policeStation);
			
			Database db=new Database();
			db.newUser(obj);
			}
			catch(Exception e)
			{
				e.getMessage();
			}
%>
	<div class="border">
		<div class="thumb">
			<i class="fa fa-thumbs-up" style="font-size: 150px; color: #003366;"
				aria-hidden="true"></i>
		</div>
	
		<h1 style="color: #003366;">
			<b>User Created Successfully </b>
		</h1>
	</div>
	</div>
	<!-- end section -->
	<!-- Start Footer -->
	    <footer class="footer-box">
        <div class="container">
		
		   <div class="row">
		   
		      <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
			     <div class="footer_blog footer_menu white_fonts">
				    
					   <h1><b>Aarakshak</b></h1>
					 
					 <div class="full white_fonts">
					    <p>Aarashak is a website for the UP Police that helps them to handle the online requests more easily and dynamically. </p>
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
							   <li><span>Fire   : 101</span></li>
							   <li><span>Health : 108</span></li>
							   <li><span>Women  : 1090</span></li>
							   <li><span>Single Number for all helpline :<br>112</span></li>
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
					<p class="crp">� Copyrights  By Aarkshak</p>
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