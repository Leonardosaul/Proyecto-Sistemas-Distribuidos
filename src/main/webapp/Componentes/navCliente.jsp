<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar is-transparent" style="position: fixed; top: 0; width: 100%; z-index: 10; background-color: #363636;">
    <div class="navbar-brand">
        <a class="navbar-item" href="../index.jsp">
            <img src="https://cachimbo.pe/wp-content/uploads/2021/02/logotipo-principal-rgb-color-2_904941-2048x492.png" width="112" height="28" alt="UTP Logo" />
        </a>
    </div>

    <div id="navbarExampleTransparentExample" class="navbar-menu">
        <div class="navbar-start">
            <a class="navbar-item" href="../index.jsp">Inicio</a>
            <a class="navbar-item" href="../FolderCliente/listar.jsp">Listar Clientes</a>
            <a class="navbar-item" href="../FolderCliente/nuevo.jsp">Nuevo Cliente</a>
        </div>

        <div class="navbar-end">
            <div class="navbar-item">
                <div class="field is-grouped">
                    <p class="control">
                        <a class="button is-primary" href="">
                            <span>Cerrar Sesión</span>
                        </a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</nav>
