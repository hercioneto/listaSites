<%-- 
    Document   : sair
    Created on : 23 de ago. de 2024, 16:35:49
    Author     : Professor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
        session = request.getSession(false);
        if (session != null) {
            session.invalidate();
        }
        response.sendRedirect("login.jsp");
%>
