<%-- 
    Document   : atualizaCategoria
    Created on : 29 de ago. de 2024, 14:42:38
    Author     : Professor
--%>

<%@page import="com.mycompany.sitedinamico.Categorias"%>
<%@ include file="validaSession.jsp" %>
<%@page import="com.mycompany.sitedinamico.Sites"%>
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
        
        String nomeCategoria = request.getParameter("nomeCategoria");
   
                

        if (idS != null && !idS.isEmpty()) {
            int id = Integer.parseInt(idS);
            Categorias categoria = new Categorias();
            categoria.setIdCategoria(id);
            categoria.setNomeCategoria(nomeCategoria);
            
            

            boolean sucesso = categoria.atualizar();

            if (sucesso) {
                out.println("Categoria atualizada com sucesso!");
            } else {
                out.println("Erro ao atualizar a categoria.");
            }
        } else {
            out.println("ID da categoria não fornecido.");
        }
    %>
    
    <p><a href="listaCategorias.jsp">Voltar para a lista de categorias</a></p>
    <p><a href="cadastrarCategorias.jsp">Cadastrar nova categoria</a></p>
</body>
</html>

