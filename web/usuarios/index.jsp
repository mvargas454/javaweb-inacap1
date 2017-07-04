
<%@page import="cl.accesodato.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="cl.negocio.Usuario" %>
<%
    HttpSession sesion=request.getSession();
    if(sesion.getAttribute("conectado")==null || sesion.getAttribute("conectado").equals("false")  ){
        response.sendRedirect("../index.jsp");
    }else{
    
    }
 %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>MODULO USUARIO</h1><br>
        
        <a href="crear.jsp">NUEVO USUARIO</a><br>
        
        <h2>LISTADO USUARIOS</h2>
        <table border="1">
            <thead>
                <th>ID</th>
                <th>NOMBRE</th>
                <th>APELLIDO PATERNO</th>
                <th>APELLIDO MATERNO</th>
                <th>NOMBRE DE USUARIO</th>
                <th>CONTRASEÑA</th>
            </thead>
            <tbody>
            <%
            //Course course=new Course();
              Conexion con=new Conexion();
              con.setSQL("select * from users");
              while(con.getRs().next()){
                  out.println("<tr>");
                    out.println("<td>"+con.getRs().getString("id")+"</td>");
                    out.println("<td>"+con.getRs().getString("name")+"</td>");
                    out.println("<td>"+con.getRs().getString("apepat")+"</td>");
                    out.println("<td>"+con.getRs().getString("apemat")+"</td>");
                    out.println("<td>"+con.getRs().getString("username")+"</td>");
                    out.println("<td>"+con.getRs().getString("password")+"</td>");
                  out.println("</tr>");
              }

                %>
            </tbody>            
        </table>
            <a href="../inicio.jsp">VOLVER</a>
        
    </body>
</html>
