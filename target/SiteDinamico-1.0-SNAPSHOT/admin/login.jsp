<%-- 
    Document   : login
    Created on : 23 de ago. de 2024, 16:28:33
    Author     : Professor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String mensagem = (String) request.getAttribute("mensagem");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
</head>
<body>
    <h2>Login</h2>
    <form action="validaLogin.jsp" method="post">
        Usuário: <input type="text" name="login"><br>
        Senha: <input type="password" name="senha"><br>
        <input type="submit" value="Entrar">
    </form>
    <% if (mensagem != null) { %>
        <p style="color: red;"><%= mensagem %></p>
    <% } %>
</body>
</html>
