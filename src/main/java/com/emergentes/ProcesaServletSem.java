
package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "ProcesaServletSem", urlPatterns = {"/ProcesaServletSem"})
public class ProcesaServletSem extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        //Nos permite recuperar un parametro
        //convertir entero:
        int fecha = Integer.parseInt(request.getParameter("fecha"));
       String nombre = request.getParameter("nombre");
       String apellidos = request.getParameter("apellidos");
       //Permite devolver o recuperar un arreglo de cadenas:
       String sem[] = request.getParameterValues("sem");
       
       //Crear un objeto para encapsular la informacion:
       seminarios semi = new seminarios();
       //Llenar datos en el objeto semi:
       semi.setFecha(fecha);
       semi.setNombre(nombre);
       semi.setApellido(apellidos);
       semi.setTurno(sem);
       //semi.setSem(sem);
       //Colocamos el objeto semi como atributo de request:
       request.setAttribute("semi", semi);
       //Enviar el objeto request a salida.jsp:
       request.getRequestDispatcher("Salidasem.jsp").forward(request, response);
    }
   
}
