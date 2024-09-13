<%-- 
    Document   : resultado
    Created on : 11/09/2024, 14:25:07
    Author     : wilia
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

        <c:set var="numeroStr1" value="${param.num1}" />
        <c:set var="numeroStr2" value="${param.num2}" />
        <c:set var="numeroStr3" value="${param.num3}" />

        <fmt:parseNumber var="num1" value="${numeroStr1}" type="number" />
        <fmt:parseNumber var="num2" value="${numeroStr2}" type="number" />
        <fmt:parseNumber var="num3" value="${numeroStr3}" type="number" />

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

        <a href="index.jsp">Voltar</a>
    </body>
</html>
