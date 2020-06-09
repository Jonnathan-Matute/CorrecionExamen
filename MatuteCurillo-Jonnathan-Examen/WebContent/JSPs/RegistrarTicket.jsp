<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="ISO-8859-1">

<title>Examen | Registrar Tickets</title>
</head>

<body>
<h1>Registrar vehiculo y ticket</h1>
	<form action="/MatuteCurillo-Jonnathan-Examen/ControladorRegistrarTicket" method="post">

		<div>
			<label>Cedula Cliente</label> <input type="text" name="cedula">
		</div>
		<br>
		<div>
			<label>Placa Del Vehiculo</label> <input type="text"
				name="placaVehiculo">
		</div>
		<br>
		<div>
			<label>Marca Del Vehiculo</label> <input type="text"
				name="marcaVehiculo">
		</div>
		<br>
		<div>
			<label>Modelo Del Vehiculo</label> <input type="text"
				name="modeloVehiculo">
		</div>
		<br>
		<div>
			<label>Numero Del Ticket</label> <input type="text"
				name="numeroTicket">
		</div>
		<br>
		<div>
			<label>Fecha de entrada</label> <input type="date"
				name="fechaEntrada">
		</div>
		<br>
		<div>
			<label>Hora de entrada</label> <input type="time" name="horaEntrada">
		</div>
		<br>
		<div>
			<label>Fecha de Salida</label> <input type="date" name="fechaSalida">
		</div>
		<br>
		<div>
			<label>Hora de Salida</label> <input type="time" name="horaSalida">
		</div>
		<br>
		<div>
			<button type="submit">Guardar</button>
		</div>
		<br>
		<div>
			<a href="/MatuteCurillo-Jonnathan-Examen/JSPs/BuscarTicket.jsp">Buscar
				Ticket</a>
		</div>
		<br>
	</form>
</body>

</html>