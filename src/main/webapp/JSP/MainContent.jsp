<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
    	String base = (String)application.getAttribute("base");
    %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<a href="<%= base %>?peticion=alquiler">Alquilar veh�culo</button>
	<a href="<%= base %>?peticion=vehiculos">Veh�culos</button>
	<a href="<%= base %>?peticion=clientes">Clientes</button>


</body>
</html>