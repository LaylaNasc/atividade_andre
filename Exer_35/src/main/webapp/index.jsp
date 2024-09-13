<%-- 
    Document   : index
    Created on : 12/09/2024, 09:57:07
    Author     : layla
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Raiz ou Quadrado</title>
    </head>
    <body>
        <h2>Raiz ou Quadrado</h2>

        <form action="resultado.jsp" method="POST">

            <label for="n">Digite o número: </label>
            <input type="number" id="n" name="n" required/><br><br>      

            <input type="submit" value="Calcular">
        </form>
    </body>
</html>
