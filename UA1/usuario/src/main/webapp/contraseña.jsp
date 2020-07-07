<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Contraseña</title>
    </head>
    <body>
        <%
            String clave1, clave2, clave;
            int id = 0;
            if (request.getParameter("contraActual") != null) {
                id = Integer.parseInt(request.getParameter("id_usuario"));
                clave = request.getParameter("contraActual");
                Connection conexion = null;
                PreparedStatement stmt = null;
                ResultSet rs = null;
                try {
                    
                    Class.forName("com.mysql.jdbc.Driver");
                    conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
                    stmt = conexion.prepareStatement("SELECT * FROM usuario WHERE id_usuario=? AND password=MD5(?)");
                    stmt.setInt(1, id);
                    stmt.setString(2, clave);
                    rs = stmt.executeQuery();
                    
                    if (rs.next() == true) {
                        if (request.getParameter("nuevaContra") != null && request.getParameter("confirmaContra") != null) {
                            clave1 = request.getParameter("nuevaContra");
                            clave2 = request.getParameter("confirmaContra");
                            if (clave1.equals(clave2)) {%>
        <div class="alert alert-info" >
            <h1>Seguro que quiere cambiar tu contraseña</h1>
        </div>
        <form action="cambiarContra.jsp" method="GET">
            <input class="form-control" type="hidden" name="password" value="<%=clave1%>" id=""/>
            <input type="hidden" value="<%=id%>" name="id" />
            <div class="form-group">
                <input class="btn btn-success btn-block" type="submit" value="Cambiar" />
                <a href="index.jsp"  class="btn btn-danger btn-block">Cancelar </a>
            </div>
        </form>
        <%} else {%>
        <div class="alert-danger" role="alert">
            <h2>No coinciden las contraseñas</h2>
            <a href="index.jsp" class="btn btn-info btn-block">Regresar</a>
        </div>
        <%}
    }
    } else {%>
    <div class="alert-danger" role="alert">
    <h2>La contra es incorrecta</h2>
    <a href="index.jsp" class="btn btn-info btn-block">Regresar</a>
        </div>
    <%}
    } catch (Exception e) {
    System.out.println(e.getMessage());
    }
}
%>
    </body>
</html>
