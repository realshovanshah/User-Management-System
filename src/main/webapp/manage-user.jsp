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
        <style>
            a:hover {
                text-decoration: underline;
            }
            h1{
                font-size: 30px;
                color: #fff;
                text-transform: uppercase;
                font-weight: 300;
                text-align: center;
                margin-bottom: 15px;
            }
            table{
                width:100%;
                table-layout: fixed;
            }
            .tbl-header{
                background-color: rgba(255,255,255,0.3);
            }
            .tbl-content{
                height:700px;
                overflow-x:auto;
                margin-top: 0px;
                border: 1px solid rgba(255,255,255,0.3);
                /*padding-left: 80px;*/
            }
            th{
                padding: 20px 15px;
                text-align: left;
                font-weight: 500;
                color: #000;
                text-transform: uppercase;
            }
            td{
                padding: 15px;
                text-align: center;
                vertical-align:middle;
                font-weight: 300;
                font-size: 14px;
                color: #000;
                border-bottom: solid 1px rgba(255,255,255,0.1);
            }


            /* demo styles */

            @import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
            body{
/*                background: -webkit-linear-gradient(left, #25c481, #25b7c4);
                background: linear-gradient(to right, #25c481, #25b7c4);*/
                font-family: 'Roboto', sans-serif;
            }


            /* follow me template */
            .made-with-love {
                margin-top: 40px;
                padding: 10px;
                clear: left;
                text-align: center;
                font-size: 10px;
                font-family: arial;
                color: #fff;
            }
            .made-with-love i {
                font-style: normal;
                color: #F50057;
                font-size: 14px;
                position: relative;
                top: 2px;
            }
            .made-with-love a {
                color: #fff;
                text-decoration: none;
            }
            


            /* for custom scrollbar for webkit browser*/

            ::-webkit-scrollbar {
                width: 6px;
            } 
            ::-webkit-scrollbar-track {
                -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
            } 
            ::-webkit-scrollbar-thumb {
                -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
            }
        </style>
    </head>
    
    <body>
        
        <%@include file="navbar.jsp"%>
        <section style="background-image:linear-gradient(-20deg, #5fd3ff9e 100%, #c4d3f6 100%)">
                <!--for demo wrap-->
                <div class="tbl-header">
                    <table cellpadding="0" cellspacing="0" border="0">
                        <thead>
                            <tr>
                                <th style="text-align:center">
                                    <div class="row" style="background-color: transparent">
                                        <div class="col" style="margin-left: 450px">Manage User</div>
                                        <div class="col">
                                        <button class="search-trigger" style="line-height: 0; padding-left:260px"><i class="fa fa-search"></i></button>
                                        </div>
                                    </div>    
                                </th>   
                            </tr>
                        </thead>
                    </table>
                </div>
                <div class="tbl-content">
                    <table cellpadding="0" cellspacing="0" border="0">
                        <tbody>
                            <%
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ums?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
                                String query = request.getParameter("q");
                                String sql = "";
                                if(query!=null){
                                    sql = "Select * from user where fname like '%"+query+"%' or lname like '%"+query+"%'";
                                }else{
                                    sql = "Select * from user";
                                }                                
                                Statement stmt = conn.createStatement();
                                ResultSet rs = stmt.executeQuery(sql);
                                while (rs.next()) {
                        %>
                            <tr>
                                <td> <%=rs.getString("id")%> </td>
                                <td><%=rs.getString("fname")%> <%=rs.getString("lname")%></td>
                                <td> <%=rs.getString("email")%> </td>
                                   <%
                                    if(rs.getInt("is_blocked")==0){
                                %>
                            <td>
                                <a href="block?id=<%=rs.getString("id")%>&fname=<%=rs.getString("fname")%>&lname=<%=rs.getString("lname")%>" style=" color: #fff;">Block</a>
                            </td>
                            <%
                                }else{
                            %>
                            <td>
                                <a href="unblock?id=<%=rs.getString("id")%>&fname=<%=rs.getString("fname")%>&lname=<%=rs.getString("lname")%>" style="text-decoration: underline; color: #fff;">Unblock</a>
                            </td>
                            <%
                                }
                            %>
                                <td><a href="showUser?id=<%=rs.getString("id")%>&fname=<%=rs.getString("fname")%>&lname=<%=rs.getString("lname")%>" style="color: #00a1ff;">Edit</a></td>
                             
                                <td><a href="delete?id=<%=rs.getString("id")%>&fname=<%=rs.getString("fname")%>&lname=<%=rs.getString("lname")%>" style="color: #ff5656;">Delete</a></td>
                                
                            </tr>
                            <%
                                }

                            } catch (ClassNotFoundException e) {
                                out.println("Exception: " + e.getMessage());
                                e.printStackTrace();

                            }


                        %>
                        </tbody>
                    </table>
                </div>
            </section>
            
            

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
    <%@include file="footer.jsp"%>
</html>

