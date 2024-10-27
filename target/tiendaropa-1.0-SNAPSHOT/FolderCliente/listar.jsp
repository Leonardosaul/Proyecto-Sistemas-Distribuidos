<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : listar
    Created on : 17/09/2022, 10:54:58 AM
    Author     : javie
--%>
<%@page import="java.util.List"%>
<%@page import="Entity.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");  
        if (session.getAttribute("user")==null){
            response.sendRedirect("login.jsp");
        }
    %>
<%
    List<Cliente> Lista= (List<Cliente>) request.getAttribute("Lista");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Clientes</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@1.0.2/css/bulma.min.css">
                    
        
    </head>
    <body>
        <jsp:include page="../Componentes/navCliente.jsp" />
        <div class="container">
            <table class="table is-bordered is-hoverable" style="width: 100%">
                </thead>
                    <tr>
                        <th>Id Cliente</th>
                        <th>Apellidos</th>
                        <th>Nombres</th>
                        <th>DNI</td>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="campo" items="${Lista}">
                    <tr>
                        <td>${campo.id}</td>
                        <td>${campo.apellidos}</td>
                        <td>${campo.nombres}</td>
                        <td>${campo.DNI}</td>
                        <td><a href="ControlerCliente?Op=Consultar&Id=${campo.id}">Consultar</a></td>
                        <td><a href="ControlerCliente?Op=Modificar&Id=${campo.id}">Modificar</a></td>
                        <td><a href="ControlerCliente?Op=Eliminar&Id=${campo.id}">Eliminar</a></td>
                    </tr>
                    </c:forEach>
                </tbody>
                    
            </table>
        </div>
    </body>
</html>
