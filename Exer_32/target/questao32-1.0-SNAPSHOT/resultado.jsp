<%-- 
    Document   : resultado
    Created on : 12/09/2024, 09:39:44
    Author     : layla
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Validar Nota</title>
    </head>
    <body>
        <h2>Resultado da Validação</h2>

        <c:set var="notaStr" value="${param.nota}" />

        <fmt:parseNumber var="nota" value="${notaStr}" type="number" />

        <c:choose>
            <c:when test="${nota >= 0.0 and nota <= 10.0}">
                <p>A nota <c:out value="${nota}" /> é válida.</p>
            </c:when>
            <c:otherwise>
                <p>A nota <c:out value="${nota}" /> é inválida.</p>
            </c:otherwise>
        </c:choose>

        <a href="index.jsp">Voltar</a>
    </body>
</html>
