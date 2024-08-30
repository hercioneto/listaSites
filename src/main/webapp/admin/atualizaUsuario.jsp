<%-- 
    Document   : atualizaUsuario
    Created on : 30 de ago. de 2024, 14:19:22
    Author     : Professor
--%>


<%@ include file="validaSession.jsp" %>
<%@page import="com.mycompany.sitedinamico.Usuarios"%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Atualizar Categoria</title>
</head>
<body>
<%@ include file="menu.jsp" %>
  
    
    <h2>Resultado da Atualização</h2>
    
    <%
        request.setCharacterEncoding("UTF-8");

        
        String idS = request.getParameter("id");
        String nome = request.getParameter("nome");
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");

        if (idS != null && !idS.isEmpty()) {
            int idUsuario = Integer.parseInt(idS);
            Usuarios user = new Usuarios();
            user.setIdUsuario(idUsuario);
            user.setNome(nome);
            user.setLogin(login);
            user.setSenha(senha);
            
            

            boolean sucesso = user.atualizar();

            if (sucesso) {
                out.println("Usuário atualizado com sucesso!");
            } else {
                out.println("Erro ao atualizar usuário.");
            }
        } else {
            out.println("ID do usuário não fornecido.");
        }
    %>
    
    <p><a href="listaUsuarios.jsp">Voltar para a lista de usuários</a></p>
    <p><a href="cadastrarUsuario.jsp">Cadastrar novo usuário</a></p>
</body>
</html>

