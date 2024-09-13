<%-- 
    Document   : calculaSalario
    Created on : 07/09/2024, 12:53:03
    Author     : layla
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"> 
    <title>Resultado do Salário</title>
</head>
<body>
    <h2>Resultado do Salário do Vendedor</h2>

    <%
        double salarioFixo = 5000.0;
        double totalVendas = 10000.0;
        double imposto = salarioFixo * 0.06;
        double comissao = totalVendas * 0.05;
        double salarioFinal = salarioFixo - imposto + comissao;

        try {
            String salarioFixoStr = request.getParameter("salarioFixo");
            String totalVendasStr = request.getParameter("totalVendas");

            if (salarioFixoStr != null && !salarioFixoStr.isEmpty()) {
                salarioFixoStr = salarioFixoStr.replace(".", "").replace(",", ".");
                salarioFixo = Double.parseDouble(salarioFixoStr);
            }
            if (totalVendasStr != null && !totalVendasStr.isEmpty()) {
                totalVendasStr = totalVendasStr.replace(".", "").replace(",", ".");
                totalVendas = Double.parseDouble(totalVendasStr);
            }

            imposto = salarioFixo * 0.06;
            comissao = totalVendas * 0.05;
            salarioFinal = salarioFixo - imposto + comissao;
        } catch (NumberFormatException e) {
            out.println("<p style='color: pink;'>Erro ao processar os dados. Verifique os valores inseridos.</p>");
            out.println("<p>Detalhes do erro: " + e.getMessage() + "</p>");
        }

        request.setAttribute("salarioFixo", salarioFixo);
        request.setAttribute("totalVendas", totalVendas);
        request.setAttribute("imposto", imposto);
        request.setAttribute("comissao", comissao);
        request.setAttribute("salarioFinal", salarioFinal);
    %>

    <p><strong>Salário Fixo:</strong> <fmt:formatNumber value="${salarioFixo}" type="number" minFractionDigits="2" maxFractionDigits="2"/> </p>
    <p><strong>Total de Vendas:</strong> <fmt:formatNumber value="${totalVendas}" type="number" minFractionDigits="2" maxFractionDigits="2"/> </p>
    <p><strong>Imposto (6%):</strong> <fmt:formatNumber value="${imposto}" type="number" minFractionDigits="2" maxFractionDigits="2"/> </p>
    <p><strong>Comissão (5%):</strong> <fmt:formatNumber value="${comissao}" type="number" minFractionDigits="2" maxFractionDigits="2"/> </p>
    <p><strong>Salário Final:</strong> <fmt:formatNumber value="${salarioFinal}" type="number" minFractionDigits="2" maxFractionDigits="2"/> </p>
    
    <a href="index.html">Voltar</a>
</body>
</html>
