<%-- 
    Document   : index
    Created on : 20 may 2020, 12:48:35
    Author     : Riskys
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mi primer formulario</title>
    </head>
    <body>
        <h1>Mi primer formulario</h1>
        <p> Este es mi primer formulario en donde conocere la diferencia entre POST<b> Y GET</b></p>
        <form method="POST">
            <input type="text" name="minombre"/>
            <input type="password" name="contra"/>
            <input type="date" name="fechanacimiento"/>
            <input type="submit" name="enviar"/>
            <input type="numero" name="enviar"/>
            
        </form>
        <h1>los datos ingresados son</h1>
        <%
            out.println(request.getParameter("minombre"));
            out.println(request.getParameter("contra"));
            out.println(request.getParameter("fechanacimiento"));
            
        
        
        %>
        
    </body>
</html>
