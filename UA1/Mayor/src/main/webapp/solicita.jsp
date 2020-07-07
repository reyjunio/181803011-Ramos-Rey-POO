<%-- 
    Document   : solicita
    Created on : 27 may 2020, 8:27:30
    Author     : Riskys
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int numero=Integer.parseInt(request.getParameter("numero"));
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingresa los numeros</title>
    </head>
    <body>
        <h1>Ingresa un total de <% out.print(numero);%></h1>
        
        <form>
            <%
                for (int i=0; i<numero; i++){%>
                <input type="number" name="numeros" required/> 
                <% }
            
            %>
            <input type="hidden" value="<% out.print(numero);%>" name="numero"/>
            <input type="submit" value="envianding data" />     
        </form>
    </body>
</html>
