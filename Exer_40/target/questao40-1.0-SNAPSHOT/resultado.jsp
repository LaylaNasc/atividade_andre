<%-- 
    Document   : resultado
    Created on : 12/09/2024, 10:21:11
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
        <h2>Resultado</h2>
        <c:set var="AnguloStr" value="${param.angulo}" />

        <fmt:parseNumber var="angulo" value="${AnguloStr}" type="number" />

        <c:set var="voltas" value="${angulo / 360}" />

        <c:set var="anguloNormalizado" value="${angulo % 360}" />

        <c:choose>
            <c:when test="${anguloNormalizado > 0 && anguloNormalizado < 90}">
                <p>O ângulo de ${angulo} graus está no primeiro quadrante.</p>
            </c:when>
            <c:when test="${anguloNormalizado >= 90 && anguloNormalizado < 180}">
                <p>O ângulo de ${angulo} graus está no segundo quadrante.</p>
            </c:when>
            <c:when test="${anguloNormalizado >= 180 && anguloNormalizado < 270}">
                <p>O ângulo de ${angulo} graus está no terceiro quadrante.</p>
            </c:when>
            <c:when test="${anguloNormalizado >= 270 && anguloNormalizado < 360}">
                <p>O ângulo de ${angulo} graus está no quarto quadrante.</p>
            </c:when>
            <c:otherwise>
                <p>O ângulo de ${angulo} graus está no eixo.</p>
            </c:otherwise>
        </c:choose>

        <p>O ângulo de ${angulo} graus dá ${voltas} volta(s) completa(s).</p>

        <a href="index.jsp">Voltar</a>
    </body>
</html>
