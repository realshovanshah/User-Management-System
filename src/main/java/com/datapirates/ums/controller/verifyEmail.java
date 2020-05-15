/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.datapirates.ums.controller;

import com.datapirates.ums.dao.UserDao;
import java.io.IOException;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author tenzinsparkss
 */
@WebServlet("/verifyEmail")
public class verifyEmail extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String email = request.getParameter("email");
            boolean authe = UserDao.verifyEmail(email);

            if (authe) {
                HttpSession session = request.getSession();
                session.setAttribute("email", email);
                response.sendRedirect("recoverPassword.jsp?msg=Your Email has been verified");
                out.println(email);
            } else {
                response.sendRedirect("verifyEmail.jsp?msg=Your Email does not exist");
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }

//        UserDao userDao = new UserDao();
//        HttpSession session = request.getSession();
//        
//        String email = request.getParameter("email");
//        String password = request.getParameter("nPass");
//        String password2 = request.getParameter("cPass");
//        
//        User user = new User();
//        user.setEmail(email);
//        
//        try {
//            int result = userDao.forgotPassword(user);
//            if (result != 0) {
//                session.setAttribute("msg", "For the fact that we can't afford OTP-Verification, we assume that it is you who want to recover your password. <br><br> <strong>Your password is:<strong> ");
//                
//            } else {
//                session.setAttribute("msg", "Oops! No user with that exists.");
//            }
//            response.sendRedirect("forgot_password.jsp?msg=error");      
//        } catch (Exception ex) {
//            Logger.getLogger(verifyEmail.class.getName()).log(Level.SEVERE, null, ex);
//        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
