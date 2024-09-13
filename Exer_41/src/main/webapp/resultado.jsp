<%-- 
    Document   : resultado
    Created on : 12/09/2024, 10:24:49
    Author     : layla
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Resultado:</h2>
        <c:set var="DiaStr" value="${param.dia}" />
        <c:set var="MesStr" value="${param.mes}" />
        <c:set var="AnoStr" value="${param.ano}" />

        <fmt:parseNumber var="dia" value="${DiaStr}" type="number" />
        <fmt:parseNumber var="mes" value="${MesStr}" type="number" />
        <fmt:parseNumber var="ano" value="${AnoStr}" type="number" />

        <c:set var="diasNoMes">
            <c:choose>
                <c:when test="${mes == 1 || mes == 3 || mes == 5 || mes == 7 || mes == 8 || mes == 10 || mes == 12}">
                    31
                </c:when>
                <c:when test="${mes == 4 || mes == 6 || mes == 9 || mes == 11}">
                    30
                </c:when>
                <c:when test="${mes == 2}">
                    28 
                </c:when>
                <c:otherwise>
                    0 
                </c:otherwise>
            </c:choose>
        </c:set>

        <c:set var="dataValida" value="${(mes >= 1 && mes <= 12) && (dia >= 1 && dia <= diasNoMes)}" />

        <c:choose>
            <c:when test="${dataValida}">
                <p>A data ${dia}/${mes}/${ano} é válida.</p>
            </c:when>
            <c:otherwise>
                <p>A data ${dia}/${mes}/${ano} é inválida.</p>
            </c:otherwise>
        </c:choose>

        <a href="index.jsp">Voltar</a>
    </body>
</html>
