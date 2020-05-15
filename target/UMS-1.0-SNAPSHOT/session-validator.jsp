<%-- 
    Document   : session-validator.jsp
    Created on : May 15, 2020, 4:43:43 PM
    Author     : Shah Jr
--%>

<%
    if(session.getAttribute('auth')==null){
    response.sendRedirect("login.jsp");
}
%>
