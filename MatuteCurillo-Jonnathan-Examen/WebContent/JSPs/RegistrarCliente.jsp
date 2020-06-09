
<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Examen | Registrar Cliente</title>
</head>

<body>

	<header>
		<h1>Formulario de Registro</h1>
		<a href="/MatuteCurillo-Jonnathan-Examen"></a>
		<p>Bienvenido</p>
	</header>


	<form action="/MatuteCurillo-Jonnathan-Examen/ControladorRegistrar" method="post">
		<label>Cedula:</label> <input type="text" name="cedula" value="${cedula}" placeholder="Ingrese cedula"/> 
		<label>Nombre:</label> <input type="text" name="nombre" value="${nombre}" placeholder="Ingrese nombres"/> 
		<label>Direccion:</label> <input type="text" name="direccion" value="${direccion}" placeholder="Ingrese direccion"/> 
		<label>Telefono:</label> <input type="text" name="telefono" value="${telefono}" placeholder="Ingrese telefono"/>
		<input type="submit" name="Ingresar" value="Registrarse"/>
	</form>

</body>
</html>
