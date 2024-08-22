<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cadastrar Site</title>
</head>
<body>
    <h2>Cadastrar Site</h2>
    <form action="salvarSite.jsp" method="post">
        Nome do Site: <input type="text" name="nomeSite" required><br>
        Descrição: <textarea name="descricao" required></textarea><br>
        Link: <input type="text" name="link" required><br>
        <input type="submit" value="Cadastrar">
    </form>
</body>
</html>
