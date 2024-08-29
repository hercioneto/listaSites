<%-- 
    Document   : listaCategorias
    Created on : 29 de ago. de 2024, 14:37:38
    Author     : Professor
--%>

<%@ include file="validaSession.jsp" %>
<%@page import="com.mycompany.sitedinamico.Categorias"%>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Lista de Categorias</title>
</head>
<body>
    <%@ include file="menu.jsp" %>
    <h1>Lista de Categorias</h1>
    <%
        List<Categorias> categorias = Categorias.getAllCategorias();
        if (categorias.isEmpty()) {
            out.println("Nenhuma categoria encontrada.");
        } else {
    %>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Nome</th>

            <th>Ações</th>
        </tr>
        <%
            for (Categorias categoria : categorias) {
        %>
        <tr>
            <td><%= categoria.getIdCategoria()%></td>
            <td><%= categoria.getNomeCategoria() %></td>
            <td>
                <a href="editarCategoria.jsp?id=<%= categoria.getIdCategoria() %>">Editar</a>
                <a href="excluirCategoria.jsp?id=<%= categoria.getIdCategoria() %>">Excluir</a>
            </td>
        </tr>
        <%
            }
        %>
    </table>
    <%
        }
    %>
    <p><a href="cadastrarCategoria.jsp">Cadastrar nova categoria</a></p>
</body>
</html>
