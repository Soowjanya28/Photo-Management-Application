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
<title>Error Messages</title>
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
		</nav>
		<!-- Navbar -->

		<!-- Intro Section -->
		<section class="view intro-2">
			<div class="mask rgba-gradient">
				<br> <br>
				<div
					class="container h-100  justify-content-center align-items-center">

					<!-- Grid row -->
					<div class="row pt-5">

						<!-- Grid column -->
						<div class="col-md-12">

							<div class="card">
								<div class="card-body">

									<h2
										class="font-weight-bold my-4 text-center mb-5 mt-4 font-weight-bold">
										<i class="fa fa-exclamation-triangle" aria-hidden="true"></i>${message}

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

														<form action="/admin/photo/download/" method="get"
															id="form">

															<div class="text-center">
																<button type="submit" id="submitbtn"
																	class="btn btn-indigo btn-rounded mt-5">Home</button>
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
		new WOW().init();
		$('.mdb-select').materialSelect();
	</script>

</body>

</html>
