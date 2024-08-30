<%-- 
    Document   : validaLogin
    Created on : 23 de ago. de 2024, 16:29:31
    Author     : Professor
--%>

<%@page import="java.util.List"%>
<%@page import="com.mycompany.sitedinamico.Usuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

        String login = request.getParameter("login");
        String senha = request.getParameter("senha");

        Usuarios user = new Usuarios();
        user.setLogin(login);
        user.setSenha(senha);
        
        
        Usuarios userLogado = user.login();
        
        if (userLogado == null) {
            request.setAttribute("mensagem", "Usuário ou senha inválidos!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            session.setAttribute("login", userLogado.getLogin());
            session.setAttribute("nomeUsuario", userLogado.getNome());
            response.sendRedirect("index.jsp");
    }
    

%>
