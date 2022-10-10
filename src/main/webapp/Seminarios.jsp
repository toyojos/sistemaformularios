
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Inscripcion a Seminarios</h1>
        <p>Por favor llene sus datos y el seminario a elegir:</p>
        <form action="ProcesaServletSem" method="post">
            <table border="0">
                <tbody>
                    <tr>
                        <td>Fecha :</td>
                        <td><input type="date" name="fecha" value="" /></td>
                    </tr>
                    <tr>
                        <td>Nombre :</td>
                        <td><input type="text" name="nombre" value="" /></td>
                    </tr>
                    <tr>
                        <td>Apellidos :</td>
                        <td><input type="text" name="apellido" value="" /></td>
                    </tr>
                    <tr>
                        <td>Turno :</td>
                        <td><select name="turno">
                                <option>Mañana</option>
                                <option>Tarde</option>
                                <option>Noche</option>
                            </select></td>
                    </tr>
                    
                    <tr>
                        <td><input type="checkbox" name="sem" value="5G" /></td>
                        <td>5G</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox" name="sem" value="Inteligencia Artificial" /></td>
                        <td>Inteligencia Artificial</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox" name="sem" value="Machine Learning" /></td>
                        <td>Machine Learning</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox" name="sem" value="Robotica" /></td>
                        <td>Robotica</td>
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
