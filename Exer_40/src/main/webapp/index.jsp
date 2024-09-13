<%-- 
    Document   : index
    Created on : 12/09/2024, 10:19:33
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
        <h2>Informe o ângulo em graus</h2>
        <form action="resultado.jsp" method="POST">

            <label for="angulo">Ângulo (em graus):</label>
            <input type="number" id="angulo" name="angulo" required><br><br>

            <button type="submit">Verificar Quadrante</button>
        </form>
    </body>
</html>
