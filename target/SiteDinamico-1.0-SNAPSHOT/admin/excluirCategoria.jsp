<%-- 
    Document   : excluirCategoria
    Created on : 29 de ago. de 2024, 14:32:07
    Author     : Professor
--%>

<%@ include file="validaSession.jsp" %>
<%@page import="com.mycompany.sitedinamico.Categorias"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Excluir Categoria</title>
</head>
<body>
    <%@ include file="menu.jsp" %>
<%
        String idS = request.getParameter("id");
        String confirma= request.getParameter("confirma");
        
        if (idS != null && confirma == null) { 
        %>
        Realmente deseja excluir a categoria <%= idS %>?
        <br> <a href="excluirCategoria.jsp?id=<%= idS %>&confirma=Sim">Sim</a> | <a href="listaCategorias.jsp">Não</a>
        <%
        } else {

        if (idS != null && !idS.isEmpty() && confirma != null) {
            int id = Integer.parseInt(idS);
            Categorias categoria = new Categorias();
            categoria.setIdCategoria(id);

            boolean sucesso = categoria.deletar();

            if (sucesso) {
                out.println("Categoria excluída com sucesso!");
            } else {
                out.println("Erro ao excluir a categoria.");
            }
        } else {
            out.println("ID da categoria não fornecido.");
        }
        }
    %>
<p><a href="listaCategorias.jsp">Voltar para a lista de categorias</a></p>
</body>
</html>

