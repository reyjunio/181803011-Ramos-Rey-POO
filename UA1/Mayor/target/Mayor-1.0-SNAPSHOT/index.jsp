<%-- 
    Document   : index
    Created on : 27 may 2020, 8:13:18
    Author     : Riskys
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Imgrese el numero de numeros que desea ingresar</h1>
        <form action="solicita.jsp">
            <input type="number" name="numero" required/> 
            <input type="submit" value="Enviar" />
                
        </form>
    </body>
</html>
