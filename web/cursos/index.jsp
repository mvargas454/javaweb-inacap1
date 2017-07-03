
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

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
        <h1>MODULO DE CURSOS</h1><br>
        
        <a href="crear.jsp">NUEVO CURSO</a><br>
        
    </body>
</html>
