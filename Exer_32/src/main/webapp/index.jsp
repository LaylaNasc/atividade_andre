<%-- 
    Document   : index
    Created on : 12/09/2024, 09:38:18
    Author     : layla
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Validar Nota</title>
    </head>
    <body>
        <h2>Validação da Nota</h2>
        <form action="resultado.jsp" method="POST">

            <label for="nota">Digite a nota do aluno: </label>
            <input type="number" id="nota" name="nota" required /><br><br>
           

            <input type="submit" value="Validar" />
        </form>
    </body>
</html>
