<%-- 
    Document   : editarCategoria
    Created on : 29 de ago. de 2024, 14:34:56
    Author     : Professor
--%>

<%@ include file="validaSession.jsp" %>
<%@page import="com.mycompany.sitedinamico.Categorias"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Editar Categoria</title>
</head>
<body>
    <%@ include file="menu.jsp" %>
    <h1>Editar Categoria</h1>
    <%
            request.setCharacterEncoding("UTF-8");

        String idS = request.getParameter("id");
        if (idS != null && !idS.isEmpty()) {
            try {
                int id = Integer.parseInt(idS);
                Categorias categoria = Categorias.getCategoria(id);
                if (categoria != null) {
    %>
    <form action="atualizaCategoria.jsp" method="POST">
        <input type="hidden" name="id" value="<%= categoria.getIdCategoria()%>">
        Nome da Categoria: <input type="text" name="nomeCategoria" value="<%= categoria.getNomeCategoria() %>" required><br>
        <input type="submit" value="Salvar">
    </form>
    <%
                } else {
                    out.println("Categoria não encontrada.");
                }
            } catch (NumberFormatException e) {
                out.println("ID inválido.");
            }
        } else {
            out.println("ID não fornecido.");
        }
    %>
    <p><a href="listaCategorias.jsp">Voltar para a lista de categorias</a></p>
</body>
</html>

