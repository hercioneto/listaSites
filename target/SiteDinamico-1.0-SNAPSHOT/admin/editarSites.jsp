<%@page import="com.mycompany.sitedinamico.Categorias"%>
<%@page import="java.util.List"%>
<%@ include file="validaSession.jsp" %>
<%@page import="com.mycompany.sitedinamico.Sites"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Editar Categoria</title>
</head>
<body>
    <%@ include file="menu.jsp" %>
    <h2>Editar Categoria</h2>
    
    <%
        String idS = request.getParameter("id");
        if (idS != null && !idS.isEmpty()) {
            int id = Integer.parseInt(idS);
            List<Sites> sites = Sites.getSite(id);
            if (!sites.isEmpty()) {
                Sites site = sites.get(0); // Supondo que getCategoria retorna uma lista com uma única categoria
                
            List<Categorias> categorias = Categorias.getAllCategorias();
    %> 
    <form action="atualizaSite.jsp" method="post">
        <input type="hidden" id="id" name="id" value="<%= site.getId() %>">
        Nome: <input type="text" name="nomeSite" required value="<%= site.getNomeSite() %>"><br>
        Descrição: <input type="text" name="descricao" required value="<%= site.getDescricao() %>"><br>
        Link: <input type="text" name="link" required value="<%= site.getLink() %>"><br>
        <select name="categoria_id" required>
            <option value="">Selecione uma categoria</option>
            <%
                for (Categorias categoria : categorias) {
                    String selected = (categoria.getIdCategoria()== site.getIdCategoria()) ? "selected" : "";
            %>
                    <option value="<%= categoria.getIdCategoria()%>" <%= selected %>><%= categoria.getNomeCategoria() %></option>
            <%
                }
            %>
        </select><br>
        <input type="submit" value="Salvar Site">
    </form>
    <%
            } else {
                out.print("Site não encontrada.");
            }
        } else {
            out.print("ID do site não fornecido.");
        }
    %>
</body>
</html>
