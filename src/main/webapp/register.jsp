<%-- 
    Document   : register
    Created on : Apr 27, 2020, 4:46:39 PM
    Author     : Shah Jr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Start Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
       <link rel="stylesheet" href="css/register.css">
    </head>
    <body>
        <div class="container-fluid">
            <div class="row no-gutter">
                <div class="d-none d-md-flex col-md-4 col-lg-6 bg-image"></div>
                <div class="col-md-8 col-lg-6">
                    <div class="login d-flex align-items-center py-5">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-9 col-lg-8 mx-auto">
                                    <h3 class="login-heading mb-4">Data Pirates | Register</h3>
                                    <form action="register">
                                        <div class="form-label-group">
                                            <input type="text" id="inputEmail" class="form-control" placeholder="First Name" name="fname" >
                                            <label for="inputEmail">First Name</label>
                                        </div>

                                        <div class="form-label-group">
                                            <input type="text" id="inputEmail" class="form-control" placeholder="Last Name" name="lname">
                                            <label for="inputEmail">Last Name</label>
                                        </div>

                                        <div class="form-label-group">
                                            <input type="email" id="inputEmail" class="form-control" placeholder="Email address" name="email" >
                                            <label for="inputEmail">Email address</label>
                                        </div>

                                        <div class="form-label-group">
                                            <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="password">
                                            <label for="inputEmail">Password</label>
                                        </div>
<!--                                        <div class="form-label-group">
                                            <input type="text" id="inputEmail" class="form-control" placeholder="Confirm Password" name="password2">
                                            <label for="inputEmail">Confirm Password</label>
                                        </div>-->

                                        <div class="text-center custom-control custom-checkbox mb-3">
                                            <input type="checkbox" class="custom-control-input" id="customCheck1">
                                            <label class="custom-control-label" for="customCheck1">I agree to the UMS Terms & Condition</label>
                                        </div>
                                        <button class="btn btn-lg btn-dark btn-block btn-login text-uppercase font-weight-bold mb-2" type="submit">Register</button>
                                        <div class="text-center">
                                            <a class="small " href="login.jsp">Already Have An Account?</a></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <param.msg>
    </body>
</html>

