
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>CREAR NUEVO USUARIO</h1><br>
        <form method="post" action="../ServletUsuario?accion=registrar">
            <table>
                <tr>
                    <td>Nombre:</td>    
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td>Apellido Paterno</td>
                    <td><input type="text" name="apepat"></td>
                </tr>
                <tr>
                    <td>Apellido Materno</td>
                    <td><input type="text" name="apemat"></td>
                </tr>
                <tr>
                    <td>Nombre Usuario</td>
                    <td><input type="text" name="username"></td>
                </tr>
                <tr>
                    <td>Contraseña</td>
                    <td><input type="password" name="password"></td>
                </tr>
                
                
                
                <tr>
                    <td><input type="submit" value="Crear usuario"></td>
                </tr>
            </table>
        </form>
        <a href="../inicio.jsp">VOLVER</a>
    </body>
</html>
