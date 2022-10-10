
package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ProcesaServletcont", urlPatterns = {"/ProcesaServletcont"})
public class ProcesaServletcont extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         //Nos permite recuperar un parametro     
       String nombre = request.getParameter("nombre");
       String correo = request.getParameter("correo");
       String mensaje = request.getParameter("mensaje");
       //Permite devolver o recuperar un arreglo de cadenas:
       String copia[] = request.getParameterValues("copia");
       
       //Crear un objeto para encapsular la informacion:
       contacto cont = new contacto();
       //Llenar datos en el objeto semi:
       cont.setNombre(nombre);
       cont.setCorreo(correo);
       cont.setMensaje(mensaje);
       cont.setCopia(copia);
       //Colocamos el objeto semi como atributo de request:
       request.setAttribute("cont", cont);
       //Enviar el objeto request a salida.jsp:
       request.getRequestDispatcher("Salidacont.jsp").forward(request, response);
    }

}
