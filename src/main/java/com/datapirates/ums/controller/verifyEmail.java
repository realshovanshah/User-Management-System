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

    //takes the given email and sends it to dao
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

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
