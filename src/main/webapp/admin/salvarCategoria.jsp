<%-- 
    Document   : salvarCategoria
    Created on : 29 de ago. de 2024, 14:37:10
    Author     : Professor
--%>
<%@ include file="validaSession.jsp" %>
<%@ page import="com.mycompany.sitedinamico.Categorias"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Salvar Categoria</title>
</head>
<body>
    
    <%@ include file="menu.jsp" %>
    <h1>Salvando categoria</h1>
<%
    request.setCharacterEncoding("UTF-8");

    String nomeCategoria = request.getParameter("nomeCategoria");
   

    Categorias categoria = new Categorias();
    categoria.setNomeCategoria(nomeCategoria);
 
    boolean sucesso = categoria.salvar();

    if (sucesso) {
        out.println("Categoria salva com sucesso!");
    } else {
        out.println("Erro ao salvar categoria.");
    }
%>

<p><a href="index.jsp">Voltar</a></p>
</body>
</html>
