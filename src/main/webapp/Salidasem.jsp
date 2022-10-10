<%@page import="com.emergentes.seminarios"%>
<%
    seminarios semi = (seminarios) request.getAttribute("semi");
    String sem[] = semi.getSem();
%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Gracias por llenar el formulario de Inscripción a Seminarios:</h1>
        <p>Los datos recibidos son:</p>
        <p>Fecha: <%= semi.getFecha() %></p>
        <p>Nombre: <%= semi.getNombre() %> </p>
        <p>Apellidos: <%= semi.getApellido() %> </p>
        <p>Turno: <%= semi.getTurno() %> y los seminarios elegidos son:</p>
        <ul>
            <% if(sem != null){
                for (String item : sem){
            %>
            <li><%= item %></li>
            <%
                }
            }
            %>
            
        </ul>
            <br>
        <a href="index.jsp">Volver</a>
    </body>
</html>
