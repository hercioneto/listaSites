<%@ include file="validaSession.jsp" %>
<%-- 
    Document   : editarSite
    Created on : 14 de ago. de 2024, 16:00:00
    Author     : Aluno
--%>

<%@page import="com.mycompany.sitedinamico.Sites"%>
<%@ page import="java.util.List" %>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Editar Categoria</title>
</head>
<body>
    <h2>Editar Categoria</h2>
    
    <%
        String idS = request.getParameter("id");
        if (idS != null && !idS.isEmpty()) {
            int id = Integer.parseInt(idS);
            List<Sites> sites = Sites.getSite(id);
            if (!sites.isEmpty()) {
                Sites site = sites.get(0); // Supondo que getCategoria retorna uma lista com uma única categoria
    %> 
    <form action="atualizaSite.jsp" method="post">
        <input type="hidden" id="id" name="id" value="<%= site.getId() %>">
        Nome: <input type="text" name="nomeSite" required value="<%= site.getNomeSite() %>"><br>
        Descrição: <input type="text" name="descricao" required value="<%= site.getDescricao() %>"><br>
        Link: <input type="text" name="link" required value="<%= site.getLink() %>"><br>
        <input type="submit" value="Salvar Site">
    </form>
    <%
            } else {
                out.print("Site não encontrada.");
            }
        } else {
            out.print("ID do site não fornecido.");
        }
    %>
</body>
</html>
