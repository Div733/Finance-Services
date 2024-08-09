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
	<script type="text/javascript">
			function show()
			{
			document.getElementById("sh").style.display="block";	
			}
			</script>
<script type="text/javascript">
			function none()
			{
			document.getElementById("sh").style.display="none";	
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
	<h1>Add user Information</h1>
	<!-- //title -->
	<!-- content -->
	<div class="sub-main-w3">
		<form     action="registerdata">
		
			<div class="form-style-agile">
				
				<input  name="ncstatus" type="hidden" value="advisormanager">
			</div>
			<div class="form-style-agile">
				<label>
					<i class="fas fa-user"></i>
					Income
				</label>
				<input placeholder="income" name="ncincome" type="text" required="">
			</div>
			
			
			<div class="form-style-agile">
				<label>
					<i class="fas fa-user"></i>
					Previoud Loan
				</label>
				<input type="radio" name="ncpreviousloan" value="yes"  onclick="show()">Yes<input type="radio" name="ncpreviousloan" onclick="none()" value="no">No
			</div>
			
			<div class="form-style-agile" style="display: none;" id="sh">
				<label>
					<i class="fas fa-user"></i>
					Previoud Loan status
				</label>
				<input type="radio"  name="ncpreviousloanstatus" value="paid">paid<input type="radio"  name="ncpreviousloanstatus" value="no">Not paid
			</div>
			
			
			<div class="form-style-agile">
				<label>
					<i class="fas fa-user"></i>
					Expected Emi Duration
				</label>
				<input placeholder="emi duration" name="ncloanemi" type="text" required="">
			</div>
			<div class="form-style-agile">
				<label>
					<i class="fas fa-user"></i>
					Expected Emi Amount
				</label>
				<input placeholder="emi amount" name="ncloanemiamount" type="text" required="">
			</div>
			
			<!-- checkbox -->
			<!-- //checkbox -->
			<input type="submit" value="Add">
		</form>
	</div>
	<!-- <div style="text-align: center; color: red;  font-size: larger;"><a href="backtohome">BACK</a></div>
	 -->
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