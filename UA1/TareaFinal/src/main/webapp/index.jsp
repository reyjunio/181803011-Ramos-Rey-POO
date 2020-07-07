<%-- 
    Document   : index
    Created on : 22 may 2020, 8:34:29
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
        <h1>El programa que debio de ser y no fue (Sin TRY, JAVASCRIP, SIN PROBLEMAS DE GLASSFISH)</h1>
        <%
            if (request.getParameter("numero") != null) {
                out.println("<h1>El ciclo del valor ingresado es<h1>");

                int numero = Integer.parseInt(request.getParameter("numero"));
                for (int i = 0; i <= numero; i++) {
                    out.println(i);
                }%>
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
