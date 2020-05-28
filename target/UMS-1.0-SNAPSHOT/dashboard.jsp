<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!doctype html>


<%@page import="com.datapirates.ums.controller.SessionCounter"%>
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
    <div class="content ">
        <!-- Animated -->
        <div class="animated fadeIn ">
            <!-- Widgets  -->
            <div class="row ">
                <div class="col-lg-3 col-md-6 ">
                    <div class="card ">
                        <div class="card-body ">
                            <div class="stat-widget-five ">
                                <div class="stat-icon dib flat-color-1 ">
                                    <i class="pe-7s-cash "></i>
                                </div>
                                <div class="stat-content ">
                                    <div class="text-left dib ">
                                        <div class="stat-text "><span class="count "><%=totalVisits%></span></div>
                                        <div class="stat-heading ">No. of visits</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 ">
                    <div class="card ">
                        <div class="card-body ">
                            <div class="stat-widget-five ">
                                <div class="stat-icon dib flat-color-2 ">
                                    <i class="pe-7s-cart "></i>
                                </div>
                                <div class="stat-content ">
                                    <div class="text-left dib ">
                                        <div class="stat-text "><span class="count"> <%= SessionCounter.getTotalActiveSession()%></span></div>
                                        <div class="stat-heading ">Active Users</div>  
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 ">
                    <div class="card ">
                        <div class="card-body ">
                            <div class="stat-widget-five ">
                                <div class="stat-icon dib flat-color-3 ">
                                    <i class="pe-7s-browser "></i>
                                </div>
                                <div class="stat-content ">
                                    <div class="text-left dib ">
                                        <div class="stat-text "><span class="count ">
                                            <%
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ums?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
                                String sql = "Select * from user where is_admin=1";
                                Statement stmt = conn.createStatement();
                                ResultSet rs = stmt.executeQuery(sql);
                                int totalAdmins = 0;
                                while (rs.next()) {                                   
                                    totalAdmins = totalAdmins+1;
                                }
                        %>
                            <%=totalAdmins%>
                        <%

                            } catch (ClassNotFoundException e) {
                                out.println("Exception: " + e.getMessage());
                                e.printStackTrace();

                            }


                        %>
                                            </span></div>
                                        <div class="stat-heading ">Admins</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 ">
                    <div class="card ">
                        <div class="card-body ">
                            <div class="stat-widget-five ">
                                <div class="stat-icon dib flat-color-4 ">
                                    <i class="pe-7s-users "></i>
                                </div>
                                <div class="stat-content ">
                                    <div class="text-left dib ">
                                                <div class="stat-text "><span class="count ">
                                            <%
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ums?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
                                String sql = "Select * from user where is_admin=0";
                                Statement stmt = conn.createStatement();
                                ResultSet rs = stmt.executeQuery(sql);
                                int totalClients = 0;
                                while (rs.next()) {                                   
                                    totalClients = totalClients+1;
                                }
                        %>
                            <%=totalClients%>
                        <%

                            } catch (ClassNotFoundException e) {
                                out.println("Exception: " + e.getMessage());
                                e.printStackTrace();

                            }


                        %>
                                            </span></div>
                                        <div class="stat-heading ">Clients</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /Widgets -->
            <!--  Traffic  -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="box-title">User Management System Traffic </h4>
                        </div>
                        <div class="row">
                            <div class="col-lg-8">
                                <div class="card-body">
                                    <!-- <canvas id="TrafficChart"></canvas>   -->
                                    <div id="traffic-chart" class="traffic-chart"></div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="card-body">
                                    <div class="progress-box progress-1">
                                        <h4 class="por-title">Visits</h4>
                                        <div class="por-txt">96,930 Users (40%)</div>
                                        <div class="progress mb-2" style="height: 5px;">
                                            <div class="progress-bar bg-flat-color-1" role="progressbar" style="width: 40%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                    </div>
                                    <div class="progress-box progress-2">
                                        <h4 class="por-title">Blocked Users</h4>
                                        <div class="por-txt">3,220 Users (24%)</div>
                                        <div class="progress mb-2" style="height: 5px;">
                                            <div class="progress-bar bg-flat-color-2" role="progressbar" style="width: 24%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                    </div>
                                    <div class="progress-box progress-2">
                                        <h4 class="por-title">Admins</h4>
                                        <div class="por-txt">29,658 Users (60%)</div>
                                        <div class="progress mb-2" style="height: 5px;">
                                            <div class="progress-bar bg-flat-color-3" role="progressbar" style="width: 60%;" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                    </div>
                                    <div class="progress-box progress-2">
                                        <h4 class="por-title">Clients</h4>
                                        <div class="por-txt">99,658 Users (90%)</div>
                                        <div class="progress mb-2" style="height: 5px;">
                                            <div class="progress-bar bg-flat-color-4" role="progressbar" style="width: 90%;" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                    </div>
                                </div> <!-- /.card-body -->
                            </div>
                        </div> <!-- /.row -->
                        <div class="card-body"></div>
                    </div>
                </div><!-- /# column -->
            </div>
            <!--  /Traffic -->

            <!-- /To Do and Live Chat -->
            <!-- Calender Chart Weather  -->
            <div class="row">
                <div class="col-md-12 col-lg-4">
                    <div class="card">
                        <div class="card-body">
                            <!--<h4 class="box-title">Chandler</h4>--> 
                            <div class="calender-cont widget-calender">
                                <div id="calendar"></div>
                            </div>
                        </div>
                    </div>
                    <!-- /.card -->
                </div>
            </div>

            <!-- /#event-modal -->

            <!-- .animated -->
        </div>
        <!-- /.content -->
        <div class="clearfix "></div>
        <!-- Footer -->
        <footer class="site-footer ">
            <div class="footer-inner bg-white ">
                <div class="row ">
                    <div class="col-sm-6 ">
                        Copyright &copy; 2020 Data Pirates
                    </div>
                    <div class="col-sm-6 text-right ">
                        Designed by <a href="https://pikdo.info/u/_ig.bhutnz/8060283592 ">Unclesparkss</a>
                    </div>
                </div>
            </div>
        </footer>
        <!-- /.site-footer -->
    </div>
    <!-- /#right-panel -->

    <!--     Scripts 
        <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js "></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js "></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js "></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js "></script>
        <script src="assets/js/main.js "></script>
    
          Chart js 
        <script src="https://cdn.jsdelivr.net/npm/chart.js@2.7.3/dist/Chart.bundle.min.js "></script>
    
        Chartist Chart
        <script src="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.js "></script>
        <script src="https://cdn.jsdelivr.net/npm/chartist-plugin-legend@0.6.2/chartist-plugin-legend.min.js "></script>
    
        <script src="https://cdn.jsdelivr.net/npm/jquery.flot@0.8.3/jquery.flot.min.js "></script>
        <script src="https://cdn.jsdelivr.net/npm/flot-pie@1.0.0/src/jquery.flot.pie.min.js "></script>
        <script src="https://cdn.jsdelivr.net/npm/flot-spline@0.0.1/js/jquery.flot.spline.min.js "></script>
    
        <script src="https://cdn.jsdelivr.net/npm/simpleweather@3.1.0/jquery.simpleWeather.min.js "></script>
        <script src="assets/js/init/weather-init.js "></script>
    
    -->
    <script src="https://cdn.jsdelivr.net/npm/moment@2.22.2/moment.min.js "></script>
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.js "></script>
    <script src="assets/js/init/fullcalendar-init.js "></script>

    <!--Local Stuff-->
    <script>
        jQuery(document).ready(function ($) {
            "use strict ";
            // Traffic Chart using chartist
            if ($('#traffic-chart').length) {
                var chart = new Chartist.Line('#traffic-chart', {
                    labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
                    series: [
                        [0, 18000, 35000, 25000, 22000, 0],
                        [0, 33000, 15000, 20000, 15000, 300],
                        [0, 15000, 28000, 15000, 30000, 5000]
                    ]
                }, {
                    low: 0,
                    showArea: true,
                    showLine: false,
                    showPoint: false,
                    fullWidth: true,
                    axisX: {
                        showGrid: true
                    }
                });

                chart.on('draw', function (data) {
                    if (data.type === 'line' || data.type === 'area') {
                        data.element.animate({
                            d: {
                                begin: 2000 * data.index,
                                dur: 2000,
                                from: data.path.clone().scale(1, 0).translate(0, data.chartRect.height()).stringify(),
                                to: data.path.clone().stringify(),
                                easing: Chartist.Svg.Easing.easeOutQuint
                            }
                        });
                    }
                });
            }
            // Traffic Chart using chartist End
            //Traffic chart chart-js
            if ($('#TrafficChart').length) {
                var ctx = document.getElementById("TrafficChart ");
                ctx.height = 150;
                var myChart = new Chart(ctx, {
                    type: 'line',
                    data: {
                        labels: ["Jan ", "Feb ", "Mar ", "Apr ", "May ", "Jun ", "Jul "],
                        datasets: [
                            {
                                label: "Visit ",
                                borderColor: "rgba(4, 73, 203,.09) ",
                                borderWidth: "1 ",
                                backgroundColor: "rgba(4, 73, 203,.5) ",
                                data: [0, 2900, 5000, 3300, 6000, 3250, 0]
                            },
                            {
                                label: "Bounce ",
                                borderColor: "rgba(245, 23, 66, 0.9) ",
                                borderWidth: "1 ",
                                backgroundColor: "rgba(245, 23, 66,.5) ",
                                pointHighlightStroke: "rgba(245, 23, 66,.5) ",
                                data: [0, 4200, 4500, 1600, 4200, 1500, 4000]
                            },
                            {
                                label: "Targeted ",
                                borderColor: "rgba(40, 169, 46, 0.9) ",
                                borderWidth: "1 ",
                                backgroundColor: "rgba(40, 169, 46, .5) ",
                                pointHighlightStroke: "rgba(40, 169, 46,.5) ",
                                data: [1000, 5200, 3600, 2600, 4200, 5300, 0]
                            }
                        ]
                    },
                    options: {
                        responsive: true,
                        tooltips: {
                            mode: 'index',
                            intersect: false
                        },
                        hover: {
                            mode: 'nearest',
                            intersect: true
                        }

                    }
                });
            }
            //Traffic chart chart-js  End
            // Bar Chart #flotBarChart
            $.plot("#flotBarChart ", [{
                    data: [[0, 18], [2, 8], [4, 5], [6, 13], [8, 5], [10, 7], [12, 4], [14, 6], [16, 15], [18, 9], [20, 17], [22, 7], [24, 4], [26, 9], [28, 11]],
                    bars: {
                        show: true,
                        lineWidth: 0,
                        fillColor: '#ffffff8a'
                    }
                }], {
                grid: {
                    show: false
                }
            });
            // Bar Chart #flotBarChart End
        });
    </script>
</body>
</html>