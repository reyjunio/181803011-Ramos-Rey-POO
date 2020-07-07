<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    String usuario = "";
    int id = Integer.parseInt(request.getParameter("id"));
    try {
        Connection conexion = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
        stmt = conexion.prepareStatement("SELECT * FROM `usuario` WHERE `id_usuario`=?");
        stmt.setInt(1, id);
        rs = stmt.executeQuery();
        rs.next();
        usuario = rs.getString("usuario");
        } catch (SQLException e) {
        out.print(e.getMessage());
    }%>



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">   
        <title>Eliminar usuario</title>
    </head>
    <body>
        
        <p class="alert alert-danger">Eliminar a <%out.print(usuario);%> </p>
        <div> 
            <a class="btn btn-success" href="eliminar.jsp?id=<%=id%>">Continuar</a>   
            <a  class="btn btn-danger" href="index.jsp">Cancelar</a>
        </div>
    </body>
</html>


