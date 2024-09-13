<%-- 
    Document   : resultado
    Created on : 12/09/2024, 09:58:18
    Author     : layla
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Raiz Ou Quadrado</title>
    </head>
    <body>
        <h2>Resultado</h2>

        <%
            double n = Double.parseDouble(request.getParameter("n"));
            double resultado;

            if (n >= 0) {
                resultado = Math.sqrt(n);
            } else {
                resultado = n * n;
            }
        %>


        <c:set var="numStr" value="${param.n}" />

        <fmt:parseNumber var="numero" value="${numStr}" type="number" />

        <c:choose>
            <c:when test="${numero >= 0}">
                <p>A raiz quadrada de <c:out value="${numero}"/> é <%= resultado%>.</p>
            </c:when>
            <c:otherwise>
                <p>O quadrado de <c:out value="${numero}"/> é <%= resultado%>.</p>
            </c:otherwise>
        </c:choose>

        <a href="index.jsp">Voltar</a>
    </body>
</html>
