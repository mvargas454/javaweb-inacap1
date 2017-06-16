<%@page import="cl.negocio.Course"%>
<%@page import="cl.accesodato.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Course course=new Course();
            course.setName("PROGRAMACION 10");
            course.setDescription("TALLER AVANZADO");
            course.setState("activo");
            course.save();

        %>
    </body>
</html>
