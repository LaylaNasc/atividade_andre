<%-- 
    Document   : index
    Created on : 11/09/2024, 14:23:55
    Author     : wilia
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Comparar Números</title>
    </head>
    <body>
        <h2>Comparar Números</h2>
        <form action="resultado.jsp" method="POST">

            <label for="num1">Digite o primeiro número: </label>
            <input type="number" id="num1" name="num1" required/><br><br>


            <label for="num2">Digite o segundo número: </label>
            <input type="number" id="num2" name="num2" required/><br><br>


            <label for="num3">Digite o terceiro número: </label>
            <input type="number" id="num3" name="num3" required/><br><br>


            <button type="submit">Comparar</button>  
    </body>
</html>
