<%@page import="too4_5.metier.ToutesPersonnes"%>
<%@page import="too4_5.metier.Personne"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Personne connue</h1>
        <TABLE>
            <TR>
                <TH>Nom</TH>
                <TH>Prénom</TH>
            </TR>
            <jsp:useBean id="tps" class="too4_5.metier.ToutesPersonnes"/>
            <c:forEach var="pers" items="${tps.getPersonnes()}" >
                <TR>
                    <TD><c:out value="${pers.getNom()}"/></TD>
                    <TD><c:out value="${pers.getPrenom()}"/></TD>
                </TR>
            </c:forEach>
        </TABLE>
    </body>
</html>
