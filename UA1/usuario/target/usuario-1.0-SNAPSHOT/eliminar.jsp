<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    Connection conexion = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
        stmt = conexion.prepareStatement("DELETE FROM usuario WHERE id_usuario=?");
        stmt.setInt(1, Integer.parseInt(request.getParameter("id")));
        stmt.executeUpdate();
        if (stmt.executeUpdate() == 0) {
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Eliminar usuario</title>
    </head>
    <body>
        <div> 
           
            <h1 class="alert alert-success"> Se elimino correctamente</h1><br><br>
            <a class="btn btn-success" href="index.jsp">Regresar al inicio</a>
            <%} else {%>
            <h1 class="alert alert-danger">Hubo una falla al eliminar</h1>
            <% }%> 
        </div>
    </body>
</html>
<%
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>


