<%-- 
    Document   : salvarSite
    Created on : 14 de ago. de 2024, 16:15:00
    Author     : Aluno
--%>


<%@page import="com.mycompany.sitedinamico.Sites"%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Salvar Site</title>
</head>
<body>
    <h1>Salvando site</h1>
<%
    String nomeSite = request.getParameter("nomeSite");
    String descricao = request.getParameter("descricao");
    String link = request.getParameter("link");

    Sites site = new Sites();
    site.setNomeSite(nomeSite);
    site.setDescricao(descricao);
    site.setLink(link);

    boolean sucesso = site.salvar();

    if (sucesso) {
        out.println("Site salvo com sucesso!");
    } else {
        out.println("Erro ao salvar site.");
    }
%>

<p><a href="index.jsp">Voltar</a></p>
</body>
</html>