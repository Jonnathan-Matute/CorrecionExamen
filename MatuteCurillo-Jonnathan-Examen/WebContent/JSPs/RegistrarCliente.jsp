<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Examen | Registrar Cliente</title>
<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700%7CVarela+Round"
	rel="stylesheet">

	<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="/MatuteCurillo-Jonnathan-Examen/css/bootstrap.min.css" />

<!-- Owl Carousel -->
<link type="text/css" rel="stylesheet" href="/MatuteCurillo-Jonnathan-Examen/css/owl.carousel.css" />
<link type="text/css" rel="stylesheet" href="/MatuteCurillo-Jonnathan-Examen/css/owl.theme.default.css" />

<!-- Magnific Popup -->
<link type="text/css" rel="stylesheet" href="/MatuteCurillo-Jonnathan-Examen/css/magnific-popup.css" />

<!-- Font Awesome Icon -->
<link rel="stylesheet" href="/MatuteCurillo-Jonnathan-Examen/css/font-awesome.min.css">

	<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet" href="/MatuteCurillo-Jonnathan-Examen/css/style.css" />

</head>
<body>
	<!-- Header -->
	<header id="home">
		<!-- Background Image -->
		<div class="bg-img"
			style="background-image: url('/MatuteCurillo-Jonnathan-Examen/img/background1.jpg');">
			<div class="overlay"></div>
		</div>
		<!-- /Background Image -->

		<!-- Nav -->
		<nav id="nav" class="navbar nav-transparent">
			<div class="container">

				<div class="navbar-header">

					<div class="navbar-brand">
						<div class="nav-collapse">
							<span></span>
						</div>
						<!-- /Collapse nav button -->
					</div>

					<!--  Main navigation  -->
					<ul class="main-nav nav navbar-nav navbar-right">
						<li><a href="/MatuteCurillo-Jonnathan-Examen/index.html">Home</a></li>
						<li><a href="/MatuteCurillo-Jonnathan-Examen/JSPs/RegistrarCliente.jsp">Registrar Cliente</a></li>
						<li><a href="/MatuteCurillo-Jonnathan-Examen/JSPs/RegistrarTicket.jsp">Registrar Ticket</a></li>
						<li><a href="/MatuteCurillo-Jonnathan-Examen/JSPs/BuscarTicket.jsp">Buscar Ticket</a></li>
					</ul>
					<!-- /Main navigation -->

				</div>
			</div>
		</nav>

		<!-- home wrapper -->
		<div class="home-wrapper">
			<div class="container">
				<div class="row">

					<!-- home content -->
					<div class="col-md-10 col-md-offset-1">
						<div class="home-content">
							<h1 class="white-text">REGISTRO DE CLIENTE</h1>
							<p class="white-text">Jonnathan Oswaldo Matute Curillo.</p>
							<form
								action="/MatuteCurillo-Jonnathan-Examen/ControladorRegistrar"
								method="post">
								<label>Cedula:</label> <input type="text" name="cedula"
									value="${cedula}" placeholder="Ingrese cedula" /> <label>Nombre:</label>
								<input type="text" name="nombre" value="${nombre}"
									placeholder="Ingrese nombres" /> <label>Direccion:</label> <input
									type="text" name="direccion" value="${direccion}"
									placeholder="Ingrese direccion" /> <label>Telefono:</label> <input
									type="text" name="telefono" value="${telefono}"
									placeholder="Ingrese telefono" /> <input type="submit"
									name="Ingresar" value="Registrarse" />
							</form>
						</div>
					</div>
					<!-- /home content -->

				</div>
			</div>
		</div>
		<!-- /home wrapper -->
</body>
</html>
