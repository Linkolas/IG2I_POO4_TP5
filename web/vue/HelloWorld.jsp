<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            <% 
            String nom = request.getParameter("nom");
            String prenom = request.getParameter("prenom");
            out.println("JSP Hello World!" + nom + " " + prenom);
            %>
        </h1>
    </body>
</html>
