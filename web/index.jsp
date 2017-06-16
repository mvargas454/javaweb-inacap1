<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Connection con=null;
            String driver="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/inacap";
            String usuario="root";
            String clave="juajua";
            try{
                Class.forName(driver);
                con=DriverManager.getConnection(url,usuario,clave);
                out.println("Usuario Conectado");
            }catch(Exception ex){
                out.println("ERROr de Conexion"+ex.getMessage());
            }
        %>
    </body>
</html>
