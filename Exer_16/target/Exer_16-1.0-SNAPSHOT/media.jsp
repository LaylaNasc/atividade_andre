<%-- 
    Document   : media
    Created on : 05/09/2024, 18:26:37
    Author     : layla
--%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculadora de Média Aritmética</title>
</head>
<body>
    <h2>Resultado da Média Aritmética</h2>

    <c:set var="nota1" value="${param.nota1}" />
    <c:set var="nota2" value="${param.nota2}" />
    <c:set var="nota3" value="${param.nota3}" />

    <fmt:parseNumber var="n1" value="${nota1}" type="number" parseLocale="en" />
    <fmt:parseNumber var="n2" value="${nota2}" type="number" parseLocale="en" />
    <fmt:parseNumber var="n3" value="${nota3}" type="number" parseLocale="en" />

    <c:choose>
        <c:when test="${not empty n1 and not empty n2 and not empty n3}">
            <c:set var="media" value="${(n1 + n2 + n3) / 3}" />
            <p>A média aritmética das notas 
                <c:out value="${n1}" />, 
                <c:out value="${n2}" /> e 
                <c:out value="${n3}" /> é: 
                <fmt:formatNumber value="${media}" minFractionDigits="1" maxFractionDigits="1" />
            </p>
        </c:when>
        <c:otherwise>
            <p>Por favor, insira três números válidos.</p>
        </c:otherwise>
    </c:choose>

    <a href="index.html">Voltar</a>
</body>
</html>
