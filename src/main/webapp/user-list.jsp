
<!doctype html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Data Pirates - User Management System</title>
    <!--Check session-->
    <%  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        String user = String.valueOf(session.getAttribute("user"));
        if (user.equals("null")) {
            response.sendRedirect("login.jsp?msg= you need to login first");
        }
    %>
    
    <meta name="description" content="Ela Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
    <%@include file="navbar.jsp"%>
    <!-- Content -->
    <div class="breadcrumbs" style="margin-bottom:30px;">
        <div class="breadcrumbs-inner">
            <div class="row m-0">
                <div class="col-sm-4">
                    <div class="page-header float-left">
                        <div class="page-title">
                            <h1>User List</h1>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <br>
    <!--Table of User lists-->
    <table id="example" class="table table-striped table-bordered" style="width:95.7%; margin-left:29px;">
        <thead>
            <tr>
                <th>First name</th>
                <th>Last name</th>
                <th>Email Address</th>
                <th>Gender</th>
                <th>Age</th>
                <th>Date Created</th>
            </tr>
        </thead>
        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ums?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
                String sql = "Select * from user";
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(sql);
                while (rs.next()) {
        %>
        <tbody>
            <tr>
                <td><%=rs.getString("fname")%></td>
                <td><%=rs.getString("lname")%></td>
                <td><%=rs.getString("email")%></td>
                <td><%=rs.getString("gender")%></td>
                <td><%=rs.getInt("age")%></td>
                <td><%=rs.getString("date_created")%></td>
            </tr>
        </tbody> 
        <%
                }

            } catch (ClassNotFoundException e) {
                out.println("Exception: " + e.getMessage());
                e.printStackTrace();

            }


        %>

        <tfoot>
            <tr>
                <th>First name</th>
                <th>Last name</th>
                <th>Email Address</th>
                <th>Gender</th>
                <th>Age</th>
                <th>Date Created</th>
            </tr>
        </tfoot>
    </table>
    <!-- /.content -->
    <div class="clearfix "></div>
    <!-- Footer -->
    <%@include file="footer.jsp"%>
    <!-- /.site-footer -->
</div>
<!-- /#right-panel -->

</body>
</html>