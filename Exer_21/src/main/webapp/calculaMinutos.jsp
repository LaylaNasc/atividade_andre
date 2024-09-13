<%-- 
    Document   : calculaMinutos
    Created on : 07/09/2024, 11:36:48
    Author     : layla
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Resultado do Cálculo</title>
</head>
<body>
    <h2>Resultado do Cálculo</h2>

    <c:if test="${not empty param.hora and not empty param.minuto}">
        <c:set var="hora" value="${param.hora}" />
        <c:set var="minuto" value="${param.minuto}" />

        <c:choose>
            <c:when test="${hora lt 0 or hora gt 23 or minuto lt 0 or minuto gt 59}">
                <p>Hora ou minuto inválido.</p>
            </c:when>
            <c:otherwise>
                <fmt:parseNumber var="horaNum" value="${hora}" type="number" />
                <fmt:parseNumber var="minutoNum" value="${minuto}" type="number" />
                <c:set var="minutosTotais" value="${horaNum * 60 + minutoNum}" />

                <p>Se passaram <c:out value="${minutosTotais}" /> minutos desde o início do dia.</p>
            </c:otherwise>
        </c:choose>
    </c:if>
    <c:if test="${empty param.hora or empty param.minuto}">
        <p>Preencha os campos.</p>
    </c:if>

    <a href="index.html">Voltar</a>
</body>
</html>




