<%-- 
    Document   : listaUsuarios
    Created on : 30 de ago. de 2024, 14:13:14
    Author     : Professor
--%>

<%@ include file="validaSession.jsp" %>

<%@ page import="java.util.List" %>
<%@page import="com.mycompany.sitedinamico.Usuarios"%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Lista de Sites</title>
</head>
<body>
    <%@ include file="menu.jsp" %>
    <h2>Lista de usuários</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Login</th>
            <th>Editar</th>
            <th>Excluir</th>
        </tr>
        <%
            List<Usuarios> users = Usuarios.getAllUsuarios();
            for (Usuarios user : users) {
        %>
        <tr>
            <td><%= user.getIdUsuario()%></td>
            <td><%= user.getNome() %></td>
            <td><%= user.getLogin() %></td>
            <td><a href="editarUsuario.jsp?id=<%= user.getIdUsuario() %>">Editar</a></td>
            <td><a href="excluirUsuario.jsp?id=<%= user.getIdUsuario() %>">Excluir</a></td>
        </tr>
        <%
            }
        %>
    </table>
     <p><a href="cadastrarUsuario.jsp">Cadastrar novo usuario</a></p>
</body>
</html>

