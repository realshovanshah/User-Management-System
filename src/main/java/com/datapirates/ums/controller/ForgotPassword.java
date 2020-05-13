/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.datapirates.ums.controller;

import com.datapirates.ums.dao.UserDao;
import com.datapirates.ums.model.User;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author tenzinsparkss
 */
public class ForgotPassword extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        UserDao userDao = new UserDao();
        HttpSession session = request.getSession();
        
        String email = request.getParameter("email");
        
        User user = new User();
        user.setEmail(email);
        
        try {
            int result = userDao.forgotPassword(user);
            if (result != 0) {
                session.setAttribute("msg", "For the fact that we can't afford OTP-Verification, we assume that it is you who want to recover your password. <br><br> <strong>Your password is:<strong> ");
                
            } else {
                session.setAttribute("msg", "Oops! No user with that exists.");
            }
            response.sendRedirect("forgot_password.jsp");      
        } catch (Exception ex) {
            Logger.getLogger(ForgotPassword.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

