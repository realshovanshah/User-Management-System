<%-- 
    Document   : contact
    Created on : May 20, 2020, 2:34:54 PM
    Author     : tenzinsparkss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data Pirates - Contact</title>

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
        
        <section class="site-section bg-light" id="contact-section" data-aos="fade">
            <div class="container">
                <div class="row mb-5">
                    <div class="col-12 text-center">
                        <h2 class="section-title mb-3">Contact Us</h2>
                    </div>
                </div>
                <div class="row mb-5">
                    <div class="col-md-4 text-center">
                        <p class="mb-4">
                            <span class="icon-room d-block h4 text-primary"></span>
                            <span>Bishal Nagar, Handigaun, Kathmandu, Nepal</span>
                        </p>
                    </div>
                    <div class="col-md-4 text-center">
                        <p class="mb-4">
                            <span class="icon-phone d-block h4 text-primary"></span>
                            <a href="#">+977 9840514329 </a>
                        </p>
                    </div>
                    <div class="col-md-4 text-center">
                        <p class="mb-0">
                            <span class="icon-mail_outline d-block h4 text-primary"></span>
                            <a href="#">np03a180217@heraldcollege.edu.np</a>
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 mb-5">



                        <form action="#" class="p-5 bg-white">

                            <h2 class="h4 text-black mb-5">Contact Form</h2> 

                            <div class="row form-group">
                                <div class="col-md-6 mb-3 mb-md-0">
                                    <label class="text-black" for="fname">First Name</label>
                                    <input type="text" id="fname" class="form-control" name="first_name">
                                </div>
                                <div class="col-md-6">
                                    <label class="text-black" for="lname" >Last Name</label>
                                    <input type="text" id="lname" class="form-control" name="last_name">
                                </div>
                            </div>

                            <div class="row form-group">

                                <div class="col-md-12">
                                    <label class="text-black" for="email">Email Address</label> 
                                    <input type="email" id="email" class="form-control" name="email_address">
                                </div>
                            </div>

                            <div class="row form-group">

                                <div class="col-md-12">
                                    <label class="text-black" for="subject">Subject</label> 
                                    <input type="subject" id="subject" class="form-control" name="subject">
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-md-12">
                                    <label class="text-black" for="message">Message</label> 
                                    <textarea name="message" id="message" cols="30" rows="7" class="form-control" placeholder="Write your notes or questions here..." name="message"></textarea>
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-md-12">
                                    <input type="submit" value="Send Message" class="btn btn-primary btn-md text-white">
                                </div>
                            </div>


                        </form>
                    </div>

                </div>
            </div>
        </section>
        
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
