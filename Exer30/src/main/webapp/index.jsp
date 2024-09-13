<%-- 
    Document   : index
    Created on : 11/09/2024, 14:14:42
    Author     : layla
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

            <label for="numero1">Digite o primeiro número: </label>
            <input type="number" id="numero1" name="numero1" required/><br>
            <br/>

            <label for="numero2">Digite o segundo número: </label>
            <input type="number" id="numero2" name="numero2" required/><br>
            <br/>

            <input type="submit" value="Comparar"/>            
        </form>
    </body>
</html>
