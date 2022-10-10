<%@page import="com.emergentes.contacto"%>
<%
    contacto cont = (contacto) request.getAttribute("cont");
    String copia[] = cont.getCopia();
%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Gracias por contactarnos</h1>
        <p>Los datos recibidos son:</p>
        <p>Nombre: <%= cont.getNombre() %> </p>
        <p>Correo electrónico: <%= cont.getCorreo() %> </p>
        <p>Mensaje: <%= cont.getMensaje() %> </p>
        <p> La copia se realizo correctamente:</p>
        <ul>
            <% if(copia != null){
                for (String item : copia){
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
