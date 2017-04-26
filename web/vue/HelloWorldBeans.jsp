<%@page import="too4_5.metier.Personne"%>
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
            JSP Hello World!<%= personne.getNom() %> <%= personne.getPrenom() %><br/>
        </h1>
    </body>
</html>
