<%@page import="com.emergentes.libro"%>
<%
    libro lib = (libro) request.getAttribute("lib");
    String medio[] = lib.getMedio();
%> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Gracias por registrar el libro</h1>
        <p>Los datos recibidos son:</p>
        <p>Titulo: <%= lib.getTitulo() %> </p>
        <p>Autor: <%= lib.getAutor() %> </p>
        <p>Resumen: <%= lib.getResumen() %> </p>
        <p> El medio es:</p>
        <ul>
            <% if(medio != null){
                for (String item : medio){
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
