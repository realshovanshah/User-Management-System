<%-- 
    Document   : edituser
    Created on : May 14, 2020, 8:55:33 PM
    Author     : tenzinsparkss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Unclesparkss</title>
        <meta name="description" content="Ela Admin - HTML5 Admin Template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
        <link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
        <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
        <link rel="stylesheet" href="assets/css/style.css">

        <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
        <link href="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/jqvmap@1.5.1/dist/jqvmap.min.css" rel="stylesheet">

        <link href="https://cdn.jsdelivr.net/npm/weathericons@2.1.0/css/weather-icons.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.css" rel="stylesheet" />

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
        <!-- Left Panel -->

        <aside id="left-panel" class="left-panel">
            <nav class="navbar navbar-expand-sm navbar-default">
                <div id="main-menu" class="main-menu collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active" ">
                            <a href="dashboard.jsp "><i class="menu-icon fa fa-laptop "></i>Dashboard </a>
                        </li>
                        <li class=" dropdown ">
                            <a href="# " class="dropdown-toggle " data-toggle="dropdown " aria-haspopup="true " aria-expanded="false "> <i class="menu-icon fa fa-cogs "></i>About</a>

                        </li>
                        <li class=" dropdown ">
                            <a href="# " class="dropdown-toggle " data-toggle="dropdown " aria-haspopup="true " aria-expanded="false "> <i class="menu-icon fa fa-table "></i>Contact</a>
                            <ul class="sub-menu children dropdown-menu ">
                                <li><i class="fa fa-table "></i><a href="userlists.jsp ">User Table</a></li>
                                <li><i class="fa fa-table "></i><a href="edituser.jsp ">User edit</a></li>
                            </ul>
                        </li>
                        <li class="menu-item-has-children dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-bar-chart"></i>Charts</a>
                            <ul class="sub-menu children dropdown-menu">
                                <li><i class="menu-icon fa fa-line-chart"></i><a href="charts-chartjs.html">Chart JS</a></li>
                                <li><i class="menu-icon fa fa-area-chart"></i><a href="charts-flot.html">Flot Chart</a></li>
                                <li><i class="menu-icon fa fa-pie-chart"></i><a href="charts-peity.html">Peity Chart</a></li>
                            </ul>
                        </li>
                        <li class="menu-item-has-children dropdown">

                            <ul class="sub-menu children dropdown-menu">
                                <li><i class="menu-icon fa fa-th"></i><a href="forms-basic.html">Basic Form</a></li>
                                <li><i class="menu-icon fa fa-th"></i><a href="forms-advanced.html">Advanced Form</a></li>
                            </ul>
                        </li>

                        <li class="menu-title">User</li><!-- /.menu-title -->

                        <li class="menu-item-has-children dropdown">
                            <a href="#" class="dropdown-toggle"  data-toggle="dropdown"  aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-tasks"></i>Profile</a>
                            <ul class="sub-menu children dropdown-menu ">
                                <li><i class="menu-icon fa fa-fort-awesome "></i><a href="add-user.jsp">Add Users</a></li>
                                <li><i class="menu-icon ti-themify-logo "></i><a href="edit-user.jsp">Edit Users</a></li>
                            </ul>
                        </li>


                        <li class="menu-item-has-children dropdown">
                            <a href="#" class="dropdown-toggle" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-area-chart"></i>History</a>

                        </li>
                        <li class="menu-title">Admin</li><!-- /.menu-title -->
                        <li class="menu-item-has-children dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-tasks"></i>Manage</a>
                            <ul class="sub-menu children dropdown-menu ">
                                <li><i class="menu-icon fa fa-fort-awesome "></i><a href="add-user.jsp">Add Users</a></li>
                                <li><i class="menu-icon ti-themify-logo "></i><a href="edit-user.jsp">Edit Users</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="# "> <i class="menu-icon ti-email "></i>Activity </a>
                        </li>
                        <li class="menu-item-has-children dropdown ">
                            <a href="user-list.jsp" class="dropdown-toggle " data-toggle="dropdown " aria-haspopup="true " aria-expanded="false "> <i class="menu-icon fa fa-table "></i>User List</a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>
        </aside>
        <!-- /#left-panel -->
        <!-- Right Panel -->
        <div id="right-panel " class="right-panel ">
            <!-- Header-->
            <header id="header " class="header ">
                <div class="top-left">
                    <div class="navbar-header">
                        <p class="navbar-brand " href="./ " style="line-height:0; width:220px ">Data Pirates</p>
                        <a id="menuToggle" class="menutoggle"><i class="fa fa-bars"></i></a>
                    </div>
                </div>
                <div class="top-right">
                    <div class="header-menu">
                        <div class="header-left">
                            <button class="search-trigger"><i class="fa fa-search"></i></button>
                            <div class="form-inline">
                                <form class="search-form">
                                    <input class="form-control mr-sm-2" type="text" placeholder="Search ..." aria-label="Search">
                                    <button class="search-close" type="submit"><i class="fa fa-close"></i></button>
                                </form>
                            </div>


                        </div>

                        <div class="user-area dropdown float-right">
                            <a href="#" class="dropdown-toggle active" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <img class="user-avatar rounded-circle" src="images/admin.jpg" alt="User Avatar">
                            </a>

                            <div class="user-menu dropdown-menu">
                                <a class="nav-link" href="#"><i class="fa fa- user"></i>My Profile</a>

                                <a class="nav-link" href="#"><i class="fa fa -cog"></i>Settings</a>

                                <a class="nav-link" href="logout"><i class="fa fa-power -off"></i>Logout</a>
                            </div>
                        </div>

                    </div>
                </div>
            </header>
            <!-- Header-->
            <div class="clearfix"></div>
            <div class="limiter">
                <div class="container-table100">
                    <div class="wrap-table100">
                        <div class="table">

                            <div class="row header">
                                <div class="cell">
                                    Email Address
                                </div>
                                <div class="cell">
                                    Age
                                </div>
                                <div class="cell">
                                    Job Title
                                </div>
                                <div class="cell">
                                    Location
                                </div>
                            </div>

                            <div class="row">
                                <div class="cell" data-title="Full Name">
                                    Vincent Williamson
                                </div>
                                <div class="cell" data-title="Age">
                                    31
                                </div>
                                <div class="cell" data-title="Job Title">
                                    iOS Developer
                                </div>
                                <div class="cell" data-title="Location">
                                    Washington
                                </div>
                            </div>

                            <div class="row">
                                <div class="cell" data-title="Full Name">
                                    Joseph Smith
                                </div>
                                <div class="cell" data-title="Age">
                                    27
                                </div>
                                <div class="cell" data-title="Job Title">
                                    Project Manager
                                </div>
                                <div class="cell" data-title="Location">
                                    Somerville, MA
                                </div>
                            </div>

                            <div class="row">
                                <div class="cell" data-title="Full Name">
                                    Justin Black
                                </div>
                                <div class="cell" data-title="Age">
                                    26
                                </div>
                                <div class="cell" data-title="Job Title">
                                    Front-End Developer
                                </div>
                                <div class="cell" data-title="Location">
                                    Los Angeles
                                </div>
                            </div>

                            <div class="row">
                                <div class="cell" data-title="Full Name">
                                    Sean Guzman
                                </div>
                                <div class="cell" data-title="Age">
                                    25
                                </div>
                                <div class="cell" data-title="Job Title">
                                    Web Designer
                                </div>
                                <div class="cell" data-title="Location">
                                    San Francisco
                                </div>
                            </div>

                            <div class="row">
                                <div class="cell" data-title="Full Name">
                                    Keith Carter
                                </div>
                                <div class="cell" data-title="Age">
                                    20
                                </div>
                                <div class="cell" data-title="Job Title">
                                    Graphic Designer
                                </div>
                                <div class="cell" data-title="Location">
                                    New York, NY
                                </div>
                            </div>

                            <div class="row">
                                <div class="cell" data-title="Full Name">
                                    Austin Medina
                                </div>
                                <div class="cell" data-title="Age">
                                    32
                                </div>
                                <div class="cell" data-title="Job Title">
                                    Photographer
                                </div>
                                <div class="cell" data-title="Location">
                                    New York
                                </div>
                            </div>

                            <div class="row">
                                <div class="cell" data-title="Full Name">
                                    Vincent Williamson
                                </div>
                                <div class="cell" data-title="Age">
                                    31
                                </div>
                                <div class="cell" data-title="Job Title">
                                    iOS Developer
                                </div>
                                <div class="cell" data-title="Location">
                                    Washington
                                </div>
                            </div>

                            <div class="row">
                                <div class="cell" data-title="Full Name">
                                    Joseph Smith
                                </div>
                                <div class="cell" data-title="Age">
                                    27
                                </div>
                                <div class="cell" data-title="Job Title">
                                    Project Manager
                                </div>
                                <div class="cell" data-title="Location">
                                    Somerville, MA
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

        </div>

        <!-- Right Panel -->

        <!--Sidebar and head bar Scripts -->
        <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
        <script src="assets/js/main.js"></script>

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

