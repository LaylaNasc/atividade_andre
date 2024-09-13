<%-- 
    Document   : resultado
    Created on : 12/09/2024, 10:30:30
    Author     :layla
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ordenação de Números</title>
    </head>
    <body>
        <h2>Resultado</h2>

        <c:set var="numeroStrA" value="${param.a}" />
        <c:set var="numeroStrB" value="${param.b}" />
        <c:set var="numeroStrC" value="${param.c}" />

        <fmt:parseNumber var="a" value="${numeroStrA}" type="number" />
        <fmt:parseNumber var="b" value="${numeroStrB}" type="number" />
        <fmt:parseNumber var="c" value="${numeroStrC}" type="number" />

        <c:if test="${a < b}">
            <c:set var="temp" value="${a}" />
            <c:set var="a" value="${b}" />
            <c:set var="b" value="${temp}" />
        </c:if>

        <c:if test="${a < c}">
            <c:set var="temp" value="${a}" />
            <c:set var="a" value="${c}" />
            <c:set var="c" value="${temp}" />
        </c:if>

        <c:if test="${b < c}">
            <c:set var="temp" value="${b}" />
            <c:set var="b" value="${c}" />
            <c:set var="c" value="${temp}" />
        </c:if>

        <p>Os valores em ordem decrescente são:</p>
        <p>a = ${a}</p>
        <p>b = ${b}</p>
        <p>c = ${c}</p>

        <a href="index.jsp">Voltar</a>
    </body>
</html>
