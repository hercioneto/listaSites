<%@page import="com.mycompany.sitedinamico.Categorias"%>
<%@page import="java.util.List"%>
<%@ include file="validaSession.jsp" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cadastrar Site</title>
</head>
<body>
    <%@ include file="menu.jsp" %>
    <h2>Cadastrar Site</h2>
    <form action="salvarSite.jsp" method="post">
        Nome do Site: <input type="text" name="nomeSite" required><br>
        Descrição: <textarea name="descricao" required></textarea><br>
        Link: <input type="text" name="link" required><br>
        <label for="categoria">Categoria:</label>
            <select id="categoria" name="categoria_id" required="required">
                <option value="">Selecione uma categoria</option>
                <%
                    List<Categorias> categorias = Categorias.getAllCategorias();
                    for (Categorias categoria : categorias) {
                %>
                    <option value="<%= categoria.getIdCategoria()%>"><%= categoria.getNomeCategoria()%></option>
                <%
                    }
                %>
            </select><br>
        <input type="submit" value="Cadastrar">
    </form>
</body>
</html>
