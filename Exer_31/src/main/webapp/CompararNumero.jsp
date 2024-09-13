<%-- 
    Document   : CompararNumero
    Created on : 30/08/2024, 20:44:03
    Author     : layla
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Comparar Números</title>
    </head>
    <body>
        <h2>Resultado da Comparação</h2>

        <c:set var="numero1" value="${param.num1}" />
        <c:set var="numero2" value="${param.num2}" />
        <c:set var="numero3" value="${param.num3}" />

        <fmt:parseNumber var="num1" value="${numero1}" type="number" />
        <fmt:parseNumber var="num2" value="${numero2}" type="number" />
        <fmt:parseNumber var="num3" value="${numero3}" type="number" />

        <c:choose>
            <c:when test="${num1 >= num2 and num1 >= num3}">
                <p>O maior número é: <c:out value="${num1}" /></p>
            </c:when>
            <c:when test="${num2 >= num1 and num2 >= num3}">
                <p>O maior número é: <c:out value="${num2}" /></p>
            </c:when>
            <c:otherwise>
                <p>O maior número é: <c:out value="${num3}" /></p>
            </c:otherwise>
        </c:choose>

        <a href="index.html">Voltar</a>

    </body>
</html>
