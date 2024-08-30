<%-- 
    Document   : editarUsuario
    Created on : 30 de ago. de 2024, 14:16:42
    Author     : Professor
--%>

<%@ include file="validaSession.jsp" %>
<%@page import="com.mycompany.sitedinamico.Usuarios"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Editar Usuário</title>
</head>
<body>
    <%@ include file="menu.jsp" %>
    <h1>Editar Usuário</h1>
    <%
            request.setCharacterEncoding("UTF-8");

        String idS = request.getParameter("id");
        if (idS != null && !idS.isEmpty()) {
            try {
                int id = Integer.parseInt(idS);
                Usuarios user = Usuarios.getUsuario(id);
                if (user != null) {
    %>
    <form action="atualizaUsuario.jsp" method="POST">
        <input type="hidden" name="id" value="<%= user.getIdUsuario()%>">
        Nome do usuário: <input type="text" name="nome" value="<%= user.getNome() %>" required><br>
        Login: <input type="text" name="login" value="<%= user.getLogin() %>" required><br>
        Senha: <input type="password" name="senha" required><br>
        <input type="submit" value="Salvar">
    </form>
    <%
                } else {
                    out.println("Usuário não encontrado.");
                }
            } catch (NumberFormatException e) {
                out.println("ID inválido.");
            }
        } else {
            out.println("ID não fornecido.");
        }
    %>
    <p><a href="listaCategorias.jsp">Voltar para a lista de usuários</a></p>
</body>
</html>