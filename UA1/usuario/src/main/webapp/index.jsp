<%@page import="config.Conexion"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Connection conexion;
    Conexion conexion2=new Conexion();
    PreparedStatement stmt = null;
    ResultSet rs = null;
    try {
        conexion=conexion2.getConexion();
        stmt = conexion.prepareStatement("Select * from usuario");
        rs = stmt.executeQuery();

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>CRUD</title>
    </head>
    <body>
        <h1>Tabla Usuarios</h1><br><br>
        <div class="container">
            <table class="table table-hover  table-bordered">
                <thead>
                    <tr>
                        <td colspan="3"><h2>Usuarios</h2></td>
                        <td colspan="3"><a class="btn btn-success btn-block" href="formularioUsuario.jsp">Agregar Usuario</a></td>
                    </tr>    
                    <tr class="table-secondary">
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Contraseña</th>
                        <th></th>
                        <th></th>
                        <th></th>
                    </tr> 
                </thead>
                <%while (rs.next()) {%>
                <tr> 
                    <td ><%=rs.getInt("id_usuario")%></td>
                    <td><%=rs.getString("usuario")%></td>
                    <td><%=rs.getString("password")%></td>
                    <td><a class="btn btn-warning btn-block" href="formularioUsuario.jsp?id=<%=rs.getInt("id_usuario")%>">Editar el usuario</a></td>
                    <td><a class="btn btn-info btn-block" href="editarContraseña.jsp?id=<%=rs.getInt("id_usuario")%>">Cambiar contraseña</a></td>
                    <td><a class="btn btn-danger btn-block" href="formularioEliminar.jsp?id=<%=rs.getInt("id_usuario")%>">Eliminar usuario</a></td>
                    
                </tr>
                
                <%}%>
            </table>
        </div>
    </body>
</html>
<%
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>