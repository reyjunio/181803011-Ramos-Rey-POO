<%-- 
    Document   : cambiarContra
    Created on : 28 jun 2020, 22:42:16
    Author     : Riskys
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Connection conexion = null;
            PreparedStatement stmt = null;
            ResultSet rs = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
                stmt = conexion.prepareStatement("UPDATE usuario SET password=MD5(?) WHERE id_usuario=?");
                stmt.setString(1, request.getParameter("password"));
                stmt.setInt(2, Integer.parseInt(request.getParameter("id")));
                if (stmt.executeUpdate() == 1) {%>
                <div class="alert alert-success ">
            <h2>Se cambio la contra correctamente</h2>
            <a class="btn btn-info btn-block" href="index.jsp">Regresar al menu</a>
        </div>
        <%}
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }

        %>
    </body>
</html>
