<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession sesion=request.getSession();
    if(sesion.getAttribute("conectado")==null || sesion.getAttribute("conectado").equals("false")  ){
        response.sendRedirect("index.jsp");
    }else{
    
    }
 %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="ServletUsuario?accion=cerrar">
            <input type="submit" value="Cerrar Sesion">
        </form>
        <br>
        <h1>Bienvenido!!!</h1><br>
        <a href="cursos/index.jsp"> Modulo Cursos </a><br>
        <a href="usuarios/index.jsp">Modulo Usuarios</a>
    </body>
</html>
