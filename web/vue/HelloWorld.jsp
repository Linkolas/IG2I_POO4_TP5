<%@page import="too4_5.metier.Personne"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%! int compteur = 0; %>
        <%
        String monNom = request.getParameter("nom");
        String monPrenom = request.getParameter("prenom");
        
        monNom = (monNom != null ? monNom : "MonNom");
        monPrenom = (monPrenom != null ? monPrenom : "MonPrenom");
        
        Personne personne = new Personne(monNom, monPrenom);
        %>
        <h1>
            JSP Hello World!<c:out value="${personne.getNom()}"/> <c:out value="${personne.getPrenom()}"/><br/>
            <p>Appel numéro N<%= compteur++ %></p>
        </h1>
    </body>
</html>
