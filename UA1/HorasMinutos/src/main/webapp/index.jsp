<%-- 
    Document   : index
    Created on : 26 may 2020, 22:04:58
    Author     : Riskys
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hora a minutos</title>
    </head>
    <body>
        <h1>introduce las horas</h1>
        <%
            if (request.getParameter("numero") != null) {
                out.println("<h1>los minutos son<h1>");

                int numero = Integer.parseInt(request.getParameter("numero"));
                int min;
                min = numero*60;
                out.println(min+" minutos");
                
                %>
        <form>
            <input type="hidden"/> 
            <input type="submit" value="Regresar" />
        </form>
        <%} else {%>
        <form>
            <input type="number" name="numero" required /> 
            <input type="submit" value="Enviar" />
        </form>
        <h3>no has ingredo nada<h3>
                <%}
       %>
       
        
        
    </body>
</html>
