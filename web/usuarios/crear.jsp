
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
                    <td>Apepat</td>
                    <td><input type="text" name="Apellido Paterno"></td>
                </tr>
                <tr>
                    <td>Apemat</td>
                    <td><input type="text" name="Apellido Materno"></td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="Nombre de Usuario"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="Contraseña"></td>
                </tr>
                
                
                
                <tr>
                    <td><input type="submit" value="Crear usuario"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
