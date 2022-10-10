
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de Libros</h1>
        <p>Por favor llene sus datos del Libro:</p>
        <form action="ProcesaServletLibro" method="post">
            <table border="0">
                <tbody>                    
                    <tr>
                        <td>Título :</td>
                        <td><input type="text" name="titulo" value="" /></td>
                    </tr>
                    <tr>
                        <td>Autor :</td>
                        <td><input type="text" name="autor" value="" /></td>
                    </tr>
                    <tr>
                        <td>Resumen :</td>
                        <td><textarea name="resumen" rows="4" cols="20">
                            </textarea></td>
                    </tr>
                    <tr>
                        <td>Medio :</td>                   
                        <td>Físico<input type="radio" name="fisico" value="" /></td> 
                        <td>Magnético<input type="radio" name="magnetico" value=""/></td> 
             
                    </tr>
                    <tr>
                        <td><input type="submit" value="Enviar" /></td>
                        <td></td>
                    </tr>
                    <br>
                </tbody>
            </table>

        </form>
    </body>
</html>
