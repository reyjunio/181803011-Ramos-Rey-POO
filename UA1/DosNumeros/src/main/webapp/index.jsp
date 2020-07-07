<%-- 
    Document   : index
    Created on : 26 may 2020, 22:40:13
    Author     : Riskys
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>orden descendente</title>
    </head>
    <body>
        <%
            if (request.getParameter("numero") != null && request.getParameter("numero2") != null) {
                out.println("<h1>Los numero ordenados son<h1>");

                int n1 = Integer.parseInt(request.getParameter("numero"));
                int n2 = Integer.parseInt(request.getParameter("numero2"));
                for (int i = 0; i < 1; i++) {
                    if (n1 < n2) {
                        out.println(n2 + "," + n1);
                    } else {
                        out.println(n1 + "," + n2);
                    }
                }%>
        <form>
            <input type="hidden"/> 
            <input type="submit" value="Regresar" />
        </form>
        <%} else {%>
        <form>
            <input type="number" name="numero" required /> 

            <input type="number" name="numero2" required /> 
            <input type="submit" value="Enviar" />
        </form>
        <h3>no has ingredo nada<h3>
                <%}
                %>




                </body>
                </html>
