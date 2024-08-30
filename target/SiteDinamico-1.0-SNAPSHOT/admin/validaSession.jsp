<%
    String loginU = "";
    String nomeUsuario= "";
    if (session.getAttribute("login") == null) {
        response.sendRedirect("login.jsp");
    } else {
         loginU = (String) session.getAttribute("login");
         nomeUsuario = (String) session.getAttribute("nomeUsuario");
    }
%>