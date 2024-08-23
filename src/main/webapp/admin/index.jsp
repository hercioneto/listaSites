<%-- 
    Document   : index
    Created on : 21 de ago. de 2024, 14:09:14
    Author     : Professor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="validaSession.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GUIA DE LINKS FAVORITOS</title>
    </head>
    <body>
        <h1>Seja bem vindo <%=usuario %></h1>
        
        <h4>Administrar sites</h4>
        <a href="cadastrarSite.jsp">Incluir novo</a><br>
        <a href="listaSites.jsp">Editar</a><br>
        
        <p><h5><a href="sair.jsp">Sair</a></h5>
    </body>
</html>
