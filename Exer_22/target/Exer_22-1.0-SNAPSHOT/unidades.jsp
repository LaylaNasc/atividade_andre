<%-- 
    Document   : unidades
    Created on : 07/09/2024, 11:54:30
    Author     : layla
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Resultado do Dígito das Unidades</title>
</head>
<body>
    <h1>Resultado</h1>

    <c:choose>
        <c:when test="${not empty param.numero}">
            <c:set var="numero" value="${param.numero}" />
            
            <c:set var="unidades" value="${numero % 10}" />
            
            <p>O dígito das unidades do número ${numero} é <c:out value="${unidades}" />.</p>
        </c:when>
        <c:otherwise>
            <p>Digite um número.</p>
        </c:otherwise>
    </c:choose>
    
    <a href="index.html">Voltar</a>
</body>
</html>


