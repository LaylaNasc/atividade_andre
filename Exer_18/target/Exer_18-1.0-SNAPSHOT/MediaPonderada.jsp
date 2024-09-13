<%-- 
    Document   : MediaPonderada
    Created on : 05/09/2024, 21:11:03
    Author     : layla
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calcula Média Ponderada</title>
</head>
<body>
    
    <c:set var="nota1" value="${param.nota1}" />
    <c:set var="peso1" value="${param.peso1}" />
    <c:set var="nota2" value="${param.nota2}" />
    <c:set var="peso2" value="${param.peso2}" />

    <c:choose>
        <c:when test="${nota1 != null && peso1 != null && nota2 != null && peso2 != null}">
            <fmt:parseNumber var="n1" value="${nota1}" type="number" parseLocale="pt_BR" />
            <fmt:parseNumber var="p1" value="${peso1}" type="number" parseLocale="pt_BR" />
            <fmt:parseNumber var="n2" value="${nota2}" type="number" parseLocale="pt_BR" />
            <fmt:parseNumber var="p2" value="${peso2}" type="number" parseLocale="pt_BR" />

            <c:choose>
                <c:when test="${not empty n1 && not empty p1 && not empty n2 && not empty p2}">
                    <c:set var="mediaPonderada" value="${(n1 * p1 + n2 * p2) / (p1 + p2)}" />
                    <h3>Média Ponderada: 
                        <fmt:formatNumber value="${mediaPonderada}" minFractionDigits="1" maxFractionDigits="1" />
                    </h3>
                </c:when>
                <c:otherwise>
                    <h3>Por favor, insira números válidos.</h3>
                </c:otherwise>
            </c:choose>
        </c:when>
        <c:otherwise>
            <h3>Por favor, preencha todos os campos.</h3>
        </c:otherwise>
    </c:choose>

    <a href="index.html">Voltar</a>
</body>
</html>
