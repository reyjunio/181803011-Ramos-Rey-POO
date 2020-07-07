<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Contraseña</title>
    </head>
    <body>
        <h1>Editar Contraseña</h1>
        <div class="container">
            <div class="form-group">
                <form action="contraseña.jsp" method="GET">
                    <input type="hidden" name="id_usuario" value="<%=request.getParameter("id")%>"/>
                    <div>
                        <input type="password" name="contraActual" placeholder="Contraseña actual" required/>
                    </div>
                    <div>
                        <input type="password" name="nuevaContra" placeholder="Contraseña nueva" required/>
                    </div>
                    <div>
                        <input type="password" name="confirmaContra" placeholder="Confirmar contraseña" required/>
                    </div>
                    <div>
                        <input type="submit" value="Cambiar contraseña"/>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
