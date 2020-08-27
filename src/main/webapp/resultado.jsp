<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Página resultado</title>
	</head>
	<body>
		<h1>Resultado del promedio </h1>
		<%
			int nota1 = Integer.parseInt(request.getParameter("nota1"));
			int nota2 = Integer.parseInt(request.getParameter("nota2"));
			int nota3 = Integer.parseInt(request.getParameter("nota3"));
			float promedio;
			if ((nota1 >= 0 && nota1 <= 20) && (nota2 >= 0 && nota2 <= 20)
					&& (nota3 >= 0 && nota3 <= 20)){
				promedio = (nota1 + nota2 + nota3) / 3;
				out.println("El promedio será: "+ promedio);
				if (promedio >= 12.5){
					out.println("Aprobado");
				}
				else {
					out.println("Desaprobado");
				}
			}
			else {
				out.println("Notas Incorrectas");
			}
		%>
		<a href="index.jsp">Volver</a>
	</body>
</html>