<%-- 
    Document   : add user
    Created on : May 7, 2020, 6:09:00 PM
    Author     : Shah Jr.
--%>

<!doctype html>

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
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet">
    <style>
        body
{
    font-family: 'Lato', 'sans-serif';
    }
.profile 
{
    min-height: 355px;
    display: inline-block;
    }
figcaption.ratings
{
    margin-top:20px;
    }
figcaption.ratings a
{
    color:#f1c40f;
    font-size:11px;
    }
figcaption.ratings a:hover
{
    color:#f39c12;
    text-decoration:none;
    }
.divider 
{
    border-top:1px solid rgba(0,0,0,0.1);
    }
.emphasis 
{
    border-top: 4px solid transparent;
    }
.emphasis:hover 
{
    border-top: 4px solid #1abc9c;
    }
.emphasis h2
{
    margin-bottom:0;
    }
span.tags 
{
    background: #1abc9c;
    border-radius: 2px;
    color: #f5f5f5;
    font-weight: bold;
    padding: 2px 4px;
    }
.dropdown-menu 
{
    background-color: #34495e;    
    box-shadow: none;
    -webkit-box-shadow: none;
    width: 250px;
    margin-left: -125px;
    left: 50%;
    }
.dropdown-menu .divider 
{
    background:none;    
    }
.dropdown-menu>li>a
{
    color:#f5f5f5;
    }
.dropup .dropdown-menu 
{
    margin-bottom:10px;
    }
.dropup .dropdown-menu:before 
{
    content: "";
    border-top: 10px solid #34495e;
    border-right: 10px solid transparent;
    border-left: 10px solid transparent;
    position: absolute;
    bottom: -10px;
    left: 50%;
    margin-left: -10px;
    z-index: 10;
    }
    </style>

</head>

<body>
    <%@include file="navbar.jsp"%>
    <!-- Content -->
    <div class="content ">
        <!-- Animated -->
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                        <section class="card">
                            <div class="twt-feed blue-bg">
                                <div class="corner-ribon black-ribon">
                                    <i class="fa fa-twitter"></i>
                                </div>
                                <div class="fa fa-twitter wtt-mark"></div>

                                <div class="media">
                                    <a href="#">
                                        <img class="align-self-center rounded-circle mr-3" style="width:85px; height:85px;" alt="" src="images/admin.jpg">
                                    </a>
                                    <div class="media-body">
                                        <h2 class="text-white display-6">Jim Doe</h2>
                                        <p class="text-light">Project Manager</p>
                                    </div>
                                </div>



                            </div>
                            <div class="weather-category twt-category">
                                <ul>
                                    <li class="active">
                                        <h5>750</h5>
                                        Tweets
                                    </li>
                                    <li>
                                        <h5>865</h5>
                                        Following
                                    </li>
                                    <li>
                                        <h5>3645</h5>
                                        Followers
                                    </li>
                                </ul>
                            </div>
                            <div class="twt-write col-sm-12">
                                <textarea placeholder="Write your Tweet and Enter" rows="1" class="form-control t-text-area"></textarea>
                            </div>
                            <footer class="twt-footer">
                                <a href="#"><i class="fa fa-camera"></i></a>
                                <a href="#"><i class="fa fa-map-marker"></i></a>
                                New Castle, UK
                                <span class="pull-right">
                                    32
                                </span>
                            </footer>
                        </section>
                    </div>
                <div class="col-md-6">
                    <div class="well profile">
                        <div class="col-sm-12">
                            <div class="col-xs-12 col-sm-8">
                                <h2>Nicole Pearson</h2>
                                <p><strong>About: </strong> Web Designer / UI. </p>
                                <p><strong>Hobbies: </strong> Read, out with friends, listen to music, draw and learn new things. </p>
                                <p><strong>Skills: </strong>
                                    <span class="tags">html5</span> 
                                    <span class="tags">css3</span>
                                    <span class="tags">jquery</span>
                                    <span class="tags">bootstrap3</span>
                                </p>
                            </div>             
                            <div class="col-xs-12 col-sm-4 text-center">
                                <figure>
                                    <img src="http://www.localcrimenews.com/wp-content/uploads/2013/07/default-user-icon-profile.png" alt="" class="img-circle img-responsive">
                                    <figcaption class="ratings">
                                        <p>Ratings
                                            <a href="#">
                                                <span class="fa fa-star"></span>
                                            </a>
                                            <a href="#">
                                                <span class="fa fa-star"></span>
                                            </a>
                                            <a href="#">
                                                <span class="fa fa-star"></span>
                                            </a>
                                            <a href="#">
                                                <span class="fa fa-star"></span>
                                            </a>
                                            <a href="#">
                                                <span class="fa fa-star-o"></span>
                                            </a> 
                                        </p>
                                    </figcaption>
                                </figure>
                            </div>
                        </div>            
                        <div class="col-xs-12 divider text-center">
                            <div class="col-xs-12 col-sm-4 emphasis">
                                <h2><strong> 20,7K </strong></h2>                    
                                <p><small>Followers</small></p>
                                <button class="btn btn-success btn-block"><span class="fa fa-plus-circle"></span> Follow </button>
                            </div>
                            <div class="col-xs-12 col-sm-4 emphasis">
                                <h2><strong>245</strong></h2>                    
                                <p><small>Following</small></p>
                                <button class="btn btn-info btn-block"><span class="fa fa-user"></span> View Profile </button>
                            </div>
                            <div class="col-xs-12 col-sm-4 emphasis">
                                <h2><strong>43</strong></h2>                    
                                <p><small>Snippets</small></p>
                                <div class="btn-group dropup btn-block">
                                    <button type="button" class="btn btn-primary"><span class="fa fa-gear"></span> Options </button>
                                    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                                        <span class="caret"></span>
                                        <span class="sr-only">Toggle Dropdown</span>
                                    </button>
                                    <ul class="dropdown-menu text-left" role="menu">
                                        <li><a href="#"><span class="fa fa-envelope pull-right"></span> Send an email </a></li>
                                        <li><a href="#"><span class="fa fa-list pull-right"></span> Add or remove from a list  </a></li>
                                        <li class="divider"></li>
                                        <li><a href="#"><span class="fa fa-warning pull-right"></span>Report this user for spam</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#" class="btn disabled" role="button"> Unfollow </a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>                 
                </div>
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

            // Pie chart flotPie1
            var piedata = [
                {label: "Desktop visits ", data: [[1, 32]], color: '#5c6bc0'},
                {label: "Tab visits ", data: [[1, 33]], color: '#ef5350'},
                {label: "Mobile visits ", data: [[1, 35]], color: '#66bb6a'}
            ];

            $.plot('#flotPie1', piedata, {
                series: {
                    pie: {
                        show: true,
                        radius: 1,
                        innerRadius: 0.65,
                        label: {
                            show: true,
                            radius: 2 / 3,
                            threshold: 1
                        },
                        stroke: {
                            width: 0
                        }
                    }
                },
                grid: {
                    hoverable: true,
                    clickable: true
                }
            });
            // Pie chart flotPie1  End
            // cellPaiChart
            var cellPaiChart = [
                {label: "Direct Sell ", data: [[1, 65]], color: '#5b83de'},
                {label: "Channel Sell ", data: [[1, 35]], color: '#00bfa5'}
            ];
            $.plot('#cellPaiChart', cellPaiChart, {
                series: {
                    pie: {
                        show: true,
                        stroke: {
                            width: 0
                        }
                    }
                },
                legend: {
                    show: false
                }, grid: {
                    hoverable: true,
                    clickable: true
                }

            });
            // cellPaiChart End
            // Line Chart  #flotLine5
            var newCust = [[0, 3], [1, 5], [2, 4], [3, 7], [4, 9], [5, 3], [6, 6], [7, 4], [8, 10]];

            var plot = $.plot($('#flotLine5'), [{
                    data: newCust,
                    label: 'New Data Flow',
                    color: '#fff'
                }],
                    {
                        series: {
                            lines: {
                                show: true,
                                lineColor: '#fff',
                                lineWidth: 2
                            },
                            points: {
                                show: true,
                                fill: true,
                                fillColor: "#ffffff ",
                                symbol: "circle ",
                                radius: 3
                            },
                            shadowSize: 0
                        },
                        points: {
                            show: true,
                        },
                        legend: {
                            show: false
                        },
                        grid: {
                            show: false
                        }
                    });
            // Line Chart  #flotLine5 End
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

