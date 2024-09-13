<%-- 
    Document   : resultado
    Created on : 11/09/2024, 14:16:04
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

        <c:set var="numeroStr1" value="${param.numero1}" />
        <c:set var="numeroStr2" value="${param.numero2}" />

        <fmt:parseNumber var="numero1" value="${numeroStr1}" type="number" />
        <fmt:parseNumber var="numero2" value="${numeroStr2}" type="number" />


        <c:choose>
            <c:when test="${numero1 > numero2}">
                <p>O maior número é: <c:out value="${numero1}" /></p>
            </c:when>
            <c:when test="${numero1 < numero2}">
                <p>O maior número é: <c:out value="${numero2}" /></p>
            </c:when>
            <c:otherwise>
                <p>Os números são iguais.</p>
            </c:otherwise>

        </c:choose>

        <a href="index.jsp">Voltar</a>

    </body>
</html>
