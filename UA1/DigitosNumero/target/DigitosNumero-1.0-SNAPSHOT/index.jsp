<%-- 
    Document   : index
    Created on : 26 may 2020, 23:34:13
    Author     : Riskys
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>igitos de un numero</title>
    </head>
    <body>
        <h1>Introduce un numero menor a 10000</h1>
        <%
            int unidad;
            int decena;
            int centena;
            int miles;
            
            if (request.getParameter("numero") != null) {
                out.println("<h1>los numeros<h1>");

                int numero = Integer.parseInt(request.getParameter("numero"));
                
                unidad = numero%10;
                decena = (numero/10)%10;
                centena = (numero/100)%10;
                miles = numero/1000;
              
                out.println(unidad+" unidades");
                out.println(decena+" decenas");
                out.println(centena+" centenas");
                out.println(miles+" miles");
                
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
