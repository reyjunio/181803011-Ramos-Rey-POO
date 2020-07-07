<%-- 
    Document   : index
    Created on : 28 may 2020, 13:12:20
    Author     : Riskys
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Documento HTML</title>
        <style>
            table, th, td {
                border: 1px solid black;
            }
        </style>

    </head>
    <body style="background-color:greenyellow;">

        <h1 style="color: blueviolet">Primer parrafo</h1>

        <p style="font-size:160%;" ><strong> <b>La tecnología informática</b> </strong>o de información se refiere al desarrollo,
            mantenimiento y uso de software, sistemas y redes informáticos. Incluye su uso para el procesamiento y 
            distribución de datos. Datos significa información, hechos, estadísticas, etc. reunidos para referencia,
            almacenamiento o análisis.</p><br><br><br>
        
        <img src="https://i.imgur.com/y83i1fsb.jpg" width="460" height="345"><br><br>


        <a href="https://www.w3schools.com/html/html_images.asp" target="_blank">Visit more information</a><br><br>


        <table style="width:10%">
            <caption>Tabla1</caption>
            <tr>
                <td>Marca</td>
                <td>Precio</td>
            </tr>
            <tr>
                <td>hp</td>
                <td>$100</td>
            </tr>
            <tr>
                <td>dell</td>
                <td>$50</td>
            </tr>
        </table><br><br>

        <h3>Lista 1</h3>

        <ol>
            <li>Computadoras</li>
            <li>Laptop</li>
            <li>Movil</li>
        </ol><br><br>


        <h3>Formulario</h3>

        <form>
            <label for="username">Username:</label><br>
            <input type="text" id="username" name="username" required><br>
            <label for="username">Edad:</label><br>
            <input type="number" id="edad" name="edad" required /><br>
            <label for="birthday">Birthday:</label><br>
            <input type="date" id="birthday" name="birthday"><br>
            <label for="birthdaytime">Birthday (date and time):</label><br>
            <input type="datetime-local" id="birthdaytime" name="birthdaytime"><br>
            <label for="email">Enter your email:</label><br>
            <input type="email" id="email" name="email"><br>
            <label for="pwd">Password:</label><br>
            <input type="password" id="pwd" name="pwd" required><br>
            <input type="submit" value="Enviar" /><br><br>
            
            <h3>opciones</h3>
            <input type="checkbox" id="computadora" name="computadora" value="Bike">
            <label for="computadora"> I have a computer</label><br>
            <input type="checkbox" id="coches" name="coches" value="Car">
            <label for="coches"> I have a car</label><br>
            <input type="button" onclick="alert('Ya valio!')" value="Not Click Me!"><br><br>
        </form><br><br>

        <h3>Menu desplegable</h3>

        <select id="cars" name="cars">
            <option value="finanza">finanza</option>
            <option value="tecnologia">tecnologia</option>
            <option value="salud">salud</option>
            <option value="viajar">viajar</option>
        </select>
    </body>
</html>
