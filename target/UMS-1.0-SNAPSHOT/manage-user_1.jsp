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
        <%@include file="navbar.jsp" %>
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
