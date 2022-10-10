
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro para contactarnos</h1>
        <p>Por favor llene sus datos y su mensaje:</p>
        <form action="ProcesaServletcont" method="post">
            <table border="0">
                <tbody>                    
                    <tr>
                        <td>Nombre :</td>
                        <td><input type="text" name="nombre" value="" /></td>
                    </tr>
                    <tr>
                        <td>Correo Electrónico :</td>
                        <td><input type="text" name="correo" value="" /></td>
                    </tr>
                    <tr>
                        <td>Mensaje :</td>
                        <td><textarea name="mensaje" rows="4" cols="20">
                            </textarea></td>
                    </tr>
                    <tr>
                        <td><input type="checkbox" name="copia" value="correo" /></td>                        
                        <td>Enviar una copia a mi correo</td>    
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
