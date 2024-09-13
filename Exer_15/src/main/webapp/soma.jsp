<%-- 
    Document   : soma
    Created on : 05/09/2024, 18:03:33
    Author     : layla
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultado da Soma</title>
</head>
<body>
    <h2>Resultado da Soma de Dois Números</h2>

    <c:set var="numero1" value="${param.num1}" />
    <c:set var="numero2" value="${param.num2}" />

    <fmt:parseNumber var="num1" value="${numero1}" type="number" />
    <fmt:parseNumber var="num2" value="${numero2}" type="number" />

   
    <c:choose>
        <c:when test="${not empty num1 and not empty num2}">
            <c:set var="soma" value="${num1 + num2}" />
            <p>A soma de <c:out value="${num1}" /> e <c:out value="${num2}" /> é: <c:out value="${soma}" /></p>
        </c:when>
        <c:otherwise>
            <p>Por favor, insira dois números válidos.</p>
        </c:otherwise>
    </c:choose>

    <a href="index.html">Voltar</a>
</body>
</html>

