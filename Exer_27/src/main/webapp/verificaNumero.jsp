<%-- 
    Document   : verificaNumero
    Created on : 07/09/2024, 14:44:49
    Author     : layla
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Resultado do Verificador de Número</title>
</head>
<body>
    <h2>Resultado do Verificador é</h2>

    <c:choose>
        <c:when test="${not empty param.numero}">
            <%
                int numero = 0;
                try {
                    numero = Integer.parseInt(request.getParameter("numero"));
                } catch (NumberFormatException e) {
                    numero = 0;
                }

                request.setAttribute("numero", numero);
            %>

            <c:choose>
                <c:when test="${numero > 0}">
                    <p>O número <c:out value="${numero}"/> é positivo.</p>
                </c:when>
                <c:when test="${numero < 0}">
                    <p>O número <c:out value="${numero}"/> é negativo.</p>
                </c:when>
                <c:otherwise>
                    <p>O número é nulo ou zero.</p>
                </c:otherwise>
            </c:choose>
        </c:when>
        <c:otherwise>
            <p>Insira um número inteiro.</p>
        </c:otherwise>
    </c:choose>

    <a href="index.html">Voltar</a>
</body>
</html>

