<%-- 
    Document   : recoverPassword
    Created on : May 15, 2020, 7:39:26 PM
    Author     : tenzinsparkss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Start Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/login.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

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
                                    <h3 class="login-heading mb-4">Data Pirates | Recover Password</h3>
                                    <form action="recoverPassword" method="POST">  
                                        <div class="form-label-group">
                                            <input type="email" id="inputEmail" class="form-control" placeholder="Email" name="email">
                                            <label for="inputEmail">Email</label>
                                        </div>
                                        <div class="form-label-group">
                                            <input type="password" id="inputPassword" class="form-control" placeholder="New Password" name="nPass">
                                            <label for="inputEmail">New Password</label>
                                        </div>
                                          <div class="form-label-group">
                                            <input type="password" id="inputPassword" class="form-control" placeholder="Confirm Password" name="cPass">
                                            <label for="inputEmail">Confirm Password</label>
                                        </div>
                                        <button class="btn btn-lg btn-dark btn-block btn-login text-uppercase font-weight-bold mb-2" type="submit" value="click">Submit</button>
                                        <div class="text-center">
                                            <p style="color: red">${param.msg}</p>
                                            <a class="small" href="login.jsp">Please go back to login</a></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
