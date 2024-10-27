<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : index
    Created on : 19/11/2021, 07:15:10 PM
    Author     : javie
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@1.0.2/css/bulma.min.css">
         <style>
            .formcontacto{
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-49%, -49%);
            }
        </style>
    </head>
    <body>
       
        <form action="ControllerLogin" method="post" class="formcontacto">   
            <table class="table">
                    <tr>
                        <td>Usuario</td>
                        <td><input class="input is-primary" type="text" name="txtUsuario"></td>
                    </tr>
                    <tr>
                        <td>Clave</td>
                        <td><input class="input is-primary" type="password" name="txtClave"></td>
                    </tr> 
            </table>        
            <input class="button is-link" style="width: 100%" type="submit" name="validar" value="Ingresar"> 
            <br>
            <a href="registro.jsp">Registrar</a>
        </form>
    </body>
</html>
