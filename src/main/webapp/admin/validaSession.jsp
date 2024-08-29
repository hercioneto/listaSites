<%
    String usuario = "";
    if (session.getAttribute("logado") == null) {
        response.sendRedirect("login.jsp");
    } else {
         usuario = (String) session.getAttribute("logado");
    }
%>