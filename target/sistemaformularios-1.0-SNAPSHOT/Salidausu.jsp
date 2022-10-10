<%@page import="com.emergentes.usuario"%>
<%
    usuario usu = (usuario) request.getAttribute("usu");
    
%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Gracias por llenar sus datos</h1>
        <p>Los datos recibidos son:</p>
        <p>Nombre: <%= usu.getNombre() %> </p>
        <p>Apellidos: <%= usu.getApellido() %> </p>
        <p>Correo Electrónico: <%= usu.getCorreo() %> </p>
        <p>Contraseña: <%= usu.getContraseña() %> </p>
        
            <br>
        <a href="index.jsp">Volver</a>
    </body>
</html>
