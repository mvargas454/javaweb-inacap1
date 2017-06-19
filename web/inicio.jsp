<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession sesion=request.getSession();
    if(sesion.getAttribute("conectado").equals("true")){
    
    }else{
        response.sendRedirect("index.jsp");
    }
 %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bienvenido!!!</h1>
    </body>
</html>
