<%-- 
    Document   : salvarUsuário
    Created on : 30 de ago. de 2024, 14:37:10
    Author     : Professor
--%>
<%@page import="com.mycompany.sitedinamico.Usuarios"%>
<%@ include file="validaSession.jsp" %>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Salvar Usuário</title>
</head>
<body>
    
    <%@ include file="menu.jsp" %>
    <h1>Salvando usuário</h1>
<%
    request.setCharacterEncoding("UTF-8");

    String nome = request.getParameter("nome");
    String login = request.getParameter("login");
    String senha = request.getParameter("senha");
    
   

    Usuarios user = new Usuarios();
    user.setNome(nome);
    user.setLogin(login);
    user.setSenha(senha);
 
    boolean sucesso = user.salvar();

    if (sucesso) {
        out.println("Usuário salvo com sucesso!");
    } else {
        out.println("Erro ao salvar usuário.");
    }
%>

<p><a href="index.jsp">Voltar</a></p>
</body>
</html>
