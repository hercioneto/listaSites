<%-- 
    Document   : contaCliques.jsp
    Created on : 22 de ago. de 2024, 17:06:53
    Author     : Professor
--%>

<%@page import="java.util.List"%>
<%@page import="com.mycompany.sitedinamico.Sites"%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%
    // Obtendo o ID do site a partir do parâmetro GET
    String idS = request.getParameter("id");

    if (idS != null && !idS.isEmpty()) {
        int id = Integer.parseInt(idS);

        // Criando uma instância do site e carregando os dados pelo ID
        List<Sites> sites = Sites.getSite(id);
        if (sites.isEmpty()) {
            out.println("Site não encontrado.");
        } else {
            Sites site = sites.get(0);

            if (site != null) {
                // Incrementando o contador de cliques
                boolean sucesso = site.contaCliques();

                if (sucesso) {
                    // Redirecionando para o link do site
                    response.sendRedirect(site.getLink());
                } else {
                    out.println("Erro ao incrementar os cliques.");
                }
            } else {
                out.println("Site não encontrado.");
            }
        }
        }else {
        out.println("ID do site não fornecido.");
    }
%>
