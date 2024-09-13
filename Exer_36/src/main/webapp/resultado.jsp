<%-- 
    Document   : resultado
    Created on : 12/09/2024, 10:03:11
    Author     :layla
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Maior e Menor Número</title>
    </head>
    <body>
        <h2>Resultado da Comparação</h2>

        <c:set var="numeroStr1" value="${param.num1}" />
        <c:set var="numeroStr2" value="${param.num2}" />
        <c:set var="numeroStr3" value="${param.num3}" />
        <c:set var="numeroStr4" value="${param.num4}" />
        <c:set var="numeroStr5" value="${param.num5}" />

        <fmt:parseNumber var="num1" value="${numeroStr1}" type="number" />
        <fmt:parseNumber var="num2" value="${numeroStr2}" type="number" />
        <fmt:parseNumber var="num3" value="${numeroStr3}" type="number" />
        <fmt:parseNumber var="num4" value="${numeroStr4}" type="number" />
        <fmt:parseNumber var="num5" value="${numeroStr5}" type="number" />

        <c:set var="max" value="${num1}" />
        <c:set var="min" value="${num1}" />

        <c:if test="${num2 > max}">
            <c:set var="max" value="${num2}" />
        </c:if>
        <c:if test="${num2 < min}">
            <c:set var="min" value="${num2}" />
        </c:if>

        <c:if test="${num3 > max}">
            <c:set var="max" value="${num3}" />
        </c:if>
        <c:if test="${num3 < min}">
            <c:set var="min" value="${num3}" />
        </c:if>

        <c:if test="${num4 > max}">
            <c:set var="max" value="${num4}" />
        </c:if>
        <c:if test="${num4 < min}">
            <c:set var="min" value="${num4}" />
        </c:if>

        <c:if test="${num5 > max}">
            <c:set var="max" value="${num5}" />
        </c:if>
        <c:if test="${num5 < min}">
            <c:set var="min" value="${num5}" />
        </c:if>

        <p>Maior número: <c:out value="${max}" /></p>
        <p>Menor número: <c:out value="${min}" /></p>

        <a href="index.jsp">Voltar</a>
    </body>
</html>
