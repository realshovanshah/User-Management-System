<%-- 
    Document   : logout.jsp
    Created on : May 15, 2020, 12:40:24 PM
    Author     : tenzinsparkss
--%>
<!--Logout session-->
<%
    session.invalidate();
    response.sendRedirect("index.jsp");
%>
