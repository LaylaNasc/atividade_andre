<%-- 
    Document   : index
    Created on : 12/09/2024, 10:29:11
    Author     : layla
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ordenação de Números</title>
    </head>
    <body>
        <h2>Informe três números</h2>
        <form action="resultado.jsp" method="POST">

            <label for="a">Número a:</label>
            <input type="number" id="a" name="a" required><br><br>

            <label for="b">Número b:</label>
            <input type="number" id="b" name="b" required><br><br>

            <label for="c">Número c:</label>
            <input type="number" id="c" name="c" required><br><br>

            <button type="submit">Ordenar</button>
        </form>
    </body>
</html>
