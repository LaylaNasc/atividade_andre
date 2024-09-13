<%-- 
    Document   : index
    Created on : 12/09/2024, 10:11:07
    Author     : layla
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verificação de Triângulo</title>
    </head>
    <body>
        <h2>Verificar se os números formam um triângulo</h2>
        <form action="resultado.jsp" method="POST">

            <label for="num1">Número 1:</label>
            <input type="number" id="num1" name="num1" required><br><br>

            <label for="num2">Número 2:</label>
            <input type="number" id="num2" name="num2" required><br><br>

            <label for="num3">Número 3:</label>
            <input type="number" id="num3" name="num3" required><br><br>

            <button type="submit">Verificar</button>
        </form>
    </body>
</html>
