<%-- 
    Document   : calcularPotencia
    Created on : 07/09/2024, 12:26:01
    Author     : layla
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Resultado da Potência</title>
</head>
<body>
    <h1>Resultado da Potência</h1>

    <c:if test="${not empty param.largura and not empty param.profundidade}">
        
        <c:set var="largura" value="${param.largura}" scope="request" />
        <c:set var="profundidade" value="${param.profundidade}" scope="request" />
        <c:set var="area" value="${largura * profundidade}" scope="request" />

       
        <c:set var="potenciaNecessaria" value="${area * 18}" scope="request" />

        <p>Área da Sala: <fmt:formatNumber value="${area}" type="number" minFractionDigits="2"/> m²</p>
        <p>Potência da Lâmpada Necessária: <fmt:formatNumber value="${potenciaNecessaria}" type="number" minFractionDigits="2"/> W</p>
    </c:if>

    <c:if test="${empty param.largura or empty param.profundidade}">
        <p>Por favor, insira a largura e a profundidade da sala.</p>
    </c:if>
</body>
</html>
