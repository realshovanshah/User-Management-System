<%-- 
    Document   : about_us
    Created on : May 20, 2020, 2:58:36 PM
    Author     : tenzinsparkss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data Pirates - About us</title>

        <link href="https://fonts.googleapis.com/css?family=Work+Sans:400,700,900&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/jquery-ui.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/jquery.fancybox.min.css">
        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
        <link rel="stylesheet" href="fonts/icomoon/style.css">
        <link rel="stylesheet" href="css/aos.css">
        <link rel="stylesheet" href="css/style.css">

        <!--Check session-->
        <%  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            String user = String.valueOf(session.getAttribute("user"));
            if (user.equals("null")) {
                response.sendRedirect("login.jsp?msg= you need to login first");
            }
            %>

    </head>
    <body>
        <%@include file="navbar.jsp"%>

        <div class="site-section cta-big-image" id="about-section">
            <div class="container">
                <div class="row mb-5">
                    <div class="col-12 text-center" data-aos="fade">
                        <h2 class="section-title mb-3">About UMS</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6 mb-5" data-aos="fade-up" data-aos-delay="">
                        <figure class="circle-bg">
                            <img src="hero_1.jpg" alt="Image" class="img-fluid">
                        </figure>
                    </div>
                    <div class="col-lg-5 ml-auto" data-aos="fade-up" data-aos-delay="100">
                        <div class="mb-4">
                            <h3 class="h3 mb-4 text-black">For the next great business</h3>
                            <p>This system platform is for user management system where admin can access to client's account and guest account as well.</p>

                        </div>



                        <div class="mb-4">
                            <ul class="list-unstyled ul-check success">
                                <li>Admin's Dashboard</li>
                                <li>Client's Dashboard</li>
                                <li>Guest's Dashboard</li>
                                <li>Admin Panel</li>
                            </ul>

                        </div>

                        <p><a href="contact.jsp" class="smoothscroll btn btn-primary">Get In Touch</a></p>


                    </div>
                </div>
            </div>  
        </div>


        <!--footer section-->
        <%@include file="footer.jsp"%>

        <!--Script here-->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.countdown.min.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/aos.js"></script>
        <script src="js/jquery.fancybox.min.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/isotope.pkgd.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
