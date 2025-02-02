<%@page import="com.cjc.main.model.Loanproduct"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Loan a Banking Category Flat Bootstrap Responsive Website Template | Services :: w3layouts</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="Home Loan Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>

	<!-- Bootstrap Core CSS -->
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<!-- font-awesome icons -->
	<link href="css/fontawesome-all.min.css" rel="stylesheet">
	<!-- //Custom Theme files -->
	<!-- online fonts -->
	<!-- titles -->
	<link href="//fonts.googleapis.com/css?family=Raleway:300,400,500,600,700,800,900" rel="stylesheet">
	<!-- body -->
	<link href="//fonts.googleapis.com/css?family=Poppins:400,500,600,700,800" rel="stylesheet">

</head>
<body>
<!-- header -->
	<header>
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-light">
				<h1>
					<a class="navbar-brand text-capitalize" href="/">
						Financial Services
					</a>
				</h1>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
				    aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav text-center  ml-lg-auto">
						<li class="nav-item  mr-3">
							<a class="nav-link" href="/">Home
								<span class="sr-only">(current)</span>
							</a>
						</li>
						<li class="nav-item  mr-3">
							<a class="nav-link" href="about">About</a>
						</li>
						<li class="nav-item active  mr-3">
							<a class="nav-link" href="services">Services</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="contact">contact</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="login">Login</a>
						</li>
					</ul>
				</div>
			</nav>
		</div>
	</header>
		<!-- //header -->
	<!-- banner -->
	<!-- //banner -->
		<!-- /services -->
<%List<Loanproduct> list= (List<Loanproduct>) request.getAttribute("list"); %>	
				
<section class="what_you w3-about py-5">
		<div class="container py-md-4 mt-md-3">
			<h2 class="heading-agileinfo">Loan Product  <span></span></h2>
			<span class="w3-line black"></span>
			<div class="row about-info-grids mt-md-5 pt-5">
				<% for(Loanproduct l:list)
				{%>
				<div class="col-md-4 about-info about-info1">
					
				
					<h4><%out.print(l.getProductname());%></h4>
					<div class="h4-underline"></div>
					<p><%out.print(l.getProductdescription());%></p>
				</div>
				<% }%>
				
			</div>
			</div>
			</section>
			
<!-- //services -->

<!--footer-->
<footer>
		<div class="w3ls-footer-grids py-5">
			<div class="container py-lg-2">
				<div class="row">
					<div class="col-lg-3 col-sm-6 w3l-footer one">
						<h2 class="index.html mb-3" style= "color:white;">Financial Services</h2>
						<p>We,at Financial Services, ready to give you loan amount with easy process and less documentation .We are glad to serve you and provide best  service is our first priority.</p>
						<div class="clearfix"></div>
					</div>
					<div class="col-lg-2 col-sm-6 w3l-footer agileinfo_footer_grid my-sm-0 my-4">
						<h3 class="mb-3">Navigation</h3>
						<div class="nav-w3-l">
							<ul class="list-unstyled">
								<li class="mb-2">
									<a href="index.jsp">Home</a>
								</li>
								<li class="mb-2">
									<a href="about.jsp" class="">About Us</a>
								</li>
								<li class="mb-2">
									<a href="gallery.jsp" class="">Gallery</a>
								</li>
								<li>
									<a href="contact.jsp" class="">Contact Us</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6 w3l-footer two mt-lg-0 mt-sm-5">
						<h3 class="mb-3">Connect With</h3>
						<ul class="list-unstyled">
							<li class="mb-3">
								<a class="fb" href="https://www.facebook.com/">
									<i class="fab fa-facebook-f"></i>           Like us on Facebook</a>
							</li>
							<li class="mb-3">
								<a class="fb1" href="https://twitter.com/login?lang=en">
									<i class="fab fa-twitter"></i>         Follow us on Twitter</a>
							</li>
							<!-- <li class="mb-3">
								<a class="fb2" href="#">
									<i class="fab fa-google-plus-g"></i></a>
							</li>
							<li>
								<a class="fb3" href="#">
									<i class="fab fa-dribbble"></i></a>
							</li> -->
						</ul>
					</div>
					<div class="col-lg-4 col-sm-6 w3l-footer three mt-lg-0 mt-4">
						<h3 class="mb-3">Address</h3>
						<ul class="list-unstyled">
							<li>
								<i class="fas fa-map-marker"></i>
								<p>
									<span>1186/A, Off J.M. Road,</span> Shivaji nagar, Pune, Maharashtra 411005 </p>
								<div class="clearfix"></div>
							</li>
							<li class="my-2">
								<i class="fas fa-phone"></i>
								<p>1234567890</p>
								<div class="clearfix"></div>
							</li>
							<li>
								<i class="fas fa-envelope"></i>
								<a href="cafeteria23@gmail.com">cafeteria23@gmail.com</a>
								<div class="clearfix"></div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="copy-right-grids py-3">
			<p class="footer-gd text-center text-white">© 2019 Financial Services. All Rights Reserved | 
				<a href="https://w3layouts.com/" target="_blank"></a>
			</p>
		</div>
	</footer>

	<!---->
<!-- //Modal -->
<!-- js-->
	<script src="js/jquery-2.2.3.min.js"></script>
<!-- js-->
	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.js ">
	</script>
	<!-- //Bootstrap Core JavaScript -->
</body>
</html>