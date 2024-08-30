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
    <title>Cadastrar Usuário</title>
</head>
<body>
<%@ include file="menu.jsp" %>
    <h1>Cadastrar Usuário</h1>
    <form action="salvarUsuario.jsp" method="POST">
        Nome do Usuário: <input type="text" name="nome" required><br>
        Login: <input type="text" name="login" required><br>
        Senha <input type="password" name="senha" required><br>
        <input type="submit" value="Cadastrar">
    </form>
    <p><a href="listaUsuarios.jsp">Voltar para a lista de usuários</a></p>
</body>
</html>

