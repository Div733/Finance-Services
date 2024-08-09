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
					<a class="navbar-brand text-capitalize" style="color: red;">
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
							<a class="nav-link" href="/">
								<span class="sr-only">(current)</span>
							</a>
						</li>
						<li class="nav-item  mr-3">
							<a class="nav-link" href="backtohome" style="color: blue;">Back To Home</a>
						</li>
						<li class="nav-item   mr-3">
							<a class="nav-link" href="services"></a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="contact"></a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="login"></a>
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
			
	<div class="container py-md-4 mt-md-3">
			<h2 class="heading-agileinfo">Add  Product  <span></span></h2>
			<span class="w3-line black"></span><br><br>
		<form action="addproduct">
		<table align="center">
					<tr><th>Productname</th><td><input type="text" name="productname"></td></tr>
					<tr></tr><br><br>
			<tr><th>ProductDescription</th><td><input type="text" name="productdescription"></td></tr>
			<tr></tr><tr><th>    </th><td><input type="submit" value="Add Product" style="color: blue;"></td></tr>
			</table>
			</form>
	<div>
	
						</div>
	</div>
</section>

<!-- //services -->

<!--footer-->

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