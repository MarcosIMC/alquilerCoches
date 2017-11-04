<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Alta de clientes</title>
</head>
<body>

	<form action="registroUsuarioServlet" method="post">
		DNI -->
		<input name="dni" type="text">
		<br>
		Nombre -->
		<input name="nombre" type="text">
		<br>
		Apellidos -->
		<input name="apellidos" type="text">
		<br>
		Edad -->
		<input name="edad" type="text">
		<br>
		Email -->
		<input name="email" type="text">
		<br>
		<input id="submit" type="submit" value="Registrar usuario">
	</form>

</body>
</html>