<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Menú Clientes</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@1.0.2/css/bulma.min.css">
    <style>
        /* Fija la barra de navegación en la parte superior */
        .navbar-fixed {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            z-index: 10;
            background-color: #363636; /* color de fondo para que se distinga del contenido */
        }

        /* Margen superior para el contenido principal */
        .main-content {
            margin-top: 60px; /* Ajusta este valor según la altura de la barra de navegación */
            padding: 20px;
        }
    </style>
</head>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");  
    if (session.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
    }
%>
<body>
    <!-- Barra de navegación fija -->
    <header class="navbar-fixed">
        <jsp:include page="../Componentes/navCliente.jsp" />
    </header>

    <!-- Contenido principal con margen superior -->
    <section class="main-content">
        <h1 class="title has-text-centered">Menú de Clientes</h1>
        <div class="buttons is-centered">
            <a href="" class="button is-primary">Listar Clientes</a>
            <a href="" class="button is-link">Nuevo Cliente</a>
        </div>
    </section>
</body>
</html>
