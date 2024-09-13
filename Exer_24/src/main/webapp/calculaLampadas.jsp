<%-- 
    Document   : calculaLampadas
    Created on : 07/09/2024, 12:37:24
    Author     : layla
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>Resultado da Calculadora de Lâmpadas</title>
</head>
<body>
    <h2>Resultado da Calculadora de Lâmpadas</h2>

    <c:choose>
        <c:when test="${not empty param.largura and not empty param.profundidade}">
            <%
                double largura = 0.0;
                double profundidade = 0.0;
                String larguraStr = request.getParameter("largura");
                String profundidadeStr = request.getParameter("profundidade");
                
                larguraStr = larguraStr.replace(',', '.');
                profundidadeStr = profundidadeStr.replace(',', '.');
                
                try {
                    largura = Double.parseDouble(larguraStr);
                    profundidade = Double.parseDouble(profundidadeStr);
                } catch (NumberFormatException e) {
                    largura = 0.0;
                    profundidade = 0.0;
                }

                double area = largura * profundidade;
                double potenciaNecessaria = area * 18;
                int potenciaLampada = 60;
                int numLampadas = (int) Math.ceil(potenciaNecessaria / potenciaLampada);

                request.setAttribute("largura", largura);
                request.setAttribute("profundidade", profundidade);
                request.setAttribute("area", area);
                request.setAttribute("potenciaNecessaria", potenciaNecessaria);
                request.setAttribute("numLampadas", numLampadas);
            %>

            <c:choose>
                <c:when test="${largura > 0 and profundidade > 0}">
                    <p>Área da Sala: <fmt:formatNumber value="${area}" type="number" minFractionDigits="2" maxFractionDigits="2"/> m²</p>
                    <p>Potência Total Necessária: <fmt:formatNumber value="${potenciaNecessaria}" type="number" minFractionDigits="2" maxFractionDigits="2"/> W</p>
                    <p>Número de Lâmpadas de 60W Necessárias: <c:out value="${numLampadas}" /></p>
                </c:when>
                <c:otherwise>
                    <p>Insira valores numéricos positivos para a largura e profundidade.</p>
                </c:otherwise>
            </c:choose>
        </c:when>
        <c:otherwise>
            <p>Insira valores válidos para a largura e profundidade.</p>
        </c:otherwise>
    </c:choose>
</body>
</html>
