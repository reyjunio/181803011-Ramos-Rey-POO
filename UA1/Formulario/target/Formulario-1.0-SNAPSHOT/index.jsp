<%-- 
    Document   : index
    Created on : 21 may 2020, 2:32:41
    Author     : Riskys
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>formulario</title>
    </head>
    <body>
        <h1>formulario</h1>
        <form method="get">

                numero: <input type="number" name="numero"> 
                <input type="submit" value="ingresar">
        </form>
        
        <%
            try {
            int a=Integer.parseInt(request.getParameter("numero"));
            for(int i=0;i<=a;i++){
            out.println(i);}}
        catch(NumberFormatException e) {
    // log the error or ignore it
}
        %>
    </body>
</html>
