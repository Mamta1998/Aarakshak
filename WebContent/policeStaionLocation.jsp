
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="database.*" %>
<!DOCTYPE html>
<html lang="en">
<!-- Basic -->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <!-- Site Metas -->
    <title>Police Station Map</title>
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

</head>

<body id="inner_page" data-spy="scroll" data-target="#navbar-wd" data-offset="98">

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
	<!-- section -->
	
	<section class="inner_banner">
	  <div class="container">
	      <div class="row">
		      <div class="col-12">
			     <div class="full">
				     <h3>Police Station Location</h3>
				 </div>
			  </div>
		  </div>
	  </div>
	</section>
	
	<!-- end section -->
<center>
<%
String loc=null;
 loc=request.getParameter("station");
System.out.println(loc);
if(loc.replaceAll("\\s+","").equalsIgnoreCase("BADALPUR")) {
 %>

<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3503.076422356628!2d77.50523471442713!3d28.597484082431702!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cec5745236f47%3A0x3a64af632465850d!2sBadalpur%20Police%20Station!5e0!3m2!1sen!2sin!4v1590564385377!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
<% } else if(loc.replaceAll("\\s+","").equalsIgnoreCase("BISRAKH")){ %>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3503.962552711668!2d77.43596181442632!3d28.570887182442135!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cefd3f996c923%3A0xd9982590a7425743!2sPolice%20station%20Bisrakh%2C%20Gautambudhnagar%2C%20U.P.!5e0!3m2!1sen!2sin!4v1590586835431!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
<% } else if(loc.replaceAll("\\s+","").equalsIgnoreCase("DADRI")){ %>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d56059.79136900075!2d77.53383705600035!3d28.577660404315687!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390c93006f0ae01f%3A0x7af21f4a78ba786e!2sPolice%20Station!5e0!3m2!1sen!2sin!4v1590642060030!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
<% } else if(loc.replaceAll("\\s+","").equalsIgnoreCase("DANKAUR")){ %>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14045.293745960698!2d77.54476537138532!3d28.34906957048533!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cc766877868bf%3A0x3794c3ea99f5d2bc!2sLokesh!5e0!3m2!1sen!2sin!4v1590642271777!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
<% } else if(loc.replaceAll("\\s+","").equalsIgnoreCase("ECOTECH-1")){ %>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d224725.15488052138!2d77.41343121881633!3d28.348854589092227!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cc0e33227ac67%3A0x4b310409da7471db!2sEcotech%20First%20Police%20Station!5e0!3m2!1sen!2sin!4v1590642333660!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
<% } else if(loc.replaceAll("\\s+","").equalsIgnoreCase("ECOTECH-3")){ %>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28042.71795661118!2d77.45315454627632!3d28.529506177324972!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390ce96e41751601%3A0xe7fe081bb35a8c49!2sPolice%20Station%20ECOTECH%203rd!5e0!3m2!1sen!2sin!4v1590642363841!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
<% } else if(loc.replaceAll("\\s+","").equalsIgnoreCase(("EXPRESS WAY").replaceAll("\\s+",""))){ %>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3506.326428328413!2d77.39949101442431!3d28.499825082470334!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390ce86082079ba5%3A0x5c01359c2395862!2sPolice%20Station!5e0!3m2!1sen!2sin!4v1590642396922!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
<% } else if(loc.replaceAll("\\s+","").equalsIgnoreCase(("GREATER NOIDA").replaceAll("\\s+",""))){ %>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d56133.00832318466!2d77.50208607910159!3d28.439979000000005!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cc0423bdbec9f%3A0x8cbf85cec62caa8d!2sPolice%20station%20greater%20noida!5e0!3m2!1sen!2sin!4v1590642426665!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
<% } else if(loc.replaceAll("\\s+","").equalsIgnoreCase(("JARCHA").replaceAll("\\s+",""))){ %>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7007.903695081882!2d77.64790182281705!3d28.571208629767842!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x6d3b58f6aa7d0bb9!2sPOLICE%20STATION%20JARCHA!5e0!3m2!1sen!2sin!4v1590642463529!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
<% } else if(loc.replaceAll("\\s+","").equalsIgnoreCase(("JEWAR").replaceAll("\\s+",""))){ %>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3518.75098422275!2d77.56170496441362!3d28.123617932621297!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cb55f0e2c3a35%3A0x652d173368ddc6ae!2sPolice%20Station%20Jewar%2C%20MDR%2070W%2C%20Jewar%2C%20Uttar%20Pradesh%20203135!5e0!3m2!1sen!2sin!4v1590642491217!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
<% } else if(loc.replaceAll("\\s+","").equalsIgnoreCase(("KASNA").replaceAll("\\s+",""))){ %>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3506.859998997053!2d77.51005981442387!3d28.48376258247668!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cea63c914fb17%3A0xc9be3c8e18f28468!2sKasna%20Police%20Station!5e0!3m2!1sen!2sin!4v1590642514488!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
<% } else if(loc.replaceAll("\\s+","").equalsIgnoreCase(("KNOWLEDGE PARK").replaceAll("\\s+",""))){ %>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7014.308139488037!2d77.49693507201395!3d28.474906389762236!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cea771f29ce3d%3A0xc5b8e1bbf2355067!2sPolice%20Station!5e0!3m2!1sen!2sin!4v1590642559108!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
<% } else if(loc.replaceAll("\\s+","").equalsIgnoreCase(("PHASE-2").replaceAll("\\s+",""))){ %>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d112228.94936781067!2d77.4312715083781!3d28.474888377906204!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390ce8db3cfba4a7%3A0x4305aa8944f5199c!2sPolice%20Station%20Phase%202!5e0!3m2!1sen!2sin!4v1590642590074!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
<% } else if(loc.replaceAll("\\s+","").equalsIgnoreCase(("PHASE-3").replaceAll("\\s+",""))){ %>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d448917.09397546883!2d77.2211110268605!3d28.474583291075984!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390ce57dad299c5b%3A0x1af57a021f93aa1b!2sPolice%20Station%2C%20phase%203!5e0!3m2!1sen!2sin!4v1590642620434!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
<% } else if(loc.replaceAll("\\s+","").equalsIgnoreCase(("RABUPURA").replaceAll("\\s+",""))){ %>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3514.419821479773!2d77.60151101441733!3d28.255284282568088!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cb7a8e8822379%3A0x4b27ef8ef8a6fa5f!2sPolice%20Station%20(%20Kotwali%20Rabupura%20)!5e0!3m2!1sen!2sin!4v1590642647422!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
<% } else if(loc.replaceAll("\\s+","").equalsIgnoreCase(("SECTOR-20").replaceAll("\\s+",""))){ %>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3503.506869703807!2d77.32693021442677!3d28.584567182436725!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390ce454c0000001%3A0x87a2a841a3466c86!2sPolice%20Station%20Sector%2020!5e0!3m2!1sen!2sin!4v1590642669656!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
<% } else if(loc.replaceAll("\\s+","").equalsIgnoreCase(("SECTOR-24").replaceAll("\\s+",""))){ %>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14012.799870952766!2d77.33396147149763!3d28.59377726892709!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390ce5a096cf7ae1%3A0x1b386ec42e873fc7!2sNoida%20Sector%2024%20Police%20Station!5e0!3m2!1sen!2sin!4v1590642712329!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
<% } else if(loc.replaceAll("\\s+","").equalsIgnoreCase(("SECTOR-39").replaceAll("\\s+",""))){ %>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3503.952302040517!2d77.35556306442635!3d28.571194982442037!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390ce59573d7b0c7%3A0xe5686fef906a375f!2sSec%2039%20Police%20Station!5e0!3m2!1sen!2sin!4v1590642734737!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
<% } else if(loc.replaceAll("\\s+","").equalsIgnoreCase(("SECTOR-39 MAHILA THANA").replaceAll("\\s+",""))){ %>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3503.952302040517!2d77.35556306442635!3d28.571194982442037!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390ce59431023397%3A0x6905d9b7313bcd4!2sWomen%20Police%20Station!5e0!3m2!1sen!2sin!4v1590642753537!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
<% } else if(loc.replaceAll("\\s+","").equalsIgnoreCase(("SECTOR-49").replaceAll("\\s+",""))){ %>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3504.318672420955!2d77.36385721442606!3d28.560191982446405!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390ce5ee314ffacf%3A0x5f6e2fe87d254a35!2sPolice%20Station%20Sector%2049!5e0!3m2!1sen!2sin!4v1590642776018!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
<% } else if(loc.replaceAll("\\s+","").equalsIgnoreCase(("SECTOR-58").replaceAll("\\s+",""))){ %>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3502.880949583518!2d77.35949991442729!3d28.6033480824294!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390ce56e05800a6b%3A0x52c5b51f02f0cb6e!2sPolice%20Station!5e0!3m2!1sen!2sin!4v1590642797337!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
<% } else if(loc.replaceAll("\\s+","").equalsIgnoreCase(("SURAJPUR").replaceAll("\\s+",""))){ %>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3505.7195953286755!2d77.4646139144248!3d28.518082982463067!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390ce97cf96370d7%3A0xc64b2cda743c54b7!2sSurajpur%20Police%20Station!5e0!3m2!1sen!2sin!4v1590642818277!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>

<% } %>
</center>
  
 
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

    <a href="#" id="scroll-to-top" class="hvr-radial-out"><i class="fa fa-angle-up"></i></a>

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