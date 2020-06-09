<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Examen | Buscar Ticket</title>
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
							<h1 class="white-text">BUSCAR TICKET</h1>
							<p class="white-text">Ingrese cedula del cliente y placa del
								vehiculo.</p>
							<form action="/MatuteCurillo-Jonnathan-Examen/Listar">
								<div></div>
								<input type="text" name="cedula" placeholder="Ingresar Cedula"
									id="buscar"> <input type="text" name="placa"
									placeholder="Ingresar Placa" id="buscar"><br><br> <input
									type="submit" value="Buscar">
							</form>
							<br> <br>

							<c:set var="clientes" value="${requestScope['clientes']}" />
							<c:choose>
								<c:when test="${clientes==null}">
								</c:when>

								<c:otherwise>
									<style>
									table, td, th {
										border: 1px solid #ddd;
										text-align: left;
									}
									
									table {
										border-collapse: collapse;
										width: 100%;
									}
									
									th, td {
										padding: 15px;
									}
									</style>
									<table>
										<tr>
											<th>Cliente</th>
											<th>Placa</th>
											<th>Marca</th>
											<th>Modelo</th>
											<th>Numero del Ticket</th>
											<th>Fecha y hora de Ingreso</th>
											<th>Fecha y hora de Salida</th>
										</tr>
										<tbody>
											<c:forEach var="vehiculo" items="${clientes.vehiculos}">
												<tr>
													<td>${vehiculo.cliente.nombre}</td>
													<td>${vehiculo.placa}</td>
													<td>${vehiculo.marca}</td>
													<td>${vehiculo.modelo}</td>
													<td>${vehiculo.ticket.numero}</td>
													<td>${vehiculo.ticket.fcehaIngreso}
														${vehiculo.ticket.horaEntrada}</td>
													<td>${vehiculo.ticket.fcehaSalida}
														${vehiculo.ticket.horaSalida}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
					<!-- /home content -->

				</div>
			</div>
		</div>
		<!-- /home wrapper -->
</body>
</html>