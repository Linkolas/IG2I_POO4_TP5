<%@page import="too4_5.metier.Personne"%>
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
        <h1>
            JSP Hello World!<c:out value="${personne.getNom()}"/> <c:out value="${personne.getPrenom()}"/><br/>
            <c:out value="${personne.isKnown()}"/>
        </h1>
    </body>
</html>
