<%-- 
    Document   : buscar
    Created on : 23 de ago. de 2024, 13:46:06
    Author     : Professor
--%>

<%@page import="com.mycompany.sitedinamico.Categorias"%>
<%@page import="java.util.List"%>
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
                    <img src="imagens/logo.png" alt="Logo do Site" class="img-fluid" style="max-height: 100px;">
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
                    <h5>Categorias</h5>
                </div>
            </div>
            <div class="row">

                <div class="col-md-12 mb-3">
                    <div class="card">
                        <div class="card-body">
                          
                              <div class="row">
                            <%
                                List<Categorias> categorias = Categorias.getAllCategorias();
                                if (categorias.isEmpty()) {
                                    out.println("Nenhuma categoria encontrada.");
                                } else {
                                    for (Categorias categoria : categorias) {

                            %><div class="col-md-3 mb-3">
                                <div class="card">
                                    <div class="card-body">
                    <a href="listarCategorias.jsp?idCategoria=<%= categoria.getIdCategoria() %>"><%= categoria.getNomeCategoria() %></a>
                                    </div>
                                </div>
                            </div>
                            <%                                }
                                }
                            %>
                              </div>
                        </div>
                    </div>
                </div>
                <%
                    String idCategoriaS = request.getParameter("idCategoria");
                     if (idCategoriaS != null && !idCategoriaS.isEmpty()) {

                     int idCategoria = Integer.parseInt(idCategoriaS);
                categorias = Categorias.getCategoria(idCategoria);
                if (categorias != null) {
    %>
    
    
                <div class="row">
                    <div class="col-12">
                        <h5>Mostrando categorias: <strong><%= categorias.get(0).getNomeCategoria() %></strong> </div> </h5>
                    </div>
                </div>
                <div class="row">
                    <%

                        List<Sites> sites = Sites.SitesPorCategoria(idCategoria);
                        for (Sites site : sites) {
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
            <% }  }%>

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
