<%-- 
    Document   : index
    Created on : 12/09/2024, 09:43:45
    Author     : layla
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ordenar Números</title>
    </head>
    <body>
        <h2>Ordenar Números</h2>
        <form action="resultado.jsp" method="POST">

            <label for="a">Número A: </label>
            <input type="number" id="a" name="a" required /><br><br>


            <label for="b">Número B: </label>
            <input type="number" id="b" name="b" required /><br><br>


            <input type="submit" value="Ordenar" />
        </form>
    </body>
</html>
