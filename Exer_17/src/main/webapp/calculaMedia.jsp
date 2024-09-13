<%-- 
    Document   : calculaMedia
    Created on : 05/09/2024, 21:00:27
    Author     : layla
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calcula Nota Final</title>
</head>
<body>
    <c:set var="nota1" value="${param.nota1}" />
    <c:set var="nota2" value="${param.nota2}" />

    <fmt:parseNumber var="n1" value="${nota1}" type="number" parseLocale="en" />
    <fmt:parseNumber var="n2" value="${nota2}" type="number" parseLocale="en" />

    <c:choose>
        <c:when test="${not empty n1 and not empty n2}">
            <c:set var="mediaPonderada" value="${(n1 * 2 + n2 * 3) / 5}" />
           
            <p>A média ponderada das notas 
                <c:out value="${n1}" /> (peso 2) e 
                <c:out value="${n2}" /> (peso 3) é: 
                <fmt:formatNumber value="${mediaPonderada}" minFractionDigits="1" maxFractionDigits="1" />
            </p>
        </c:when>
        <c:otherwise>
            <p>Por favor, insira duas notas válidas.</p>
        </c:otherwise>
    </c:choose>

    <a href="index.html">Voltar</a>
</body>
</html>
