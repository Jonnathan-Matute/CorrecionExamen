<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Examen | Registrar Tickets</title>
<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700%7CVarela+Round"
	rel="stylesheet">

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet"
	href="/MatuteCurillo-Jonnathan-Examen/css/bootstrap.min.css" />

<!-- Owl Carousel -->
<link type="text/css" rel="stylesheet"
	href="/MatuteCurillo-Jonnathan-Examen/css/owl.carousel.css" />
<link type="text/css" rel="stylesheet"
	href="/MatuteCurillo-Jonnathan-Examen/css/owl.theme.default.css" />

<!-- Magnific Popup -->
<link type="text/css" rel="stylesheet"
	href="/MatuteCurillo-Jonnathan-Examen/css/magnific-popup.css" />

<!-- Font Awesome Icon -->
<link rel="stylesheet"
	href="/MatuteCurillo-Jonnathan-Examen/css/font-awesome.min.css">

<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet"
	href="/MatuteCurillo-Jonnathan-Examen/css/style.css" />

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
						<li><a
							href="/MatuteCurillo-Jonnathan-Examen/JSPs/RegistrarCliente.jsp">Registrar
								Cliente</a></li>
						<li><a
							href="/MatuteCurillo-Jonnathan-Examen/JSPs/RegistrarTicket.jsp">Registrar
								Ticket</a></li>
						<li><a
							href="/MatuteCurillo-Jonnathan-Examen/JSPs/BuscarTicket.jsp">Buscar
								Ticket</a></li>
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
							<p class="white-text">REGISTRAR VEHICULO & TICKET</p>
							<form
								action="/MatuteCurillo-Jonnathan-Examen/ControladorRegistrarTicket"
								method="post">
								<label>Cedula Cliente</label> <input type="text" name="cedula">
								<label>Placa Del Vehiculo</label> <input type="text"
									name="placaVehiculo"> <label>Marca Del Vehiculo</label>
								<input type="text" name="marcaVehiculo"> <label>Modelo
									Del Vehiculo</label> <input type="text" name="modeloVehiculo">
								<label>Numero Del Ticket</label> <input type="text"
									name="numeroTicket"> <label>Fecha de entrada</label> <input
									type="date" name="fechaEntrada"> <label>Hora de
									entrada</label> <input type="time" name="horaEntrada"> <label>Fecha
									de Salida</label> <input type="date" name="fechaSalida"> <label>Hora
									de Salida</label> <input type="time" name="horaSalida">

								<button type="submit">Guardar</button>
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
