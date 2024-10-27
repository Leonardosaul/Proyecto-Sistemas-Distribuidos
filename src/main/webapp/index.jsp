<%-- 
    Document   : index
    Created on : 17/09/2022, 08:38:47 AM
    Author     : javie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@1.0.2/css/bulma.min.css">
    </head>
    <body>
        <%  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");  
            if (session.getAttribute("user")==null){
                response.sendRedirect("login.jsp");
            }
        %>

        
        <jsp:include page="./Componentes/navMain.jsp" />
        <h1 class="is-size-2 has-text-success" href="index.jsp">USUARIO</h1>
    </body>
</html>
