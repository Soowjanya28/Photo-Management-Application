<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>



<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>View CampusMind Photo</title>
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Bootstrap core CSS -->
<link href="../../css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="../../css/mdb.min.css" rel="stylesheet">
<!-- Your custom styles (optional) -->
<style>
html, body, header, .view {
	height: 100%;
}

@media ( min-width : 851px) and (max-width: 1440px) {
	html, body, header, .view {
		height: 850px;
	}
}

@media ( min-width : 800px) and (max-width: 850px) {
	html, body, header, .view {
		height: 1000px;
	}
}

@media ( min-width : 451px) and (max-width: 740px) {
	html, body, header, .view {
		height: 1200px;
	}
}

@media ( max-width : 450px) {
	html, body, header, .view {
		height: 1400px;
	}
}
</style>
</head>

<body class="register-page">

	<!-- Main Navigation -->
	<header>

		<!-- Navbar -->
		<nav
			class="navbar navbar-expand-lg navbar-dark fixed-top scrolling-navbar">
			<div class="container">
				<img width="300" height="60"
					src="https://www.mindtree.com/themes/custom/mindtree_theme/mindtree-lnt-logo-png.png">
			</div>
			<div>
				<a href="/admin/home" class="btn btn-info btn-rounded"><i
                                    class="fas fa-home ml-1"></i> Home </a>
			</div>
			<div>
				<a href="/logout" class="btn btn-info btn-rounded"><i
					class="fas fa-sign-in-alt ml-1"></i> Logout </a>
			</div>
			
		</nav>
		<!-- Navbar -->

		<!-- Intro Section -->
		<section class="view intro-2">
			<div class="mask rgba-gradient">
				<br> <br>
				<div
					class="container h-100  justify-content-center align-items-center" style="margin-top: 50px;">

					<!-- Grid row -->
					<div class="row pt-5">

						<!-- Grid column -->
						<div class="col-md-12">

							<div class="card">
								<div class="card-body">

									<h2
										class="font-weight-bold my-4 text-center mb-5 mt-4 font-weight-bold">
										<strong>View Photo</strong>

									</h2>
									<hr>

									<!-- Grid row -->
									<div class="row mt-5">

										<!-- Grid column -->
										<div class="col-md-6 ml-lg-5 ml-md-3">


											<!-- Grid row -->
											<div class="row pb-4">

												<div class="col-10">
													<!-- Grid row -->
													<div class="row pb-7 d-flex justify-content-center mb-4">
														<!-- /Grid row -->

														<form action="/admin/photo/view/" method="get" id="form">
															<div class="md-form">
																<i class="far fa-user prefix"></i> <input name="MID"
																	id="MID" placeholder="Enter MID" type="text"
																	maxlength="8" class="form-control transparent-input" />
															</div>
															<div class="text-center">
																<button type="submit" id="submitbtn"
																	onClick="return check()"
																	class="btn btn-indigo btn-rounded mt-5">View</button>
															</div>
														</form>
													</div>
												</div>
											</div>
											<!-- Grid row -->



										</div>
										<!-- Grid column -->


									</div>
									<!-- Grid column -->

								</div>
								<!-- Grid row -->

							</div>
						</div>

					</div>
					<!-- Grid column -->

				</div>
				<!-- Grid row -->

			</div>

		</section>
		<!-- Intro Section -->

	</header>
	<!-- Footer -->
	<footer class="page-footer pt-4 text-center text-md-left">

		<!-- Footer Links -->
		<div class="container">
			<!-- Grid row -->
			<div class="row mb-3">

				<!-- First column -->
				<div class="col-md-12">

					<ul
						class="list-unstyled d-flex justify-content-center mb-0 py-1 list-inline">
						<li class="list-inline-item"><a class="p-2 m-2 fa-lg fb-ic" href="http://www.facebook.com/MindtreeLtd"><i
								class="fab fa-facebook-f indigo-text fa-lg"> </i></a></li>
								
								
						<li class="list-inline-item"><a class="p-2 m-2 fa-lg tw-ic" href="http://twitter.com/Mindtree_Ltd"><i
								class="fab fa-twitter indigo-text fa-lg"> </i></a></li>
								
								
						<li class="list-inline-item"><a
							class="p-2 m-2 fa-lg gplus-ic" href="http://www.youtube.com/user/TheMindtreeLTD"><i
								class="fab fa-youtube indigo-text fa-lg"> </i></a></li>
								
								
						<li class="list-inline-item"><a class="p-2 m-2 fa-lg li-ic" href="https://www.linkedin.com/company/mindtreeltd/"><i
								class="fab fa-linkedin-in indigo-text fa-lg"> </i></a></li>
								
								
						<li class="list-inline-item"><a class="p-2 m-2 fa-lg ins-ic" href="https://www.instagram.com/mindtree.ltd"><i
								class="fab fa-instagram indigo-text fa-lg"> </i></a></li>
						
					</ul>

				</div>
				<!-- /First column -->
			</div>
			<!-- /Grid row -->
		</div>
		<!-- /.Footer Links -->

		<!-- Copyright -->
		<div class="footer-copyright py-3 text-center">
			<div class="container-fluid">
				&copy; 2021 Copyright: <a href="https://www.mindtree.com/">
					Mindtree.com </a>

			</div>
		</div>
		<!-- Copyright -->

	</footer>
	<!-- Footer -->
	<!-- Main Navigation -->



	<!--  SCRIPTS  -->
	<!-- JQuery -->
	<script type="text/javascript" src="../../js/jquery-3.4.1.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript" src="../../js/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript" src="../../js/mdb.min.js"></script>
	<script type="text/javascript">
		function check() {

			var x = document.getElementById("MID").value;
			var y = x.charAt(1) + x.charAt(2) + x.charAt(3) + x.charAt(4)
					+ x.charAt(5) + x.charAt(6) + x.charAt(7);

			if (x == "") {
				alert("MID must be filled out");
				return false;
			}
			if (x.length < 8) {
				alert("MID should be length of 8");
				return false;
			}
			if (x.charAt(0) != "M") {
				alert("MID should start with M");
				return false;
			}
			if (!(/^[0-9]{1,9}$/.test(+y))) {
				alert("MID should be in the format of M123456789");
				return false;
			}

		}

		$(function() {

			$('#submitbtn').attr('disabled', true);
			$('#MID').change(function() {
				if ($('#MID').val() != '') {
					$('#submitbtn').attr('disabled', false);
				} else {
					$('#submitbtn').attr('disabled', true);
				}
			});
		});
		new WOW().init();
		$('.mdb-select').materialSelect();
	</script>

</body>

</html>
