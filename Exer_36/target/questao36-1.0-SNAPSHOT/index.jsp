<%-- 
    Document   : index
    Created on : 12/09/2024, 10:01:34
    Author     : layla
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Maior e Menor Número</title>
    </head>
    <body>
        <h2>Informe 5 números</h2>

        <form action="resultado.jsp" method="POST">

            <label for="num1">Digite o primeiro número: </label>
            <input type="number" id="num1" name="num1" required/><br><br>

            <label for="num2">Digite o segundo número: </label>
            <input type="number" id="num2" name="num2" required/><br><br>

            <label for="num3">Digite o terceiro número: </label>
            <input type="number" id="num3" name="num3" required/><br><br>

            <label for="num4">Digite o quarto número: </label>
            <input type="number" id="num4" name="num4" required/><br><br>

            <label for="num5">Digite o quinto número: </label>
            <input type="number" id="num5" name="num5" required/><br><br>

            <input type="submit" value="Comparar"/>   
        </form>
    </body>
</html>
