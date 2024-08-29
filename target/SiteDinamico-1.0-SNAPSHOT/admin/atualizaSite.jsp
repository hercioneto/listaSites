<%@ include file="validaSession.jsp" %>
<%@page import="com.mycompany.sitedinamico.Sites"%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Atualizar Site</title>
</head>
<body>
    <h2>Resultado da Atualização</h2>
    
    <%
        request.setCharacterEncoding("UTF-8");
        
        String idS = request.getParameter("id");
        String nomeSite = request.getParameter("nomeSite");
        String descricao = request.getParameter("descricao");
        String link = request.getParameter("link");
        String categoriaIdS = request.getParameter("categoria_id");
        

        if (idS != null && !idS.isEmpty() && categoriaIdS != null && !categoriaIdS.isEmpty()) {
            int id = Integer.parseInt(idS);
            int idCategoria = Integer.parseInt(categoriaIdS);
            Sites site = new Sites();
            site.setId(id);
            site.setNomeSite(nomeSite);
            site.setDescricao(descricao);
            site.setLink(link);
            site.setIdCategoria(idCategoria);
            

            boolean sucesso = site.atualizar();

            if (sucesso) {
                out.println("Site atualizado com sucesso!");
            } else {
                out.println("Erro ao atualizar o site.");
            }
        } else {
            out.println("ID do site não fornecido.");
        }
    %>
    
    <p><a href="listaSites.jsp">Voltar para a lista de sites</a></p>
    <p><a href="cadastrarSite.jsp">Cadastrar novo site</a></p>
</body>
</html>
