<%-- 
    Document   : index
    Created on : 12/09/2024, 09:51:13
    Author     : layla
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verificar Par ou Ímpar</title>
    </head>
    <body>
        <h2>Verificar Par ou Ímpar</h2>

        <form action="resultado.jsp" method="POST">

            <label for="n">Digite o número: </label>
            <input type="number" id="n" name="n" required/><br><br>

            <input type="submit" value="Verificar">

        </form>
    </body>
</html>
