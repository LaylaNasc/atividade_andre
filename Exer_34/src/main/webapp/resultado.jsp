<%-- 
    Document   : resultado
    Created on : 12/09/2024, 09:52:23
    Author     : layla
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verificar Par ou Ímpar</title>
    </head>
    <body>
        <h2>Número Verificado</h2>

        <c:set var="numStr" value="${param.n}" />

        <fmt:parseNumber var="num" value="${numStr}" type="number" />

        <c:choose>
            <c:when test="${num % 2 == 0}">
                <p>O número <c:out value="${num}" /> é par.</p>
            </c:when>
            <c:otherwise>
                <p>O número <c:out value="${num}" /> é ímpar.</p>
            </c:otherwise>
        </c:choose>

        <a href="index.jsp">Voltar</a>
    </body>
</html>
