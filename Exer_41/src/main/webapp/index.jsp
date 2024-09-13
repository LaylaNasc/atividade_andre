<%-- 
    Document   : index
    Created on : 12/09/2024, 10:23:46
    Author     : layla
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Informe uma data</h2>
        <form action="resultado.jsp" method="POST">
            <label for="dia">Dia:</label>
            <input type="number" id="dia" name="dia" required><br><br>

            <label for="mes">Mês:</label>
            <input type="number" id="mes" name="mes" required><br><br>

            <label for="ano">Ano:</label>
            <input type="number" id="ano" name="ano" required><br><br>

            <button type="submit">Verificar Data</button>
        </form>
    </body>
</html>
