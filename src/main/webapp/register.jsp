<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
<!-- Meta tag Keywords -->
	<!-- css files -->
	<link rel="stylesheet" href="login/css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link rel="stylesheet" href="login/css/fontawesome-all.css">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->
	<!-- web-fonts -->
	<link href="//fonts.googleapis.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	<!-- //web-fonts -->
</head>
<body>
	<!-- bg effect -->
	<div id="bg">
		<canvas></canvas>
		<canvas></canvas>
		<canvas></canvas>
	</div>
	<!-- //bg effect -->
	<!-- title -->
	<h1>Employee Registration Form</h1>
	<!-- //title -->
	<!-- content -->
	<div class="sub-main-w3">
		<form action="registerdata">
			<h2>Please fill the information
				<i class="fas fa-level-down-alt"></i>
			</h2>
			<div class="form-style-agile">
				<label>
					<i class="fas fa-user"></i>
					Name
				</label>
				<input placeholder="name" name="name" type="text" required="">
			</div>
			<div class="form-style-agile">
				<label>
					<i class="fas fa-user"></i>
					Address
				</label>
				<input placeholder="address" name="address" type="text" required="">
			</div>
			<div class="form-style-agile">
				<label>
					<i class="fas fa-user"></i>
					Mobileno
				</label>
				<input placeholder="mobileno" name="mobileno" type="text" required="">
			</div>
			<div class="form-style-agile">
				
				<input placeholder="role" name="rname" type="hidden" required="" value="salemanager">
			</div>
			<div class="form-style-agile">
				<label>
					<i class="fas fa-user"></i>
					Email
				</label>
				<input placeholder="email" name="email" type="text" required="">
			</div>
			<div class="form-style-agile">
				<label>
					<i class="fas fa-user"></i>
					Password
				</label>
				<input placeholder="password" name="password" type="text" required="">
			</div>
			<!-- checkbox -->
			<!-- //checkbox -->
			<input type="submit" value="Register "><br>
									
		</form>
<br>
	<br>
	</div>
	
	<div style="text-align: center; color: red;  font-size: larger;"><a href="backtohome">BACK</a></div>
	
	<!-- //content -->

	<!-- copyright -->
	<div class="footer">
	</div>
	<!-- //copyright -->

	<!-- Jquery -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<!-- //Jquery -->

	<!-- effect js -->
	<script src="js/canva_moving_effect.js"></script>
	<!-- //effect js -->

</body>
</html>