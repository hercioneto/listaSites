<%-- 
    Document   : cadastrarCategoria
    Created on : 29 de ago. de 2024, 14:36:51
    Author     : Professor
--%>

<%@ include file="validaSession.jsp" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Cadastrar Categoria</title>
</head>
<body>
<%@ include file="menu.jsp" %>
    <h1>Cadastrar Categoria</h1>
    <form action="salvarCategoria.jsp" method="POST">
        Nome da Categoria: <input type="text" name="nomeCategoria" required><br>
        <input type="submit" value="Cadastrar">
    </form>
    <p><a href="listaCategorias.jsp">Voltar para a lista de categorias</a></p>
</body>
</html>

