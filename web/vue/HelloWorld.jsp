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
        %>
        <h1>
            JSP Hello World!<%= monNom %> <%= monPrenom %><br/>
            <p>Appel numéro N<%= compteur++ %></p>
        </h1>
    </body>
</html>
