<%-- 
    Document   : Productos
    Created on : 12/10/2022, 05:11:07 PM
    Author     : javie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menú Productos</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@1.0.2/css/bulma.min.css">
    </head>
    <%  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");  
            if (session.getAttribute("user")==null){
                response.sendRedirect("login.jsp");
            }
    %>
    <body>
        <jsp:include page="../Componentes/navProducto.jsp" />
        <h2>PRODUCTOS</h2>
    </body>
</html>
