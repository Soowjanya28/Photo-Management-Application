<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Admin Login</title>
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Bootstrap core CSS -->
<link href="../../css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="../../css/mdb.min.css" rel="stylesheet">
<style>
html, body, header, .view {
	height: 100vh;
}

@media ( max-width : 740px) {
	html, body, header, .view {
		height: 700px;
	}
}

@media ( min-width : 800px) and (max-width: 850px) {
	html, body, header, .view {
		height: 650px;
	}
}
</style>
</head>

<body class="login-page">

	<!-- Main Navigation -->
	<header>

		<!-- Navbar -->
		<nav
			class="navbar navbar-expand-lg navbar-light fixed-top scrolling-navbar white">
			<div class="container">
			<img width="300" height="60"
					src="https://www.mindtree.com/themes/custom/mindtree_theme/mindtree-lnt-logo-png.png">

			</div>
		</nav>

		<!-- Intro Section -->
		<section class="view intro-"
			style="background-image: url(https://mdbootstrap.com/img/Photos/Others/images/91.jpg); background-repeat: no-repeat; background-size: cover; background-position: center center;">
			<div
				class="mask rgba-indigo-light h-100 d-flex justify-content-center align-items-center">
				<div class="container">
					<div class="row">
						<div class="col-xl-5 col-lg-6 col-md-10 col-sm-12 mx-auto mt-lg-5">

							<!-- Form with header -->
							<div class="card wow fadeIn" data-wow-delay="0.3s">
								<div class="card-body">
								<c:if test="${not empty errorMessge}">
                                    <div class="alert alert-primary alert-dismissible fade show"
                                        role="alert">
                                        <strong>${errorMessge}</strong>
                                        <button type="button" class="close" data-dismiss="alert"
                                            aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                </c:if>
								<form name='login' action="/admin/login" method="post"
															 id="form">
									<!-- Header -->
									<div class="form-header pink-gradient">
										<h3>
											<i class="fas fa-user mt-2 mb-2"></i> Log in
										</h3>
									</div>

									<!-- Body -->
									<div class="md-form mb-0">
									
									
										<i class="fas fa-user prefix white-text"></i> 
										<input 
											type="text" name="username"  id="orangeForm-name" class="form-control"/>
											
										<label for="orangeForm-name">User name</label>
									</div>
									
									<div class="md-form mb-0">
										<i class="fas fa-lock prefix white-text"></i> <input
											type="password" name="password" id="orangeForm-pass" class="form-control"/>
										<label for="orangeForm-pass">Your password</label>
									</div>

									<div class="text-center">
										<button type="submit"  id="submitButton"  class="btn pink-gradient btn-lg">Login</button>
										<hr>
										<div
											class="inline-ul text-center d-flex justify-content-center">
											<a class="p-2 m-2 fa-lg tw-ic" href="http://twitter.com/Mindtree_Ltd"> <i
												class="fab fa-twitter white-text"></i>
											</a> <a class="p-2 m-2 fa-lg li-ic" href="https://www.linkedin.com/company/mindtreeltd/"> <i
												class="fab fa-linkedin-in white-text"> </i>
											</a> <a class="p-2 m-2 fa-lg ins-ic" href="http://www.facebook.com/MindtreeLtd"> <i
												class="fab fa-facebook-f white-text"> </i>
											</a>
										</div>
									</div>
									<input type="hidden" name="${_csrf.parameterName}"
                                        value="${_csrf.token}" />
									</form>

								</div>
							</div>
							<!-- Form with header -->

						</div>
					</div>
				</div>
			</div>
		</section>

	</header>
	<!-- Footer -->
	<footer class="page-footer pt-0 text-center text-md-left">

		

		<!-- Copyright -->
		<div class="footer-copyright py-3 text-center">
			<div class="container-fluid">
				&copy; 2021 Copyright: <a href="https://www.mindtree.com/">
					Mindtree.com </a>

			</div>
		</div>
		<!-- Copyright -->

	</footer>
	<!-- Main Navigation -->

	<!-- SCRIPTS -->
	<!-- JQuery -->
	<script src="../../js/jquery-3.4.1.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript" src="../../js/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript" src="../../js/bootstrap.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript" src="../../js/mdb.min.js"></script>
	<script>
		new WOW().init();
	</script>
</body>

</html>