<%-- 
    Document   : excluirUsuario
    Created on : 30 de ago. de 2024, 14:38:21
    Author     : Professor
--%>

<%@ include file="validaSession.jsp" %>
<%@page import="com.mycompany.sitedinamico.Usuarios"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Excluir Usuário</title>
</head>
<body>
    <%@ include file="menu.jsp" %>
<%
        String idS = request.getParameter("id");
        String confirma= request.getParameter("confirma");
        
        if (idS != null && confirma == null) { 
        %>
        Realmente deseja excluir o usuário <%= idS %>?
        <br> <a href="excluirUsuario.jsp?id=<%= idS %>&confirma=Sim">Sim</a> | <a href="listaUsuarios.jsp">Não</a>
        <%
        } else {

        if (idS != null && !idS.isEmpty() && confirma != null) {
            int id = Integer.parseInt(idS);
            Usuarios user = new Usuarios();
            user.setIdUsuario(id);

            boolean sucesso = user.deletar();

            if (sucesso) {
                out.println("Usuário excluído com sucesso!");
            } else {
                out.println("Erro ao excluir usuário.");
            }
        } else {
            out.println("ID do usuário não fornecido.");
        }
        }
    %>
<p><a href="listaUsuarios.jsp">Voltar para a lista de usuários</a></p>
</body>
</html>

