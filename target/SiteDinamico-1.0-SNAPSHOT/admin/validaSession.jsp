<%
    String usuario = "";
    if (session.getAttribute("usuario") == null) {
        response.sendRedirect("login.jsp");
    } else {
         usuario = (String) session.getAttribute("usuario");
    }
%>