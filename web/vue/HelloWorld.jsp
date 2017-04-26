<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            JSP Hello World!<%= request.getParameter("nom") %> <%= request.getParameter("prenom") %>
        </h1>
    </body>
</html>
