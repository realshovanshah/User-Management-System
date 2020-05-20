<%-- 
    Document   : edit_profile
    Created on : May 14, 2020, 1:10:09 PM
    Author     : Shah Jr
--%>
<%@page import="com.datapirates.ums.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

    User user = (User) session.getAttribute("user");

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <link href="http://netdna.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet">
        <title>Data Pirates - Admin Profile</title>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/admin_profile.css">
    </head>
    <body>
        <!--Navbar--> 
        <%@include file="navbar.jsp"%>
        
        <div class="container">
            <div class="row flex-lg-nowrap" style="padding:20px;">
                <div class="col-12 col-lg-auto mb-3" style="width: 200px;">
                </div>

                <div class="col">
                    <div class="row">
                        <div class="col mb-3">
                            <div class="card">
                                <div class="card-body">
                                    <div class="e-profile">

                                        <div class="tab-content pt-3">
                                            <div class="tab-pane active">
                                                <form class="form" action="updateUser" method="POST">
                                                    <div class="row">
                                                        <div class="col">
                                                            <div class="row">
                                                                <div class="col">
                                                                    <div class="form-group">
                                                                        <label></label>
                                                                        <input type="hidden" name="id" value="<%= user.getId()%>">
                                                                        <label>First Name</label>                                                                        
                                                                        <input class="form-control" type="text" name="fname" value="<%= user.getFname() %>">
                                                                    </div>
                                                                </div>
                                                                <div class="col">
                                                                    <div class="form-group">
                                                                        <label>Last Name</label>
                                                                        <input class="form-control" type="text" name="lname" value="<%= user.getLname() %>">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col">
                                                                    <div class="form-group">
                                                                        <label>Email</label>
                                                                        <input class="form-control" type="text" name="email" value="<%= user.getEmail()%>">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col">
                                                                    <div class="form-group">
                                                                        <label>Age</label>
                                                                        <input class="form-control" type="text" name="age" value="<%= user.getAge() %>">
                                                                    </div>
                                                                </div>
                                                                <div class="col">
                                                                    <div class="form-group">
                                                                        <label>Gender</label>
                                                                        <input class="form-control" type="text" name="gender" value="<%= user.getGender()%>">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12 col-sm-6">                             
                                                                    <div class="row">
                                                                        <div class="col">
                                                                            <div class="form-group">
                                                                                <label>Confirm <span class="d-none d-xl-inline">Password</span></label>
                                                                                <input class="form-control" name = "password" type="password" value="<%= user.getPassword()%>"></div>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                            <div class="row">
                                                                <div class="col">
                                                                    <div class="form-group">
                                                                        <label> <span class="d-none d-xl-inline">User Type</span></label>
                                                                        <select name="is_admin" value="<%= user.getIs_admin()%>" style='width: 100%; padding: 10px;'>

                                                                            <option value="" selected disabled hidden>-- select user type --</option>

                                                                            <option value="1">Admin</option>

                                                                            <option value="0">Client</option>

                                                                        </select></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-12 col-sm-6 mb-3">                             

                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col d-flex justify-content-end">
                                                            <button class="btn btn-primary" type="submit">Done</button>
                                                        </div>
                                                    </div>
                                                </form>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-12 col-md-3 mb-3">
                            <div class="card mb-3">
                            </div>
                            <div class="card">
                                <div class="card-body">
                                    <h6 class="card-title font-weight-bold">Support</h6>
                                    <p class="card-text">Get fast, free help from our friendly assistants.</p>
                                    <button type="button" class="btn btn-primary">Contact Us</button>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
                                                                        <%@include file="footer.jsp"%>
    </body>
</html>
