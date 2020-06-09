<%-- 
    Document   : user_history
    Created on : May 21, 2020, 6:45:57 PM
    Author     : tenzinsparkss
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.datapirates.ums.utils.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User History</title>
        <link rel="stylesheet" href="scss/user_history.scss">
        <link rel="stylesheet" href="css/user_history.css">


    </head>
    <body>
        <%@include file="navbar.jsp"%>
        <div class="breadcrumbs" style="margin-bottom:30px;">
            <div class="breadcrumbs-inner">
                <div class="row m-0">
                    <div class="col-sm-4">
                        <div class="page-header float-left">
                            <div class="page-title">
                                <h1>User Activities</h1>
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
                            <th>Event</th>
                            <th>Time</th>
                            <th>Last Login on</th>
                            <th>User created on</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%                            Connection conn = DBConnection.getConnection();
                            String sql = "SELECT user.email, user.date_created, history_log.login_time,"
                                    + "history_log.activity, history_log.login_date FROM user inner join history_log "
                                    + "on user.id=history_log.h_id;";
                            PreparedStatement pstmt = conn.prepareStatement(sql);
                            ResultSet rs = pstmt.executeQuery();
                            int counter = 0;
                            while (rs.next()) {
                                counter++;%>
                        <tr>
                            <th scope="row"><%=counter%></th>
                            <td style='text-transform: capitalize;'><%= rs.getString("email")%></td>
                            <td><%= rs.getString("activity")%></td>
                            <td><%= rs.getString("login_time")%></td>
                            <td><%= rs.getString("login_date")%></td>
                            <td><%= rs.getString("date_created")%></td>
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


</body>
</html>
