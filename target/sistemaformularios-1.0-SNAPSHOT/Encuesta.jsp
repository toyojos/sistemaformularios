
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Encuesta de Sistemas Operativos :</h1>
        <p>Por favor llena el cuestionario, selecciona los sistemas operativos de tu preferencia:</p>
        <form action="ProcesaServlet" method="post">
            <table border="0">
                <tbody>
                    <tr>
                        <td>Nombre :</td>
                        <td><input type="text" name="nombre" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="checkbox" name="sistemas" value="Windows" /></td>
                        <td>Windows</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox" name="sistemas" value="Linux" /></td>
                        <td>Linux</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox" name="sistemas" value="Ios" /></td>
                        <td>IOs</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox" name="sistemas" value="Android" /></td>
                        <td>Android</td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Enviar" /></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
