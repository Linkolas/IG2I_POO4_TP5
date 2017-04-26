<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><% 
            String message = "Hello World!";
            out.println("<h1>" + message + "</h1>");
            %>
        </h1>
    </body>
</html>
