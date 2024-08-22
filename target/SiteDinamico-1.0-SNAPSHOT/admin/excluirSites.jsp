
<%@page import="com.mycompany.sitedinamico.Sites"%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Excluir Site</title>
</head>
<body>
    <h2>Resultado da Exclusão</h2>
    
    <%
        String idS = request.getParameter("id");
        String confirma= request.getParameter("confirma");
        
        if (idS != null && confirma == null) { 
        %>
        Realmente deseja excluir o site <%= idS %>?
        <br> <a href="excluirSites.jsp?id=<%= idS %>&confirma=Sim">Sim</a> | <a href="listaSites.jsp">Não</a>
        <%
        } else {

        if (idS != null && !idS.isEmpty() && confirma != null) {
            int id = Integer.parseInt(idS);
            Sites site = new Sites();
            site.setId(id);

            boolean sucesso = site.deletar();

            if (sucesso) {
                out.println("Site excluído com sucesso!");
            } else {
                out.println("Erro ao excluir o site.");
            }
        } else {
            out.println("ID do site não fornecido.");
        }
        }
    %>
    
    <p><a href="listaSites.jsp">Voltar para a lista de sites</a></p>
    <p><a href="cadastrarSite.jsp">Cadastrar novo site</a></p>
</body>
</html>
