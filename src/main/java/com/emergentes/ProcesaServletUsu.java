
package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ProcesaServletUsu", urlPatterns = {"/ProcesaServletUsu"})
public class ProcesaServletUsu extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Nos permite recuperar un parametro        
       String nombre = request.getParameter("nombre");
       String apellidos = request.getParameter("apellido");
       String correo = request.getParameter("correo");
       String contraseña = request.getParameter("contraseña");
     
       //Crear un objeto para encapsular la informacion:
       usuario usu = new usuario();
       //Llenar datos en el objeto usu:
       usu.setNombre(nombre);
       usu.setApellido(apellidos);
       usu.setCorreo(correo);
       usu.setContraseña(contraseña);
      
       //Colocamos el objeto semi como atributo de request:
       request.setAttribute("usu", usu);
       //Enviar el objeto request a salida.jsp:
       request.getRequestDispatcher("Salidausu.jsp").forward(request, response);
   
    }

}
