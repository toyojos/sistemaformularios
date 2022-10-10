<%@page import="com.emergentes.encuesta"%>
<%
    encuesta encu = (encuesta) request.getAttribute("encu");
    String sistemas[] = encu.getSistemas();
%>    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Gracias por llenar el Cuestionario</h1>
        <p>Los datos recibidos son:</p>
        <p>Nombre: <%= encu.getNombre() %> y los sistemas de su preferencia son:</p>
        <ul>
            <% if(sistemas != null){
                for (String item : sistemas){
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
