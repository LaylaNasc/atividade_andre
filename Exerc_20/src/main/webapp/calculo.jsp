<%-- 
    Document   : calculo
    Created on : 06/09/2024, 22:27:41
    Author     : layla
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>Cálculo de Salário</title>
</head>
<body>
    <c:set var="salarioBaseString" value="${param.salarioBase}" />

    <fmt:parseNumber type="number" value="${salarioBaseString}" var="salarioBase" />

    <c:set var="gratificacao" value="${salarioBase * 0.05}" />
    <c:set var="imposto" value="${salarioBase * 0.07}" />
    <c:set var="salarioLiquido" value="${salarioBase + gratificacao - imposto}" />

    <h2>Resultado</h2>
    <p>Salário Base: R$ <fmt:formatNumber value="${salarioBase}" type="currency" currencySymbol="R$"/></p>
    <p>Gratificação (5%): R$ <fmt:formatNumber value="${gratificacao}" type="currency" currencySymbol="R$"/></p>
    <p>Imposto (7%): R$ <fmt:formatNumber value="${imposto}" type="currency" currencySymbol="R$"/></p>
    <p>Salário Líquido: R$ <fmt:formatNumber value="${salarioLiquido}" type="currency" currencySymbol="R$"/></p>
</body>
</html>
