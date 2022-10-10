
package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "ProcesaServlet", urlPatterns = {"/ProcesaServlet"})
public class ProcesaServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Nos permite recuperar un parametro
       String nombre = request.getParameter("nombre");
       //Permite devolver o recuperar un arreglo de cadenas:
       String sistemas[] = request.getParameterValues("sistemas");
       
       //Crear un objeto para encapsular la informacion:
       encuesta encu = new encuesta();
       //Llenar datos en el objeto encu:
       encu.setNombre(nombre);
       encu.setSistemas(sistemas);
       //Colocamos el objeto encu como atributo de request:
       request.setAttribute("encu", encu);
       //Enviar el objeto request a salida.jsp:
       request.getRequestDispatcher("Salida.jsp").forward(request, response);
    }


}
