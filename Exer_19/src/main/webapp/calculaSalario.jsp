<%-- 
    Document   : calculaSalario
    Created on : 05/09/2024, 22:34:51
    Author     : layla
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Calcula Novo Salário</title>
</head>
<body>
    <h2>Resultado do Cálculo de Salário</h2>

    <c:set var="salario" value="${param.salario}" />

    <c:choose>
        <c:when test="${salario != null && !salario.trim().isEmpty()}">
            <fmt:parseNumber var="salarioNumero" value="${salario}" type="number" />
            
            <c:if test="${salarioNumero != null}">
                <c:set var="aumento" value="0.06" />
                <c:set var="novoSalario" value="${salarioNumero * (1 + aumento)}" />

                <h3>Salário Atual: <fmt:formatNumber value="${salarioNumero}" type="currency" /></h3>
                <h3>Novo Salário com 6% de Aumento: <fmt:formatNumber value="${novoSalario}" type="currency" /></h3>
            </c:if>
        </c:when>
        <c:otherwise>
            <h3>Insira um valor numérico válido para o salário.</h3>
        </c:otherwise>
    </c:choose>

    <a href="index.html">Voltar</a>
</body>
</html>
