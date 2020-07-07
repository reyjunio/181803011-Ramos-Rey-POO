<%-- 
    Document   : index
    Created on : 26 may 2020, 23:17:31
    Author     : Riskys
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>mes</title>
    </head>
    <body>
        <h1>Escribe un numero del 1-12</h1>
        <%
            if (request.getParameter("numero") != null) {
                out.println("<h1>El Mes es<h1>");

                int numero = Integer.parseInt(request.getParameter("numero"));
                

                switch (numero) {
                    case 1: out.println("<h1>Enero<h1>"); break;
                    case 2: out.println("<h1>Febrero<h1>"); break;
                    case 3: out.println("<h1>Marzo<h1>"); break;
                    case 4: out.println("<h1>Abril<h1>"); break;
                    case 5: out.println("<h1>Mayo<h1>"); break;
                    case 6: out.println("<h1>Junio<h1>"); break;
                    case 7: out.println("<h1>Julio<h1>"); break;
                    case 8: out.println("<h1>Agosto<h1>"); break;
                    case 9: out.println("<h1>Septiembre<h1>"); break;
                    case 10: out.println("<h1>Octubre<h1>"); break;
                    case 11: out.println("<h1>Noviembre<h1>"); break;
                    case 12: out.println("<h1>Diciembre<h1>"); break;
            

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
