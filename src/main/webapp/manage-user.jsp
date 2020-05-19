<%-- 
    Document   : edituser
    Created on : May 14, 2020, 8:55:33 PM
    Author     : tenzinsparkss
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Data Pirates - Manage users</title>
        <!--Check session-->
        <%  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            String user = String.valueOf(session.getAttribute("user"));
            if (user.equals("null")) {
                response.sendRedirect("login.jsp?msg= you need to login first");
            }
        %>
        <meta name="description" content="Ela Admin - HTML5 Admin Template">
        <meta name="viewport" content="width=device-width, initial-scale=1">




        <!--User Table links-->
        <!--===============================================================================================-->	
        <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <!--===============================================================================================-->

    </head>
    <body>
        <%@include file="navbar.jsp"%>

        <div class="clearfix"></div>
        <div class="limiter">
            <div class="container-table100">
                <div class="wrap-table100">

                    <div class="table">

                        <div class="row header">
                            <div class="cell">
                                User List
                            </div>
                            <div class="cell">

                            </div>
                            <div class="cell">

                            </div>
                            <div class="cell">

                            </div>
                            <div class="cell">
                                <A href="dashboard.jsp">Go to Dashboard</a>
                            </div>
                        </div>
                        <%
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ums?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
                                String sql = "Select * from user";
                                Statement stmt = conn.createStatement();
                                ResultSet rs = stmt.executeQuery(sql);
                                while (rs.next()) {
                        %>
                        <div class="row">
                            <div class="cell">
                                <%=rs.getString("email")%>
                            </div>
                            <div class="cell">
                                <%=rs.getString("fname")%> <%=rs.getString("lname")%>

                            </div>

                            <div class="cell">
                                <a href="editUser?id=<%=rs.getString("id")%>" style="text-decoration: none; color: blue;">Edit</a>
                            </div>
                            <div class="cell">
                                <a href="delete?id=<%=rs.getString("id")%>" style="text-decoration: none; color: red;">Delete</a>
                            </div>

                            <div class="cell">
                                <a href="block?id=<%=rs.getString("id")%>" style="text-decoration: none; color: red;">Block</a>
                            </div>
                        </div>
                        <%
                                }

                            } catch (ClassNotFoundException e) {
                                out.println("Exception: " + e.getMessage());
                                e.printStackTrace();

                            }


                        %>


                    </div>
                </div>
            </div>
        </div>

        <%@include file="footer.jsp"%>

        <!-- Right Panel -->


        <!--User Table Scripts-->
        <!--===============================================================================================-->	
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="js/main2.js"></script>

    </body>
</html>

