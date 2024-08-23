<%-- 
    Document   : validaLogin
    Created on : 23 de ago. de 2024, 16:29:31
    Author     : Professor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

        String usuario = request.getParameter("usuario");
        String senha = request.getParameter("senha");

        //Poderiamos buscar no banco se usuario e senha são válidos
        String user = "admin";
        String password = "1234";
                
        if (user.equals(usuario) && password.equals(senha)) {            
            session.setAttribute("usuario", usuario);
            response.sendRedirect("index.jsp");
        } else {
            request.setAttribute("mensagem", "Usuário ou senha inválidos!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }

%>
