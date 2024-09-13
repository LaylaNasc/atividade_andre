<%-- 
    Document   : resultado
    Created on : 12/09/2024, 09:44:34
    Author     : layla
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ordenar Números</title>
    </head>
    <body>
        <h2>Números Ordenados</h2>

        <c:set var="numeroStrA" value="${param.a}" />
        <c:set var="numeroStrB" value="${param.b}" />

        <fmt:parseNumber var="numA" value="${numeroStrA}" type="number" />
        <fmt:parseNumber var="numB" value="${numeroStrB}" type="number" />


        <c:if test="${numA > numB}">
            <c:set var="temp" value="${numA}"/>
            <c:set var="numA" value="${numB}"/>
            <c:set var="numB" value="${temp}" />
        </c:if>

        <p>Número A: <c:out value="${numA}" /></p>
        <p>Número B: <c:out value="${numB}" /></p>

        <a href="index.jsp">Voltar</a>
    </body>
</html>
