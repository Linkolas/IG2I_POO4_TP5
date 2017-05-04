<%@page import="too4_5.metier.Personne"%>
<%@page import="too4_5.modele.Requetes"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="personne" class="too4_5.metier.Personne"/>
        <jsp:setProperty name="personne" property="nom" param="nom"/>
        <jsp:setProperty name="personne" property="prenom" param="prenom"/>
        
        <c:choose>
            <c:when test="${'verif'.equals(param.action)}">
                <c:choose>
                    <c:when test="${personne.isKnown()}">
                        <jsp:forward page="persConnue.jsp"/>
                    </c:when>
                    <c:otherwise>
                        <jsp:forward page="persInconnue.jsp"/>
                    </c:otherwise>
                </c:choose>
            </c:when>
            <c:otherwise>
                <jsp:forward page="../index.html"/>
            </c:otherwise>
        </c:choose>
    </body>
</html>
