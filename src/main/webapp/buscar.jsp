<%-- 
    Document   : buscar
    Created on : 23 de ago. de 2024, 13:46:06
    Author     : Professor
--%>

<%@page import="java.util.List"%>
<%@page import="com.mycompany.sitedinamico.Sites"%>
<%@page import="com.mycompany.sitedinamico.Sites"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Agregador de Links</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>

        <!-- Logo e Navbar -->
        <header class="container mt-3">
            <div class="d-flex justify-content-between align-items-center">
                <div id="logo" class="p-2">
                    <a href="index.jsp"> <img src="imagens/logo.png"  alt="Logo do Site" class="img-fluid" style="max-height: 100px;"></a>
                </div>
                <nav class="p-2">
                    <ul class="nav">
                        <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="listarCategorias.jsp">Listar por Categoria</a></li>
                        <li class="nav-item"><a class="nav-link" href="buscar.jsp">Buscar</a></li>
                        <li class="nav-item"><a class="nav-link" href="admin/index.jsp">Login</a></li>
                    </ul>
                </nav>
            </div>
        </header>

        <!-- Conteúdo Principal -->
        <main class="container mt-5">
            <div class="row">
                <div class="col-12">
                    <h5>Buscar</h5>
                </div>
            </div>
            <div class="row">

                <div class="col-md-12 mb-3">
                    <div class="card">
                        <div class="card-body">
                            <h6>Buscar link</h6>
                            <form action="buscar.jsp" method="POST">
                                <input type="text" name="buscar" id="buscar" placeholder="digite um termo"> 
                                <input type="submit" value="Buscar">
                            </form>
                        </div>
                    </div>
                </div>
                <% 
                String termoBusca = request.getParameter("buscar");
                
                if (termoBusca!= null && !termoBusca.isEmpty()){ %>
                <div class="row">
                    <div class="col-12">
                        <h5>Resultado da busca por: <%= termoBusca %> </h5>
                    </div>
                </div>
                <div class="row">
                    <%
                        
                        List<Sites> ultimosSites = Sites.buscar(termoBusca);
                        for (Sites site : ultimosSites) {
                    %>
                    <div class="col-md-3 mb-3">
                        <div class="card">
                            <div class="card-body">
                                <h6><%= site.getNomeSite()%></h6>
                                <p><%= site.getDescricao()%></p>
                                <a href="contaCliques.jsp?id=<%= site.getId()%>" class="card-link" target="_blank"><%= site.getLink()%></a>
                                <p>Total de Cliques: <strong><%= site.getCliques()%></strong></p>
                            </div>
                        </div>
                    </div>
                    <%
                        }
                    %>

                </div>

            </div>
                    <% } %>

            <!-- Texto sobre o agregador -->
            <div class="mt-4 p-3 bg-light">
                <p>Este site é um agregador de links para treinamento de sites dinâmicos do curso RSTI do Senac RS.</p>
            </div>
        </main>

        <!-- Rodapé -->
        <footer class="container text-center mt-5">
            <p>Desenvolvido por: Hercio Neto</p>
        </footer>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
