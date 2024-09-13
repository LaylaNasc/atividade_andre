<%-- 
    Document   : resultado
    Created on : 12/09/2024, 10:12:01
    Author     : layla
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado da Verificação</title>
    </head>
    <body>
        <h2>Resultado</h2>
        <c:set var="numStr1" value="${param.num1}" />
        <c:set var="numStr2" value="${param.num2}" />
        <c:set var="numStr3" value="${param.num3}" />

        <fmt:parseNumber var="numero1" value="${numStr1}" type="number" />
        <fmt:parseNumber var="numero2" value="${numStr2}" type="number" />
        <fmt:parseNumber var="numero3" value="${numStr3}" type="number" />

        <c:if test="${numero1 + numero2 > numero3 && numero1 + numero3 > numero2 && numero2 + numero3 > numero1}">
            <c:choose>
                <c:when test="${numero1 == numero2 && numero2 == numero3}">
                    <p>Os números ${numero1}, ${numero2} e ${numero3} formam um triângulo equilátero (os três lados iguais).</p>
                </c:when>
                <c:when test="${numero1 == numero2 || numero1 == numero3 || numero2 == numero3}">
                    <p>Os números ${numero1}, ${numero2} e ${numero3} formam um triângulo isósceles (dois lados iguais).</p>
                </c:when>
                <c:otherwise>
                    <p>Os números ${numero1}, ${numero2} e ${numero3} formam um triângulo escaleno (os três lados diferentes).</p>
                </c:otherwise>
            </c:choose>
        </c:if>

        <c:if test="${!(numero1 + numero2 > numero3 && numero1 + numero3 > numero2 && numero2 + numero3 > numero1)}">
            <p>Os números ${numero1}, ${numero2} e ${numero3} não formam um triângulo.</p>
        </c:if>

        <a href="index.jsp">Voltar</a>
    </body>
</html>
