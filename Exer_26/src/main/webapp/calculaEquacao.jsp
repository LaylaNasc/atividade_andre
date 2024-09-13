<%-- 
    Document   : calculaEquacao
    Created on : 07/09/2024, 14:30:59
    Author     : layla
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Resultado da Equação do Segundo Grau</title>
</head>
<body>
    <h2>Resultado da Equação do Segundo Grau</h2>

    <%
        double a = 0.0;
        double b = 0.0;
        double c = 0.0;
        double delta;
        double raiz1 = 0.0;
        double raiz2 = 0.0;
        String mensagem = "";

        try {
            String aStr = request.getParameter("a");
            String bStr = request.getParameter("b");
            String cStr = request.getParameter("c");

            if (aStr != null && !aStr.isEmpty()) {
                a = Double.parseDouble(aStr.replace('.', ',').replace(',', '.'));
            }
            if (bStr != null && !bStr.isEmpty()) {
                b = Double.parseDouble(bStr.replace('.', ',').replace(',', '.'));
            }
            if (cStr != null && !cStr.isEmpty()) {
                c = Double.parseDouble(cStr.replace('.', ',').replace(',', '.'));
            }

            delta = b * b - 4 * a * c;

            if (delta > 0) {
                raiz1 = (-b + Math.sqrt(delta)) / (2 * a);
                raiz2 = (-b - Math.sqrt(delta)) / (2 * a);
                mensagem = "A equação possui duas raízes reais: " + raiz1 + " e " + raiz2;
            } else if (delta == 0) {
                raiz1 = -b / (2 * a);
                mensagem = "A equação tem uma raiz real: " + raiz1;
            } else {
                mensagem = "A equação não tem raízes reais.";
            }
        } catch (NumberFormatException e) {
            mensagem = "Erro, verifique os valores inseridos.";
        } catch (ArithmeticException e) {
            mensagem = "Erro, verifique se o valor de 'a' não é zero.";
        }

        request.setAttribute("a", a);
        request.setAttribute("b", b);
        request.setAttribute("c", c);
        request.setAttribute("mensagem", mensagem);
        request.setAttribute("raiz1", raiz1);
        request.setAttribute("raiz2", raiz2);
    %>

    <p><strong>Valor de a:</strong> <fmt:formatNumber value="${a}" type="number" minFractionDigits="2" maxFractionDigits="2"/> </p>
    <p><strong>Valor de b:</strong> <fmt:formatNumber value="${b}" type="number" minFractionDigits="2" maxFractionDigits="2"/> </p>
    <p><strong>Valor de c:</strong> <fmt:formatNumber value="${c}" type="number" minFractionDigits="2" maxFractionDigits="2"/> </p>
    
    <c:choose>
        <c:when test="${mensagem eq 'A equação não tem raízes reais.'}">
            <p><strong>Resultado:</strong> ${mensagem}</p>
        </c:when>
        <c:otherwise>
            <p><strong>Resultado:</strong> ${mensagem}</p>
            <c:if test="${raiz1 != 0.0}">
                <p><strong>Raiz 1:</strong> <fmt:formatNumber value="${raiz1}" type="number" minFractionDigits="2" maxFractionDigits="2"/> </p>
            </c:if>
            <c:if test="${raiz2 != 0.0}">
                <p><strong>Raiz 2:</strong> <fmt:formatNumber value="${raiz2}" type="number" minFractionDigits="2" maxFractionDigits="2"/> </p>
            </c:if>
        </c:otherwise>
    </c:choose>

    <a href="index.html">Voltar</a>
</body>
</html>

