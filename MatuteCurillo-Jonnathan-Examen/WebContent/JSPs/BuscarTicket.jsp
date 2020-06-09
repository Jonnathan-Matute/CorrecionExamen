<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Examen | Listar Ticket</title>
</head>
<body>
<h1>Ingresar cedula del cliente y placa del vehiculo</h1>
<a href="/MatuteCurillo-Jonnathan-Examen/index.html">Inicio</a><br><br><br>
	<header>
		<nav>
			<form action="/MatuteCurillo-Jonnathan-Examen/Listar">
			<div></div>
				    <input type="text" name="cedula" placeholder="Ingresar Cedula"
					id="buscar"> <input type="text" name="placa"
					placeholder="Ingresar Placa" id="buscar"> <input
					type="submit" value="Buscar"> 
			</form>
		</nav>
	</header>
	<br>
	<br>
	<br>
	<br>
	<br>

	<c:set var="clientes" value="${requestScope['clientes']}" />
	<c:choose>
		<c:when test="${clientes==null}">
		</c:when>

		<c:otherwise>
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
</body>
</html>