<%-- 
    Document   : verificaMultiplo
    Created on : 07/09/2024, 14:51:22
    Author     : layla
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Resultado do Verificador de Múltiplos</title>
</head>
<body>
    <h2>Resultado do Verificador de Múltiplos</h2>

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
                request.setAttribute("multiploDeCinco", (numero % 5 == 0));
            %>

            <c:choose>
                <c:when test="${multiploDeCinco}">
                    <p>O número <c:out value="${numero}"/> é múltiplo de 5.</p>
                </c:when>
                <c:otherwise>
                    <p>O número <c:out value="${numero}"/> não é múltiplo de 5.</p>
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

