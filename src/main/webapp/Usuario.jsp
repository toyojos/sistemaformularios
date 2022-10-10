
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de Usuarios</h1>
        <p>Por favor llene sus datos personales:</p>
        <form action="ProcesaServletUsu" method="post">
            <table border="0">
                <tbody>                    
                    <tr>
                        <td>Nombre :</td>
                        <td><input type="text" name="nombre" value="" /></td>
                    </tr>
                    <tr>
                        <td>Apellidos :</td>
                        <td><input type="text" name="apellido" value="" /></td>
                    </tr>
                    <tr>
                        <td>Correo Electrónico :</td>
                        <td><input type="text" name="correo" value="" /></td>
                    </tr>
                    <tr>
                        <td>Contraseña :</td>
                        <td><input type="text" name="contraseña" value="" /></td>
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
