<%-- 
    Document   : userActivity
    Created on : May 18, 2020, 6:58:14 PM
    Author     : tenzinsparkss
--%>

<%@page import="com.datapirates.ums.utils.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!doctype html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Data Pirates - User Activity</title>
    <!--Check session-->
    <%  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        String user = String.valueOf(session.getAttribute("user"));
        if (user.equals("null")) {
            response.sendRedirect("login.jsp?msg= you need to login first");
        }
    %>

</head>

<body>
    <%@include file="navbar.jsp" %>
    <div class="breadcrumbs" style="margin-bottom:30px;">
            <div class="breadcrumbs-inner">
                <div class="row m-0">
                    <div class="col-sm-4">
                        <div class="page-header float-left">
                            <div class="page-title">
                                <h1>Admin Report</h1>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <br>
    <!--User Activity-->
    <main>
        <label>.</label>
        <div style="max-height:900px; overflow: auto;">
            <table class="table table-striped" style="width:95.7%; margin-left:29px;">
                <thead>
                    <tr>
                        <th>S/N</th>
                        <th>Email Address</th>
                        <th>Time</th>
                        <th>Last online on</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        Connection conn = DBConnection.getConnection();
                        String sql = "SELECT user.email, history_log.login_time,"
                                + "history_log.login_date FROM user inner join history_log "
                                + "on user.id=history_log.h_id;";
                        PreparedStatement pstmt = conn.prepareStatement(sql);
                        ResultSet rs = pstmt.executeQuery();
                        int counter = 0;
                        while (rs.next()) {
                            counter++;%>
                    <tr>
                        <th scope="row"><%=counter%></th>
                        <td style='text-transform: capitalize;'><%= rs.getString("email")%></td>
                        <td><%= rs.getString("login_time")%></td>
                        <td><%= rs.getString("login_date")%></td>
                    </tr>
                    <% }%>
                </tbody>
            </table>
        </div>
    </main>

    <!--User Activity ends-->        

    <div class="clearfix "></div>
    <!-- Footer -->
    <%@include file="footer.jsp" %>
    <!-- /.site-footer -->
</div>
<!-- /#right-panel -->



<!--    <script src="https://cdn.jsdelivr.net/npm/moment@2.22.2/moment.min.js "></script>
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.js "></script>
    <script src="assets/js/init/fullcalendar-init.js "></script>-->

</body>
</html>