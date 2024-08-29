<%@ include file="validaSession.jsp" %>
<%@page import="com.mycompany.sitedinamico.Categorias"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Visualizar Categoria</title>
</head>
<body>
    <%@ include file="menu.jsp" %>
    <h1>Visualizar Categoria</h1>
    <%
        String idS = request.getParameter("id");
        if (idS != null && !idS.isEmpty()) {
            try {
                int id = Integer.parseInt(idS);
                Categorias categoria = Categorias.getCategoria(id);
                if (categoria != null) {
    %>
    <div><strong>Nome:</strong> <%= categoria.getNomeCategoria() %></div>
    <%
                } else {
                    out.println("Categoria não encontrada.");
                }
            } catch (NumberFormatException e) {
                out.println("ID inválido.");
            }
        } else {
            out.println("ID não fornecido.");
        }
    %>
    <p><a href="listaCategorias.jsp">Voltar para a lista de categorias</a></p>
    <p><a href="cadastrarCategoria.jsp">Cadastrar nova categoria</a></p>
</body>
</html>