
package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ProcesaServletLibro", urlPatterns = {"/ProcesaServletLibro"})
public class ProcesaServletLibro extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         //Nos permite recuperar un parametro     
       String titulo = request.getParameter("titulo");
       String autor = request.getParameter("autor");
       String resumen = request.getParameter("resumen");
       //Permite devolver o recuperar un arreglo de cadenas:
       String medio[] = request.getParameterValues("medio");
       
       //Crear un objeto para encapsular la informacion:
       libro lib = new libro();
       //Llenar datos en el objeto lib:
       lib.setTitulo(titulo);
       lib.setAutor(autor);
       lib.setResumen(resumen);
       lib.setMedio(medio);
       //Colocamos el objeto lib como atributo de request:
       request.setAttribute("lib", lib);
       //Enviar el objeto request a salida.jsp:
       request.getRequestDispatcher("Salidalibro.jsp").forward(request, response);
    }
    
}
