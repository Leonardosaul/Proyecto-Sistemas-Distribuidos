<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : index
    Created on : 19/11/2021, 07:15:10 PM
    Author     : javie
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    if (session.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo Clientes</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@1.0.2/css/bulma.min.css">
                    
        
    </head>
    <body>
        <div>
             <jsp:include page="../Componentes/navCliente.jsp" />
             
        </div>
        <br>
   
        <div class="container">
            <form action="ControllerCliente" method="post">   
                <table class="table" style="">
                        <tr>
                            <td>Id Cliente</td>
                            <td><input class="input is-small" type="hidden" name="Id"></td>
                        </tr>
                        <tr>
                            <td>Apellidos</td>
                            <td><input class="input is-small" placeholder="Ingrese" type="text" name="apellidos"></td>
                        </tr>
                        <tr>
                            <td>Nombres</td>
                            <td><input class="input is-small" placeholder="Ingrese" type="text" name="nombres"></td>
                        </tr>     
                        <tr>
                            <td>DNI</td>
                            <td><input class="input is-small" placeholder="Ingrese" type="text" name="DNI"></td>
                        </tr>        
                        <tr>
                            <td>Dirección</td>
                            <td><input class="input is-small" placeholder="Ingrese" type="text" name="direccion"></td>
                        </tr>  
                        <tr>
                            <td>Teléfono</td>
                            <td><input class="input is-small" placeholder="Ingrese" type="text" name="telefono"></td>
                        </tr>                 
                        <tr>
                            <td>Móvil</td>
                            <td><input class="input is-small" placeholder="Ingrese" type="text" name="movil"></td>
                        </tr>                 
                </table>
                <input class="button is-primary" type="submit" name="modificar" value="Grabar"> 
            </form>
        </div>
    </body>
</html>


